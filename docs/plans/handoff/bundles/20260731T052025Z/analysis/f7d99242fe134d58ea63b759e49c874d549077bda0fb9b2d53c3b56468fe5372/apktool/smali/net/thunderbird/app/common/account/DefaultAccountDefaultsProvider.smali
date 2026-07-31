.class public final Lnet/thunderbird/app/common/account/DefaultAccountDefaultsProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/android/account/AccountDefaultsProvider;


# instance fields
.field public final featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

.field public final resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/resources/K9CoreResourceProvider;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/app/common/account/DefaultAccountDefaultsProvider;->resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/app/common/account/DefaultAccountDefaultsProvider;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyDefaults(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 8

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAutomaticCheckIntervalMinutes(I)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x18

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setIdleRefreshMinutes(I)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x19

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDisplayCount(I)V

    .line 14
    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {p1, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAccountNumber(I)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {p1, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifyNewMail(Z)V

    .line 22
    .line 23
    .line 24
    sget-object v3, Lnet/thunderbird/core/android/account/FolderMode;->ALL:Lnet/thunderbird/core/android/account/FolderMode;

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setFolderNotifyNewMailMode(Lnet/thunderbird/core/android/account/FolderMode;)V

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {p1, v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifySync(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifySelfNewMail(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifyContactsMailOnly(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setIgnoreChatMessages(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMessagesNotificationChannelVersion(I)V

    .line 43
    .line 44
    .line 45
    sget-object v4, Lnet/thunderbird/core/android/account/FolderMode;->NOT_SECOND_CLASS:Lnet/thunderbird/core/android/account/FolderMode;

    .line 46
    .line 47
    invoke-virtual {p1, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setFolderDisplayMode(Lnet/thunderbird/core/android/account/FolderMode;)V

    .line 48
    .line 49
    .line 50
    sget-object v4, Lnet/thunderbird/core/android/account/FolderMode;->FIRST_CLASS:Lnet/thunderbird/core/android/account/FolderMode;

    .line 51
    .line 52
    invoke-virtual {p1, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setFolderSyncMode(Lnet/thunderbird/core/android/account/FolderMode;)V

    .line 53
    .line 54
    .line 55
    sget-object v4, Lnet/thunderbird/core/android/account/FolderMode;->NONE:Lnet/thunderbird/core/android/account/FolderMode;

    .line 56
    .line 57
    invoke-virtual {p1, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setFolderPushMode(Lnet/thunderbird/core/android/account/FolderMode;)V

    .line 58
    .line 59
    .line 60
    sget-object v4, Lnet/thunderbird/core/android/account/AccountDefaultsProvider;->Companion:Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    sget-object v4, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;->DEFAULT_SORT_TYPE:Lnet/thunderbird/core/android/account/SortType;

    .line 66
    .line 67
    invoke-virtual {p1, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSortType(Lnet/thunderbird/core/android/account/SortType;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v4, v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSortAscending(Lnet/thunderbird/core/android/account/SortType;Z)V

    .line 71
    .line 72
    .line 73
    sget-object v4, Lnet/thunderbird/core/android/account/ShowPictures;->NEVER:Lnet/thunderbird/core/android/account/ShowPictures;

    .line 74
    .line 75
    invoke-virtual {p1, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setShowPictures(Lnet/thunderbird/core/android/account/ShowPictures;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSignatureBeforeQuotedText(Z)V

    .line 79
    .line 80
    .line 81
    sget-object v4, Lnet/thunderbird/core/android/account/Expunge;->EXPUNGE_IMMEDIATELY:Lnet/thunderbird/core/android/account/Expunge;

    .line 82
    .line 83
    invoke-virtual {p1, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setExpungePolicy(Lnet/thunderbird/core/android/account/Expunge;)V

    .line 84
    .line 85
    .line 86
    const/4 v4, 0x0

    .line 87
    invoke-virtual {p1, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedAutoExpandFolder(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setLegacyInboxFolder(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/16 v5, 0xa

    .line 94
    .line 95
    invoke-virtual {p1, v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMaxPushFolders(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSubscribedFoldersOnly(Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMaximumPolledMessageAge(I)V

    .line 102
    .line 103
    .line 104
    const/high16 v1, 0x20000

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMaximumAutoDownloadMessageSize(I)V

    .line 107
    .line 108
    .line 109
    sget-object v1, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;->DEFAULT_MESSAGE_FORMAT:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 110
    .line 111
    invoke-virtual {p1, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMessageFormat(Lnet/thunderbird/core/android/account/MessageFormat;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMessageFormatAuto()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMessageReadReceipt(Z)V

    .line 118
    .line 119
    .line 120
    sget-object v1, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;->DEFAULT_QUOTE_STYLE:Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 121
    .line 122
    invoke-virtual {p1, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setQuoteStyle(Lnet/thunderbird/core/android/account/QuoteStyle;)V

    .line 123
    .line 124
    .line 125
    const-string v1, ">"

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setQuotePrefix(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDefaultQuotedTextShown(Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setReplyAfterQuote(Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setStripSignature(Z)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSyncRemoteDeletions(Z)V

    .line 140
    .line 141
    .line 142
    const-wide/16 v5, 0x0

    .line 143
    .line 144
    invoke-virtual {p1, v5, v6}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpKey(J)V

    .line 145
    .line 146
    .line 147
    monitor-enter p1

    .line 148
    monitor-exit p1

    .line 149
    invoke-virtual {p1, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setRemoteSearchNumResults(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setUploadSentMessages(Z)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMarkMessageAsReadOnView(Z)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMarkMessageAsReadOnDelete(Z)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAlwaysShowCcBcc(Z)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v5, v6}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setLastSyncTime(J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v5, v6}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setLastFolderListRefreshTime(J)V

    .line 168
    .line 169
    .line 170
    sget-object v0, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->AUTOMATIC:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 171
    .line 172
    invoke-virtual {p1, v4, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setArchiveFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v4, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDraftsFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v4, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSentFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v4, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSpamFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v4, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setTrashFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V

    .line 185
    .line 186
    .line 187
    new-instance v0, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setIdentities(Ljava/util/List;)V

    .line 193
    .line 194
    .line 195
    iget-object p0, p0, Lnet/thunderbird/app/common/account/DefaultAccountDefaultsProvider;->resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 196
    .line 197
    iget-object p0, p0, Lcom/fsck/k9/resources/K9CoreResourceProvider;->context:Landroid/content/Context;

    .line 198
    .line 199
    const v0, 0x7f120287

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    new-instance v1, Lnet/thunderbird/core/android/account/Identity;

    .line 210
    .line 211
    const/4 v6, 0x0

    .line 212
    const/16 v7, 0x26

    .line 213
    .line 214
    const/4 v3, 0x0

    .line 215
    const/4 v5, 0x0

    .line 216
    invoke-direct/range {v1 .. v7}, Lnet/thunderbird/core/android/account/Identity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdentities()Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    check-cast p0, Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    new-instance p0, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    .line 229
    .line 230
    const/16 v0, 0xe

    .line 231
    .line 232
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->updateNotificationSettings(Lkotlin/jvm/functions/Function1;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->resetChangeMarkers()V

    .line 239
    .line 240
    .line 241
    return-void
.end method

.method public final applyOverwrites(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ".notifyNewMail"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p2, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->values:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p2, p0, v1}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-virtual {p1, p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifyNewMail(Z)V

    .line 38
    .line 39
    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ".notifySelfNewMail"

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const/4 v0, 0x1

    .line 58
    invoke-virtual {p2, p0, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    invoke-virtual {p1, p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifySelfNewMail(Z)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    iget-object p0, p0, Lnet/thunderbird/app/common/account/DefaultAccountDefaultsProvider;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 67
    .line 68
    const-string p2, "email_notification_default"

    .line 69
    .line 70
    invoke-virtual {p0, p2}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda4;

    .line 75
    .line 76
    const/16 v2, 0x1c

    .line 77
    .line 78
    invoke-direct {v1, v2}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda4;-><init>(I)V

    .line 79
    .line 80
    .line 81
    new-instance v3, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    const/16 v4, 0x19

    .line 84
    .line 85
    invoke-direct {v3, v4}, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v1, v3}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->whenEnabledOrNot(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {p1, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifyNewMail(Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p2}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    new-instance p2, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda4;

    .line 106
    .line 107
    invoke-direct {p2, v2}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda4;-><init>(I)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    invoke-direct {v0, v4}, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p0, p2, v0}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->whenEnabledOrNot(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    check-cast p0, Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    invoke-virtual {p1, p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifySelfNewMail(Z)V

    .line 126
    .line 127
    .line 128
    return-void
.end method
