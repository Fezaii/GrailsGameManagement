

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'fr.mbds.tp.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'fr.mbds.tp.UserRole'
grails.plugin.springsecurity.authority.className = 'fr.mbds.tp.Role'
grails.plugin.springsecurity.requestMap.className = 'fr.mbds.tp.UserRole'
grails.plugin.springsecurity.securityConfigType = 'Annotation'
grails.plugin.springsecurity.successHandler.defaultTargetUrl = '/home/index'
grails.plugin.springsecurity.logout.postOnly = false
grails.plugin.admin.accessRoot = "/admin"
grails.plugin.admin.security.role = "ROLE_ADMIN"
grails.plugin.springsecurity.rest
grails.plugin.admin.domains = [
		"User",
		"Role"
]
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/**',             access: ['permitAll']],
	[pattern: '/api',            access: ['permitAll']],
	[pattern: '/error',          access: ['permitAll']],
	[pattern: '/index',          access: ['permitAll']],
	[pattern: '/index.gsp',      access: ['permitAll']],
	[pattern: '/shutdown',       access: ['permitAll']],
	[pattern: '/assets/**',      access: ['permitAll']],
	[pattern: '/**/js/**',       access: ['permitAll']],
	[pattern: '/**/css/**',      access: ['permitAll']],
	[pattern: '/**/images/**',   access: ['permitAll']],
	[pattern: '/**/favicon.ico', access: ['permitAll']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]
grails.plugin.springsecurity.rest.login.active = true
grails.plugin.springsecurity.rest.login.endpointUrl = "/api/login"
grails.plugin.springsecurity.rest.login.failureStatusCode = 401
grails.plugin.springsecurity.rest.token.storage.jwt.useEncryptedJwt = true
grails.plugin.springsecurity.conf.rest.token.storage.jwt.secret = 'qrD6h8K6S9503Q06Y6Rfk21TErImPYqa'

/*grails.plugin.springsecurity.filterChain.chainMap = [
		[pattern: '/api/**',      filters: 'JOINED_FILTERS,-anonymousAuthenticationFilter,-exceptionTranslationFilter,-authenticationProcessingFilter,-securityContextPersistenceFilter,-rememberMeAuthenticationFilter'],
		[pattern: '/**',             filters: 'JOINED_FILTERS,-restTokenValidationFilter,-restExceptionTranslationFilter'],
]*/
