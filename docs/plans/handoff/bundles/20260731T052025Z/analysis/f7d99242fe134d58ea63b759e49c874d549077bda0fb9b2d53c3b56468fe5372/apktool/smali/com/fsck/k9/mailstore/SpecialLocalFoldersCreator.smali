.class public final Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

.field public final outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

.field public final preferences:Lcom/fsck/k9/Preferences;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/Preferences;Lcom/fsck/k9/mailstore/LocalStoreProvider;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;->preferences:Lcom/fsck/k9/Preferences;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final createSpecialLocalFolders(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator$createSpecialLocalFolders$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator$createSpecialLocalFolders$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator$createSpecialLocalFolders$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator$createSpecialLocalFolders$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator$createSpecialLocalFolders$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator$createSpecialLocalFolders$1;-><init>(Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator$createSpecialLocalFolders$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator$createSpecialLocalFolders$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget-object p1, v0, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator$createSpecialLocalFolders$1;->L$1:Lcom/fsck/k9/mailstore/LocalStore;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator$createSpecialLocalFolders$1;->L$0:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 38
    .line 39
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-object p2, p1

    .line 43
    move-object p1, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0

    .line 52
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const-string p2, "Creating special local folders"

    .line 56
    .line 57
    new-array v1, v3, [Ljava/lang/Object;

    .line 58
    .line 59
    invoke-static {p2, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 69
    .line 70
    iput-object p1, v0, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator$createSpecialLocalFolders$1;->L$0:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 71
    .line 72
    iput-object p2, v0, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator$createSpecialLocalFolders$1;->L$1:Lcom/fsck/k9/mailstore/LocalStore;

    .line 73
    .line 74
    iput v2, v0, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator$createSpecialLocalFolders$1;->label:I

    .line 75
    .line 76
    iget-object v4, p0, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 77
    .line 78
    invoke-virtual {v4, v1, v0}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->getOutboxFolderId(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 83
    .line 84
    if-ne v0, v1, :cond_3

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 92
    .line 93
    const-string v1, "pop3"

    .line 94
    .line 95
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDraftsFolderId()Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    sget-object v1, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->MANUAL:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 106
    .line 107
    const/4 v4, 0x2

    .line 108
    if-nez v0, :cond_4

    .line 109
    .line 110
    iget-object v0, p2, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 111
    .line 112
    new-instance v5, Lcom/fsck/k9/mailstore/LocalStore$$ExternalSyntheticLambda1;

    .line 113
    .line 114
    const-string v6, "Drafts"

    .line 115
    .line 116
    sget-object v7, Lcom/fsck/k9/mail/FolderType;->DRAFTS:Lcom/fsck/k9/mail/FolderType;

    .line 117
    .line 118
    invoke-direct {v5, v6, v7, v3, v4}, Lcom/fsck/k9/mailstore/LocalStore$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/FolderType;II)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2, v5}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Ljava/lang/Long;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 128
    .line 129
    .line 130
    move-result-wide v5

    .line 131
    new-instance v0, Ljava/lang/Long;

    .line 132
    .line 133
    invoke-direct {v0, v5, v6}, Ljava/lang/Long;-><init>(J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDraftsFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    const-string v0, "Drafts folder was already set up"

    .line 141
    .line 142
    new-array v5, v3, [Ljava/lang/Object;

    .line 143
    .line 144
    invoke-static {v0, v5}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :goto_2
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSentFolderId()Ljava/lang/Long;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-nez v0, :cond_5

    .line 152
    .line 153
    iget-object v0, p2, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 154
    .line 155
    new-instance v5, Lcom/fsck/k9/mailstore/LocalStore$$ExternalSyntheticLambda1;

    .line 156
    .line 157
    const-string v6, "Sent"

    .line 158
    .line 159
    sget-object v7, Lcom/fsck/k9/mail/FolderType;->SENT:Lcom/fsck/k9/mail/FolderType;

    .line 160
    .line 161
    invoke-direct {v5, v6, v7, v3, v4}, Lcom/fsck/k9/mailstore/LocalStore$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/FolderType;II)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v2, v5}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Ljava/lang/Long;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 171
    .line 172
    .line 173
    move-result-wide v5

    .line 174
    new-instance v0, Ljava/lang/Long;

    .line 175
    .line 176
    invoke-direct {v0, v5, v6}, Ljava/lang/Long;-><init>(J)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSentFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_5
    const-string v0, "Sent folder was already set up"

    .line 184
    .line 185
    new-array v5, v3, [Ljava/lang/Object;

    .line 186
    .line 187
    invoke-static {v0, v5}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :goto_3
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getTrashFolderId()Ljava/lang/Long;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    if-nez v0, :cond_6

    .line 195
    .line 196
    iget-object p2, p2, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 197
    .line 198
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$$ExternalSyntheticLambda1;

    .line 199
    .line 200
    const-string v5, "Trash"

    .line 201
    .line 202
    sget-object v6, Lcom/fsck/k9/mail/FolderType;->TRASH:Lcom/fsck/k9/mail/FolderType;

    .line 203
    .line 204
    invoke-direct {v0, v5, v6, v3, v4}, Lcom/fsck/k9/mailstore/LocalStore$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/FolderType;II)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, v2, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    check-cast p2, Ljava/lang/Long;

    .line 212
    .line 213
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 214
    .line 215
    .line 216
    move-result-wide v2

    .line 217
    new-instance p2, Ljava/lang/Long;

    .line 218
    .line 219
    invoke-direct {p2, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, p2, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setTrashFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_6
    const-string p2, "Trash folder was already set up"

    .line 227
    .line 228
    new-array v0, v3, [Ljava/lang/Object;

    .line 229
    .line 230
    invoke-static {p2, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;->preferences:Lcom/fsck/k9/Preferences;

    .line 234
    .line 235
    invoke-virtual {p0, p1}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 236
    .line 237
    .line 238
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 239
    .line 240
    return-object p0
.end method
