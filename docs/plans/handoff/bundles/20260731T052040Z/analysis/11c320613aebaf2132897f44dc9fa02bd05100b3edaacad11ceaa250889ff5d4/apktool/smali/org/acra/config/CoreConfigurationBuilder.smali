.class public final Lorg/acra/config/CoreConfigurationBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public _defaultsBitField0:I

.field public final additionalDropBoxTags$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final additionalSharedPreferences$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final alsoReportToAndroidFramework$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final applicationLogFile$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final applicationLogFileDir$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final applicationLogFileLines$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final attachmentUriProvider$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final attachmentUris$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final buildConfigClass$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$15;

.field public final deleteUnapprovedReportsOnApplicationStart$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final dropboxCollectionMinutes$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final excludeMatchingSettingsKeys$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final excludeMatchingSharedPreferencesKeys$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final includeDropBoxSystemTags$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final logcatArguments$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final logcatFilterByPid$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final logcatReadNonBlocking$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final parallel$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final pluginConfigurations$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final pluginLoader$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final reportContent$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final reportFormat$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final reportSendFailureToast$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final reportSendSuccessToast$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final retryPolicyClass$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final sendReportsInDevMode$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final sharedPreferencesName$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

.field public final stopServicesOnCrash$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .line 1
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 2
    .line 3
    const-class v1, Lorg/acra/config/CoreConfigurationBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "sharedPreferencesName"

    .line 6
    .line 7
    .line 8
    const-string v3, "getSharedPreferencesName()Ljava/lang/String;"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 20
    .line 21
    const-string v3, "includeDropBoxSystemTags"

    .line 22
    .line 23
    const-string v5, "getIncludeDropBoxSystemTags()Ljava/lang/Boolean;"

    .line 24
    .line 25
    invoke-direct {v2, v1, v3, v5, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 29
    .line 30
    const-string v5, "additionalDropBoxTags"

    .line 31
    .line 32
    const-string v6, "getAdditionalDropBoxTags()Ljava/util/List;"

    .line 33
    .line 34
    invoke-direct {v3, v1, v5, v6, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    new-instance v5, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 38
    .line 39
    const-string v6, "dropboxCollectionMinutes"

    .line 40
    .line 41
    const-string v7, "getDropboxCollectionMinutes()Ljava/lang/Integer;"

    .line 42
    .line 43
    invoke-direct {v5, v1, v6, v7, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    new-instance v6, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 47
    .line 48
    const-string v7, "logcatArguments"

    .line 49
    .line 50
    const-string v8, "getLogcatArguments()Ljava/util/List;"

    .line 51
    .line 52
    invoke-direct {v6, v1, v7, v8, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    new-instance v7, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 56
    .line 57
    const-string v8, "reportContent"

    .line 58
    .line 59
    const-string v9, "getReportContent()Ljava/util/List;"

    .line 60
    .line 61
    invoke-direct {v7, v1, v8, v9, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    new-instance v8, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 65
    .line 66
    const-string v9, "deleteUnapprovedReportsOnApplicationStart"

    .line 67
    .line 68
    const-string v10, "getDeleteUnapprovedReportsOnApplicationStart()Ljava/lang/Boolean;"

    .line 69
    .line 70
    invoke-direct {v8, v1, v9, v10, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    new-instance v9, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 74
    .line 75
    const-string v10, "alsoReportToAndroidFramework"

    .line 76
    .line 77
    const-string v11, "getAlsoReportToAndroidFramework()Ljava/lang/Boolean;"

    .line 78
    .line 79
    invoke-direct {v9, v1, v10, v11, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    new-instance v10, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 83
    .line 84
    const-string v11, "additionalSharedPreferences"

    .line 85
    .line 86
    const-string v12, "getAdditionalSharedPreferences()Ljava/util/List;"

    .line 87
    .line 88
    invoke-direct {v10, v1, v11, v12, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    new-instance v11, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 92
    .line 93
    const-string v12, "logcatFilterByPid"

    .line 94
    .line 95
    const-string v13, "getLogcatFilterByPid()Ljava/lang/Boolean;"

    .line 96
    .line 97
    invoke-direct {v11, v1, v12, v13, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    new-instance v12, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 101
    .line 102
    const-string v13, "logcatReadNonBlocking"

    .line 103
    .line 104
    const-string v14, "getLogcatReadNonBlocking()Ljava/lang/Boolean;"

    .line 105
    .line 106
    invoke-direct {v12, v1, v13, v14, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    new-instance v13, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 110
    .line 111
    const-string v14, "sendReportsInDevMode"

    .line 112
    .line 113
    const-string v15, "getSendReportsInDevMode()Ljava/lang/Boolean;"

    .line 114
    .line 115
    invoke-direct {v13, v1, v14, v15, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    .line 117
    .line 118
    new-instance v14, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 119
    .line 120
    const-string v15, "excludeMatchingSharedPreferencesKeys"

    .line 121
    .line 122
    move-object/from16 v16, v0

    .line 123
    .line 124
    const-string v0, "getExcludeMatchingSharedPreferencesKeys()Ljava/util/List;"

    .line 125
    .line 126
    invoke-direct {v14, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 130
    .line 131
    const-string v15, "excludeMatchingSettingsKeys"

    .line 132
    .line 133
    move-object/from16 v17, v2

    .line 134
    .line 135
    const-string v2, "getExcludeMatchingSettingsKeys()Ljava/util/List;"

    .line 136
    .line 137
    invoke-direct {v0, v1, v15, v2, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 141
    .line 142
    const-string v15, "buildConfigClass"

    .line 143
    .line 144
    move-object/from16 v18, v0

    .line 145
    .line 146
    const-string v0, "getBuildConfigClass()Ljava/lang/Class;"

    .line 147
    .line 148
    invoke-direct {v2, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 152
    .line 153
    const-string v15, "applicationLogFile"

    .line 154
    .line 155
    move-object/from16 v19, v2

    .line 156
    .line 157
    const-string v2, "getApplicationLogFile()Ljava/lang/String;"

    .line 158
    .line 159
    invoke-direct {v0, v1, v15, v2, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 163
    .line 164
    const-string v15, "applicationLogFileLines"

    .line 165
    .line 166
    move-object/from16 v20, v0

    .line 167
    .line 168
    const-string v0, "getApplicationLogFileLines()Ljava/lang/Integer;"

    .line 169
    .line 170
    invoke-direct {v2, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 174
    .line 175
    const-string v15, "applicationLogFileDir"

    .line 176
    .line 177
    move-object/from16 v21, v2

    .line 178
    .line 179
    const-string v2, "getApplicationLogFileDir()Lorg/acra/file/Directory;"

    .line 180
    .line 181
    invoke-direct {v0, v1, v15, v2, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 185
    .line 186
    const-string v15, "retryPolicyClass"

    .line 187
    .line 188
    move-object/from16 v22, v0

    .line 189
    .line 190
    const-string v0, "getRetryPolicyClass()Ljava/lang/Class;"

    .line 191
    .line 192
    invoke-direct {v2, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 196
    .line 197
    const-string/jumbo v15, "stopServicesOnCrash"

    .line 198
    .line 199
    .line 200
    move-object/from16 v23, v2

    .line 201
    .line 202
    const-string v2, "getStopServicesOnCrash()Ljava/lang/Boolean;"

    .line 203
    .line 204
    invoke-direct {v0, v1, v15, v2, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 205
    .line 206
    .line 207
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 208
    .line 209
    const-string v15, "attachmentUris"

    .line 210
    .line 211
    move-object/from16 v24, v0

    .line 212
    .line 213
    const-string v0, "getAttachmentUris()Ljava/util/List;"

    .line 214
    .line 215
    invoke-direct {v2, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    .line 217
    .line 218
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 219
    .line 220
    const-string v15, "attachmentUriProvider"

    .line 221
    .line 222
    move-object/from16 v25, v2

    .line 223
    .line 224
    const-string v2, "getAttachmentUriProvider()Ljava/lang/Class;"

    .line 225
    .line 226
    invoke-direct {v0, v1, v15, v2, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    .line 228
    .line 229
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 230
    .line 231
    const-string v15, "reportSendSuccessToast"

    .line 232
    .line 233
    move-object/from16 v26, v0

    .line 234
    .line 235
    const-string v0, "getReportSendSuccessToast()Ljava/lang/String;"

    .line 236
    .line 237
    invoke-direct {v2, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    .line 239
    .line 240
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 241
    .line 242
    const-string v15, "reportSendFailureToast"

    .line 243
    .line 244
    move-object/from16 v27, v2

    .line 245
    .line 246
    const-string v2, "getReportSendFailureToast()Ljava/lang/String;"

    .line 247
    .line 248
    invoke-direct {v0, v1, v15, v2, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    .line 250
    .line 251
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 252
    .line 253
    const-string v15, "reportFormat"

    .line 254
    .line 255
    move-object/from16 v28, v0

    .line 256
    .line 257
    const-string v0, "getReportFormat()Lorg/acra/data/StringFormat;"

    .line 258
    .line 259
    invoke-direct {v2, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 260
    .line 261
    .line 262
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 263
    .line 264
    const-string v15, "parallel"

    .line 265
    .line 266
    move-object/from16 v29, v2

    .line 267
    .line 268
    const-string v2, "getParallel()Ljava/lang/Boolean;"

    .line 269
    .line 270
    invoke-direct {v0, v1, v15, v2, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 271
    .line 272
    .line 273
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 274
    .line 275
    const-string v15, "pluginLoader"

    .line 276
    .line 277
    move-object/from16 v30, v0

    .line 278
    .line 279
    const-string v0, "getPluginLoader()Lorg/acra/plugins/PluginLoader;"

    .line 280
    .line 281
    invoke-direct {v2, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 282
    .line 283
    .line 284
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 285
    .line 286
    const-string v15, "pluginConfigurations"

    .line 287
    .line 288
    move-object/from16 v31, v2

    .line 289
    .line 290
    const-string v2, "getPluginConfigurations()Ljava/util/List;"

    .line 291
    .line 292
    invoke-direct {v0, v1, v15, v2, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 293
    .line 294
    .line 295
    const/16 v1, 0x1c

    .line 296
    .line 297
    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 298
    .line 299
    aput-object v16, v1, v4

    .line 300
    .line 301
    const/4 v2, 0x1

    .line 302
    aput-object v17, v1, v2

    .line 303
    .line 304
    const/4 v2, 0x2

    .line 305
    aput-object v3, v1, v2

    .line 306
    .line 307
    const/4 v2, 0x3

    .line 308
    aput-object v5, v1, v2

    .line 309
    .line 310
    const/4 v2, 0x4

    .line 311
    aput-object v6, v1, v2

    .line 312
    .line 313
    const/4 v2, 0x5

    .line 314
    aput-object v7, v1, v2

    .line 315
    .line 316
    const/4 v2, 0x6

    .line 317
    aput-object v8, v1, v2

    .line 318
    .line 319
    const/4 v2, 0x7

    .line 320
    aput-object v9, v1, v2

    .line 321
    .line 322
    const/16 v2, 0x8

    .line 323
    .line 324
    aput-object v10, v1, v2

    .line 325
    .line 326
    const/16 v2, 0x9

    .line 327
    .line 328
    aput-object v11, v1, v2

    .line 329
    .line 330
    const/16 v2, 0xa

    .line 331
    .line 332
    aput-object v12, v1, v2

    .line 333
    .line 334
    const/16 v2, 0xb

    .line 335
    .line 336
    aput-object v13, v1, v2

    .line 337
    .line 338
    const/16 v2, 0xc

    .line 339
    .line 340
    aput-object v14, v1, v2

    .line 341
    .line 342
    const/16 v2, 0xd

    .line 343
    .line 344
    aput-object v18, v1, v2

    .line 345
    .line 346
    const/16 v2, 0xe

    .line 347
    .line 348
    aput-object v19, v1, v2

    .line 349
    .line 350
    const/16 v2, 0xf

    .line 351
    .line 352
    aput-object v20, v1, v2

    .line 353
    .line 354
    const/16 v2, 0x10

    .line 355
    .line 356
    aput-object v21, v1, v2

    .line 357
    .line 358
    const/16 v2, 0x11

    .line 359
    .line 360
    aput-object v22, v1, v2

    .line 361
    .line 362
    const/16 v2, 0x12

    .line 363
    .line 364
    aput-object v23, v1, v2

    .line 365
    .line 366
    const/16 v2, 0x13

    .line 367
    .line 368
    aput-object v24, v1, v2

    .line 369
    .line 370
    const/16 v2, 0x14

    .line 371
    .line 372
    aput-object v25, v1, v2

    .line 373
    .line 374
    const/16 v2, 0x15

    .line 375
    .line 376
    aput-object v26, v1, v2

    .line 377
    .line 378
    const/16 v2, 0x16

    .line 379
    .line 380
    aput-object v27, v1, v2

    .line 381
    .line 382
    const/16 v2, 0x17

    .line 383
    .line 384
    aput-object v28, v1, v2

    .line 385
    .line 386
    const/16 v2, 0x18

    .line 387
    .line 388
    aput-object v29, v1, v2

    .line 389
    .line 390
    const/16 v2, 0x19

    .line 391
    .line 392
    aput-object v30, v1, v2

    .line 393
    .line 394
    const/16 v2, 0x1a

    .line 395
    .line 396
    aput-object v31, v1, v2

    .line 397
    .line 398
    const/16 v2, 0x1b

    .line 399
    .line 400
    aput-object v0, v1, v2

    .line 401
    .line 402
    sput-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 403
    .line 404
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->_defaultsBitField0:I

    .line 6
    .line 7
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->sharedPreferencesName$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 14
    .line 15
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->includeDropBoxSystemTags$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 21
    .line 22
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->additionalDropBoxTags$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 28
    .line 29
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->dropboxCollectionMinutes$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 35
    .line 36
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->logcatArguments$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 42
    .line 43
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportContent$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 49
    .line 50
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 51
    .line 52
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->deleteUnapprovedReportsOnApplicationStart$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 56
    .line 57
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->alsoReportToAndroidFramework$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 63
    .line 64
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 65
    .line 66
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->additionalSharedPreferences$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 70
    .line 71
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 72
    .line 73
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->logcatFilterByPid$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 77
    .line 78
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 79
    .line 80
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->logcatReadNonBlocking$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 84
    .line 85
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 86
    .line 87
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->sendReportsInDevMode$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 91
    .line 92
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 93
    .line 94
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->excludeMatchingSharedPreferencesKeys$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 98
    .line 99
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 100
    .line 101
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->excludeMatchingSettingsKeys$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 105
    .line 106
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$15;

    .line 107
    .line 108
    invoke-direct {v0, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$15;-><init>(Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->buildConfigClass$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$15;

    .line 112
    .line 113
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 114
    .line 115
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->applicationLogFile$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 119
    .line 120
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 121
    .line 122
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->applicationLogFileLines$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 126
    .line 127
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 128
    .line 129
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->applicationLogFileDir$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 133
    .line 134
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 135
    .line 136
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->retryPolicyClass$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 140
    .line 141
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 142
    .line 143
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->stopServicesOnCrash$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 147
    .line 148
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 149
    .line 150
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->attachmentUris$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 154
    .line 155
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 156
    .line 157
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->attachmentUriProvider$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 161
    .line 162
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 163
    .line 164
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportSendSuccessToast$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 168
    .line 169
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 170
    .line 171
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportSendFailureToast$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 175
    .line 176
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 177
    .line 178
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportFormat$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 182
    .line 183
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 184
    .line 185
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->parallel$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 189
    .line 190
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 191
    .line 192
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->pluginLoader$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 196
    .line 197
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 198
    .line 199
    invoke-direct {v0, v1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->pluginConfigurations$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 203
    .line 204
    return-void
.end method
