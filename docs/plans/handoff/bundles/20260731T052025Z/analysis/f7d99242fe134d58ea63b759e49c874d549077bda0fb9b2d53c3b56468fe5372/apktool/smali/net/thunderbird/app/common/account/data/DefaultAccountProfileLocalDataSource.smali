.class public final Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final dataMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAccountProfileDataMapper;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAccountProfileDataMapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;->dataMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAccountProfileDataMapper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final update(Lnet/thunderbird/feature/account/profile/AccountProfile;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 49

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v2, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$update$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$update$1;

    .line 13
    .line 14
    iget v4, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$update$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$update$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$update$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$update$1;-><init>(Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$update$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$update$1;->label:I

    .line 34
    .line 35
    iget-object v0, v0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x1

    .line 39
    const/4 v7, 0x0

    .line 40
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 41
    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    if-eq v4, v6, :cond_2

    .line 45
    .line 46
    if-ne v4, v5, :cond_1

    .line 47
    .line 48
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v7

    .line 58
    :cond_2
    iget-object v1, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$update$1;->L$0:Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 59
    .line 60
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, v1, Lnet/thunderbird/feature/account/profile/AccountProfile;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getById(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iput-object v1, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$update$1;->L$0:Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 74
    .line 75
    iput v6, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$update$1;->label:I

    .line 76
    .line 77
    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-ne v2, v8, :cond_4

    .line 82
    .line 83
    goto/16 :goto_6

    .line 84
    .line 85
    :cond_4
    :goto_1
    move-object v9, v2

    .line 86
    check-cast v9, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 87
    .line 88
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 89
    .line 90
    if-nez v9, :cond_5

    .line 91
    .line 92
    goto/16 :goto_7

    .line 93
    .line 94
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    new-instance v11, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    .line 98
    .line 99
    iget-object v4, v1, Lnet/thunderbird/feature/account/profile/AccountProfile;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 100
    .line 101
    iget-object v6, v1, Lnet/thunderbird/feature/account/profile/AccountProfile;->name:Ljava/lang/String;

    .line 102
    .line 103
    iget v10, v1, Lnet/thunderbird/feature/account/profile/AccountProfile;->color:I

    .line 104
    .line 105
    iget-object v1, v1, Lnet/thunderbird/feature/account/profile/AccountProfile;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 106
    .line 107
    new-instance v12, Lnet/thunderbird/feature/account/storage/profile/AvatarDto;

    .line 108
    .line 109
    instance-of v13, v1, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;

    .line 110
    .line 111
    if-eqz v13, :cond_6

    .line 112
    .line 113
    sget-object v14, Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;->MONOGRAM:Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_6
    instance-of v14, v1, Lnet/thunderbird/feature/account/avatar/Avatar$Image;

    .line 117
    .line 118
    if-eqz v14, :cond_7

    .line 119
    .line 120
    sget-object v14, Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;->IMAGE:Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_7
    instance-of v14, v1, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;

    .line 124
    .line 125
    if-eqz v14, :cond_c

    .line 126
    .line 127
    sget-object v14, Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;->ICON:Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;

    .line 128
    .line 129
    :goto_2
    if-eqz v13, :cond_8

    .line 130
    .line 131
    move-object v13, v1

    .line 132
    check-cast v13, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;

    .line 133
    .line 134
    iget-object v13, v13, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;->value:Ljava/lang/String;

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_8
    move-object v13, v7

    .line 138
    :goto_3
    instance-of v15, v1, Lnet/thunderbird/feature/account/avatar/Avatar$Image;

    .line 139
    .line 140
    if-eqz v15, :cond_9

    .line 141
    .line 142
    move-object v15, v1

    .line 143
    check-cast v15, Lnet/thunderbird/feature/account/avatar/Avatar$Image;

    .line 144
    .line 145
    iget-object v15, v15, Lnet/thunderbird/feature/account/avatar/Avatar$Image;->uri:Ljava/lang/String;

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_9
    move-object v15, v7

    .line 149
    :goto_4
    instance-of v5, v1, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;

    .line 150
    .line 151
    if-eqz v5, :cond_a

    .line 152
    .line 153
    check-cast v1, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;

    .line 154
    .line 155
    iget-object v1, v1, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;->name:Ljava/lang/String;

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_a
    move-object v1, v7

    .line 159
    :goto_5
    invoke-direct {v12, v14, v13, v15, v1}, Lnet/thunderbird/feature/account/storage/profile/AvatarDto;-><init>(Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-direct {v11, v4, v6, v10, v12}, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;-><init>(Lnet/thunderbird/feature/account/AccountId;Ljava/lang/String;ILnet/thunderbird/feature/account/storage/profile/AvatarDto;)V

    .line 163
    .line 164
    .line 165
    const/16 v47, -0x1

    .line 166
    .line 167
    const v48, 0x7fffff

    .line 168
    .line 169
    .line 170
    const/4 v10, 0x0

    .line 171
    const/4 v12, 0x0

    .line 172
    const/4 v13, 0x0

    .line 173
    const/4 v14, 0x0

    .line 174
    const/4 v15, 0x0

    .line 175
    const/16 v16, 0x0

    .line 176
    .line 177
    const/16 v17, 0x0

    .line 178
    .line 179
    const/16 v18, 0x0

    .line 180
    .line 181
    const/16 v19, 0x0

    .line 182
    .line 183
    const/16 v20, 0x0

    .line 184
    .line 185
    const/16 v21, 0x0

    .line 186
    .line 187
    const/16 v22, 0x0

    .line 188
    .line 189
    const/16 v23, 0x0

    .line 190
    .line 191
    const/16 v24, 0x0

    .line 192
    .line 193
    const/16 v25, 0x0

    .line 194
    .line 195
    const/16 v26, 0x0

    .line 196
    .line 197
    const/16 v27, 0x0

    .line 198
    .line 199
    const/16 v28, 0x0

    .line 200
    .line 201
    const/16 v29, 0x0

    .line 202
    .line 203
    const/16 v30, 0x0

    .line 204
    .line 205
    const/16 v31, 0x0

    .line 206
    .line 207
    const/16 v32, 0x0

    .line 208
    .line 209
    const/16 v33, 0x0

    .line 210
    .line 211
    const/16 v34, 0x0

    .line 212
    .line 213
    const/16 v35, 0x0

    .line 214
    .line 215
    const/16 v36, 0x0

    .line 216
    .line 217
    const/16 v37, 0x0

    .line 218
    .line 219
    const/16 v38, 0x0

    .line 220
    .line 221
    const/16 v39, 0x0

    .line 222
    .line 223
    const/16 v40, 0x0

    .line 224
    .line 225
    const/16 v41, 0x0

    .line 226
    .line 227
    const/16 v42, 0x0

    .line 228
    .line 229
    const/16 v43, 0x0

    .line 230
    .line 231
    const/16 v44, 0x0

    .line 232
    .line 233
    const/16 v45, 0x0

    .line 234
    .line 235
    const/16 v46, -0x11

    .line 236
    .line 237
    invoke-static/range {v9 .. v48}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    iput-object v7, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$update$1;->L$0:Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 242
    .line 243
    const/4 v4, 0x2

    .line 244
    iput v4, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$update$1;->label:I

    .line 245
    .line 246
    iget-object v3, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 247
    .line 248
    iget-object v0, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountDataMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;->toDto(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 255
    .line 256
    check-cast v3, Lcom/fsck/k9/Preferences;

    .line 257
    .line 258
    invoke-virtual {v3, v0}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 259
    .line 260
    .line 261
    if-ne v2, v8, :cond_b

    .line 262
    .line 263
    :goto_6
    return-object v8

    .line 264
    :cond_b
    :goto_7
    return-object v2

    .line 265
    :cond_c
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 266
    .line 267
    .line 268
    return-object v7
.end method
