﻿[Report] @{
	Title = 'Microsoft Skype for Business 2016 Audit Report'
	ModuleName = 'ATAPAuditor'
	BasedOn = 'DISA Microsoft Skype for Business 2016 Security Technical Implementation Guide, Version: V1R1, Date: 2016-11-14'
	Sections = @(
		[ReportSection] @{
			Title = "DISA Recommendations"
			Description = "This section contains all DISA recommendations"
			SubSections = @(
				[ReportSection] @{
					Title = "Registry Settings/Group Policies"
					AuditInfos = Test-AuditGroup "Microsoft Office 2016 SkypeForBusiness-DISA-V1R1#RegistrySettings"
				}
			)
		}
	)
}
