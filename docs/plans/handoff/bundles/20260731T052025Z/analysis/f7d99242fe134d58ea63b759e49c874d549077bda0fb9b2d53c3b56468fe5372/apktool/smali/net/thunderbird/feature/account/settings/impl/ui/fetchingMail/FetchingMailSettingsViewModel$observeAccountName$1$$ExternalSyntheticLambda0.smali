.class public final synthetic Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$observeAccountName$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$observeAccountName$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$observeAccountName$1$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$observeAccountName$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v0, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$observeAccountName$1$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object/from16 v1, p1

    .line 13
    .line 14
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 15
    .line 16
    iget-object v3, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->fetchingMailSettingsOptionsMapper:Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;

    .line 17
    .line 18
    iget v4, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->displayCount:I

    .line 19
    .line 20
    iget-object v5, v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->localFolderSizeOptionsById:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 31
    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    iget-object v4, v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->defaultLocalFolderSizeOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 35
    .line 36
    :cond_0
    move-object v7, v4

    .line 37
    iget v4, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->maximumAutoDownloadMessageSize:I

    .line 38
    .line 39
    iget-object v5, v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->fetchMessageUpToOptionsById:Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 50
    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    iget-object v4, v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->defaultFetchMessageUpToOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 54
    .line 55
    :cond_1
    move-object v9, v4

    .line 56
    iget v4, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->maximumPolledMessageAge:I

    .line 57
    .line 58
    iget-object v5, v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->syncMessageFromOptionsById:Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 69
    .line 70
    if-nez v4, :cond_2

    .line 71
    .line 72
    iget-object v4, v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->defaultSyncMessageFromOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 73
    .line 74
    :cond_2
    move-object v8, v4

    .line 75
    iget v4, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->automaticCheckIntervalMinutes:I

    .line 76
    .line 77
    iget-object v5, v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->folderPollFrequencyOptionsById:Ljava/util/LinkedHashMap;

    .line 78
    .line 79
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 88
    .line 89
    if-nez v4, :cond_3

    .line 90
    .line 91
    iget-object v4, v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->defaultFolderPollFrequencyOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 92
    .line 93
    :cond_3
    move-object v10, v4

    .line 94
    iget-boolean v11, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->isSyncRemoteDeletions:Z

    .line 95
    .line 96
    iget-boolean v12, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->isMarkMessageAsReadOnDelete:Z

    .line 97
    .line 98
    iget-object v4, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->deletePolicy:Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iget-object v5, v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->whenIDeleteAMessageOptionsById:Ljava/util/LinkedHashMap;

    .line 108
    .line 109
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 114
    .line 115
    if-nez v4, :cond_4

    .line 116
    .line 117
    iget-object v4, v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->defaultWhenIDeleteAMessageOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 118
    .line 119
    :cond_4
    move-object v13, v4

    .line 120
    iget-object v4, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->expungePolicy:Lnet/thunderbird/core/android/account/Expunge;

    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    iget-object v5, v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->eraseDeletedMessageOnServerOptionsById:Ljava/util/LinkedHashMap;

    .line 130
    .line 131
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 136
    .line 137
    if-nez v4, :cond_5

    .line 138
    .line 139
    iget-object v4, v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->defaultEraseDeletedMessageOnServerOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 140
    .line 141
    :cond_5
    move-object v14, v4

    .line 142
    iget v4, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->maxPushFolders:I

    .line 143
    .line 144
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    iget-object v5, v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->maxFolderToCheckWithPushOptionsById:Ljava/util/LinkedHashMap;

    .line 152
    .line 153
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    check-cast v4, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 158
    .line 159
    if-nez v4, :cond_6

    .line 160
    .line 161
    iget-object v4, v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->defaultMaxFolderToCheckWithPushOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 162
    .line 163
    :cond_6
    move-object v15, v4

    .line 164
    iget v1, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->idleRefreshMinutes:I

    .line 165
    .line 166
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    iget-object v4, v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->refreshIdleConnectionOptionsById:Ljava/util/LinkedHashMap;

    .line 174
    .line 175
    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    check-cast v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 180
    .line 181
    if-nez v1, :cond_7

    .line 182
    .line 183
    iget-object v1, v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->defaultRefreshIdleConnectionOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 184
    .line 185
    :cond_7
    move-object/from16 v16, v1

    .line 186
    .line 187
    iget-object v1, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 188
    .line 189
    :cond_8
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    move-object v5, v0

    .line 194
    check-cast v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 195
    .line 196
    const/4 v6, 0x0

    .line 197
    const/16 v17, 0x1

    .line 198
    .line 199
    invoke-static/range {v5 .. v17}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;ZZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;I)Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v1, v0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_8

    .line 208
    .line 209
    return-object v2

    .line 210
    :pswitch_0
    move-object/from16 v18, p1

    .line 211
    .line 212
    check-cast v18, Ljava/lang/String;

    .line 213
    .line 214
    iget-object v0, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 215
    .line 216
    :cond_9
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    move-object/from16 v17, v1

    .line 221
    .line 222
    check-cast v17, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 223
    .line 224
    const/16 v28, 0x0

    .line 225
    .line 226
    const/16 v29, 0x7fe

    .line 227
    .line 228
    const/16 v19, 0x0

    .line 229
    .line 230
    const/16 v20, 0x0

    .line 231
    .line 232
    const/16 v21, 0x0

    .line 233
    .line 234
    const/16 v22, 0x0

    .line 235
    .line 236
    const/16 v23, 0x0

    .line 237
    .line 238
    const/16 v24, 0x0

    .line 239
    .line 240
    const/16 v25, 0x0

    .line 241
    .line 242
    const/16 v26, 0x0

    .line 243
    .line 244
    const/16 v27, 0x0

    .line 245
    .line 246
    invoke-static/range {v17 .. v29}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;ZZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;I)Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$State;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-virtual {v0, v1, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_9

    .line 255
    .line 256
    return-object v2

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
