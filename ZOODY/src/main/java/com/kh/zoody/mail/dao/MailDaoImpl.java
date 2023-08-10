package com.kh.zoody.mail.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.kh.zoody.mail.vo.MailAttachmentVo;
import com.kh.zoody.mail.vo.MailBoxVo;
import com.kh.zoody.mail.vo.MailCcVo;
import com.kh.zoody.mail.vo.MailRecipientVo;
import com.kh.zoody.mail.vo.MailVo;
import com.kh.zoody.user.vo.UserVo;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class MailDaoImpl implements MailDao {

	// 메일 보내기
	@Override
	public int sendMail(
			List<String> receiverEmailAddress, 
			List<String> ccEmailAddress, 
			List<String> bccEmailAddress,
			List<MailAttachmentVo> mailAttachmentVoList, 
			MailVo mailVo, 
			SqlSessionTemplate sqlSessionTemplate) {
		
		
		// Mail에 저장.
		int insertMailResult = sqlSessionTemplate.insert("mail.insertMail", mailVo);
		
		
		// 첨부파일 저장.
		if(mailAttachmentVoList.size() > 1) {
			for(int i = 0; i < mailAttachmentVoList.size(); i++) {
				mailAttachmentVoList.get(i).setMailNo(mailVo.getNo());
			}
			insertMailResult *= sqlSessionTemplate.insert("mail.insertAttachment", mailAttachmentVoList);			
		}
		
		
		// 받는사람 저장
		List<MailRecipientVo> mailRecipientVoList = new ArrayList<>();
		for (String receiverEmail : receiverEmailAddress) {
			MailRecipientVo mailRecipientVo = new MailRecipientVo();
			mailRecipientVo.setMailNo(mailVo.getNo());
			mailRecipientVo.setReceiverNo(receiverEmail);
			mailRecipientVoList.add(mailRecipientVo);
		}
		int insertMailRecipientResult = sqlSessionTemplate.insert("mail.insertRecipient", mailRecipientVoList);
		
		// 참조 저장
		if(ccEmailAddress != null) {
			List<MailCcVo> mailCcVoList = new ArrayList<>();
			for (String ccEmail : ccEmailAddress) {
				MailCcVo mailCcVo = new MailCcVo();
				mailCcVo.setMailNo(mailVo.getNo());
				mailCcVo.setCcNo(ccEmail);
				
				// 숨은 참조 체크
				if(bccEmailAddress != null) {
					for(String bccEmail : bccEmailAddress) {
						if(ccEmail.equals(bccEmail)) {
							mailCcVo.setBccCheck("O");
							break;
						} else {
							mailCcVo.setBccCheck("X");
						}
					}
				}
				
				mailCcVoList.add(mailCcVo);
			}
			if(ccEmailAddress != null) {
				insertMailResult *= sqlSessionTemplate.insert("mail.insertCc", mailCcVoList);
			}
		}
		
		return insertMailResult;
	}
	
	
	// 모든 메일 가져오기( 읽은거 안읽은거 받은거 참조인거 )
	@Override
	public List<MailVo> getAllMail(String mail, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectList("mail.getAllMail", mail);
	}
	
	// 안읽은 메일 갯수
	@Override
	public String getUnreadMailCount(String mail, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectOne("getUnreadMailCount", mail);
	}


	// 모든 메일 갯수
	@Override
	public String getAllMailCount(String mail, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectOne("getAllMailCount", mail);
	}
		
	
	// 받은 메일 가져오기 (참조 제외)
	@Override
	public List<MailVo> getReceiveMail(
			String receiverEmail,
			SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectList("mail.getReceiveMailList", receiverEmail);
	}
	
	
	// 나에게 쓴 메일 가져오기
	@Override
	public List<MailVo> getToMeMail(String mail, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectList("mail.getToMeMailList", mail);
	}
	
	
	// 보낸 메일 가져오기
	@Override
	public List<MailVo> getSendMail(String mail, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectList("mail.getSendMailList", mail);
	}
	

	// 메일 번호로 메일 상세 정보 가져오기
	@Override
	public MailVo getMailDetailByNo(String no, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectOne("mail.getMailDetailByNo", no);
	}
	// 상세보기한 메일 읽음 체크
	public int readCheck(Map<String, String> readMail, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.update("mail.readCheck", readMail);
	}

	
	// 메일 번호의 받는 사람들 가져오기
	@Override
	public List<UserVo> getMailRecipientByMailNo(String no, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectList("mail.getMailRecipientByMailNo", no);
	}

	
	// 메일 번호의 참조인 가져오기
	@Override
	public List<UserVo> getMailCcByMailNo(String no, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectList("mail.getMailCcByMailNo", no);
	}


	// 메일 리스트 읽음 처리
	@Override
	public int mailListReadCheck(List<Map<String, String>> selectedToReadMailNoList, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.update("mail.mailListReadCheck", selectedToReadMailNoList);
	}


	// 메일 리스트 삭제
	public int mailListDump(List<Map<String, String>> selectedToDumpMailNoList, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.update("mail.mailListDump", selectedToDumpMailNoList);
	}


	// 첨부파일 가져오기
	@Override
	public List<MailAttachmentVo> getMailAttachmentListByNo(String no, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectList("mail.getMailAttachmentListByMailNo", no);
	}


	// 휴지통 메일 리스트 가져오기
	@Override
	public List<MailVo> getDumpMail(String mail, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectList("mail.getDumpMailList", mail);
	}


	// 중요 메일 리스트 가져오기
	@Override
	public List<MailVo> getBookmarkMail(String mail, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectList("mail.getBookmarkMailList", mail);
	}


	// 중요 체크하기
	@Override
	public int addBookmark(Map<String, String> dataMap, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.update("mail.addBookmark", dataMap);
	}


	// 받은 메일 총 갯수
	@Override
	public String getAllReceiveMailCnt(String mail, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectOne("mail.getReceiveMailCnt", mail);
	}

	// 중요 체크해제
	@Override
	public int removeBookmark(Map<String, String> dataMap, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.update("mail.removeBookmark", dataMap);
	}


	// 메일함 생성
	@Override
	public int createFolder(Map<String, String> dataMap, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.insert("mail.createFolder", dataMap);
	}

	// 메일함 가져오기
	@Override
	public List<MailBoxVo> getMailBoxList(String no, SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectList("mail.getFolderList", no);
	}
	
}
