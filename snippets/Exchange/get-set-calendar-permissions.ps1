
# Exchange calendar permissions
get-MailboxFolderPermission -Identity alan.santos@dannemann.com.br:\Calendário
Set-MailboxFolderPermission -Identity ayla@contoso.com:\Calendar -User ed@contoso.com -AccessRights Editor -SharingPermissionFlags Delegate -SendNotificationToUser $true
```

<#
- **Owner. Allows read, create, modify and delete all items and folders. Also allows manage items permissions**
- **PublishingEditor. Allows read, create, modify and delete items/subfolders.**
- **Editor. Allows read, create, modify and delete items.**
- **PublishingAuthor. Allows read, create all items/subfolders. You can modify and delete only items you create.**
- **Author. Allows create and read items; edit and delete own items.**
- **NonEditingAuthor. Allows full read access and create items. You can delete only your own items.**
- **Reviewer. Read only.**
- **Contributor. Allows create items and folders.**
- **AvailabilityOnly. Allows read free/busy information from calendar**
- **LimitedDetails. Allows view of the subject and location.**
- **None. No permissions to access folder and files.**

#>


Get-MailboxFolderPermission -Identity john@contoso.com:\Calendar

Get-MailboxFolderPermission -Identity john@contoso.com:\Calendar | Export-CSV c:\filepath\filename.csv

Add-MailboxFolderPermission -Identity jen@contoso.com:\calendar -user john@contoso.com -AccessRights Reviewer

Set-MailboxFolderPermission -Identity jen@contoso.com:\Calendar -User john@contoso.com -AccessRights Editor

Remove-MailboxFolderPermission -Identity jen@contoso.com:\Calendar -User john@contoso.com

