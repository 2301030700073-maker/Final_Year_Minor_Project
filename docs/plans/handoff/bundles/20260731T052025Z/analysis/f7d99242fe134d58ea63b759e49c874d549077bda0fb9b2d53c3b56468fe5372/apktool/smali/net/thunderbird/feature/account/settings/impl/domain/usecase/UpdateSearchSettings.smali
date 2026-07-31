.class public final Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final repository:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings;->repository:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateSearchSettingsCommand$UpdateServerSearchLimit;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 49

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    instance-of v2, v1, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings$invoke$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings$invoke$1;

    .line 11
    .line 12
    iget v3, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings$invoke$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings$invoke$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings$invoke$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings$invoke$1;-><init>(Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings$invoke$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    iget v3, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings$invoke$1;->label:I

    .line 32
    .line 33
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    .line 35
    iget-object v0, v0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings;->repository:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    const/4 v6, 0x2

    .line 39
    const/4 v7, 0x0

    .line 40
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 41
    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    if-eq v3, v5, :cond_2

    .line 45
    .line 46
    if-ne v3, v6, :cond_1

    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v7

    .line 59
    :cond_2
    iget-object v3, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings$invoke$1;->L$1:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateSearchSettingsCommand$UpdateServerSearchLimit;

    .line 60
    .line 61
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 72
    .line 73
    move-object/from16 v3, p1

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getById(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    move-object/from16 v3, p2

    .line 80
    .line 81
    iput-object v3, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings$invoke$1;->L$1:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateSearchSettingsCommand$UpdateServerSearchLimit;

    .line 82
    .line 83
    iput v5, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings$invoke$1;->label:I

    .line 84
    .line 85
    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-ne v1, v8, :cond_4

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    :goto_1
    move-object v9, v1

    .line 93
    check-cast v9, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 94
    .line 95
    if-eqz v9, :cond_7

    .line 96
    .line 97
    if-eqz v3, :cond_6

    .line 98
    .line 99
    iget v1, v3, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateSearchSettingsCommand$UpdateServerSearchLimit;->value:I

    .line 100
    .line 101
    const/16 v47, -0x1

    .line 102
    .line 103
    const v48, 0x7ffeff

    .line 104
    .line 105
    .line 106
    const/4 v10, 0x0

    .line 107
    const/4 v11, 0x0

    .line 108
    const/4 v12, 0x0

    .line 109
    const/4 v13, 0x0

    .line 110
    const/4 v14, 0x0

    .line 111
    const/4 v15, 0x0

    .line 112
    const/16 v16, 0x0

    .line 113
    .line 114
    const/16 v17, 0x0

    .line 115
    .line 116
    const/16 v18, 0x0

    .line 117
    .line 118
    const/16 v19, 0x0

    .line 119
    .line 120
    const/16 v20, 0x0

    .line 121
    .line 122
    const/16 v21, 0x0

    .line 123
    .line 124
    const/16 v22, 0x0

    .line 125
    .line 126
    const/16 v23, 0x0

    .line 127
    .line 128
    const/16 v24, 0x0

    .line 129
    .line 130
    const/16 v25, 0x0

    .line 131
    .line 132
    const/16 v26, 0x0

    .line 133
    .line 134
    const/16 v27, 0x0

    .line 135
    .line 136
    const/16 v28, 0x0

    .line 137
    .line 138
    const/16 v29, 0x0

    .line 139
    .line 140
    const/16 v30, 0x0

    .line 141
    .line 142
    const/16 v31, 0x0

    .line 143
    .line 144
    const/16 v32, 0x0

    .line 145
    .line 146
    const/16 v33, 0x0

    .line 147
    .line 148
    const/16 v34, 0x0

    .line 149
    .line 150
    const/16 v35, 0x0

    .line 151
    .line 152
    const/16 v36, 0x0

    .line 153
    .line 154
    const/16 v37, 0x0

    .line 155
    .line 156
    const/16 v38, 0x0

    .line 157
    .line 158
    const/16 v39, 0x0

    .line 159
    .line 160
    const/16 v40, 0x0

    .line 161
    .line 162
    const/16 v42, 0x0

    .line 163
    .line 164
    const/16 v43, 0x0

    .line 165
    .line 166
    const/16 v44, 0x0

    .line 167
    .line 168
    const/16 v45, 0x0

    .line 169
    .line 170
    const/16 v46, -0x1

    .line 171
    .line 172
    move/from16 v41, v1

    .line 173
    .line 174
    invoke-static/range {v9 .. v48}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    iput-object v7, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings$invoke$1;->L$1:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateSearchSettingsCommand$UpdateServerSearchLimit;

    .line 179
    .line 180
    iput v6, v2, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateSearchSettings$invoke$1;->label:I

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountRepository;->update(Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 183
    .line 184
    .line 185
    if-ne v4, v8, :cond_5

    .line 186
    .line 187
    :goto_2
    return-object v8

    .line 188
    :cond_5
    :goto_3
    new-instance v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 189
    .line 190
    invoke-direct {v0, v4}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    return-object v0

    .line 194
    :cond_6
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 195
    .line 196
    .line 197
    return-object v7

    .line 198
    :cond_7
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;

    .line 199
    .line 200
    const-string v1, "Account not found"

    .line 201
    .line 202
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance v1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 206
    .line 207
    invoke-direct {v1, v0, v7}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    return-object v1
.end method
