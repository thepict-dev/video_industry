/*
 * Copyright 2008-2009 the original author or authors.
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
package pict_admin.service;

import java.util.ArrayList;
import java.util.List;

/**
 * @Class Name : EgovSampleService.java
 * @Description : EgovSampleService Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2009.03.16           최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public interface PictService {
	
	List<?> board_list(PictVO pictVO) throws Exception;

	PictVO board_list_one(PictVO pictVO) throws Exception;

	void board_update(PictVO pictVO) throws Exception;

	void board_insert(PictVO pictVO) throws Exception;

	void board_delete(PictVO pictVO) throws Exception;

	void board_file_delete(PictVO pictVO) throws Exception;
	
	

	PictVO pemtour_select(PictVO pictVO) throws Exception;

	void pemtour_update(PictVO pictVO) throws Exception;

	List<?> event_list(PictVO pictVO) throws Exception;

	PictVO event_list_one(PictVO pictVO) throws Exception;

	void event_update(PictVO pictVO) throws Exception;

	void event_insert(PictVO pictVO) throws Exception;

	void event_delete(PictVO pictVO) throws Exception;

	void event_file_delete(PictVO pictVO) throws Exception;


}
