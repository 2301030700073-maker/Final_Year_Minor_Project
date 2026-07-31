.class public final Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final defaultEraseDeletedMessageOnServerOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

.field public final defaultFetchMessageUpToOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

.field public final defaultFolderPollFrequencyOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

.field public final defaultLocalFolderSizeOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

.field public final defaultMaxFolderToCheckWithPushOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

.field public final defaultRefreshIdleConnectionOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

.field public final defaultSyncMessageFromOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

.field public final defaultWhenIDeleteAMessageOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

.field public final eraseDeletedMessageOnServerOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

.field public final eraseDeletedMessageOnServerOptionsById:Ljava/util/LinkedHashMap;

.field public final fetchMessageUpToOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

.field public final fetchMessageUpToOptionsById:Ljava/util/LinkedHashMap;

.field public final folderPollFrequencyOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

.field public final folderPollFrequencyOptionsById:Ljava/util/LinkedHashMap;

.field public final localFolderSizeOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

.field public final localFolderSizeOptionsById:Ljava/util/LinkedHashMap;

.field public final maxFolderToCheckWithPushOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

.field public final maxFolderToCheckWithPushOptionsById:Ljava/util/LinkedHashMap;

.field public final refreshIdleConnectionOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

.field public final refreshIdleConnectionOptionsById:Ljava/util/LinkedHashMap;

.field public final resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

.field public final syncMessageFromOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

.field public final syncMessageFromOptionsById:Ljava/util/LinkedHashMap;

.field public final whenIDeleteAMessageOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

