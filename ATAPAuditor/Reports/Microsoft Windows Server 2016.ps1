
[Report] @{
	Title = "Windows Server 2016 Audit Report"
	ModuleName = "ATAPAuditor"
	BasedOn = @(
		"Windows Server 2016 Security Technical Implementation Guide, Version: V1R6, Date: 2018-10-26"
		"CIS Microsoft Windows Server 2016 RTM (Release 1607) Benchmark, Version: 1.1.0, Date: 2018-10-15"
	)
	Sections = @(
		[ReportSection] @{
			Title = "DISA Recommendations"
			Description = "This section contains all recommendations from the Windows Server 2016 Security Technical Implementation Guide V1R5 2018-07-27"
			SubSections = @(
				[ReportSection] @{
					Title = "Registry Settings/Group Policies"
					AuditInfos = Test-AuditGroup "Microsoft Windows Server 2016-DISA-V1R6#RegistrySettings"
				},
				[ReportSection] @{
					Title = "User Rights Assignment"
					AuditInfos = Test-AuditGroup "Microsoft Windows Server 2016-DISA-V1R6#UserRights"
				},
				[ReportSection] @{
					Title = "Account Policies"
					AuditInfos = Test-AuditGroup "Microsoft Windows Server 2016-DISA-V1R6#AccountPolicies"
				},
				[ReportSection] @{
					Title = "Windows Features"
					AuditInfos = Test-AuditGroup "Microsoft Windows Server 2016-DISA-V1R6#WindowsFeatures"
				},
				[ReportSection] @{
					Title = "File System Permissions"
					AuditInfos = Test-AuditGroup "Microsoft Windows Server 2016-DISA-V1R6#FileSystemPermissions"
				},
				[ReportSection] @{
					Title = "Registry Permissions"
					AuditInfos = Test-AuditGroup "Microsoft Windows Server 2016-DISA-V1R6#RegistryPermissions"
				}#,
				# [ReportSection] @{
				# 	Title = "Other"
				# 	AuditInfos = Test-AuditGroup "Microsoft Windows Server 2016-DISA-#Other"
				# }
			)
		}
		[ReportSection] @{
			Title = "CIS Benchmarks"
			Description = "This section contains all benchmarks from CIS Microsoft Windows Server 2016 RTM (Release 1607) Benchmark v1.0.0 - 03-31-2017. WARNING: Tests in this version haven't been fully tested yet."
			SubSections = @(
				[ReportSection] @{
					Title = "Registry Settings/Group Policies"
					AuditInfos = Test-AuditGroup "Microsoft Windows Server 2016-CIS-1.1.0#RegistrySettings"
				}
				[ReportSection] @{
					Title = "User Rights Assignment"
					AuditInfos = Test-AuditGroup "Microsoft Windows Server 2016-CIS-1.1.0#UserRights"
				}
				[ReportSection] @{
					Title = "Account Policies"
					AuditInfos = Test-AuditGroup "Microsoft Windows Server 2016-CIS-1.1.0#AccountPolicies"
				}
				# [ReportSection] @{
				# 	Title = "Windows Firewall with Advanced Security"
				# 	AuditInfos = Test-AuditGroup "Microsoft Windows Server 2016-CIS-1.1.0#FirewallProfileSettings"
				# }
				[ReportSection] @{
					Title = " Advanced Audit Policy Configuration"
					AuditInfos = Test-AuditGroup "Microsoft Windows Server 2016-CIS-1.1.0#AuditPolicies"
				}
			)
		}
	)
}
