.class public final Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;
.super Landroidx/compose/ui/unit/IntRectKt;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountId:Lnet/thunderbird/feature/account/AccountId;

.field public folder:Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

.field public final folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

.field public final saveScope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/mail/folder/api/FolderDetails;)V
    .locals 2

    .line 1
    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 6
    .line 7
    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/uuid/UuidKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->folder:Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->saveScope:Lkotlinx/coroutines/CoroutineScope;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    sparse-switch p2, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :sswitch_0
    const-string p2, "folder_settings_include_in_integrated_inbox"

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->folder:Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 20
    .line 21
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->isIntegrate:Z

    .line 22
    .line 23
    return p0

    .line 24
    :sswitch_1
    const-string p2, "folder_settings_visible"

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    iget-object p0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->folder:Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 33
    .line 34
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->isVisible:Z

    .line 35
    .line 36
    return p0

    .line 37
    :sswitch_2
    const-string p2, "folder_settings_in_top_group"

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    iget-object p0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->folder:Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 46
    .line 47
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->isInTopGroup:Z

    .line 48
    .line 49
    return p0

    .line 50
    :sswitch_3
    const-string p2, "folder_settings_notifications"

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_0

    .line 57
    .line 58
    iget-object p0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->folder:Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 59
    .line 60
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->isNotificationsEnabled:Z

    .line 61
    .line 62
    return p0

    .line 63
    :sswitch_4
    const-string p2, "folder_settings_sync"

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_0

    .line 70
    .line 71
    iget-object p0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->folder:Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 72
    .line 73
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->isSyncEnabled:Z

    .line 74
    .line 75
    return p0

    .line 76
    :sswitch_5
    const-string p2, "folder_settings_push"

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_0

    .line 83
    .line 84
    iget-object p0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->folder:Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 85
    .line 86
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->isPushEnabled:Z

    .line 87
    .line 88
    return p0

    .line 89
    :cond_0
    :goto_0
    const-string p0, "Unknown key: "

    .line 90
    .line 91
    invoke-static {p1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const/4 p0, 0x0

    .line 95
    return p0

    .line 96
    nop

    .line 97
    :sswitch_data_0
    .sparse-switch
        -0x6932a05b -> :sswitch_5
        -0x693134da -> :sswitch_4
        -0x3e1baf43 -> :sswitch_3
        -0x243065fa -> :sswitch_2
        0x2e7a7007 -> :sswitch_1
        0x4bacc572 -> :sswitch_0
    .end sparse-switch
.end method

.method public final putBoolean(Ljava/lang/String;Z)V
    .locals 9

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :sswitch_0
    const-string v0, "folder_settings_include_in_integrated_inbox"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->folder:Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    const/16 v8, 0x7b

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    move v3, p2

    .line 30
    invoke-static/range {v1 .. v8}, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->copy$default(Lnet/thunderbird/feature/mail/folder/api/FolderDetails;ZZZZZZI)Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->updateFolder(Lnet/thunderbird/feature/mail/folder/api/FolderDetails;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :sswitch_1
    move v3, p2

    .line 39
    const-string p2, "folder_settings_visible"

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->folder:Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/16 v7, 0x6f

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    const/4 v2, 0x0

    .line 54
    move v4, v3

    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-static/range {v0 .. v7}, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->copy$default(Lnet/thunderbird/feature/mail/folder/api/FolderDetails;ZZZZZZI)Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->updateFolder(Lnet/thunderbird/feature/mail/folder/api/FolderDetails;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :sswitch_2
    move v3, p2

    .line 66
    const-string p2, "folder_settings_in_top_group"

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_0

    .line 73
    .line 74
    iget-object v0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->folder:Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    const/16 v7, 0x7d

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    move v4, v3

    .line 81
    const/4 v3, 0x0

    .line 82
    move v1, v4

    .line 83
    const/4 v4, 0x0

    .line 84
    const/4 v5, 0x0

    .line 85
    invoke-static/range {v0 .. v7}, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->copy$default(Lnet/thunderbird/feature/mail/folder/api/FolderDetails;ZZZZZZI)Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->updateFolder(Lnet/thunderbird/feature/mail/folder/api/FolderDetails;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :sswitch_3
    move v3, p2

    .line 94
    const-string p2, "folder_settings_notifications"

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_0

    .line 101
    .line 102
    iget-object v0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->folder:Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 103
    .line 104
    const/4 v6, 0x0

    .line 105
    const/16 v7, 0x5f

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    const/4 v2, 0x0

    .line 109
    move v4, v3

    .line 110
    const/4 v3, 0x0

    .line 111
    move v5, v4

    .line 112
    const/4 v4, 0x0

    .line 113
    invoke-static/range {v0 .. v7}, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->copy$default(Lnet/thunderbird/feature/mail/folder/api/FolderDetails;ZZZZZZI)Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->updateFolder(Lnet/thunderbird/feature/mail/folder/api/FolderDetails;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :sswitch_4
    move v3, p2

    .line 122
    const-string p2, "folder_settings_sync"

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-eqz p2, :cond_0

    .line 129
    .line 130
    iget-object v0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->folder:Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 131
    .line 132
    const/4 v6, 0x0

    .line 133
    const/16 v7, 0x77

    .line 134
    .line 135
    const/4 v1, 0x0

    .line 136
    const/4 v2, 0x0

    .line 137
    const/4 v4, 0x0

    .line 138
    const/4 v5, 0x0

    .line 139
    invoke-static/range {v0 .. v7}, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->copy$default(Lnet/thunderbird/feature/mail/folder/api/FolderDetails;ZZZZZZI)Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->updateFolder(Lnet/thunderbird/feature/mail/folder/api/FolderDetails;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :sswitch_5
    move v3, p2

    .line 148
    const-string p2, "folder_settings_push"

    .line 149
    .line 150
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-eqz p2, :cond_0

    .line 155
    .line 156
    iget-object v0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->folder:Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 157
    .line 158
    const/4 v5, 0x0

    .line 159
    const/16 v7, 0x3f

    .line 160
    .line 161
    const/4 v1, 0x0

    .line 162
    const/4 v2, 0x0

    .line 163
    move v4, v3

    .line 164
    const/4 v3, 0x0

    .line 165
    move v6, v4

    .line 166
    const/4 v4, 0x0

    .line 167
    invoke-static/range {v0 .. v7}, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->copy$default(Lnet/thunderbird/feature/mail/folder/api/FolderDetails;ZZZZZZI)Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->updateFolder(Lnet/thunderbird/feature/mail/folder/api/FolderDetails;)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_0
    :goto_0
    const-string p0, "Unknown key: "

    .line 176
    .line 177
    invoke-static {p1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :sswitch_data_0
    .sparse-switch
        -0x6932a05b -> :sswitch_5
        -0x693134da -> :sswitch_4
        -0x3e1baf43 -> :sswitch_3
        -0x243065fa -> :sswitch_2
        0x2e7a7007 -> :sswitch_1
        0x4bacc572 -> :sswitch_0
    .end sparse-switch
.end method

.method public final updateFolder(Lnet/thunderbird/feature/mail/folder/api/FolderDetails;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->folder:Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 2
    .line 3
    new-instance v0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x3

    .line 7
    invoke-direct {v0, p0, p1, v1, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->saveScope:Lkotlinx/coroutines/CoroutineScope;

    .line 11
    .line 12
    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 13
    .line 14
    .line 15
    return-void
.end method