.field public final whenIDeleteAMessageOptionsById:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/common/resources/StringsResourceManager;)V
    .locals 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p1

    .line 7
    .line 8
    iput-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 9
    .line 10
    new-instance v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 11
    .line 12
    new-instance v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v2, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 16
    .line 17
    .line 18
    const-string v4, "10"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 24
    .line 25
    new-instance v5, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    invoke-direct {v5, v0, v6}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 29
    .line 30
    .line 31
    const-string v7, "25"

    .line 32
    .line 33
    invoke-direct {v2, v7, v5}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 37
    .line 38
    new-instance v8, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/16 v9, 0xe

    .line 41
    .line 42
    invoke-direct {v8, v0, v9}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 43
    .line 44
    .line 45
    const-string v10, "50"

    .line 46
    .line 47
    invoke-direct {v5, v10, v8}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 48
    .line 49
    .line 50
    new-instance v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 51
    .line 52
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    const/16 v12, 0x1a

    .line 55
    .line 56
    invoke-direct {v11, v0, v12}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 57
    .line 58
    .line 59
    const-string v13, "100"

    .line 60
    .line 61
    invoke-direct {v8, v13, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 62
    .line 63
    .line 64
    new-instance v11, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 65
    .line 66
    new-instance v14, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 67
    .line 68
    const/16 v15, 0x8

    .line 69
    .line 70
    invoke-direct {v14, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 71
    .line 72
    .line 73
    const-string v12, "250"

    .line 74
    .line 75
    invoke-direct {v11, v12, v14}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 76
    .line 77
    .line 78
    new-instance v14, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 79
    .line 80
    move/from16 v16, v15

    .line 81
    .line 82
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 83
    .line 84
    const/16 v9, 0x14

    .line 85
    .line 86
    invoke-direct {v15, v0, v9}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 87
    .line 88
    .line 89
    const-string v9, "500"

    .line 90
    .line 91
    invoke-direct {v14, v9, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 92
    .line 93
    .line 94
    new-instance v15, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 95
    .line 96
    move/from16 v19, v3

    .line 97
    .line 98
    new-instance v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6;

    .line 99
    .line 100
    invoke-direct {v3, v0, v6}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 101
    .line 102
    .line 103
    move/from16 v20, v6

    .line 104
    .line 105
    const-string v6, "1000"

    .line 106
    .line 107
    invoke-direct {v15, v6, v3}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 108
    .line 109
    .line 110
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 111
    .line 112
    move-object/from16 v21, v1

    .line 113
    .line 114
    new-instance v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6;

    .line 115
    .line 116
    move-object/from16 v22, v2

    .line 117
    .line 118
    const/4 v2, 0x3

    .line 119
    invoke-direct {v1, v0, v2}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 120
    .line 121
    .line 122
    move/from16 v23, v2

    .line 123
    .line 124
    const-string v2, "2500"

    .line 125
    .line 126
    invoke-direct {v3, v2, v1}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 127
    .line 128
    .line 129
    new-instance v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 130
    .line 131
    new-instance v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6;

    .line 132
    .line 133
    move-object/from16 v24, v3

    .line 134
    .line 135
    const/4 v3, 0x4

    .line 136
    invoke-direct {v2, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 137
    .line 138
    .line 139
    move/from16 v25, v3

    .line 140
    .line 141
    const-string v3, "5000"

    .line 142
    .line 143
    invoke-direct {v1, v3, v2}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 144
    .line 145
    .line 146
    new-instance v2, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 147
    .line 148
    new-instance v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6;

    .line 149
    .line 150
    move-object/from16 v26, v1

    .line 151
    .line 152
    const/4 v1, 0x5

    .line 153
    invoke-direct {v3, v0, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 154
    .line 155
    .line 156
    move/from16 v27, v1

    .line 157
    .line 158
    const-string v1, "10000"

    .line 159
    .line 160
    invoke-direct {v2, v1, v3}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 164
    .line 165
    new-instance v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 166
    .line 167
    move-object/from16 v28, v2

    .line 168
    .line 169
    const/16 v2, 0xb

    .line 170
    .line 171
    invoke-direct {v3, v0, v2}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 172
    .line 173
    .line 174
    move-object/from16 v29, v5

    .line 175
    .line 176
    const-string v5, "0"

    .line 177
    .line 178
    invoke-direct {v1, v5, v3}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 179
    .line 180
    .line 181
    new-array v3, v2, [Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 182
    .line 183
    aput-object v21, v3, v19

    .line 184
    .line 185
    move/from16 v21, v2

    .line 186
    .line 187
    const/4 v2, 0x1

    .line 188
    aput-object v22, v3, v2

    .line 189
    .line 190
    aput-object v29, v3, v20

    .line 191
    .line 192
    aput-object v8, v3, v23

    .line 193
    .line 194
    aput-object v11, v3, v25

    .line 195
    .line 196
    aput-object v14, v3, v27

    .line 197
    .line 198
    const/4 v8, 0x6

    .line 199
    aput-object v15, v3, v8

    .line 200
    .line 201
    const/4 v11, 0x7

    .line 202
    aput-object v24, v3, v11

    .line 203
    .line 204
    aput-object v26, v3, v16

    .line 205
    .line 206
    const/16 v14, 0x9

    .line 207
    .line 208
    aput-object v28, v3, v14

    .line 209
    .line 210
    const/16 v15, 0xa

    .line 211
    .line 212
    aput-object v1, v3, v15

    .line 213
    .line 214
    invoke-static {v3}, Lokio/Okio;->persistentListOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    iput-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->localFolderSizeOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 219
    .line 220
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 221
    .line 222
    move/from16 v22, v15

    .line 223
    .line 224
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 225
    .line 226
    move/from16 v24, v14

    .line 227
    .line 228
    const/16 v14, 0x16

    .line 229
    .line 230
    invoke-direct {v15, v0, v14}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 231
    .line 232
    .line 233
    const-string v14, "-1"

    .line 234
    .line 235
    invoke-direct {v3, v14, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 236
    .line 237
    .line 238
    new-instance v15, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 239
    .line 240
    new-instance v2, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 241
    .line 242
    move/from16 v11, v19

    .line 243
    .line 244
    invoke-direct {v2, v0, v11}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 245
    .line 246
    .line 247
    invoke-direct {v15, v5, v2}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 248
    .line 249
    .line 250
    new-instance v2, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 251
    .line 252
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 253
    .line 254
    const/16 v8, 0xe

    .line 255
    .line 256
    invoke-direct {v11, v0, v8}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 257
    .line 258
    .line 259
    const-string v8, "1"

    .line 260
    .line 261
    invoke-direct {v2, v8, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 262
    .line 263
    .line 264
    new-instance v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 265
    .line 266
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 267
    .line 268
    move-object/from16 v31, v2

    .line 269
    .line 270
    const/16 v2, 0x19

    .line 271
    .line 272
    invoke-direct {v11, v0, v2}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 273
    .line 274
    .line 275
    const-string v2, "2"

    .line 276
    .line 277
    invoke-direct {v8, v2, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 278
    .line 279
    .line 280
    new-instance v11, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 281
    .line 282
    move-object/from16 v33, v3

    .line 283
    .line 284
    new-instance v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6;

    .line 285
    .line 286
    move-object/from16 v34, v8

    .line 287
    .line 288
    const/4 v8, 0x0

    .line 289
    invoke-direct {v3, v0, v8}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 290
    .line 291
    .line 292
    const-string v8, "7"

    .line 293
    .line 294
    invoke-direct {v11, v8, v3}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 295
    .line 296
    .line 297
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 298
    .line 299
    new-instance v8, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6;

    .line 300
    .line 301
    move-object/from16 v35, v11

    .line 302
    .line 303
    const/4 v11, 0x6

    .line 304
    invoke-direct {v8, v0, v11}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 305
    .line 306
    .line 307
    const-string v11, "14"

    .line 308
    .line 309
    invoke-direct {v3, v11, v8}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 310
    .line 311
    .line 312
    new-instance v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 313
    .line 314
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6;

    .line 315
    .line 316
    move-object/from16 v36, v3

    .line 317
    .line 318
    const/4 v3, 0x7

    .line 319
    invoke-direct {v11, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 320
    .line 321
    .line 322
    const-string v3, "21"

    .line 323
    .line 324
    invoke-direct {v8, v3, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 325
    .line 326
    .line 327
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 328
    .line 329
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6;

    .line 330
    .line 331
    move-object/from16 v37, v8

    .line 332
    .line 333
    move/from16 v8, v16

    .line 334
    .line 335
    invoke-direct {v11, v0, v8}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 336
    .line 337
    .line 338
    const-string v8, "28"

    .line 339
    .line 340
    invoke-direct {v3, v8, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 341
    .line 342
    .line 343
    new-instance v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 344
    .line 345
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 346
    .line 347
    move-object/from16 v38, v3

    .line 348
    .line 349
    const/4 v3, 0x1

    .line 350
    invoke-direct {v11, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 351
    .line 352
    .line 353
    const-string v3, "56"

    .line 354
    .line 355
    invoke-direct {v8, v3, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 356
    .line 357
    .line 358
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 359
    .line 360
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 361
    .line 362
    move-object/from16 v39, v8

    .line 363
    .line 364
    move/from16 v8, v23

    .line 365
    .line 366
    invoke-direct {v11, v0, v8}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 367
    .line 368
    .line 369
    const-string v8, "84"

    .line 370
    .line 371
    invoke-direct {v3, v8, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 372
    .line 373
    .line 374
    new-instance v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 375
    .line 376
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 377
    .line 378
    move-object/from16 v40, v3

    .line 379
    .line 380
    move/from16 v3, v25

    .line 381
    .line 382
    invoke-direct {v11, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 383
    .line 384
    .line 385
    const-string v3, "168"

    .line 386
    .line 387
    invoke-direct {v8, v3, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 388
    .line 389
    .line 390
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 391
    .line 392
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 393
    .line 394
    move-object/from16 v41, v8

    .line 395
    .line 396
    move/from16 v8, v27

    .line 397
    .line 398
    invoke-direct {v11, v0, v8}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 399
    .line 400
    .line 401
    const-string v8, "365"

    .line 402
    .line 403
    invoke-direct {v3, v8, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 404
    .line 405
    .line 406
    const/16 v8, 0xc

    .line 407
    .line 408
    new-array v11, v8, [Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 409
    .line 410
    const/16 v19, 0x0

    .line 411
    .line 412
    aput-object v33, v11, v19

    .line 413
    .line 414
    const/16 v28, 0x1

    .line 415
    .line 416
    aput-object v15, v11, v28

    .line 417
    .line 418
    aput-object v31, v11, v20

    .line 419
    .line 420
    const/16 v23, 0x3

    .line 421
    .line 422
    aput-object v34, v11, v23

    .line 423
    .line 424
    const/16 v25, 0x4

    .line 425
    .line 426
    aput-object v35, v11, v25

    .line 427
    .line 428
    aput-object v36, v11, v27

    .line 429
    .line 430
    const/4 v15, 0x6

    .line 431
    aput-object v37, v11, v15

    .line 432
    .line 433
    const/16 v29, 0x7

    .line 434
    .line 435
    aput-object v38, v11, v29

    .line 436
    .line 437
    const/16 v16, 0x8

    .line 438
    .line 439
    aput-object v39, v11, v16

    .line 440
    .line 441
    aput-object v40, v11, v24

    .line 442
    .line 443
    aput-object v41, v11, v22

    .line 444
    .line 445
    aput-object v3, v11, v21

    .line 446
    .line 447
    invoke-static {v11}, Lokio/Okio;->persistentListOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    iput-object v3, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->syncMessageFromOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 452
    .line 453
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 454
    .line 455
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 456
    .line 457
    invoke-direct {v11, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 458
    .line 459
    .line 460
    const-string v15, "1024"

    .line 461
    .line 462
    invoke-direct {v3, v15, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 463
    .line 464
    .line 465
    new-instance v11, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 466
    .line 467
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 468
    .line 469
    const/4 v8, 0x7

    .line 470
    invoke-direct {v15, v0, v8}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 471
    .line 472
    .line 473
    const-string v8, "2048"

    .line 474
    .line 475
    invoke-direct {v11, v8, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 476
    .line 477
    .line 478
    new-instance v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 479
    .line 480
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 481
    .line 482
    move-object/from16 v33, v3

    .line 483
    .line 484
    const/16 v3, 0x8

    .line 485
    .line 486
    invoke-direct {v15, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 487
    .line 488
    .line 489
    const-string v3, "4096"

    .line 490
    .line 491
    invoke-direct {v8, v3, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 492
    .line 493
    .line 494
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 495
    .line 496
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 497
    .line 498
    move-object/from16 v34, v8

    .line 499
    .line 500
    move/from16 v8, v24

    .line 501
    .line 502
    invoke-direct {v15, v0, v8}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 503
    .line 504
    .line 505
    const-string v8, "8192"

    .line 506
    .line 507
    invoke-direct {v3, v8, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 508
    .line 509
    .line 510
    new-instance v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 511
    .line 512
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 513
    .line 514
    move-object/from16 v35, v3

    .line 515
    .line 516
    move/from16 v3, v22

    .line 517
    .line 518
    invoke-direct {v15, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 519
    .line 520
    .line 521
    const-string v3, "16384"

    .line 522
    .line 523
    invoke-direct {v8, v3, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 524
    .line 525
    .line 526
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 527
    .line 528
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 529
    .line 530
    move-object/from16 v36, v8

    .line 531
    .line 532
    const/16 v8, 0xc

    .line 533
    .line 534
    invoke-direct {v15, v0, v8}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 535
    .line 536
    .line 537
    const-string v8, "32768"

    .line 538
    .line 539
    invoke-direct {v3, v8, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 540
    .line 541
    .line 542
    new-instance v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 543
    .line 544
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 545
    .line 546
    move-object/from16 v37, v3

    .line 547
    .line 548
    const/16 v3, 0xd

    .line 549
    .line 550
    invoke-direct {v15, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 551
    .line 552
    .line 553
    move/from16 v38, v3

    .line 554
    .line 555
    const-string v3, "65536"

    .line 556
    .line 557
    invoke-direct {v8, v3, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 558
    .line 559
    .line 560
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 561
    .line 562
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 563
    .line 564
    move-object/from16 v39, v8

    .line 565
    .line 566
    const/16 v8, 0xf

    .line 567
    .line 568
    invoke-direct {v15, v0, v8}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 569
    .line 570
    .line 571
    const-string v8, "131072"

    .line 572
    .line 573
    invoke-direct {v3, v8, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 574
    .line 575
    .line 576
    new-instance v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 577
    .line 578
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 579
    .line 580
    move-object/from16 v41, v3

    .line 581
    .line 582
    const/16 v3, 0x10

    .line 583
    .line 584
    invoke-direct {v15, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 585
    .line 586
    .line 587
    const-string v3, "262144"

    .line 588
    .line 589
    invoke-direct {v8, v3, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 590
    .line 591
    .line 592
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 593
    .line 594
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 595
    .line 596
    move-object/from16 v42, v8

    .line 597
    .line 598
    const/16 v8, 0x11

    .line 599
    .line 600
    invoke-direct {v15, v0, v8}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 601
    .line 602
    .line 603
    const-string v8, "524288"

    .line 604
    .line 605
    invoke-direct {v3, v8, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 606
    .line 607
    .line 608
    new-instance v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 609
    .line 610
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 611
    .line 612
    move-object/from16 v43, v3

    .line 613
    .line 614
    const/16 v3, 0x12

    .line 615
    .line 616
    invoke-direct {v15, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 617
    .line 618
    .line 619
    const-string v3, "1048576"

    .line 620
    .line 621
    invoke-direct {v8, v3, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 622
    .line 623
    .line 624
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 625
    .line 626
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 627
    .line 628
    move-object/from16 v44, v8

    .line 629
    .line 630
    const/16 v8, 0x13

    .line 631
    .line 632
    invoke-direct {v15, v0, v8}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 633
    .line 634
    .line 635
    const-string v8, "2097152"

    .line 636
    .line 637
    invoke-direct {v3, v8, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 638
    .line 639
    .line 640
    new-instance v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 641
    .line 642
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 643
    .line 644
    move-object/from16 v45, v3

    .line 645
    .line 646
    const/16 v3, 0x14

    .line 647
    .line 648
    invoke-direct {v15, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 649
    .line 650
    .line 651
    const-string v3, "5242880"

    .line 652
    .line 653
    invoke-direct {v8, v3, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 654
    .line 655
    .line 656
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 657
    .line 658
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 659
    .line 660
    move-object/from16 v18, v8

    .line 661
    .line 662
    const/16 v8, 0x15

    .line 663
    .line 664
    invoke-direct {v15, v0, v8}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 665
    .line 666
    .line 667
    const-string v8, "10485760"

    .line 668
    .line 669
    invoke-direct {v3, v8, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 670
    .line 671
    .line 672
    new-instance v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 673
    .line 674
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 675
    .line 676
    move-object/from16 v46, v3

    .line 677
    .line 678
    const/16 v3, 0x17

    .line 679
    .line 680
    invoke-direct {v15, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 681
    .line 682
    .line 683
    invoke-direct {v8, v5, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 684
    .line 685
    .line 686
    const/16 v3, 0xf

    .line 687
    .line 688
    new-array v15, v3, [Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 689
    .line 690
    const/16 v19, 0x0

    .line 691
    .line 692
    aput-object v33, v15, v19

    .line 693
    .line 694
    const/16 v28, 0x1

    .line 695
    .line 696
    aput-object v11, v15, v28

    .line 697
    .line 698
    aput-object v34, v15, v20

    .line 699
    .line 700
    const/16 v23, 0x3

    .line 701
    .line 702
    aput-object v35, v15, v23

    .line 703
    .line 704
    const/16 v25, 0x4

    .line 705
    .line 706
    aput-object v36, v15, v25

    .line 707
    .line 708
    const/16 v27, 0x5

    .line 709
    .line 710
    aput-object v37, v15, v27

    .line 711
    .line 712
    const/16 v30, 0x6

    .line 713
    .line 714
    aput-object v39, v15, v30

    .line 715
    .line 716
    const/16 v29, 0x7

    .line 717
    .line 718
    aput-object v41, v15, v29

    .line 719
    .line 720
    const/16 v16, 0x8

    .line 721
    .line 722
    aput-object v42, v15, v16

    .line 723
    .line 724
    const/16 v24, 0x9

    .line 725
    .line 726
    aput-object v43, v15, v24

    .line 727
    .line 728
    const/16 v22, 0xa

    .line 729
    .line 730
    aput-object v44, v15, v22

    .line 731
    .line 732
    aput-object v45, v15, v21

    .line 733
    .line 734
    const/16 v31, 0xc

    .line 735
    .line 736
    aput-object v18, v15, v31

    .line 737
    .line 738
    aput-object v46, v15, v38

    .line 739
    .line 740
    const/16 v17, 0xe

    .line 741
    .line 742
    aput-object v8, v15, v17

    .line 743
    .line 744
    invoke-static {v15}, Lokio/Okio;->persistentListOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 745
    .line 746
    .line 747
    move-result-object v3

    .line 748
    iput-object v3, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->fetchMessageUpToOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 749
    .line 750
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 751
    .line 752
    new-instance v8, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 753
    .line 754
    const/16 v11, 0x18

    .line 755
    .line 756
    invoke-direct {v8, v0, v11}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 757
    .line 758
    .line 759
    invoke-direct {v3, v14, v8}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 760
    .line 761
    .line 762
    new-instance v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 763
    .line 764
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 765
    .line 766
    const/16 v15, 0x19

    .line 767
    .line 768
    invoke-direct {v11, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 769
    .line 770
    .line 771
    const-string v15, "15"

    .line 772
    .line 773
    invoke-direct {v8, v15, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 774
    .line 775
    .line 776
    new-instance v11, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 777
    .line 778
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 779
    .line 780
    move-object/from16 v17, v3

    .line 781
    .line 782
    const/16 v3, 0x1b

    .line 783
    .line 784
    invoke-direct {v15, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 785
    .line 786
    .line 787
    const-string v3, "30"

    .line 788
    .line 789
    invoke-direct {v11, v3, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 790
    .line 791
    .line 792
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 793
    .line 794
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 795
    .line 796
    move-object/from16 v18, v8

    .line 797
    .line 798
    const/16 v8, 0x1c

    .line 799
    .line 800
    invoke-direct {v15, v0, v8}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 801
    .line 802
    .line 803
    const-string v8, "60"

    .line 804
    .line 805
    invoke-direct {v3, v8, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 806
    .line 807
    .line 808
    new-instance v15, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 809
    .line 810
    move-object/from16 v32, v3

    .line 811
    .line 812
    new-instance v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;

    .line 813
    .line 814
    move-object/from16 v33, v11

    .line 815
    .line 816
    const/16 v11, 0x1d

    .line 817
    .line 818
    invoke-direct {v3, v0, v11}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 819
    .line 820
    .line 821
    const-string v11, "120"

    .line 822
    .line 823
    invoke-direct {v15, v11, v3}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 824
    .line 825
    .line 826
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 827
    .line 828
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 829
    .line 830
    move-object/from16 v34, v15

    .line 831
    .line 832
    const/4 v15, 0x1

    .line 833
    invoke-direct {v11, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 834
    .line 835
    .line 836
    const-string v15, "180"

    .line 837
    .line 838
    invoke-direct {v3, v15, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 839
    .line 840
    .line 841
    new-instance v11, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 842
    .line 843
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 844
    .line 845
    move-object/from16 v35, v3

    .line 846
    .line 847
    move/from16 v3, v20

    .line 848
    .line 849
    invoke-direct {v15, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 850
    .line 851
    .line 852
    const-string v3, "360"

    .line 853
    .line 854
    invoke-direct {v11, v3, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 855
    .line 856
    .line 857
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 858
    .line 859
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 860
    .line 861
    move-object/from16 v36, v11

    .line 862
    .line 863
    const/4 v11, 0x3

    .line 864
    invoke-direct {v15, v0, v11}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 865
    .line 866
    .line 867
    const-string v11, "720"

    .line 868
    .line 869
    invoke-direct {v3, v11, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 870
    .line 871
    .line 872
    new-instance v11, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 873
    .line 874
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 875
    .line 876
    move-object/from16 v37, v3

    .line 877
    .line 878
    const/4 v3, 0x4

    .line 879
    invoke-direct {v15, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 880
    .line 881
    .line 882
    move/from16 v25, v3

    .line 883
    .line 884
    const-string v3, "1440"

    .line 885
    .line 886
    invoke-direct {v11, v3, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 887
    .line 888
    .line 889
    const/16 v3, 0x9

    .line 890
    .line 891
    new-array v15, v3, [Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 892
    .line 893
    const/16 v19, 0x0

    .line 894
    .line 895
    aput-object v17, v15, v19

    .line 896
    .line 897
    const/16 v28, 0x1

    .line 898
    .line 899
    aput-object v18, v15, v28

    .line 900
    .line 901
    const/16 v20, 0x2

    .line 902
    .line 903
    aput-object v33, v15, v20

    .line 904
    .line 905
    const/16 v23, 0x3

    .line 906
    .line 907
    aput-object v32, v15, v23

    .line 908
    .line 909
    aput-object v34, v15, v25

    .line 910
    .line 911
    const/4 v3, 0x5

    .line 912
    aput-object v35, v15, v3

    .line 913
    .line 914
    const/16 v30, 0x6

    .line 915
    .line 916
    aput-object v36, v15, v30

    .line 917
    .line 918
    const/16 v29, 0x7

    .line 919
    .line 920
    aput-object v37, v15, v29

    .line 921
    .line 922
    const/16 v16, 0x8

    .line 923
    .line 924
    aput-object v11, v15, v16

    .line 925
    .line 926
    invoke-static {v15}, Lokio/Okio;->persistentListOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 927
    .line 928
    .line 929
    move-result-object v11

    .line 930
    iput-object v11, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->folderPollFrequencyOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 931
    .line 932
    new-instance v11, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 933
    .line 934
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 935
    .line 936
    invoke-direct {v15, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 937
    .line 938
    .line 939
    const-string v3, "EXPUNGE_IMMEDIATELY"

    .line 940
    .line 941
    invoke-direct {v11, v3, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 942
    .line 943
    .line 944
    new-instance v15, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 945
    .line 946
    move-object/from16 v17, v11

    .line 947
    .line 948
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 949
    .line 950
    move-object/from16 v18, v3

    .line 951
    .line 952
    const/4 v3, 0x6

    .line 953
    invoke-direct {v11, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 954
    .line 955
    .line 956
    const-string v3, "EXPUNGE_ON_POLL"

    .line 957
    .line 958
    invoke-direct {v15, v3, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 959
    .line 960
    .line 961
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 962
    .line 963
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 964
    .line 965
    move-object/from16 v32, v15

    .line 966
    .line 967
    const/4 v15, 0x7

    .line 968
    invoke-direct {v11, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 969
    .line 970
    .line 971
    const-string v15, "EXPUNGE_MANUALLY"

    .line 972
    .line 973
    invoke-direct {v3, v15, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 974
    .line 975
    .line 976
    const/4 v11, 0x3

    .line 977
    new-array v15, v11, [Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 978
    .line 979
    const/16 v19, 0x0

    .line 980
    .line 981
    aput-object v17, v15, v19

    .line 982
    .line 983
    const/16 v28, 0x1

    .line 984
    .line 985
    aput-object v32, v15, v28

    .line 986
    .line 987
    const/16 v20, 0x2

    .line 988
    .line 989
    aput-object v3, v15, v20

    .line 990
    .line 991
    invoke-static {v15}, Lokio/Okio;->persistentListOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 992
    .line 993
    .line 994
    move-result-object v3

    .line 995
    iput-object v3, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->eraseDeletedMessageOnServerOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 996
    .line 997
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 998
    .line 999
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 1000
    .line 1001
    const/16 v15, 0x9

    .line 1002
    .line 1003
    invoke-direct {v11, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1004
    .line 1005
    .line 1006
    const-string v15, "NEVER"

    .line 1007
    .line 1008
    invoke-direct {v3, v15, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1009
    .line 1010
    .line 1011
    new-instance v11, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1012
    .line 1013
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 1014
    .line 1015
    move-object/from16 v17, v3

    .line 1016
    .line 1017
    const/16 v3, 0xa

    .line 1018
    .line 1019
    invoke-direct {v15, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1020
    .line 1021
    .line 1022
    const-string v3, "ON_DELETE"

    .line 1023
    .line 1024
    invoke-direct {v11, v3, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1025
    .line 1026
    .line 1027
    new-instance v15, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1028
    .line 1029
    move-object/from16 v24, v11

    .line 1030
    .line 1031
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 1032
    .line 1033
    move-object/from16 v32, v3

    .line 1034
    .line 1035
    move/from16 v3, v21

    .line 1036
    .line 1037
    invoke-direct {v11, v0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1038
    .line 1039
    .line 1040
    const-string v3, "MARK_AS_READ"

    .line 1041
    .line 1042
    invoke-direct {v15, v3, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1043
    .line 1044
    .line 1045
    const/4 v11, 0x3

    .line 1046
    new-array v3, v11, [Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1047
    .line 1048
    const/16 v19, 0x0

    .line 1049
    .line 1050
    aput-object v17, v3, v19

    .line 1051
    .line 1052
    const/16 v28, 0x1

    .line 1053
    .line 1054
    aput-object v24, v3, v28

    .line 1055
    .line 1056
    const/16 v20, 0x2

    .line 1057
    .line 1058
    aput-object v15, v3, v20

    .line 1059
    .line 1060
    invoke-static {v3}, Lokio/Okio;->persistentListOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v3

    .line 1064
    iput-object v3, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->whenIDeleteAMessageOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 1065
    .line 1066
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1067
    .line 1068
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 1069
    .line 1070
    const/16 v15, 0xc

    .line 1071
    .line 1072
    invoke-direct {v11, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1073
    .line 1074
    .line 1075
    const-string v15, "5"

    .line 1076
    .line 1077
    invoke-direct {v3, v15, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1078
    .line 1079
    .line 1080
    new-instance v11, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1081
    .line 1082
    move-object/from16 v17, v3

    .line 1083
    .line 1084
    new-instance v3, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 1085
    .line 1086
    move-object/from16 v21, v15

    .line 1087
    .line 1088
    move/from16 v15, v38

    .line 1089
    .line 1090
    invoke-direct {v3, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1091
    .line 1092
    .line 1093
    invoke-direct {v11, v4, v3}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1094
    .line 1095
    .line 1096
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1097
    .line 1098
    new-instance v15, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 1099
    .line 1100
    move-object/from16 v24, v11

    .line 1101
    .line 1102
    const/16 v11, 0xf

    .line 1103
    .line 1104
    invoke-direct {v15, v0, v11}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1105
    .line 1106
    .line 1107
    invoke-direct {v3, v7, v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1108
    .line 1109
    .line 1110
    new-instance v7, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1111
    .line 1112
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 1113
    .line 1114
    const/16 v15, 0x10

    .line 1115
    .line 1116
    invoke-direct {v11, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1117
    .line 1118
    .line 1119
    invoke-direct {v7, v10, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1120
    .line 1121
    .line 1122
    new-instance v10, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1123
    .line 1124
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 1125
    .line 1126
    const/16 v15, 0x11

    .line 1127
    .line 1128
    invoke-direct {v11, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1129
    .line 1130
    .line 1131
    invoke-direct {v10, v13, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1132
    .line 1133
    .line 1134
    new-instance v11, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1135
    .line 1136
    new-instance v13, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 1137
    .line 1138
    const/16 v15, 0x12

    .line 1139
    .line 1140
    invoke-direct {v13, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1141
    .line 1142
    .line 1143
    invoke-direct {v11, v12, v13}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1144
    .line 1145
    .line 1146
    new-instance v12, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1147
    .line 1148
    new-instance v13, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 1149
    .line 1150
    const/16 v15, 0x13

    .line 1151
    .line 1152
    invoke-direct {v13, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1153
    .line 1154
    .line 1155
    invoke-direct {v12, v9, v13}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1156
    .line 1157
    .line 1158
    new-instance v9, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1159
    .line 1160
    new-instance v13, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 1161
    .line 1162
    const/16 v15, 0x15

    .line 1163
    .line 1164
    invoke-direct {v13, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1165
    .line 1166
    .line 1167
    invoke-direct {v9, v6, v13}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1168
    .line 1169
    .line 1170
    const/16 v6, 0x8

    .line 1171
    .line 1172
    new-array v13, v6, [Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1173
    .line 1174
    const/16 v19, 0x0

    .line 1175
    .line 1176
    aput-object v17, v13, v19

    .line 1177
    .line 1178
    const/16 v28, 0x1

    .line 1179
    .line 1180
    aput-object v24, v13, v28

    .line 1181
    .line 1182
    const/16 v20, 0x2

    .line 1183
    .line 1184
    aput-object v3, v13, v20

    .line 1185
    .line 1186
    const/16 v23, 0x3

    .line 1187
    .line 1188
    aput-object v7, v13, v23

    .line 1189
    .line 1190
    const/16 v25, 0x4

    .line 1191
    .line 1192
    aput-object v10, v13, v25

    .line 1193
    .line 1194
    const/16 v27, 0x5

    .line 1195
    .line 1196
    aput-object v11, v13, v27

    .line 1197
    .line 1198
    const/16 v30, 0x6

    .line 1199
    .line 1200
    aput-object v12, v13, v30

    .line 1201
    .line 1202
    const/16 v29, 0x7

    .line 1203
    .line 1204
    aput-object v9, v13, v29

    .line 1205
    .line 1206
    invoke-static {v13}, Lokio/Okio;->persistentListOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v3

    .line 1210
    iput-object v3, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->maxFolderToCheckWithPushOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 1211
    .line 1212
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1213
    .line 1214
    new-instance v6, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 1215
    .line 1216
    const/16 v7, 0x16

    .line 1217
    .line 1218
    invoke-direct {v6, v0, v7}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1219
    .line 1220
    .line 1221
    invoke-direct {v3, v2, v6}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1222
    .line 1223
    .line 1224
    new-instance v2, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1225
    .line 1226
    new-instance v6, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 1227
    .line 1228
    const/16 v7, 0x17

    .line 1229
    .line 1230
    invoke-direct {v6, v0, v7}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1231
    .line 1232
    .line 1233
    const-string v7, "3"

    .line 1234
    .line 1235
    invoke-direct {v2, v7, v6}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1236
    .line 1237
    .line 1238
    new-instance v6, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1239
    .line 1240
    new-instance v7, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 1241
    .line 1242
    const/16 v9, 0x18

    .line 1243
    .line 1244
    invoke-direct {v7, v0, v9}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1245
    .line 1246
    .line 1247
    const-string v9, "6"

    .line 1248
    .line 1249
    invoke-direct {v6, v9, v7}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1250
    .line 1251
    .line 1252
    new-instance v7, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1253
    .line 1254
    new-instance v9, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 1255
    .line 1256
    const/16 v10, 0x1a

    .line 1257
    .line 1258
    invoke-direct {v9, v0, v10}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1259
    .line 1260
    .line 1261
    const-string v10, "12"

    .line 1262
    .line 1263
    invoke-direct {v7, v10, v9}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1264
    .line 1265
    .line 1266
    new-instance v9, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1267
    .line 1268
    new-instance v10, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 1269
    .line 1270
    const/16 v11, 0x1b

    .line 1271
    .line 1272
    invoke-direct {v10, v0, v11}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1273
    .line 1274
    .line 1275
    const-string v11, "24"

    .line 1276
    .line 1277
    invoke-direct {v9, v11, v10}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1278
    .line 1279
    .line 1280
    new-instance v10, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1281
    .line 1282
    new-instance v11, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 1283
    .line 1284
    const/16 v12, 0x1c

    .line 1285
    .line 1286
    invoke-direct {v11, v0, v12}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1287
    .line 1288
    .line 1289
    const-string v12, "36"

    .line 1290
    .line 1291
    invoke-direct {v10, v12, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1292
    .line 1293
    .line 1294
    new-instance v11, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1295
    .line 1296
    new-instance v12, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;

    .line 1297
    .line 1298
    const/16 v13, 0x1d

    .line 1299
    .line 1300
    invoke-direct {v12, v0, v13}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1301
    .line 1302
    .line 1303
    const-string v13, "48"

    .line 1304
    .line 1305
    invoke-direct {v11, v13, v12}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1306
    .line 1307
    .line 1308
    new-instance v12, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1309
    .line 1310
    new-instance v13, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6;

    .line 1311
    .line 1312
    const/4 v15, 0x1

    .line 1313
    invoke-direct {v13, v0, v15}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;I)V

    .line 1314
    .line 1315
    .line 1316
    invoke-direct {v12, v8, v13}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1317
    .line 1318
    .line 1319
    const/16 v13, 0x8

    .line 1320
    .line 1321
    new-array v13, v13, [Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1322
    .line 1323
    const/16 v19, 0x0

    .line 1324
    .line 1325
    aput-object v3, v13, v19

    .line 1326
    .line 1327
    aput-object v2, v13, v15

    .line 1328
    .line 1329
    const/16 v20, 0x2

    .line 1330
    .line 1331
    aput-object v6, v13, v20

    .line 1332
    .line 1333
    const/16 v23, 0x3

    .line 1334
    .line 1335
    aput-object v7, v13, v23

    .line 1336
    .line 1337
    const/16 v25, 0x4

    .line 1338
    .line 1339
    aput-object v9, v13, v25

    .line 1340
    .line 1341
    const/16 v27, 0x5

    .line 1342
    .line 1343
    aput-object v10, v13, v27

    .line 1344
    .line 1345
    const/16 v30, 0x6

    .line 1346
    .line 1347
    aput-object v11, v13, v30

    .line 1348
    .line 1349
    const/16 v29, 0x7

    .line 1350
    .line 1351
    aput-object v12, v13, v29

    .line 1352
    .line 1353
    invoke-static {v13}, Lokio/Okio;->persistentListOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v2

    .line 1357
    iput-object v2, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->refreshIdleConnectionOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 1358
    .line 1359
    const/16 v3, 0xa

    .line 1360
    .line 1361
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1362
    .line 1363
    .line 1364
    move-result v2

    .line 1365
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 1366
    .line 1367
    .line 1368
    move-result v2

    .line 1369
    const/16 v15, 0x10

    .line 1370
    .line 1371
    if-ge v2, v15, :cond_0

    .line 1372
    .line 1373
    const/16 v2, 0x10

    .line 1374
    .line 1375
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 1376
    .line 1377
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1378
    .line 1379
    .line 1380
    const/4 v11, 0x0

    .line 1381
    invoke-virtual {v1, v11}, Lkotlin/collections/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v1

    .line 1385
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1386
    .line 1387
    .line 1388
    move-result v2

    .line 1389
    if-eqz v2, :cond_1

    .line 1390
    .line 1391
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v2

    .line 1395
    move-object v6, v2

    .line 1396
    check-cast v6, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1397
    .line 1398
    iget-object v6, v6, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 1399
    .line 1400
    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    .line 1402
    .line 1403
    goto :goto_0

    .line 1404
    :cond_1
    iput-object v3, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->localFolderSizeOptionsById:Ljava/util/LinkedHashMap;

    .line 1405
    .line 1406
    iget-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->syncMessageFromOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 1407
    .line 1408
    const/16 v3, 0xa

    .line 1409
    .line 1410
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1411
    .line 1412
    .line 1413
    move-result v2

    .line 1414
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 1415
    .line 1416
    .line 1417
    move-result v2

    .line 1418
    const/16 v15, 0x10

    .line 1419
    .line 1420
    if-ge v2, v15, :cond_2

    .line 1421
    .line 1422
    const/16 v2, 0x10

    .line 1423
    .line 1424
    :cond_2
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 1425
    .line 1426
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1427
    .line 1428
    .line 1429
    const/4 v11, 0x0

    .line 1430
    invoke-virtual {v1, v11}, Lkotlin/collections/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v1

    .line 1434
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1435
    .line 1436
    .line 1437
    move-result v2

    .line 1438
    if-eqz v2, :cond_3

    .line 1439
    .line 1440
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v2

    .line 1444
    move-object v6, v2

    .line 1445
    check-cast v6, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1446
    .line 1447
    iget-object v6, v6, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 1448
    .line 1449
    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    .line 1451
    .line 1452
    goto :goto_1

    .line 1453
    :cond_3
    iput-object v3, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->syncMessageFromOptionsById:Ljava/util/LinkedHashMap;

    .line 1454
    .line 1455
    iget-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->fetchMessageUpToOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 1456
    .line 1457
    const/16 v3, 0xa

    .line 1458
    .line 1459
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1460
    .line 1461
    .line 1462
    move-result v2

    .line 1463
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 1464
    .line 1465
    .line 1466
    move-result v2

    .line 1467
    const/16 v15, 0x10

    .line 1468
    .line 1469
    if-ge v2, v15, :cond_4

    .line 1470
    .line 1471
    const/16 v2, 0x10

    .line 1472
    .line 1473
    :cond_4
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 1474
    .line 1475
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1476
    .line 1477
    .line 1478
    const/4 v11, 0x0

    .line 1479
    invoke-virtual {v1, v11}, Lkotlin/collections/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v1

    .line 1483
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1484
    .line 1485
    .line 1486
    move-result v2

    .line 1487
    if-eqz v2, :cond_5

    .line 1488
    .line 1489
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v2

    .line 1493
    move-object v6, v2

    .line 1494
    check-cast v6, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1495
    .line 1496
    iget-object v6, v6, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 1497
    .line 1498
    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    .line 1500
    .line 1501
    goto :goto_2

    .line 1502
    :cond_5
    iput-object v3, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->fetchMessageUpToOptionsById:Ljava/util/LinkedHashMap;

    .line 1503
    .line 1504
    iget-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->folderPollFrequencyOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 1505
    .line 1506
    const/16 v3, 0xa

    .line 1507
    .line 1508
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1509
    .line 1510
    .line 1511
    move-result v2

    .line 1512
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 1513
    .line 1514
    .line 1515
    move-result v2

    .line 1516
    const/16 v15, 0x10

    .line 1517
    .line 1518
    if-ge v2, v15, :cond_6

    .line 1519
    .line 1520
    const/16 v2, 0x10

    .line 1521
    .line 1522
    :cond_6
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 1523
    .line 1524
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1525
    .line 1526
    .line 1527
    const/4 v11, 0x0

    .line 1528
    invoke-virtual {v1, v11}, Lkotlin/collections/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 1529
    .line 1530
    .line 1531
    move-result-object v1

    .line 1532
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1533
    .line 1534
    .line 1535
    move-result v2

    .line 1536
    if-eqz v2, :cond_7

    .line 1537
    .line 1538
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v2

    .line 1542
    move-object v6, v2

    .line 1543
    check-cast v6, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1544
    .line 1545
    iget-object v6, v6, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 1546
    .line 1547
    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    .line 1549
    .line 1550
    goto :goto_3

    .line 1551
    :cond_7
    iput-object v3, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->folderPollFrequencyOptionsById:Ljava/util/LinkedHashMap;

    .line 1552
    .line 1553
    iget-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->eraseDeletedMessageOnServerOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 1554
    .line 1555
    const/16 v3, 0xa

    .line 1556
    .line 1557
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1558
    .line 1559
    .line 1560
    move-result v2

    .line 1561
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 1562
    .line 1563
    .line 1564
    move-result v2

    .line 1565
    const/16 v15, 0x10

    .line 1566
    .line 1567
    if-ge v2, v15, :cond_8

    .line 1568
    .line 1569
    const/16 v2, 0x10

    .line 1570
    .line 1571
    :cond_8
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 1572
    .line 1573
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1574
    .line 1575
    .line 1576
    const/4 v11, 0x0

    .line 1577
    invoke-virtual {v1, v11}, Lkotlin/collections/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v1

    .line 1581
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1582
    .line 1583
    .line 1584
    move-result v2

    .line 1585
    if-eqz v2, :cond_9

    .line 1586
    .line 1587
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v2

    .line 1591
    move-object v6, v2

    .line 1592
    check-cast v6, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1593
    .line 1594
    iget-object v6, v6, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 1595
    .line 1596
    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    .line 1598
    .line 1599
    goto :goto_4

    .line 1600
    :cond_9
    iput-object v3, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->eraseDeletedMessageOnServerOptionsById:Ljava/util/LinkedHashMap;

    .line 1601
    .line 1602
    iget-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->whenIDeleteAMessageOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 1603
    .line 1604
    const/16 v3, 0xa

    .line 1605
    .line 1606
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1607
    .line 1608
    .line 1609
    move-result v2

    .line 1610
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 1611
    .line 1612
    .line 1613
    move-result v2

    .line 1614
    const/16 v15, 0x10

    .line 1615
    .line 1616
    if-ge v2, v15, :cond_a

    .line 1617
    .line 1618
    const/16 v2, 0x10

    .line 1619
    .line 1620
    :cond_a
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 1621
    .line 1622
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1623
    .line 1624
    .line 1625
    const/4 v11, 0x0

    .line 1626
    invoke-virtual {v1, v11}, Lkotlin/collections/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v1

    .line 1630
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1631
    .line 1632
    .line 1633
    move-result v2

    .line 1634
    if-eqz v2, :cond_b

    .line 1635
    .line 1636
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1637
    .line 1638
    .line 1639
    move-result-object v2

    .line 1640
    move-object v6, v2

    .line 1641
    check-cast v6, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1642
    .line 1643
    iget-object v6, v6, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 1644
    .line 1645
    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    .line 1647
    .line 1648
    goto :goto_5

    .line 1649
    :cond_b
    iput-object v3, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->whenIDeleteAMessageOptionsById:Ljava/util/LinkedHashMap;

    .line 1650
    .line 1651
    iget-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->maxFolderToCheckWithPushOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 1652
    .line 1653
    const/16 v3, 0xa

    .line 1654
    .line 1655
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1656
    .line 1657
    .line 1658
    move-result v2

    .line 1659
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 1660
    .line 1661
    .line 1662
    move-result v15

    .line 1663
    const/16 v2, 0x10

    .line 1664
    .line 1665
    if-ge v15, v2, :cond_c

    .line 1666
    .line 1667
    const/16 v15, 0x10

    .line 1668
    .line 1669
    :cond_c
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 1670
    .line 1671
    invoke-direct {v2, v15}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1672
    .line 1673
    .line 1674
    const/4 v11, 0x0

    .line 1675
    invoke-virtual {v1, v11}, Lkotlin/collections/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v1

    .line 1679
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1680
    .line 1681
    .line 1682
    move-result v3

    .line 1683
    if-eqz v3, :cond_d

    .line 1684
    .line 1685
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v3

    .line 1689
    move-object v6, v3

    .line 1690
    check-cast v6, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1691
    .line 1692
    iget-object v6, v6, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 1693
    .line 1694
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    .line 1696
    .line 1697
    goto :goto_6

    .line 1698
    :cond_d
    iput-object v2, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->maxFolderToCheckWithPushOptionsById:Ljava/util/LinkedHashMap;

    .line 1699
    .line 1700
    iget-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->refreshIdleConnectionOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 1701
    .line 1702
    const/16 v3, 0xa

    .line 1703
    .line 1704
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1705
    .line 1706
    .line 1707
    move-result v2

    .line 1708
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 1709
    .line 1710
    .line 1711
    move-result v2

    .line 1712
    const/16 v15, 0x10

    .line 1713
    .line 1714
    if-ge v2, v15, :cond_e

    .line 1715
    .line 1716
    move v3, v15

    .line 1717
    goto :goto_7

    .line 1718
    :cond_e
    move v3, v2

    .line 1719
    :goto_7
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 1720
    .line 1721
    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1722
    .line 1723
    .line 1724
    const/4 v11, 0x0

    .line 1725
    invoke-virtual {v1, v11}, Lkotlin/collections/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v1

    .line 1729
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1730
    .line 1731
    .line 1732
    move-result v3

    .line 1733
    if-eqz v3, :cond_f

    .line 1734
    .line 1735
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1736
    .line 1737
    .line 1738
    move-result-object v3

    .line 1739
    move-object v6, v3

    .line 1740
    check-cast v6, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1741
    .line 1742
    iget-object v6, v6, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 1743
    .line 1744
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    .line 1746
    .line 1747
    goto :goto_8

    .line 1748
    :cond_f
    iput-object v2, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->refreshIdleConnectionOptionsById:Ljava/util/LinkedHashMap;

    .line 1749
    .line 1750
    iget-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->localFolderSizeOptionsById:Ljava/util/LinkedHashMap;

    .line 1751
    .line 1752
    invoke-static {v1, v4}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    .line 1754
    .line 1755
    move-result-object v1

    .line 1756
    check-cast v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1757
    .line 1758
    iput-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->defaultLocalFolderSizeOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1759
    .line 1760
    iget-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->syncMessageFromOptionsById:Ljava/util/LinkedHashMap;

    .line 1761
    .line 1762
    invoke-static {v1, v14}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v1

    .line 1766
    check-cast v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1767
    .line 1768
    iput-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->defaultSyncMessageFromOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1769
    .line 1770
    iget-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->fetchMessageUpToOptionsById:Ljava/util/LinkedHashMap;

    .line 1771
    .line 1772
    invoke-static {v1, v5}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v1

    .line 1776
    check-cast v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1777
    .line 1778
    iput-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->defaultFetchMessageUpToOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1779
    .line 1780
    iget-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->folderPollFrequencyOptionsById:Ljava/util/LinkedHashMap;

    .line 1781
    .line 1782
    invoke-static {v1, v14}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v1

    .line 1786
    check-cast v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1787
    .line 1788
    iput-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->defaultFolderPollFrequencyOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1789
    .line 1790
    iget-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->eraseDeletedMessageOnServerOptionsById:Ljava/util/LinkedHashMap;

    .line 1791
    .line 1792
    move-object/from16 v3, v18

    .line 1793
    .line 1794
    invoke-static {v1, v3}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    .line 1796
    .line 1797
    move-result-object v1

    .line 1798
    check-cast v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1799
    .line 1800
    iput-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->defaultEraseDeletedMessageOnServerOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1801
    .line 1802
    iget-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->whenIDeleteAMessageOptionsById:Ljava/util/LinkedHashMap;

    .line 1803
    .line 1804
    move-object/from16 v3, v32

    .line 1805
    .line 1806
    invoke-static {v1, v3}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    .line 1808
    .line 1809
    move-result-object v1

    .line 1810
    check-cast v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1811
    .line 1812
    iput-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->defaultWhenIDeleteAMessageOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1813
    .line 1814
    iget-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->maxFolderToCheckWithPushOptionsById:Ljava/util/LinkedHashMap;

    .line 1815
    .line 1816
    move-object/from16 v3, v21

    .line 1817
    .line 1818
    invoke-static {v1, v3}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v1

    .line 1822
    check-cast v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1823
    .line 1824
    iput-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->defaultMaxFolderToCheckWithPushOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1825
    .line 1826
    invoke-static {v2, v8}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1827
    .line 1828
    .line 1829
    move-result-object v1

    .line 1830
    check-cast v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1831
    .line 1832
    iput-object v1, v0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsOptionsMapper;->defaultRefreshIdleConnectionOption:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 1833
    .line 1834
    return-void
.end method
