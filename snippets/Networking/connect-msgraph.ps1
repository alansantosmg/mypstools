# Microsoft.Graph

Install-Module Microsoft.graph

import-module Microsoft.graph.users

connect-mgGraph - Scopes ‘Directory.ReadWrite.All’

Get-Mguser -filter “displayName eq ‘alan’”

Get-MgUser -filter “displayname eq ‘alan santos’” | fl *