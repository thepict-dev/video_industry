/*
 * Copyright 2011 MOPAS(Ministry of Public Administration and Security).
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package pict_admin.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import pict_admin.service.AdminVO;
import pict_admin.service.PictDefaultVO;
import pict_admin.service.PictVO;

/**
 * sample에 관한 데이터처리 매퍼 클래스
 *
 * @author  표준프레임워크센터
 * @since 2014.01.24
 * @version 1.0
 * @see <pre>
 *  == 개정이력(Modification Information) ==
 *
 *          수정일          수정자           수정내용
 *  ----------------    ------------    ---------------------------
 *   2014.01.24        표준프레임워크센터          최초 생성
 *
 * </pre>
 */
@Mapper("pictMapper")
public interface PictMapper {
	List<?> board_list(PictVO pictVO) throws Exception;

	PictVO board_list_one(PictVO pictVO) throws Exception;

	void board_update(PictVO pictVO) throws Exception;

	void board_insert(PictVO pictVO) throws Exception;

	void board_delete(PictVO pictVO) throws Exception;
	
	void board_file_delete(PictVO pictVO) throws Exception;

	void movie_file_delete(PictVO pictVO) throws Exception;
	
	PictVO pemtour_select(PictVO pictVO) throws Exception;

	void pemtour_update(PictVO pictVO) throws Exception;

	List<?> event_list(PictVO pictVO) throws Exception;

	PictVO event_list_one(PictVO pictVO) throws Exception;

	void event_update(PictVO pictVO) throws Exception;

	void event_insert(PictVO pictVO) throws Exception;

	void event_delete(PictVO pictVO) throws Exception;
	
	void event_file_delete(PictVO pictVO) throws Exception;

	Integer video_location_list_cnt(PictVO pictVO) throws Exception;

	List<PictVO> video_location_list(PictVO pictVO) throws Exception;

	PictVO video_location_list_one(PictVO pictVO) throws Exception;

	void location_apply_save(PictVO pictVO) throws Exception;
	
	List<PictVO> industry_list_in_admin(PictVO pictVO) throws Exception;

	Integer industry_list_cnt(PictVO pictVO) throws Exception;

	List<PictVO> industry_list(PictVO pictVO) throws Exception;
	
	void industry_save(PictVO pictVO) throws Exception;
	
	void industry_update(PictVO pictVO) throws Exception;
	
    String getFilePathByColumn(@Param("idx") int idx, @Param("columnName") String columnName);
	
    int updateFileColumnToNull(@Param("idx") int idx, @Param("columnName") String columnName);

	List<PictVO> portfolio_list(PictVO pictVO) throws Exception;

	PictVO industry_list_one(PictVO pictVO) throws Exception;

	List<PictVO> movie_list(PictVO pictVO) throws Exception;

	List<?> location_list(PictVO pictVO) throws Exception;

	PictVO location_list_one(PictVO pictVO) throws Exception;

	void location_update(PictVO pictVO) throws Exception;

	void location_insert(PictVO pictVO) throws Exception;

	void location_delete(PictVO pictVO) throws Exception;

	Integer board_list_cnt(PictVO pictVO) throws Exception;

	Integer location_list_cnt(PictVO pictVO) throws Exception;

	List<?> main_movie_list(PictVO pictVO) throws Exception;

	Integer movie_list_cnt(PictVO pictVO) throws Exception;

	List<?> movie_admin_list(PictVO pictVO) throws Exception;

	PictVO movie_list_one(PictVO pictVO) throws Exception;

	void movie_update(PictVO pictVO) throws Exception;

	void movie_insert(PictVO pictVO) throws Exception;

	void movie_delete(PictVO pictVO) throws Exception;

	Integer support_list_cnt(PictVO pictVO) throws Exception;

	List<?> support_list(PictVO pictVO) throws Exception;

	PictVO support_list_one(PictVO pictVO) throws Exception;

	void support_update(PictVO pictVO) throws Exception;

	void support_insert(PictVO pictVO) throws Exception;

	void support_delete(PictVO pictVO) throws Exception;

	Integer support_apply_list_cnt(PictVO pictVO) throws Exception;

	List<?> support_apply_list(PictVO pictVO) throws Exception;

	Integer location_apply_list_cnt(PictVO pictVO) throws Exception;

	List<?> location_apply_list(PictVO pictVO) throws Exception;

	void location_support_cng(PictVO pictVO) throws Exception;
	
	
	// 팝업 리스트
	List<?> get_popup_list(PictVO pictVO) throws Exception;
	
	PictVO popup_list_one(PictVO pictVO) throws Exception;
	
	void popup_insert(PictVO pictVO) throws Exception;
	
	void popup_update(PictVO pictVO) throws Exception;
	
	void popup_delete(PictVO pictVO) throws Exception;
	
	Integer get_popup_total_cnt(PictVO pictVO) throws Exception;

}
