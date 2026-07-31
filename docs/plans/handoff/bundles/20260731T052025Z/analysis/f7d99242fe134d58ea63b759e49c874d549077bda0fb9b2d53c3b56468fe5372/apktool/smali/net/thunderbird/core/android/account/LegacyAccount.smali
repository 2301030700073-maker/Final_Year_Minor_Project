.class public final Lnet/thunderbird/core/android/account/LegacyAccount;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/mail/account/api/BaseAccount;


# instance fields
.field public final accountNumber:I

.field public final alwaysBcc:Ljava/lang/String;

.field public final archiveFolderId:Ljava/lang/Long;

.field public final archiveFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

.field public final autoExpandFolderId:Ljava/lang/Long;

.field public final autocryptPreferEncryptMutual:Z

.field public final automaticCheckIntervalMinutes:I

.field public final deletePolicy:Lnet/thunderbird/core/android/account/DeletePolicy;

.field public final displayCount:I

.field public final draftsFolderId:Ljava/lang/Long;

.field public final draftsFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

.field public final email:Ljava/lang/String;

.field public final expungePolicy:Lnet/thunderbird/core/android/account/Expunge;

.field public final folderDisplayMode:Lnet/thunderbird/core/android/account/FolderMode;

.field public final folderNotifyNewMailMode:Lnet/thunderbird/core/android/account/FolderMode;

.field public final folderPathDelimiter:Ljava/lang/String;

.field public final folderPushMode:Lnet/thunderbird/core/android/account/FolderMode;

.field public final folderSyncMode:Lnet/thunderbird/core/android/account/FolderMode;

.field public final id:Lnet/thunderbird/feature/account/AccountId;

.field public final identities:Ljava/util/List;

.field public final idleRefreshMinutes:I

.field public final importedArchiveFolder:Ljava/lang/String;

.field public final importedAutoExpandFolder:Ljava/lang/String;

.field public final importedDraftsFolder:Ljava/lang/String;

.field public final importedSentFolder:Ljava/lang/String;

.field public final importedSpamFolder:Ljava/lang/String;

.field public final importedTrashFolder:Ljava/lang/String;

.field public final inboxFolderId:Ljava/lang/Long;

.field public final incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

.field public final isAlwaysShowCcBcc:Z

.field public final isChangedVisibleLimits:Z

.field public final isDefaultQuotedTextShown:Z

.field public final isFinishedSetup:Z

.field public final isIgnoreChatMessages:Z

.field public final isMarkMessageAsReadOnDelete:Z

.field public final isMarkMessageAsReadOnView:Z

.field public final isMessageReadReceipt:Z

.field public final isNotifyContactsMailOnly:Z

.field public final isNotifyNewMail:Z

.field public final isNotifySelfNewMail:Z

.field public final isNotifySync:Z

.field public final isOpenPgpEncryptAllDrafts:Z

.field public final isOpenPgpEncryptSubject:Z

.field public final isOpenPgpHideSignOnly:Z

.field public final isReplyAfterQuote:Z

.field public final isSendClientInfoEnabled:Z

.field public final isSensitiveDebugLoggingEnabled:Lkotlin/jvm/functions/Function0;

.field public final isSignatureBeforeQuotedText:Z

.field public final isStripSignature:Z

.field public final isSubscribedFoldersOnly:Z

.field public final isSyncRemoteDeletions:Z

.field public final isUploadSentMessages:Z

.field public final lastFolderListRefreshTime:J

.field public final lastSelectedFolderId:Ljava/lang/Long;

.field public final lastSyncTime:J

.field public final legacyInboxFolder:Ljava/lang/String;

.field public final maxPushFolders:I

.field public final maximumAutoDownloadMessageSize:I

.field public final maximumPolledMessageAge:I

.field public final messageFormat:Lnet/thunderbird/core/android/account/MessageFormat;

.field public final messagesNotificationChannelVersion:I

.field public final name:Ljava/lang/String;

.field public final notificationSettings:Lnet/thunderbird/feature/notification/NotificationSettings;

.field public final oAuthState:Ljava/lang/String;

.field public final openPgpKey:J

.field public final openPgpProvider:Ljava/lang/String;

.field public final outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

.field public final profile:Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

.field public final quotePrefix:Ljava/lang/String;

.field public final quoteStyle:Lnet/thunderbird/core/android/account/QuoteStyle;

.field public final remoteSearchNumResults:I

.field public final senderName:Ljava/lang/String;

.field public final sentFolderId:Ljava/lang/Long;

.field public final sentFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

.field public final shouldMigrateToOAuth:Z

.field public final showPictures:Lnet/thunderbird/core/android/account/ShowPictures;

.field public final signature:Ljava/lang/String;

.field public final signatureUse:Z

.field public final sortAscending:Ljava/util/Map;

.field public final sortType:Lnet/thunderbird/core/android/account/SortType;

.field public final spamFolderId:Ljava/lang/Long;

.field public final spamFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

.field public final trashFolderId:Ljava/lang/Long;

.field public final trashFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

.field public final useCompression:Z

.field public final uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/account/AccountId;Ljava/lang/String;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Ljava/lang/String;IIZLnet/thunderbird/core/android/account/FolderMode;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/String;Ljava/lang/Long;Lnet/thunderbird/core/android/account/FolderMode;Lnet/thunderbird/core/android/account/FolderMode;Lnet/thunderbird/core/android/account/FolderMode;IZLnet/thunderbird/core/android/account/SortType;Ljava/util/Map;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIZZZIILnet/thunderbird/core/android/account/MessageFormat;ZLnet/thunderbird/core/android/account/QuoteStyle;Ljava/lang/String;ZZZZLjava/lang/String;JZZZZZZZIZJJZIZLjava/lang/Long;Ljava/util/List;Lnet/thunderbird/feature/notification/NotificationSettings;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p30 .. p30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p31 .. p31}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p32 .. p32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p33 .. p33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p34 .. p34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p37 .. p37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p38 .. p38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p39 .. p39}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p42 .. p42}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p43 .. p43}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p44 .. p44}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p46 .. p46}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p54 .. p54}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p56 .. p56}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p82 .. p82}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p83 .. p83}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p88 .. p88}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSensitiveDebugLoggingEnabled:Lkotlin/jvm/functions/Function0;

    .line 3
    iput-object p2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 4
    iput-object p3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->name:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->email:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->profile:Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    .line 7
    iput-object p6, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->deletePolicy:Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 8
    iput-object p7, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 9
    iput-object p8, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 10
    iput-object p9, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->oAuthState:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->alwaysBcc:Ljava/lang/String;

    .line 12
    iput p11, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->automaticCheckIntervalMinutes:I

    .line 13
    iput p12, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->displayCount:I

    .line 14
    iput-boolean p13, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifyNewMail:Z

    .line 15
    iput-object p14, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderNotifyNewMailMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 16
    iput-boolean p15, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifySelfNewMail:Z

    move/from16 p1, p16

    .line 17
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifyContactsMailOnly:Z

    move/from16 p1, p17

    .line 18
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isIgnoreChatMessages:Z

    move-object/from16 p1, p18

    .line 19
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->legacyInboxFolder:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 20
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedDraftsFolder:Ljava/lang/String;

    move-object/from16 p1, p20

    .line 21
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedSentFolder:Ljava/lang/String;

    move-object/from16 p1, p21

    .line 22
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedTrashFolder:Ljava/lang/String;

    move-object/from16 p1, p22

    .line 23
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedArchiveFolder:Ljava/lang/String;

    move-object/from16 p1, p23

    .line 24
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedSpamFolder:Ljava/lang/String;

    move-object/from16 p1, p24

    .line 25
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->inboxFolderId:Ljava/lang/Long;

    move-object/from16 p1, p25

    .line 26
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderId:Ljava/lang/Long;

    move-object/from16 p1, p26

    .line 27
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->sentFolderId:Ljava/lang/Long;

    move-object/from16 p1, p27

    .line 28
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderId:Ljava/lang/Long;

    move-object/from16 p1, p28

    .line 29
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderId:Ljava/lang/Long;

    move-object/from16 p1, p29

    .line 30
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderId:Ljava/lang/Long;

    move-object/from16 p1, p30

    .line 31
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    move-object/from16 p1, p31

    .line 32
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->sentFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    move-object/from16 p1, p32

    .line 33
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    move-object/from16 p1, p33

    .line 34
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    move-object/from16 p1, p34

    .line 35
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    move-object/from16 p1, p35

    .line 36
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedAutoExpandFolder:Ljava/lang/String;

    move-object/from16 p1, p36

    .line 37
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->autoExpandFolderId:Ljava/lang/Long;

    move-object/from16 p1, p37

    .line 38
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderDisplayMode:Lnet/thunderbird/core/android/account/FolderMode;

    move-object/from16 p1, p38

    .line 39
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderSyncMode:Lnet/thunderbird/core/android/account/FolderMode;

    move-object/from16 p1, p39

    .line 40
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderPushMode:Lnet/thunderbird/core/android/account/FolderMode;

    move/from16 p1, p40

    .line 41
    iput p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->accountNumber:I

    move/from16 p1, p41

    .line 42
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifySync:Z

    move-object/from16 p1, p42

    .line 43
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->sortType:Lnet/thunderbird/core/android/account/SortType;

    move-object/from16 p1, p43

    .line 44
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->sortAscending:Ljava/util/Map;

    move-object/from16 p1, p44

    .line 45
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->showPictures:Lnet/thunderbird/core/android/account/ShowPictures;

    move/from16 p1, p45

    .line 46
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSignatureBeforeQuotedText:Z

    move-object/from16 p1, p46

    .line 47
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->expungePolicy:Lnet/thunderbird/core/android/account/Expunge;

    move/from16 p1, p47

    .line 48
    iput p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->maxPushFolders:I

    move/from16 p1, p48

    .line 49
    iput p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->idleRefreshMinutes:I

    move/from16 p1, p49

    .line 50
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->useCompression:Z

    move/from16 p1, p50

    .line 51
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSendClientInfoEnabled:Z

    move/from16 p1, p51

    .line 52
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSubscribedFoldersOnly:Z

    move/from16 p1, p52

    .line 53
    iput p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->maximumPolledMessageAge:I

    move/from16 p1, p53

    .line 54
    iput p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->maximumAutoDownloadMessageSize:I

    move-object/from16 p1, p54

    .line 55
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->messageFormat:Lnet/thunderbird/core/android/account/MessageFormat;

    move/from16 p1, p55

    .line 56
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isMessageReadReceipt:Z

    move-object/from16 p1, p56

    .line 57
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->quoteStyle:Lnet/thunderbird/core/android/account/QuoteStyle;

    move-object/from16 p1, p57

    .line 58
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->quotePrefix:Ljava/lang/String;

    move/from16 p1, p58

    .line 59
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isDefaultQuotedTextShown:Z

    move/from16 p1, p59

    .line 60
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isReplyAfterQuote:Z

    move/from16 p1, p60

    .line 61
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isStripSignature:Z

    move/from16 p1, p61

    .line 62
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSyncRemoteDeletions:Z

    move-object/from16 p1, p62

    .line 63
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->openPgpProvider:Ljava/lang/String;

    move-wide/from16 p3, p63

    .line 64
    iput-wide p3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->openPgpKey:J

    move/from16 p1, p65

    .line 65
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->autocryptPreferEncryptMutual:Z

    move/from16 p1, p66

    .line 66
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpHideSignOnly:Z

    move/from16 p1, p67

    .line 67
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpEncryptSubject:Z

    move/from16 p1, p68

    .line 68
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpEncryptAllDrafts:Z

    move/from16 p1, p69

    .line 69
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isMarkMessageAsReadOnView:Z

    move/from16 p1, p70

    .line 70
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isMarkMessageAsReadOnDelete:Z

    move/from16 p1, p71

    .line 71
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isAlwaysShowCcBcc:Z

    move/from16 p1, p72

    .line 72
    iput p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->remoteSearchNumResults:I

    move/from16 p1, p73

    .line 73
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isUploadSentMessages:Z

    move-wide/from16 p3, p74

    .line 74
    iput-wide p3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->lastSyncTime:J

    move-wide/from16 p3, p76

    .line 75
    iput-wide p3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->lastFolderListRefreshTime:J

    move/from16 p1, p78

    .line 76
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isFinishedSetup:Z

    move/from16 p1, p79

    .line 77
    iput p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->messagesNotificationChannelVersion:I

    move/from16 p1, p80

    .line 78
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isChangedVisibleLimits:Z

    move-object/from16 p1, p81

    .line 79
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->lastSelectedFolderId:Ljava/lang/Long;

    move-object/from16 p1, p82

    .line 80
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->identities:Ljava/util/List;

    move-object/from16 p1, p83

    .line 81
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->notificationSettings:Lnet/thunderbird/feature/notification/NotificationSettings;

    move-object/from16 p1, p84

    .line 82
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->senderName:Ljava/lang/String;

    move/from16 p1, p85

    .line 83
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->signatureUse:Z

    move-object/from16 p1, p86

    .line 84
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->signature:Ljava/lang/String;

    move/from16 p1, p87

    .line 85
    iput-boolean p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->shouldMigrateToOAuth:Z

    move-object/from16 p1, p88

    .line 86
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderPathDelimiter:Ljava/lang/String;

    .line 87
    iget-object p1, p2, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    iput-object p1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    return-void
