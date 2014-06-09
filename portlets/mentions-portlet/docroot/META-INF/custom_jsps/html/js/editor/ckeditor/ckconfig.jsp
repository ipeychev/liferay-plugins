<%--
/**
 * Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ page import="com.liferay.portal.util.PortalUtil" %>

<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %>

<%@ include file="/html/js/editor/ckeditor/ckconfig.portal.jsp" %>

var ckEditor = CKEDITOR.instances['<%= HtmlUtil.escapeJS(name) %>'];

ckEditor.config.extraPlugins += ',autocomplete';

ckEditor.config.autocomplete = {
	requestTemplate: function(query) {
		return 'query=' + query;
	},
	trigger: [
		{
			resultFilters: function(query, results) { return results; },
			resultTextLocator: 'screenName',
			term: '@',
			tplResults: '<div class="taglib-user-display display-style-3" style="padding:5px;"><span><span class="user-profile-image" style="background-image: url(\'{portraitURL}\'); background-size: 32px 32px; height: 32px; width: 32px;margin-right:5px;"></span><span class="user-name">{fullName}</span><span class="user-details"> (@{screenName})</span></span></div>',
			source: 'http://localhost:8080/group/control_panel/manage?p_p_auth=Hitb13YK&p_p_id=1_WAR_mentionsportlet&p_p_lifecycle=2&p_p_state=maximized&p_p_mode=view&p_p_cacheability=cacheLevelPage&doAsGroupId=10187&refererPlid=10190&controlPanelCategory=current_site.content&_1_WAR_mentionsportlet_'
		}
	]
};