.end method

.method public static copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;
    .locals 89

    move-object/from16 v0, p0

    move/from16 v1, p37

    move/from16 v2, p38

    move/from16 v3, p39

    iget-object v4, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSensitiveDebugLoggingEnabled:Lkotlin/jvm/functions/Function0;

    iget-object v5, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    iget-object v6, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->name:Ljava/lang/String;

    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_0

    iget-object v7, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->email:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v7, p1

    :goto_0
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_1

    iget-object v8, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->profile:Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    goto :goto_1

    :cond_1
    move-object/from16 v8, p2

    :goto_1
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_2

    iget-object v9, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->deletePolicy:Lnet/thunderbird/core/android/account/DeletePolicy;

    :goto_2
    move-object v10, v4

    move-object v4, v7

    goto :goto_3

    :cond_2
    move-object/from16 v9, p3

    goto :goto_2

    :goto_3
    iget-object v7, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    move-object v11, v5

    move-object v5, v8

    iget-object v8, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_3

    iget-object v12, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->oAuthState:Ljava/lang/String;

    goto :goto_4

    :cond_3
    move-object/from16 v12, p4

    :goto_4
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_4

    iget-object v13, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->alwaysBcc:Ljava/lang/String;

    goto :goto_5

    :cond_4
    move-object/from16 v13, p5

    :goto_5
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_5

    iget v14, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->automaticCheckIntervalMinutes:I

    goto :goto_6

    :cond_5
    move/from16 v14, p6

    :goto_6
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_6

    iget v15, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->displayCount:I

    :goto_7
    move-object v1, v10

    move-object v10, v13

    goto :goto_8

    :cond_6
    move/from16 v15, p7

    goto :goto_7

    :goto_8
    iget-boolean v13, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifyNewMail:Z

    move-object/from16 v16, v11

    move v11, v14

    iget-object v14, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderNotifyNewMailMode:Lnet/thunderbird/core/android/account/FolderMode;

    move-object/from16 v17, v6

    move-object v6, v9

    move-object v9, v12

    move v12, v15

    iget-boolean v15, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifySelfNewMail:Z

    move-object/from16 p1, v1

    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifyContactsMailOnly:Z

    move/from16 v18, v1

    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isIgnoreChatMessages:Z

    move/from16 v19, v1

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->legacyInboxFolder:Ljava/lang/String;

    const/high16 v20, 0x40000

    and-int v21, p37, v20

    const/16 v22, 0x0

    if-eqz v21, :cond_7

    move-object/from16 v21, v1

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedDraftsFolder:Ljava/lang/String;

    goto :goto_9

    :cond_7
    move-object/from16 v21, v1

    move-object/from16 v1, v22

    :goto_9
    const/high16 v23, 0x80000

    and-int v24, p37, v23

    move-object/from16 p2, v1

    if-eqz v24, :cond_8

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedSentFolder:Ljava/lang/String;

    goto :goto_a

    :cond_8
    move-object/from16 v1, v22

    :goto_a
    const/high16 v24, 0x100000

    and-int v25, p37, v24

    move-object/from16 p3, v1

    if-eqz v25, :cond_9

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedTrashFolder:Ljava/lang/String;

    goto :goto_b

    :cond_9
    move-object/from16 v1, v22

    :goto_b
    const/high16 v25, 0x200000

    and-int v25, p37, v25

    move-object/from16 p4, v1

    if-eqz v25, :cond_a

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedArchiveFolder:Ljava/lang/String;

    goto :goto_c

    :cond_a
    move-object/from16 v1, v22

    :goto_c
    const/high16 v25, 0x400000

    and-int v25, p37, v25

    move-object/from16 p5, v1

    if-eqz v25, :cond_b

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedSpamFolder:Ljava/lang/String;

    goto :goto_d

    :cond_b
    move-object/from16 v1, v22

    :goto_d
    const/high16 v25, 0x800000

    and-int v25, p37, v25

    move-object/from16 p6, v1

    if-eqz v25, :cond_c

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->inboxFolderId:Ljava/lang/Long;

    goto :goto_e

    :cond_c
    move-object/from16 v1, p8

    :goto_e
    const/high16 v25, 0x1000000

    and-int v25, p37, v25

    move-object/from16 p7, v1

    if-eqz v25, :cond_d

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderId:Ljava/lang/Long;

    move-object/from16 v25, v1

    goto :goto_f

    :cond_d
    move-object/from16 v25, p9

    :goto_f
    const/high16 v1, 0x2000000

    and-int v1, p37, v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->sentFolderId:Ljava/lang/Long;

    move-object/from16 v26, v1

    goto :goto_10

    :cond_e
    move-object/from16 v26, p10

    :goto_10
    const/high16 v1, 0x4000000

    and-int v1, p37, v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderId:Ljava/lang/Long;

    move-object/from16 v27, v1

    goto :goto_11

    :cond_f
    move-object/from16 v27, p11

    :goto_11
    const/high16 v1, 0x8000000

    and-int v1, p37, v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderId:Ljava/lang/Long;

    move-object/from16 v28, v1

    goto :goto_12

    :cond_10
    move-object/from16 v28, p12

    :goto_12
    const/high16 v1, 0x10000000

    and-int v1, p37, v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderId:Ljava/lang/Long;

    move-object/from16 v29, v1

    goto :goto_13

    :cond_11
    move-object/from16 v29, p13

    :goto_13
    const/high16 v1, 0x20000000

    and-int v30, p37, v1

    move/from16 p8, v1

    if-eqz v30, :cond_12

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    move-object/from16 v30, v1

    goto :goto_14

    :cond_12
    move-object/from16 v30, p14

    :goto_14
    const/high16 v1, 0x40000000    # 2.0f

    and-int v1, p37, v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->sentFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    move-object/from16 v31, v1

    goto :goto_15

    :cond_13
    move-object/from16 v31, p15

    :goto_15
    const/high16 v1, -0x80000000

    and-int v1, p37, v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    move-object/from16 v32, v1

    goto :goto_16

    :cond_14
    move-object/from16 v32, p16

    :goto_16
    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_15

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    move-object/from16 v33, v1

    goto :goto_17

    :cond_15
    move-object/from16 v33, p17

    :goto_17
    and-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_16

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    move-object/from16 v34, v1

    goto :goto_18

    :cond_16
    move-object/from16 v34, p18

    :goto_18
    and-int/lit8 v1, v2, 0x4

    if-eqz v1, :cond_17

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedAutoExpandFolder:Ljava/lang/String;

    move-object/from16 v35, v1

    goto :goto_19

    :cond_17
    move-object/from16 v35, v22

    :goto_19
    and-int/lit8 v1, v2, 0x8

    if-eqz v1, :cond_18

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->autoExpandFolderId:Ljava/lang/Long;

    move-object/from16 v36, v1

    goto :goto_1a

    :cond_18
    move-object/from16 v36, p19

    :goto_1a
    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderDisplayMode:Lnet/thunderbird/core/android/account/FolderMode;

    move-object/from16 v37, v1

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderSyncMode:Lnet/thunderbird/core/android/account/FolderMode;

    move-object/from16 v38, v1

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderPushMode:Lnet/thunderbird/core/android/account/FolderMode;

    move-object/from16 v39, v1

    iget v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->accountNumber:I

    move/from16 v40, v1

    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifySync:Z

    move/from16 v41, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_19

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->sortType:Lnet/thunderbird/core/android/account/SortType;

    move-object/from16 v42, v1

    goto :goto_1b

    :cond_19
    move-object/from16 v42, p20

    :goto_1b
    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->sortAscending:Ljava/util/Map;

    move-object/from16 v43, v1

    goto :goto_1c

    :cond_1a
    move-object/from16 v43, p21

    :goto_1c
    and-int/lit16 v1, v2, 0x800

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->showPictures:Lnet/thunderbird/core/android/account/ShowPictures;

    move-object/from16 v44, v1

    goto :goto_1d

    :cond_1b
    move-object/from16 v44, p22

    :goto_1d
    and-int/lit16 v1, v2, 0x1000

    if-eqz v1, :cond_1c

    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSignatureBeforeQuotedText:Z

    move/from16 v45, v1

    goto :goto_1e

    :cond_1c
    move/from16 v45, p23

    :goto_1e
    and-int/lit16 v1, v2, 0x2000

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->expungePolicy:Lnet/thunderbird/core/android/account/Expunge;

    move-object/from16 v46, v1

    goto :goto_1f

    :cond_1d
    move-object/from16 v46, p24

    :goto_1f
    and-int/lit16 v1, v2, 0x4000

    if-eqz v1, :cond_1e

    iget v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->maxPushFolders:I

    move/from16 v47, v1

    goto :goto_20

    :cond_1e
    move/from16 v47, p25

    :goto_20
    const v1, 0x8000

    and-int v22, v2, v1

    move/from16 p9, v1

    if-eqz v22, :cond_1f

    iget v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->idleRefreshMinutes:I

    move/from16 v48, v1

    goto :goto_21

    :cond_1f
    move/from16 v48, p26

    :goto_21
    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->useCompression:Z

    move/from16 v49, v1

    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSendClientInfoEnabled:Z

    move/from16 v50, v1

    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSubscribedFoldersOnly:Z

    and-int v22, v2, v23

    move/from16 v51, v1

    if-eqz v22, :cond_20

    iget v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->maximumPolledMessageAge:I

    move/from16 v52, v1

    goto :goto_22

    :cond_20
    move/from16 v52, p27

    :goto_22
    and-int v1, v2, v24

    if-eqz v1, :cond_21

    iget v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->maximumAutoDownloadMessageSize:I

    move/from16 v53, v1

    goto :goto_23

    :cond_21
    move/from16 v53, p28

    :goto_23
    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->messageFormat:Lnet/thunderbird/core/android/account/MessageFormat;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v54, v1

    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isMessageReadReceipt:Z

    move/from16 v55, v1

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->quoteStyle:Lnet/thunderbird/core/android/account/QuoteStyle;

    move-object/from16 v56, v1

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->quotePrefix:Ljava/lang/String;

    move-object/from16 v57, v1

    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isDefaultQuotedTextShown:Z

    move/from16 v58, v1

    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isReplyAfterQuote:Z

    move/from16 v59, v1

    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isStripSignature:Z

    and-int v2, v2, p8

    if-eqz v2, :cond_22

    iget-boolean v2, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSyncRemoteDeletions:Z

    move/from16 v61, v2

    goto :goto_24

    :cond_22
    move/from16 v61, p29

    :goto_24
    iget-object v2, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->openPgpProvider:Ljava/lang/String;

    move/from16 v60, v1

    move-object/from16 v62, v2

    iget-wide v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->openPgpKey:J

    move-wide/from16 v63, v1

    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->autocryptPreferEncryptMutual:Z

    iget-boolean v2, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpHideSignOnly:Z

    move/from16 v65, v1

    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpEncryptSubject:Z

    move/from16 v67, v1

    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpEncryptAllDrafts:Z

    and-int/lit8 v22, v3, 0x10

    move/from16 v68, v1

    if-eqz v22, :cond_23

    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isMarkMessageAsReadOnView:Z

    move/from16 v69, v1

    goto :goto_25

    :cond_23
    move/from16 v69, p30

    :goto_25
    and-int/lit8 v1, v3, 0x20

    if-eqz v1, :cond_24

    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isMarkMessageAsReadOnDelete:Z

    move/from16 v70, v1

    goto :goto_26

    :cond_24
    move/from16 v70, p31

    :goto_26
    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isAlwaysShowCcBcc:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v71, v1

    and-int/lit16 v1, v3, 0x100

    if-eqz v1, :cond_25

    iget v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->remoteSearchNumResults:I

    move/from16 v72, v1

    goto :goto_27

    :cond_25
    move/from16 v72, p32

    :goto_27
    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isUploadSentMessages:Z

    move/from16 v73, v1

    move/from16 v66, v2

    iget-wide v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->lastSyncTime:J

    move-wide/from16 v74, v1

    iget-wide v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->lastFolderListRefreshTime:J

    move-wide/from16 v76, v1

    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isFinishedSetup:Z

    iget v2, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->messagesNotificationChannelVersion:I

    move/from16 v78, v1

    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isChangedVisibleLimits:Z

    and-int v22, v3, p9

    move/from16 v80, v1

    if-eqz v22, :cond_26

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->lastSelectedFolderId:Ljava/lang/Long;

    move-object/from16 v81, v1

    goto :goto_28

    :cond_26
    move-object/from16 v81, p33

    :goto_28
    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->identities:Ljava/util/List;

    move-object/from16 v82, v1

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->notificationSettings:Lnet/thunderbird/feature/notification/NotificationSettings;

    and-int v20, v3, v20

    move-object/from16 v83, v1

    if-eqz v20, :cond_27

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->senderName:Ljava/lang/String;

    move-object/from16 v84, v1

    goto :goto_29

    :cond_27
    move-object/from16 v84, p34

    :goto_29
    and-int v1, v3, v23

    if-eqz v1, :cond_28

    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->signatureUse:Z

    move/from16 v85, v1

    goto :goto_2a

    :cond_28
    move/from16 v85, p35

    :goto_2a
    and-int v1, v3, v24

    if-eqz v1, :cond_29

    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->signature:Ljava/lang/String;

    move-object/from16 v86, v1

    goto :goto_2b

    :cond_29
    move-object/from16 v86, p36

    :goto_2b
    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->shouldMigrateToOAuth:Z

    iget-object v3, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderPathDelimiter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v82 .. v82}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v83 .. v83}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lnet/thunderbird/core/android/account/LegacyAccount;

    move-object/from16 v20, p3

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    move-object/from16 v24, p7

    move/from16 v87, v1

    move/from16 v79, v2

    move-object/from16 v88, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move-object/from16 v18, v21

    move-object/from16 v1, p1

    move-object/from16 v19, p2

    move-object/from16 v21, p4

    invoke-direct/range {v0 .. v88}, Lnet/thunderbird/core/android/account/LegacyAccount;-><init>(Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/account/AccountId;Ljava/lang/String;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Ljava/lang/String;IIZLnet/thunderbird/core/android/account/FolderMode;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/String;Ljava/lang/Long;Lnet/thunderbird/core/android/account/FolderMode;Lnet/thunderbird/core/android/account/FolderMode;Lnet/thunderbird/core/android/account/FolderMode;IZLnet/thunderbird/core/android/account/SortType;Ljava/util/Map;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIZZZIILnet/thunderbird/core/android/account/MessageFormat;ZLnet/thunderbird/core/android/account/QuoteStyle;Ljava/lang/String;ZZZZLjava/lang/String;JZZZZZZZIZJJZIZLjava/lang/Long;Ljava/util/List;Lnet/thunderbird/feature/notification/NotificationSettings;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 12
    .line 13
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSensitiveDebugLoggingEnabled:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isSensitiveDebugLoggingEnabled:Lkotlin/jvm/functions/Function0;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 26
    .line 27
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->name:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->name:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_4
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->email:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->email:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_5

    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_5
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->profile:Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    .line 62
    .line 63
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->profile:Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_6

    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :cond_6
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->deletePolicy:Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 74
    .line 75
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->deletePolicy:Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 76
    .line 77
    if-eq v0, v1, :cond_7

    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_7
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 82
    .line 83
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/ServerSettings;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_8

    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_8
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 94
    .line 95
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/ServerSettings;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_9

    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :cond_9
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->oAuthState:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->oAuthState:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_a

    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :cond_a
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->alwaysBcc:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->alwaysBcc:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_b

    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :cond_b
    iget v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->automaticCheckIntervalMinutes:I

    .line 130
    .line 131
    iget v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->automaticCheckIntervalMinutes:I

    .line 132
    .line 133
    if-eq v0, v1, :cond_c

    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :cond_c
    iget v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->displayCount:I

    .line 138
    .line 139
    iget v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->displayCount:I

    .line 140
    .line 141
    if-eq v0, v1, :cond_d

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_d
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifyNewMail:Z

    .line 146
    .line 147
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifyNewMail:Z

    .line 148
    .line 149
    if-eq v0, v1, :cond_e

    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_e
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderNotifyNewMailMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 154
    .line 155
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->folderNotifyNewMailMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 156
    .line 157
    if-eq v0, v1, :cond_f

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_f
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifySelfNewMail:Z

    .line 162
    .line 163
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifySelfNewMail:Z

    .line 164
    .line 165
    if-eq v0, v1, :cond_10

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_10
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifyContactsMailOnly:Z

    .line 170
    .line 171
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifyContactsMailOnly:Z

    .line 172
    .line 173
    if-eq v0, v1, :cond_11

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_11
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isIgnoreChatMessages:Z

    .line 178
    .line 179
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isIgnoreChatMessages:Z

    .line 180
    .line 181
    if-eq v0, v1, :cond_12

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_12
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->legacyInboxFolder:Ljava/lang/String;

    .line 186
    .line 187
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->legacyInboxFolder:Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_13

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_13
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedDraftsFolder:Ljava/lang/String;

    .line 198
    .line 199
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->importedDraftsFolder:Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_14

    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_14
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedSentFolder:Ljava/lang/String;

    .line 210
    .line 211
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->importedSentFolder:Ljava/lang/String;

    .line 212
    .line 213
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-nez v0, :cond_15

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_15
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedTrashFolder:Ljava/lang/String;

    .line 222
    .line 223
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->importedTrashFolder:Ljava/lang/String;

    .line 224
    .line 225
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-nez v0, :cond_16

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_16
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedArchiveFolder:Ljava/lang/String;

    .line 234
    .line 235
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->importedArchiveFolder:Ljava/lang/String;

    .line 236
    .line 237
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-nez v0, :cond_17

    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_17
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedSpamFolder:Ljava/lang/String;

    .line 246
    .line 247
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->importedSpamFolder:Ljava/lang/String;

    .line 248
    .line 249
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-nez v0, :cond_18

    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_18
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->inboxFolderId:Ljava/lang/Long;

    .line 258
    .line 259
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->inboxFolderId:Ljava/lang/Long;

    .line 260
    .line 261
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-nez v0, :cond_19

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_19
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderId:Ljava/lang/Long;

    .line 270
    .line 271
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderId:Ljava/lang/Long;

    .line 272
    .line 273
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-nez v0, :cond_1a

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_1a
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->sentFolderId:Ljava/lang/Long;

    .line 282
    .line 283
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->sentFolderId:Ljava/lang/Long;

    .line 284
    .line 285
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-nez v0, :cond_1b

    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :cond_1b
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderId:Ljava/lang/Long;

    .line 294
    .line 295
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderId:Ljava/lang/Long;

    .line 296
    .line 297
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-nez v0, :cond_1c

    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :cond_1c
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderId:Ljava/lang/Long;

    .line 306
    .line 307
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderId:Ljava/lang/Long;

    .line 308
    .line 309
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-nez v0, :cond_1d

    .line 314
    .line 315
    goto/16 :goto_0

    .line 316
    .line 317
    :cond_1d
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderId:Ljava/lang/Long;

    .line 318
    .line 319
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderId:Ljava/lang/Long;

    .line 320
    .line 321
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-nez v0, :cond_1e

    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_1e
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 330
    .line 331
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 332
    .line 333
    if-eq v0, v1, :cond_1f

    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :cond_1f
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->sentFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 338
    .line 339
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->sentFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 340
    .line 341
    if-eq v0, v1, :cond_20

    .line 342
    .line 343
    goto/16 :goto_0

    .line 344
    .line 345
    :cond_20
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 346
    .line 347
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 348
    .line 349
    if-eq v0, v1, :cond_21

    .line 350
    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :cond_21
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 354
    .line 355
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 356
    .line 357
    if-eq v0, v1, :cond_22

    .line 358
    .line 359
    goto/16 :goto_0

    .line 360
    .line 361
    :cond_22
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 362
    .line 363
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 364
    .line 365
    if-eq v0, v1, :cond_23

    .line 366
    .line 367
    goto/16 :goto_0

    .line 368
    .line 369
    :cond_23
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedAutoExpandFolder:Ljava/lang/String;

    .line 370
    .line 371
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->importedAutoExpandFolder:Ljava/lang/String;

    .line 372
    .line 373
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-nez v0, :cond_24

    .line 378
    .line 379
    goto/16 :goto_0

    .line 380
    .line 381
    :cond_24
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->autoExpandFolderId:Ljava/lang/Long;

    .line 382
    .line 383
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->autoExpandFolderId:Ljava/lang/Long;

    .line 384
    .line 385
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-nez v0, :cond_25

    .line 390
    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :cond_25
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderDisplayMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 394
    .line 395
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->folderDisplayMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 396
    .line 397
    if-eq v0, v1, :cond_26

    .line 398
    .line 399
    goto/16 :goto_0

    .line 400
    .line 401
    :cond_26
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderSyncMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 402
    .line 403
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->folderSyncMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 404
    .line 405
    if-eq v0, v1, :cond_27

    .line 406
    .line 407
    goto/16 :goto_0

    .line 408
    .line 409
    :cond_27
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderPushMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 410
    .line 411
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->folderPushMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 412
    .line 413
    if-eq v0, v1, :cond_28

    .line 414
    .line 415
    goto/16 :goto_0

    .line 416
    .line 417
    :cond_28
    iget v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->accountNumber:I

    .line 418
    .line 419
    iget v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->accountNumber:I

    .line 420
    .line 421
    if-eq v0, v1, :cond_29

    .line 422
    .line 423
    goto/16 :goto_0

    .line 424
    .line 425
    :cond_29
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifySync:Z

    .line 426
    .line 427
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifySync:Z

    .line 428
    .line 429
    if-eq v0, v1, :cond_2a

    .line 430
    .line 431
    goto/16 :goto_0

    .line 432
    .line 433
    :cond_2a
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 434
    .line 435
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 436
    .line 437
    if-eq v0, v1, :cond_2b

    .line 438
    .line 439
    goto/16 :goto_0

    .line 440
    .line 441
    :cond_2b
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->sortAscending:Ljava/util/Map;

    .line 442
    .line 443
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->sortAscending:Ljava/util/Map;

    .line 444
    .line 445
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    if-nez v0, :cond_2c

    .line 450
    .line 451
    goto/16 :goto_0

    .line 452
    .line 453
    :cond_2c
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->showPictures:Lnet/thunderbird/core/android/account/ShowPictures;

    .line 454
    .line 455
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->showPictures:Lnet/thunderbird/core/android/account/ShowPictures;

    .line 456
    .line 457
    if-eq v0, v1, :cond_2d

    .line 458
    .line 459
    goto/16 :goto_0

    .line 460
    .line 461
    :cond_2d
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSignatureBeforeQuotedText:Z

    .line 462
    .line 463
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isSignatureBeforeQuotedText:Z

    .line 464
    .line 465
    if-eq v0, v1, :cond_2e

    .line 466
    .line 467
    goto/16 :goto_0

    .line 468
    .line 469
    :cond_2e
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->expungePolicy:Lnet/thunderbird/core/android/account/Expunge;

    .line 470
    .line 471
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->expungePolicy:Lnet/thunderbird/core/android/account/Expunge;

    .line 472
    .line 473
    if-eq v0, v1, :cond_2f

    .line 474
    .line 475
    goto/16 :goto_0

    .line 476
    .line 477
    :cond_2f
    iget v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->maxPushFolders:I

    .line 478
    .line 479
    iget v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->maxPushFolders:I

    .line 480
    .line 481
    if-eq v0, v1, :cond_30

    .line 482
    .line 483
    goto/16 :goto_0

    .line 484
    .line 485
    :cond_30
    iget v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->idleRefreshMinutes:I

    .line 486
    .line 487
    iget v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->idleRefreshMinutes:I

    .line 488
    .line 489
    if-eq v0, v1, :cond_31

    .line 490
    .line 491
    goto/16 :goto_0

    .line 492
    .line 493
    :cond_31
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->useCompression:Z

    .line 494
    .line 495
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->useCompression:Z

    .line 496
    .line 497
    if-eq v0, v1, :cond_32

    .line 498
    .line 499
    goto/16 :goto_0

    .line 500
    .line 501
    :cond_32
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSendClientInfoEnabled:Z

    .line 502
    .line 503
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isSendClientInfoEnabled:Z

    .line 504
    .line 505
    if-eq v0, v1, :cond_33

    .line 506
    .line 507
    goto/16 :goto_0

    .line 508
    .line 509
    :cond_33
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSubscribedFoldersOnly:Z

    .line 510
    .line 511
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isSubscribedFoldersOnly:Z

    .line 512
    .line 513
    if-eq v0, v1, :cond_34

    .line 514
    .line 515
    goto/16 :goto_0

    .line 516
    .line 517
    :cond_34
    iget v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->maximumPolledMessageAge:I

    .line 518
    .line 519
    iget v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->maximumPolledMessageAge:I

    .line 520
    .line 521
    if-eq v0, v1, :cond_35

    .line 522
    .line 523
    goto/16 :goto_0

    .line 524
    .line 525
    :cond_35
    iget v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->maximumAutoDownloadMessageSize:I

    .line 526
    .line 527
    iget v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->maximumAutoDownloadMessageSize:I

    .line 528
    .line 529
    if-eq v0, v1, :cond_36

    .line 530
    .line 531
    goto/16 :goto_0

    .line 532
    .line 533
    :cond_36
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->messageFormat:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 534
    .line 535
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->messageFormat:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 536
    .line 537
    if-eq v0, v1, :cond_37

    .line 538
    .line 539
    goto/16 :goto_0

    .line 540
    .line 541
    :cond_37
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isMessageReadReceipt:Z

    .line 542
    .line 543
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isMessageReadReceipt:Z

    .line 544
    .line 545
    if-eq v0, v1, :cond_38

    .line 546
    .line 547
    goto/16 :goto_0

    .line 548
    .line 549
    :cond_38
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->quoteStyle:Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 550
    .line 551
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->quoteStyle:Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 552
    .line 553
    if-eq v0, v1, :cond_39

    .line 554
    .line 555
    goto/16 :goto_0

    .line 556
    .line 557
    :cond_39
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->quotePrefix:Ljava/lang/String;

    .line 558
    .line 559
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->quotePrefix:Ljava/lang/String;

    .line 560
    .line 561
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-nez v0, :cond_3a

    .line 566
    .line 567
    goto/16 :goto_0

    .line 568
    .line 569
    :cond_3a
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isDefaultQuotedTextShown:Z

    .line 570
    .line 571
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isDefaultQuotedTextShown:Z

    .line 572
    .line 573
    if-eq v0, v1, :cond_3b

    .line 574
    .line 575
    goto/16 :goto_0

    .line 576
    .line 577
    :cond_3b
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isReplyAfterQuote:Z

    .line 578
    .line 579
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isReplyAfterQuote:Z

    .line 580
    .line 581
    if-eq v0, v1, :cond_3c

    .line 582
    .line 583
    goto/16 :goto_0

    .line 584
    .line 585
    :cond_3c
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isStripSignature:Z

    .line 586
    .line 587
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isStripSignature:Z

    .line 588
    .line 589
    if-eq v0, v1, :cond_3d

    .line 590
    .line 591
    goto/16 :goto_0

    .line 592
    .line 593
    :cond_3d
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSyncRemoteDeletions:Z

    .line 594
    .line 595
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isSyncRemoteDeletions:Z

    .line 596
    .line 597
    if-eq v0, v1, :cond_3e

    .line 598
    .line 599
    goto/16 :goto_0

    .line 600
    .line 601
    :cond_3e
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->openPgpProvider:Ljava/lang/String;

    .line 602
    .line 603
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->openPgpProvider:Ljava/lang/String;

    .line 604
    .line 605
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    move-result v0

    .line 609
    if-nez v0, :cond_3f

    .line 610
    .line 611
    goto/16 :goto_0

    .line 612
    .line 613
    :cond_3f
    iget-wide v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->openPgpKey:J

    .line 614
    .line 615
    iget-wide v2, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->openPgpKey:J

    .line 616
    .line 617
    cmp-long v0, v0, v2

    .line 618
    .line 619
    if-eqz v0, :cond_40

    .line 620
    .line 621
    goto/16 :goto_0

    .line 622
    .line 623
    :cond_40
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->autocryptPreferEncryptMutual:Z

    .line 624
    .line 625
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->autocryptPreferEncryptMutual:Z

    .line 626
    .line 627
    if-eq v0, v1, :cond_41

    .line 628
    .line 629
    goto/16 :goto_0

    .line 630
    .line 631
    :cond_41
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpHideSignOnly:Z

    .line 632
    .line 633
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpHideSignOnly:Z

    .line 634
    .line 635
    if-eq v0, v1, :cond_42

    .line 636
    .line 637
    goto/16 :goto_0

    .line 638
    .line 639
    :cond_42
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpEncryptSubject:Z

    .line 640
    .line 641
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpEncryptSubject:Z

    .line 642
    .line 643
    if-eq v0, v1, :cond_43

    .line 644
    .line 645
    goto/16 :goto_0

    .line 646
    .line 647
    :cond_43
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpEncryptAllDrafts:Z

    .line 648
    .line 649
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpEncryptAllDrafts:Z

    .line 650
    .line 651
    if-eq v0, v1, :cond_44

    .line 652
    .line 653
    goto/16 :goto_0

    .line 654
    .line 655
    :cond_44
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isMarkMessageAsReadOnView:Z

    .line 656
    .line 657
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isMarkMessageAsReadOnView:Z

    .line 658
    .line 659
    if-eq v0, v1, :cond_45

    .line 660
    .line 661
    goto/16 :goto_0

    .line 662
    .line 663
    :cond_45
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isMarkMessageAsReadOnDelete:Z

    .line 664
    .line 665
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isMarkMessageAsReadOnDelete:Z

    .line 666
    .line 667
    if-eq v0, v1, :cond_46

    .line 668
    .line 669
    goto/16 :goto_0

    .line 670
    .line 671
    :cond_46
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isAlwaysShowCcBcc:Z

    .line 672
    .line 673
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isAlwaysShowCcBcc:Z

    .line 674
    .line 675
    if-eq v0, v1, :cond_47

    .line 676
    .line 677
    goto/16 :goto_0

    .line 678
    .line 679
    :cond_47
    iget v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->remoteSearchNumResults:I

    .line 680
    .line 681
    iget v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->remoteSearchNumResults:I

    .line 682
    .line 683
    if-eq v0, v1, :cond_48

    .line 684
    .line 685
    goto/16 :goto_0

    .line 686
    .line 687
    :cond_48
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isUploadSentMessages:Z

    .line 688
    .line 689
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isUploadSentMessages:Z

    .line 690
    .line 691
    if-eq v0, v1, :cond_49

    .line 692
    .line 693
    goto/16 :goto_0

    .line 694
    .line 695
    :cond_49
    iget-wide v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->lastSyncTime:J

    .line 696
    .line 697
    iget-wide v2, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->lastSyncTime:J

    .line 698
    .line 699
    cmp-long v0, v0, v2

    .line 700
    .line 701
    if-eqz v0, :cond_4a

    .line 702
    .line 703
    goto/16 :goto_0

    .line 704
    .line 705
    :cond_4a
    iget-wide v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->lastFolderListRefreshTime:J

    .line 706
    .line 707
    iget-wide v2, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->lastFolderListRefreshTime:J

    .line 708
    .line 709
    cmp-long v0, v0, v2

    .line 710
    .line 711
    if-eqz v0, :cond_4b

    .line 712
    .line 713
    goto/16 :goto_0

    .line 714
    .line 715
    :cond_4b
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isFinishedSetup:Z

    .line 716
    .line 717
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isFinishedSetup:Z

    .line 718
    .line 719
    if-eq v0, v1, :cond_4c

    .line 720
    .line 721
    goto :goto_0

    .line 722
    :cond_4c
    iget v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->messagesNotificationChannelVersion:I

    .line 723
    .line 724
    iget v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->messagesNotificationChannelVersion:I

    .line 725
    .line 726
    if-eq v0, v1, :cond_4d

    .line 727
    .line 728
    goto :goto_0

    .line 729
    :cond_4d
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isChangedVisibleLimits:Z

    .line 730
    .line 731
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->isChangedVisibleLimits:Z

    .line 732
    .line 733
    if-eq v0, v1, :cond_4e

    .line 734
    .line 735
    goto :goto_0

    .line 736
    :cond_4e
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->lastSelectedFolderId:Ljava/lang/Long;

    .line 737
    .line 738
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->lastSelectedFolderId:Ljava/lang/Long;

    .line 739
    .line 740
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 741
    .line 742
    .line 743
    move-result v0

    .line 744
    if-nez v0, :cond_4f

    .line 745
    .line 746
    goto :goto_0

    .line 747
    :cond_4f
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->identities:Ljava/util/List;

    .line 748
    .line 749
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->identities:Ljava/util/List;

    .line 750
    .line 751
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    move-result v0

    .line 755
    if-nez v0, :cond_50

    .line 756
    .line 757
    goto :goto_0

    .line 758
    :cond_50
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->notificationSettings:Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 759
    .line 760
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->notificationSettings:Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 761
    .line 762
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    move-result v0

    .line 766
    if-nez v0, :cond_51

    .line 767
    .line 768
    goto :goto_0

    .line 769
    :cond_51
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->senderName:Ljava/lang/String;

    .line 770
    .line 771
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->senderName:Ljava/lang/String;

    .line 772
    .line 773
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    move-result v0

    .line 777
    if-nez v0, :cond_52

    .line 778
    .line 779
    goto :goto_0

    .line 780
    :cond_52
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->signatureUse:Z

    .line 781
    .line 782
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->signatureUse:Z

    .line 783
    .line 784
    if-eq v0, v1, :cond_53

    .line 785
    .line 786
    goto :goto_0

    .line 787
    :cond_53
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->signature:Ljava/lang/String;

    .line 788
    .line 789
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->signature:Ljava/lang/String;

    .line 790
    .line 791
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    move-result v0

    .line 795
    if-nez v0, :cond_54

    .line 796
    .line 797
    goto :goto_0

    .line 798
    :cond_54
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->shouldMigrateToOAuth:Z

    .line 799
    .line 800
    iget-boolean v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->shouldMigrateToOAuth:Z

    .line 801
    .line 802
    if-eq v0, v1, :cond_55

    .line 803
    .line 804
    goto :goto_0

    .line 805
    :cond_55
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderPathDelimiter:Ljava/lang/String;

    .line 806
    .line 807
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->folderPathDelimiter:Ljava/lang/String;

    .line 808
    .line 809
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    move-result p0

    .line 813
    if-nez p0, :cond_56

    .line 814
    .line 815
    :goto_0
    const/4 p0, 0x0

    .line 816
    return p0

    .line 817
    :cond_56
    :goto_1
    const/4 p0, 0x1

    .line 818
    return p0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->email:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasArchiveFolder()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderId:Ljava/lang/Long;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final hashCode()I
    .locals 10

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSensitiveDebugLoggingEnabled:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 11
    .line 12
    iget-object v2, v2, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    mul-int/2addr v2, v1

    .line 20
    const/4 v0, 0x0

    .line 21
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->name:Ljava/lang/String;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    move v3, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    :goto_0
    add-int/2addr v2, v3

    .line 32
    mul-int/2addr v2, v1

    .line 33
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->email:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->profile:Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    .line 40
    .line 41
    invoke-virtual {v3}, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    add-int/2addr v3, v2

    .line 46
    mul-int/2addr v3, v1

    .line 47
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->deletePolicy:Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    add-int/2addr v2, v3

    .line 54
    mul-int/2addr v2, v1

    .line 55
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/fsck/k9/mail/ServerSettings;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    add-int/2addr v3, v2

    .line 62
    mul-int/2addr v3, v1

    .line 63
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/fsck/k9/mail/ServerSettings;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    add-int/2addr v2, v3

    .line 70
    mul-int/2addr v2, v1

    .line 71
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->oAuthState:Ljava/lang/String;

    .line 72
    .line 73
    if-nez v3, :cond_1

    .line 74
    .line 75
    move v3, v0

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    :goto_1
    add-int/2addr v2, v3

    .line 82
    mul-int/2addr v2, v1

    .line 83
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->alwaysBcc:Ljava/lang/String;

    .line 84
    .line 85
    if-nez v3, :cond_2

    .line 86
    .line 87
    move v3, v0

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    :goto_2
    add-int/2addr v2, v3

    .line 94
    mul-int/2addr v2, v1

    .line 95
    iget v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->automaticCheckIntervalMinutes:I

    .line 96
    .line 97
    add-int/2addr v2, v3

    .line 98
    mul-int/2addr v2, v1

    .line 99
    iget v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->displayCount:I

    .line 100
    .line 101
    add-int/2addr v2, v3

    .line 102
    mul-int/2addr v2, v1

    .line 103
    iget-boolean v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifyNewMail:Z

    .line 104
    .line 105
    const/16 v4, 0x4d5

    .line 106
    .line 107
    const/16 v5, 0x4cf

    .line 108
    .line 109
    if-eqz v3, :cond_3

    .line 110
    .line 111
    move v3, v5

    .line 112
    goto :goto_3

    .line 113
    :cond_3
    move v3, v4

    .line 114
    :goto_3
    add-int/2addr v2, v3

    .line 115
    mul-int/2addr v2, v1

    .line 116
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderNotifyNewMailMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    add-int/2addr v3, v2

    .line 123
    mul-int/2addr v3, v1

    .line 124
    iget-boolean v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifySelfNewMail:Z

    .line 125
    .line 126
    if-eqz v2, :cond_4

    .line 127
    .line 128
    move v2, v5

    .line 129
    goto :goto_4

    .line 130
    :cond_4
    move v2, v4

    .line 131
    :goto_4
    add-int/2addr v3, v2

    .line 132
    mul-int/2addr v3, v1

    .line 133
    iget-boolean v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifyContactsMailOnly:Z

    .line 134
    .line 135
    if-eqz v2, :cond_5

    .line 136
    .line 137
    move v2, v5

    .line 138
    goto :goto_5

    .line 139
    :cond_5
    move v2, v4

    .line 140
    :goto_5
    add-int/2addr v3, v2

    .line 141
    mul-int/2addr v3, v1

    .line 142
    iget-boolean v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isIgnoreChatMessages:Z

    .line 143
    .line 144
    if-eqz v2, :cond_6

    .line 145
    .line 146
    move v2, v5

    .line 147
    goto :goto_6

    .line 148
    :cond_6
    move v2, v4

    .line 149
    :goto_6
    add-int/2addr v3, v2

    .line 150
    mul-int/2addr v3, v1

    .line 151
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->legacyInboxFolder:Ljava/lang/String;

    .line 152
    .line 153
    if-nez v2, :cond_7

    .line 154
    .line 155
    move v2, v0

    .line 156
    goto :goto_7

    .line 157
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    :goto_7
    add-int/2addr v3, v2

    .line 162
    mul-int/2addr v3, v1

    .line 163
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedDraftsFolder:Ljava/lang/String;

    .line 164
    .line 165
    if-nez v2, :cond_8

    .line 166
    .line 167
    move v2, v0

    .line 168
    goto :goto_8

    .line 169
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    :goto_8
    add-int/2addr v3, v2

    .line 174
    mul-int/2addr v3, v1

    .line 175
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedSentFolder:Ljava/lang/String;

    .line 176
    .line 177
    if-nez v2, :cond_9

    .line 178
    .line 179
    move v2, v0

    .line 180
    goto :goto_9

    .line 181
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    :goto_9
    add-int/2addr v3, v2

    .line 186
    mul-int/2addr v3, v1

    .line 187
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedTrashFolder:Ljava/lang/String;

    .line 188
    .line 189
    if-nez v2, :cond_a

    .line 190
    .line 191
    move v2, v0

    .line 192
    goto :goto_a

    .line 193
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    :goto_a
    add-int/2addr v3, v2

    .line 198
    mul-int/2addr v3, v1

    .line 199
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedArchiveFolder:Ljava/lang/String;

    .line 200
    .line 201
    if-nez v2, :cond_b

    .line 202
    .line 203
    move v2, v0

    .line 204
    goto :goto_b

    .line 205
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    :goto_b
    add-int/2addr v3, v2

    .line 210
    mul-int/2addr v3, v1

    .line 211
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedSpamFolder:Ljava/lang/String;

    .line 212
    .line 213
    if-nez v2, :cond_c

    .line 214
    .line 215
    move v2, v0

    .line 216
    goto :goto_c

    .line 217
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    :goto_c
    add-int/2addr v3, v2

    .line 222
    mul-int/2addr v3, v1

    .line 223
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->inboxFolderId:Ljava/lang/Long;

    .line 224
    .line 225
    if-nez v2, :cond_d

    .line 226
    .line 227
    move v2, v0

    .line 228
    goto :goto_d

    .line 229
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    :goto_d
    add-int/2addr v3, v2

    .line 234
    mul-int/2addr v3, v1

    .line 235
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderId:Ljava/lang/Long;

    .line 236
    .line 237
    if-nez v2, :cond_e

    .line 238
    .line 239
    move v2, v0

    .line 240
    goto :goto_e

    .line 241
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    :goto_e
    add-int/2addr v3, v2

    .line 246
    mul-int/2addr v3, v1

    .line 247
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->sentFolderId:Ljava/lang/Long;

    .line 248
    .line 249
    if-nez v2, :cond_f

    .line 250
    .line 251
    move v2, v0

    .line 252
    goto :goto_f

    .line 253
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    :goto_f
    add-int/2addr v3, v2

    .line 258
    mul-int/2addr v3, v1

    .line 259
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderId:Ljava/lang/Long;

    .line 260
    .line 261
    if-nez v2, :cond_10

    .line 262
    .line 263
    move v2, v0

    .line 264
    goto :goto_10

    .line 265
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    :goto_10
    add-int/2addr v3, v2

    .line 270
    mul-int/2addr v3, v1

    .line 271
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderId:Ljava/lang/Long;

    .line 272
    .line 273
    if-nez v2, :cond_11

    .line 274
    .line 275
    move v2, v0

    .line 276
    goto :goto_11

    .line 277
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    :goto_11
    add-int/2addr v3, v2

    .line 282
    mul-int/2addr v3, v1

    .line 283
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderId:Ljava/lang/Long;

    .line 284
    .line 285
    if-nez v2, :cond_12

    .line 286
    .line 287
    move v2, v0

    .line 288
    goto :goto_12

    .line 289
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    :goto_12
    add-int/2addr v3, v2

    .line 294
    mul-int/2addr v3, v1

    .line 295
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 296
    .line 297
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    add-int/2addr v2, v3

    .line 302
    mul-int/2addr v2, v1

    .line 303
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->sentFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 304
    .line 305
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    add-int/2addr v3, v2

    .line 310
    mul-int/2addr v3, v1

    .line 311
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 312
    .line 313
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    add-int/2addr v2, v3

    .line 318
    mul-int/2addr v2, v1

    .line 319
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 320
    .line 321
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    add-int/2addr v3, v2

    .line 326
    mul-int/2addr v3, v1

    .line 327
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    add-int/2addr v2, v3

    .line 334
    mul-int/2addr v2, v1

    .line 335
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedAutoExpandFolder:Ljava/lang/String;

    .line 336
    .line 337
    if-nez v3, :cond_13

    .line 338
    .line 339
    move v3, v0

    .line 340
    goto :goto_13

    .line 341
    :cond_13
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    :goto_13
    add-int/2addr v2, v3

    .line 346
    mul-int/2addr v2, v1

    .line 347
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->autoExpandFolderId:Ljava/lang/Long;

    .line 348
    .line 349
    if-nez v3, :cond_14

    .line 350
    .line 351
    move v3, v0

    .line 352
    goto :goto_14

    .line 353
    :cond_14
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    :goto_14
    add-int/2addr v2, v3

    .line 358
    mul-int/2addr v2, v1

    .line 359
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderDisplayMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 360
    .line 361
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    add-int/2addr v3, v2

    .line 366
    mul-int/2addr v3, v1

    .line 367
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderSyncMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 368
    .line 369
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    add-int/2addr v2, v3

    .line 374
    mul-int/2addr v2, v1

    .line 375
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderPushMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 376
    .line 377
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    add-int/2addr v3, v2

    .line 382
    mul-int/2addr v3, v1

    .line 383
    iget v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->accountNumber:I

    .line 384
    .line 385
    add-int/2addr v3, v2

    .line 386
    mul-int/2addr v3, v1

    .line 387
    iget-boolean v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifySync:Z

    .line 388
    .line 389
    if-eqz v2, :cond_15

    .line 390
    .line 391
    move v2, v5

    .line 392
    goto :goto_15

    .line 393
    :cond_15
    move v2, v4

    .line 394
    :goto_15
    add-int/2addr v3, v2

    .line 395
    mul-int/2addr v3, v1

    .line 396
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 397
    .line 398
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    add-int/2addr v2, v3

    .line 403
    mul-int/2addr v2, v1

    .line 404
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->sortAscending:Ljava/util/Map;

    .line 405
    .line 406
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    add-int/2addr v3, v2

    .line 411
    mul-int/2addr v3, v1

    .line 412
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->showPictures:Lnet/thunderbird/core/android/account/ShowPictures;

    .line 413
    .line 414
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    add-int/2addr v2, v3

    .line 419
    mul-int/2addr v2, v1

    .line 420
    iget-boolean v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSignatureBeforeQuotedText:Z

    .line 421
    .line 422
    if-eqz v3, :cond_16

    .line 423
    .line 424
    move v3, v5

    .line 425
    goto :goto_16

    .line 426
    :cond_16
    move v3, v4

    .line 427
    :goto_16
    add-int/2addr v2, v3

    .line 428
    mul-int/2addr v2, v1

    .line 429
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->expungePolicy:Lnet/thunderbird/core/android/account/Expunge;

    .line 430
    .line 431
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    add-int/2addr v3, v2

    .line 436
    mul-int/2addr v3, v1

    .line 437
    iget v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->maxPushFolders:I

    .line 438
    .line 439
    add-int/2addr v3, v2

    .line 440
    mul-int/2addr v3, v1

    .line 441
    iget v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->idleRefreshMinutes:I

    .line 442
    .line 443
    add-int/2addr v3, v2

    .line 444
    mul-int/2addr v3, v1

    .line 445
    iget-boolean v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->useCompression:Z

    .line 446
    .line 447
    if-eqz v2, :cond_17

    .line 448
    .line 449
    move v2, v5

    .line 450
    goto :goto_17

    .line 451
    :cond_17
    move v2, v4

    .line 452
    :goto_17
    add-int/2addr v3, v2

    .line 453
    mul-int/2addr v3, v1

    .line 454
    iget-boolean v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSendClientInfoEnabled:Z

    .line 455
    .line 456
    if-eqz v2, :cond_18

    .line 457
    .line 458
    move v2, v5

    .line 459
    goto :goto_18

    .line 460
    :cond_18
    move v2, v4

    .line 461
    :goto_18
    add-int/2addr v3, v2

    .line 462
    mul-int/2addr v3, v1

    .line 463
    iget-boolean v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSubscribedFoldersOnly:Z

    .line 464
    .line 465
    if-eqz v2, :cond_19

    .line 466
    .line 467
    move v2, v5

    .line 468
    goto :goto_19

    .line 469
    :cond_19
    move v2, v4

    .line 470
    :goto_19
    add-int/2addr v3, v2

    .line 471
    mul-int/2addr v3, v1

    .line 472
    iget v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->maximumPolledMessageAge:I

    .line 473
    .line 474
    add-int/2addr v3, v2

    .line 475
    mul-int/2addr v3, v1

    .line 476
    iget v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->maximumAutoDownloadMessageSize:I

    .line 477
    .line 478
    add-int/2addr v3, v2

    .line 479
    mul-int/2addr v3, v1

    .line 480
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->messageFormat:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 481
    .line 482
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    add-int/2addr v2, v3

    .line 487
    mul-int/2addr v2, v1

    .line 488
    add-int/2addr v2, v4

    .line 489
    mul-int/2addr v2, v1

    .line 490
    iget-boolean v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isMessageReadReceipt:Z

    .line 491
    .line 492
    if-eqz v3, :cond_1a

    .line 493
    .line 494
    move v3, v5

    .line 495
    goto :goto_1a

    .line 496
    :cond_1a
    move v3, v4

    .line 497
    :goto_1a
    add-int/2addr v2, v3

    .line 498
    mul-int/2addr v2, v1

    .line 499
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->quoteStyle:Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 500
    .line 501
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 502
    .line 503
    .line 504
    move-result v3

    .line 505
    add-int/2addr v3, v2

    .line 506
    mul-int/2addr v3, v1

    .line 507
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->quotePrefix:Ljava/lang/String;

    .line 508
    .line 509
    if-nez v2, :cond_1b

    .line 510
    .line 511
    move v2, v0

    .line 512
    goto :goto_1b

    .line 513
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    :goto_1b
    add-int/2addr v3, v2

    .line 518
    mul-int/2addr v3, v1

    .line 519
    iget-boolean v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isDefaultQuotedTextShown:Z

    .line 520
    .line 521
    if-eqz v2, :cond_1c

    .line 522
    .line 523
    move v2, v5

    .line 524
    goto :goto_1c

    .line 525
    :cond_1c
    move v2, v4

    .line 526
    :goto_1c
    add-int/2addr v3, v2

    .line 527
    mul-int/2addr v3, v1

    .line 528
    iget-boolean v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isReplyAfterQuote:Z

    .line 529
    .line 530
    if-eqz v2, :cond_1d

    .line 531
    .line 532
    move v2, v5

    .line 533
    goto :goto_1d

    .line 534
    :cond_1d
    move v2, v4

    .line 535
    :goto_1d
    add-int/2addr v3, v2

    .line 536
    mul-int/2addr v3, v1

    .line 537
    iget-boolean v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isStripSignature:Z

    .line 538
    .line 539
    if-eqz v2, :cond_1e

    .line 540
    .line 541
    move v2, v5

    .line 542
    goto :goto_1e

    .line 543
    :cond_1e
    move v2, v4

    .line 544
    :goto_1e
    add-int/2addr v3, v2

    .line 545
    mul-int/2addr v3, v1

    .line 546
    iget-boolean v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSyncRemoteDeletions:Z

    .line 547
    .line 548
    if-eqz v2, :cond_1f

    .line 549
    .line 550
    move v2, v5

    .line 551
    goto :goto_1f

    .line 552
    :cond_1f
    move v2, v4

    .line 553
    :goto_1f
    add-int/2addr v3, v2

    .line 554
    mul-int/2addr v3, v1

    .line 555
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->openPgpProvider:Ljava/lang/String;

    .line 556
    .line 557
    if-nez v2, :cond_20

    .line 558
    .line 559
    move v2, v0

    .line 560
    goto :goto_20

    .line 561
    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 562
    .line 563
    .line 564
    move-result v2

    .line 565
    :goto_20
    add-int/2addr v3, v2

    .line 566
    mul-int/2addr v3, v1

    .line 567
    iget-wide v6, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->openPgpKey:J

    .line 568
    .line 569
    const/16 v2, 0x20

    .line 570
    .line 571
    ushr-long v8, v6, v2

    .line 572
    .line 573
    xor-long/2addr v6, v8

    .line 574
    long-to-int v6, v6

    .line 575
    add-int/2addr v3, v6

    .line 576
    mul-int/2addr v3, v1

    .line 577
    iget-boolean v6, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->autocryptPreferEncryptMutual:Z

    .line 578
    .line 579
    if-eqz v6, :cond_21

    .line 580
    .line 581
    move v6, v5

    .line 582
    goto :goto_21

    .line 583
    :cond_21
    move v6, v4

    .line 584
    :goto_21
    add-int/2addr v3, v6

    .line 585
    mul-int/2addr v3, v1

    .line 586
    iget-boolean v6, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpHideSignOnly:Z

    .line 587
    .line 588
    if-eqz v6, :cond_22

    .line 589
    .line 590
    move v6, v5

    .line 591
    goto :goto_22

    .line 592
    :cond_22
    move v6, v4

    .line 593
    :goto_22
    add-int/2addr v3, v6

    .line 594
    mul-int/2addr v3, v1

    .line 595
    iget-boolean v6, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpEncryptSubject:Z

    .line 596
    .line 597
    if-eqz v6, :cond_23

    .line 598
    .line 599
    move v6, v5

    .line 600
    goto :goto_23

    .line 601
    :cond_23
    move v6, v4

    .line 602
    :goto_23
    add-int/2addr v3, v6

    .line 603
    mul-int/2addr v3, v1

    .line 604
    iget-boolean v6, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpEncryptAllDrafts:Z

    .line 605
    .line 606
    if-eqz v6, :cond_24

    .line 607
    .line 608
    move v6, v5

    .line 609
    goto :goto_24

    .line 610
    :cond_24
    move v6, v4

    .line 611
    :goto_24
    add-int/2addr v3, v6

    .line 612
    mul-int/2addr v3, v1

    .line 613
    iget-boolean v6, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isMarkMessageAsReadOnView:Z

    .line 614
    .line 615
    if-eqz v6, :cond_25

    .line 616
    .line 617
    move v6, v5

    .line 618
    goto :goto_25

    .line 619
    :cond_25
    move v6, v4

    .line 620
    :goto_25
    add-int/2addr v3, v6

    .line 621
    mul-int/2addr v3, v1

    .line 622
    iget-boolean v6, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isMarkMessageAsReadOnDelete:Z

    .line 623
    .line 624
    if-eqz v6, :cond_26

    .line 625
    .line 626
    move v6, v5

    .line 627
    goto :goto_26

    .line 628
    :cond_26
    move v6, v4

    .line 629
    :goto_26
    add-int/2addr v3, v6

    .line 630
    mul-int/2addr v3, v1

    .line 631
    iget-boolean v6, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isAlwaysShowCcBcc:Z

    .line 632
    .line 633
    if-eqz v6, :cond_27

    .line 634
    .line 635
    move v6, v5

    .line 636
    goto :goto_27

    .line 637
    :cond_27
    move v6, v4

    .line 638
    :goto_27
    add-int/2addr v3, v6

    .line 639
    mul-int/2addr v3, v1

    .line 640
    add-int/2addr v3, v4

    .line 641
    mul-int/2addr v3, v1

    .line 642
    iget v6, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->remoteSearchNumResults:I

    .line 643
    .line 644
    add-int/2addr v3, v6

    .line 645
    mul-int/2addr v3, v1

    .line 646
    iget-boolean v6, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isUploadSentMessages:Z

    .line 647
    .line 648
    if-eqz v6, :cond_28

    .line 649
    .line 650
    move v6, v5

    .line 651
    goto :goto_28

    .line 652
    :cond_28
    move v6, v4

    .line 653
    :goto_28
    add-int/2addr v3, v6

    .line 654
    mul-int/2addr v3, v1

    .line 655
    iget-wide v6, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->lastSyncTime:J

    .line 656
    .line 657
    ushr-long v8, v6, v2

    .line 658
    .line 659
    xor-long/2addr v6, v8

    .line 660
    long-to-int v6, v6

    .line 661
    add-int/2addr v3, v6

    .line 662
    mul-int/2addr v3, v1

    .line 663
    iget-wide v6, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->lastFolderListRefreshTime:J

    .line 664
    .line 665
    ushr-long v8, v6, v2

    .line 666
    .line 667
    xor-long/2addr v6, v8

    .line 668
    long-to-int v2, v6

    .line 669
    add-int/2addr v3, v2

    .line 670
    mul-int/2addr v3, v1

    .line 671
    iget-boolean v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isFinishedSetup:Z

    .line 672
    .line 673
    if-eqz v2, :cond_29

    .line 674
    .line 675
    move v2, v5

    .line 676
    goto :goto_29

    .line 677
    :cond_29
    move v2, v4

    .line 678
    :goto_29
    add-int/2addr v3, v2

    .line 679
    mul-int/2addr v3, v1

    .line 680
    iget v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->messagesNotificationChannelVersion:I

    .line 681
    .line 682
    add-int/2addr v3, v2

    .line 683
    mul-int/2addr v3, v1

    .line 684
    iget-boolean v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isChangedVisibleLimits:Z

    .line 685
    .line 686
    if-eqz v2, :cond_2a

    .line 687
    .line 688
    move v2, v5

    .line 689
    goto :goto_2a

    .line 690
    :cond_2a
    move v2, v4

    .line 691
    :goto_2a
    add-int/2addr v3, v2

    .line 692
    mul-int/2addr v3, v1

    .line 693
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->lastSelectedFolderId:Ljava/lang/Long;

    .line 694
    .line 695
    if-nez v2, :cond_2b

    .line 696
    .line 697
    move v2, v0

    .line 698
    goto :goto_2b

    .line 699
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 700
    .line 701
    .line 702
    move-result v2

    .line 703
    :goto_2b
    add-int/2addr v3, v2

    .line 704
    mul-int/2addr v3, v1

    .line 705
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->identities:Ljava/util/List;

    .line 706
    .line 707
    invoke-static {v2, v3, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/List;II)I

    .line 708
    .line 709
    .line 710
    move-result v2

    .line 711
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->notificationSettings:Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 712
    .line 713
    invoke-virtual {v3}, Lnet/thunderbird/feature/notification/NotificationSettings;->hashCode()I

    .line 714
    .line 715
    .line 716
    move-result v3

    .line 717
    add-int/2addr v3, v2

    .line 718
    mul-int/2addr v3, v1

    .line 719
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->senderName:Ljava/lang/String;

    .line 720
    .line 721
    if-nez v2, :cond_2c

    .line 722
    .line 723
    move v2, v0

    .line 724
    goto :goto_2c

    .line 725
    :cond_2c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 726
    .line 727
    .line 728
    move-result v2

    .line 729
    :goto_2c
    add-int/2addr v3, v2

    .line 730
    mul-int/2addr v3, v1

    .line 731
    iget-boolean v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->signatureUse:Z

    .line 732
    .line 733
    if-eqz v2, :cond_2d

    .line 734
    .line 735
    move v2, v5

    .line 736
    goto :goto_2d

    .line 737
    :cond_2d
    move v2, v4

    .line 738
    :goto_2d
    add-int/2addr v3, v2

    .line 739
    mul-int/2addr v3, v1

    .line 740
    iget-object v2, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->signature:Ljava/lang/String;

    .line 741
    .line 742
    if-nez v2, :cond_2e

    .line 743
    .line 744
    goto :goto_2e

    .line 745
    :cond_2e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    :goto_2e
    add-int/2addr v3, v0

    .line 750
    mul-int/2addr v3, v1

    .line 751
    iget-boolean v0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->shouldMigrateToOAuth:Z

    .line 752
    .line 753
    if-eqz v0, :cond_2f

    .line 754
    .line 755
    move v4, v5

    .line 756
    :cond_2f
    add-int/2addr v3, v4

    .line 757
    mul-int/2addr v3, v1

    .line 758
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderPathDelimiter:Ljava/lang/String;

    .line 759
    .line 760
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 761
    .line 762
    .line 763
    move-result p0

    .line 764
    add-int/2addr p0, v3

    .line 765
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LegacyAccount(isSensitiveDebugLoggingEnabled="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSensitiveDebugLoggingEnabled:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", id="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", name="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", email="

    .line 29
    .line 30
    const-string v2, ", profile="

    .line 31
    .line 32
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->name:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v4, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->email:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->profile:Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", deletePolicy="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->deletePolicy:Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", incomingServerSettings="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", outgoingServerSettings="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", oAuthState="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, ", alwaysBcc="

    .line 80
    .line 81
    const-string v2, ", automaticCheckIntervalMinutes="

    .line 82
    .line 83
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->oAuthState:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v4, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->alwaysBcc:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v1, ", displayCount="

    .line 91
    .line 92
    const-string v2, ", isNotifyNewMail="

    .line 93
    .line 94
    iget v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->automaticCheckIntervalMinutes:I

    .line 95
    .line 96
    iget v4, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->displayCount:I

    .line 97
    .line 98
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifyNewMail:Z

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", folderNotifyNewMailMode="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderNotifyNewMailMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", isNotifySelfNewMail="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v1, ", isNotifyContactsMailOnly="

    .line 122
    .line 123
    const-string v2, ", isIgnoreChatMessages="

    .line 124
    .line 125
    iget-boolean v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifySelfNewMail:Z

    .line 126
    .line 127
    iget-boolean v4, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifyContactsMailOnly:Z

    .line 128
    .line 129
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isIgnoreChatMessages:Z

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v1, ", legacyInboxFolder="

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->legacyInboxFolder:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v1, ", importedDraftsFolder="

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, ", importedSentFolder="

    .line 153
    .line 154
    const-string v2, ", importedTrashFolder="

    .line 155
    .line 156
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedDraftsFolder:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v4, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedSentFolder:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-string v1, ", importedArchiveFolder="

    .line 164
    .line 165
    const-string v2, ", importedSpamFolder="

    .line 166
    .line 167
    iget-object v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedTrashFolder:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v4, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedArchiveFolder:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedSpamFolder:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v1, ", inboxFolderId="

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->inboxFolderId:Ljava/lang/Long;

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v1, ", draftsFolderId="

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderId:Ljava/lang/Long;

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v1, ", sentFolderId="

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->sentFolderId:Ljava/lang/Long;

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v1, ", trashFolderId="

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderId:Ljava/lang/Long;

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v1, ", archiveFolderId="

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderId:Ljava/lang/Long;

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v1, ", spamFolderId="

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderId:Ljava/lang/Long;

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v1, ", draftsFolderSelection="

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v1, ", sentFolderSelection="

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->sentFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v1, ", trashFolderSelection="

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v1, ", archiveFolderSelection="

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v1, ", spamFolderSelection="

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v1, ", importedAutoExpandFolder="

    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->importedAutoExpandFolder:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string v1, ", autoExpandFolderId="

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->autoExpandFolderId:Ljava/lang/Long;

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v1, ", folderDisplayMode="

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderDisplayMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string v1, ", folderSyncMode="

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderSyncMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 325
    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    const-string v1, ", folderPushMode="

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderPushMode:Lnet/thunderbird/core/android/account/FolderMode;

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string v1, ", accountNumber="

    .line 340
    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    iget v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->accountNumber:I

    .line 345
    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string v1, ", isNotifySync="

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isNotifySync:Z

    .line 355
    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v1, ", sortType="

    .line 360
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 365
    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v1, ", sortAscending="

    .line 370
    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->sortAscending:Ljava/util/Map;

    .line 375
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string v1, ", showPictures="

    .line 380
    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->showPictures:Lnet/thunderbird/core/android/account/ShowPictures;

    .line 385
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    const-string v1, ", isSignatureBeforeQuotedText="

    .line 390
    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSignatureBeforeQuotedText:Z

    .line 395
    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    const-string v1, ", expungePolicy="

    .line 400
    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->expungePolicy:Lnet/thunderbird/core/android/account/Expunge;

    .line 405
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string v1, ", maxPushFolders="

    .line 410
    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    const-string v1, ", idleRefreshMinutes="

    .line 415
    .line 416
    const-string v2, ", useCompression="

    .line 417
    .line 418
    iget v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->maxPushFolders:I

    .line 419
    .line 420
    iget v4, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->idleRefreshMinutes:I

    .line 421
    .line 422
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 423
    .line 424
    .line 425
    const-string v1, ", isSendClientInfoEnabled="

    .line 426
    .line 427
    const-string v2, ", isSubscribedFoldersOnly="

    .line 428
    .line 429
    iget-boolean v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->useCompression:Z

    .line 430
    .line 431
    iget-boolean v4, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSendClientInfoEnabled:Z

    .line 432
    .line 433
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 434
    .line 435
    .line 436
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSubscribedFoldersOnly:Z

    .line 437
    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    const-string v1, ", maximumPolledMessageAge="

    .line 442
    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    iget v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->maximumPolledMessageAge:I

    .line 447
    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    const-string v1, ", maximumAutoDownloadMessageSize="

    .line 452
    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    iget v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->maximumAutoDownloadMessageSize:I

    .line 457
    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    const-string v1, ", messageFormat="

    .line 462
    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->messageFormat:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 467
    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    const-string v1, ", isMessageFormatAuto=false, isMessageReadReceipt="

    .line 472
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isMessageReadReceipt:Z

    .line 477
    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    const-string v1, ", quoteStyle="

    .line 482
    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->quoteStyle:Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 487
    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    const-string v1, ", quotePrefix="

    .line 492
    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->quotePrefix:Ljava/lang/String;

    .line 497
    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    const-string v1, ", isDefaultQuotedTextShown="

    .line 502
    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isDefaultQuotedTextShown:Z

    .line 507
    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    const-string v1, ", isReplyAfterQuote="

    .line 512
    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    const-string v1, ", isStripSignature="

    .line 517
    .line 518
    const-string v2, ", isSyncRemoteDeletions="

    .line 519
    .line 520
    iget-boolean v3, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isReplyAfterQuote:Z

    .line 521
    .line 522
    iget-boolean v4, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isStripSignature:Z

    .line 523
    .line 524
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 525
    .line 526
    .line 527
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSyncRemoteDeletions:Z

    .line 528
    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    const-string v1, ", openPgpProvider="

    .line 533
    .line 534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->openPgpProvider:Ljava/lang/String;

    .line 538
    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    const-string v1, ", openPgpKey="

    .line 543
    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    iget-wide v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->openPgpKey:J

    .line 548
    .line 549
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    const-string v1, ", autocryptPreferEncryptMutual="

    .line 553
    .line 554
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->autocryptPreferEncryptMutual:Z

    .line 558
    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    const-string v1, ", isOpenPgpHideSignOnly="

    .line 563
    .line 564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpHideSignOnly:Z

    .line 568
    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    const-string v1, ", isOpenPgpEncryptSubject="

    .line 573
    .line 574
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpEncryptSubject:Z

    .line 578
    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    const-string v1, ", isOpenPgpEncryptAllDrafts="

    .line 583
    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isOpenPgpEncryptAllDrafts:Z

    .line 588
    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    const-string v1, ", isMarkMessageAsReadOnView="

    .line 593
    .line 594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isMarkMessageAsReadOnView:Z

    .line 598
    .line 599
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    const-string v1, ", isMarkMessageAsReadOnDelete="

    .line 603
    .line 604
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isMarkMessageAsReadOnDelete:Z

    .line 608
    .line 609
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    const-string v1, ", isAlwaysShowCcBcc="

    .line 613
    .line 614
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isAlwaysShowCcBcc:Z

    .line 618
    .line 619
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    const-string v1, ", isRemoteSearchFullText=false, remoteSearchNumResults="

    .line 623
    .line 624
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    iget v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->remoteSearchNumResults:I

    .line 628
    .line 629
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    const-string v1, ", isUploadSentMessages="

    .line 633
    .line 634
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isUploadSentMessages:Z

    .line 638
    .line 639
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    const-string v1, ", lastSyncTime="

    .line 643
    .line 644
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    iget-wide v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->lastSyncTime:J

    .line 648
    .line 649
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    const-string v1, ", lastFolderListRefreshTime="

    .line 653
    .line 654
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    iget-wide v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->lastFolderListRefreshTime:J

    .line 658
    .line 659
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    const-string v1, ", isFinishedSetup="

    .line 663
    .line 664
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isFinishedSetup:Z

    .line 668
    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    const-string v1, ", messagesNotificationChannelVersion="

    .line 673
    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    iget v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->messagesNotificationChannelVersion:I

    .line 678
    .line 679
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    const-string v1, ", isChangedVisibleLimits="

    .line 683
    .line 684
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isChangedVisibleLimits:Z

    .line 688
    .line 689
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    const-string v1, ", lastSelectedFolderId="

    .line 693
    .line 694
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->lastSelectedFolderId:Ljava/lang/Long;

    .line 698
    .line 699
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    const-string v1, ", identities="

    .line 703
    .line 704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->identities:Ljava/util/List;

    .line 708
    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    const-string v1, ", notificationSettings="

    .line 713
    .line 714
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->notificationSettings:Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 718
    .line 719
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    const-string v1, ", senderName="

    .line 723
    .line 724
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->senderName:Ljava/lang/String;

    .line 728
    .line 729
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    const-string v1, ", signatureUse="

    .line 733
    .line 734
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->signatureUse:Z

    .line 738
    .line 739
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    const-string v1, ", signature="

    .line 743
    .line 744
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    iget-object v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->signature:Ljava/lang/String;

    .line 748
    .line 749
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    const-string v1, ", shouldMigrateToOAuth="

    .line 753
    .line 754
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    iget-boolean v1, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->shouldMigrateToOAuth:Z

    .line 758
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    const-string v1, ", folderPathDelimiter="

    .line 763
    .line 764
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->folderPathDelimiter:Ljava/lang/String;

    .line 768
    .line 769
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    const-string p0, ")"

    .line 773
    .line 774
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object p0

    .line 781
    return-object p0
.end method
