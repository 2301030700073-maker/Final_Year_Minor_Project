.class public final Lorg/wikimedia/testkitchen/config/CurationFilter;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lorg/wikimedia/testkitchen/event/Event;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;


# instance fields
.field public agentAppFlavorRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public agentAppInstallIdRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public agentAppThemeRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public agentAppVersionNameRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public agentAppVersionRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public agentClientPlatformFamilyRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public agentClientPlatformRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public agentDeviceFamilyRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public agentDeviceLanguageRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public agentReleaseStatusRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public mediawikiDatabase:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public pageContentLanguageRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public pageIdRules:Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;

.field public pageNamespaceIdRules:Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;

.field public pageNamespaceNameRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public pageRevisionIdRules:Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;

.field public pageTitleRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public pageWikidataQidRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public performerGroupsRules:Lorg/wikimedia/testkitchen/config/curation/CollectionCurationRules;

.field public performerIdRules:Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;

.field public performerIsLoggedInRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public performerIsTempRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public performerLanguageGroupsRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public performerLanguagePrimaryRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public performerNameRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public performerPageviewIdRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

.field public performerRegistrationDtRules:Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;

.field public performerSessionIdRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;


# direct methods
.method static constructor <clinit>()V
    .locals 51

    .line 1
    new-instance v0, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikimedia/testkitchen/config/CurationFilter;->Companion:Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x11

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v3, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v4, 0x13

    .line 24
    .line 25
    invoke-direct {v3, v4}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v3}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    new-instance v5, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/16 v6, 0x1d

    .line 35
    .line 36
    invoke-direct {v5, v6}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v5}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    new-instance v6, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 44
    .line 45
    const/4 v7, 0x1

    .line 46
    invoke-direct {v6, v7}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v6}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    new-instance v8, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 54
    .line 55
    const/4 v9, 0x2

    .line 56
    invoke-direct {v8, v9}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v8}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    new-instance v10, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 64
    .line 65
    const/4 v11, 0x3

    .line 66
    invoke-direct {v10, v11}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v10}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    new-instance v12, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 74
    .line 75
    const/4 v13, 0x4

    .line 76
    invoke-direct {v12, v13}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v12}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    new-instance v14, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 84
    .line 85
    const/4 v15, 0x5

    .line 86
    invoke-direct {v14, v15}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v14}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    move/from16 v16, v2

    .line 94
    .line 95
    new-instance v2, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 96
    .line 97
    move/from16 v17, v4

    .line 98
    .line 99
    const/4 v4, 0x6

    .line 100
    invoke-direct {v2, v4}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(I)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    move/from16 v18, v4

    .line 108
    .line 109
    new-instance v4, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 110
    .line 111
    move/from16 v19, v7

    .line 112
    .line 113
    const/4 v7, 0x7

    .line 114
    invoke-direct {v4, v7}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(I)V

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v4}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    move/from16 v20, v7

    .line 122
    .line 123
    new-instance v7, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 124
    .line 125
    move/from16 v21, v9

    .line 126
    .line 127
    const/16 v9, 0x1c

    .line 128
    .line 129
    invoke-direct {v7, v9}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 130
    .line 131
    .line 132
    invoke-static {v0, v7}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    move/from16 v22, v11

    .line 137
    .line 138
    new-instance v11, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 139
    .line 140
    move/from16 v23, v13

    .line 141
    .line 142
    const/16 v13, 0x8

    .line 143
    .line 144
    invoke-direct {v11, v13}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(I)V

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v11}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    move/from16 v24, v13

    .line 152
    .line 153
    new-instance v13, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 154
    .line 155
    move/from16 v25, v15

    .line 156
    .line 157
    const/16 v15, 0x9

    .line 158
    .line 159
    invoke-direct {v13, v15}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(I)V

    .line 160
    .line 161
    .line 162
    invoke-static {v0, v13}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 163
    .line 164
    .line 165
    move-result-object v13

    .line 166
    move/from16 v26, v15

    .line 167
    .line 168
    new-instance v15, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 169
    .line 170
    const/16 v9, 0xa

    .line 171
    .line 172
    invoke-direct {v15, v9}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(I)V

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v15}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 176
    .line 177
    .line 178
    move-result-object v15

    .line 179
    move/from16 v27, v9

    .line 180
    .line 181
    new-instance v9, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 182
    .line 183
    move-object/from16 v28, v1

    .line 184
    .line 185
    const/16 v1, 0xb

    .line 186
    .line 187
    invoke-direct {v9, v1}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(I)V

    .line 188
    .line 189
    .line 190
    invoke-static {v0, v9}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    move/from16 v29, v1

    .line 195
    .line 196
    new-instance v1, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 197
    .line 198
    move-object/from16 v30, v2

    .line 199
    .line 200
    const/16 v2, 0xc

    .line 201
    .line 202
    invoke-direct {v1, v2}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(I)V

    .line 203
    .line 204
    .line 205
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    move/from16 v31, v2

    .line 210
    .line 211
    new-instance v2, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 212
    .line 213
    move-object/from16 v32, v1

    .line 214
    .line 215
    const/16 v1, 0xd

    .line 216
    .line 217
    invoke-direct {v2, v1}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(I)V

    .line 218
    .line 219
    .line 220
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    move/from16 v33, v1

    .line 225
    .line 226
    new-instance v1, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 227
    .line 228
    move-object/from16 v34, v2

    .line 229
    .line 230
    const/16 v2, 0xe

    .line 231
    .line 232
    invoke-direct {v1, v2}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(I)V

    .line 233
    .line 234
    .line 235
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    move/from16 v35, v2

    .line 240
    .line 241
    new-instance v2, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 242
    .line 243
    move-object/from16 v36, v1

    .line 244
    .line 245
    const/16 v1, 0xf

    .line 246
    .line 247
    invoke-direct {v2, v1}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(I)V

    .line 248
    .line 249
    .line 250
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    move/from16 v37, v1

    .line 255
    .line 256
    new-instance v1, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 257
    .line 258
    move-object/from16 v38, v2

    .line 259
    .line 260
    const/16 v2, 0x12

    .line 261
    .line 262
    invoke-direct {v1, v2}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 263
    .line 264
    .line 265
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    move/from16 v39, v2

    .line 270
    .line 271
    new-instance v2, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 272
    .line 273
    move-object/from16 v40, v1

    .line 274
    .line 275
    const/16 v1, 0x14

    .line 276
    .line 277
    invoke-direct {v2, v1}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 278
    .line 279
    .line 280
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    move/from16 v41, v1

    .line 285
    .line 286
    new-instance v1, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 287
    .line 288
    move-object/from16 v42, v2

    .line 289
    .line 290
    const/16 v2, 0x15

    .line 291
    .line 292
    invoke-direct {v1, v2}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 293
    .line 294
    .line 295
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    move/from16 v43, v2

    .line 300
    .line 301
    new-instance v2, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 302
    .line 303
    move-object/from16 v44, v1

    .line 304
    .line 305
    const/16 v1, 0x16

    .line 306
    .line 307
    invoke-direct {v2, v1}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 308
    .line 309
    .line 310
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    move/from16 v45, v1

    .line 315
    .line 316
    new-instance v1, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 317
    .line 318
    move-object/from16 v46, v2

    .line 319
    .line 320
    const/16 v2, 0x17

    .line 321
    .line 322
    invoke-direct {v1, v2}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 323
    .line 324
    .line 325
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    new-instance v2, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 330
    .line 331
    move-object/from16 v47, v1

    .line 332
    .line 333
    const/16 v1, 0x18

    .line 334
    .line 335
    invoke-direct {v2, v1}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 336
    .line 337
    .line 338
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    new-instance v2, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 343
    .line 344
    move-object/from16 v48, v1

    .line 345
    .line 346
    const/16 v1, 0x19

    .line 347
    .line 348
    invoke-direct {v2, v1}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 349
    .line 350
    .line 351
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    new-instance v2, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 356
    .line 357
    move-object/from16 v49, v1

    .line 358
    .line 359
    const/16 v1, 0x1a

    .line 360
    .line 361
    invoke-direct {v2, v1}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 362
    .line 363
    .line 364
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    new-instance v2, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 369
    .line 370
    move-object/from16 v50, v1

    .line 371
    .line 372
    const/16 v1, 0x1b

    .line 373
    .line 374
    invoke-direct {v2, v1}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 375
    .line 376
    .line 377
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    const/16 v1, 0x1c

    .line 382
    .line 383
    new-array v1, v1, [Lkotlin/Lazy;

    .line 384
    .line 385
    const/4 v2, 0x0

    .line 386
    aput-object v28, v1, v2

    .line 387
    .line 388
    aput-object v3, v1, v19

    .line 389
    .line 390
    aput-object v5, v1, v21

    .line 391
    .line 392
    aput-object v6, v1, v22

    .line 393
    .line 394
    aput-object v8, v1, v23

    .line 395
    .line 396
    aput-object v10, v1, v25

    .line 397
    .line 398
    aput-object v12, v1, v18

    .line 399
    .line 400
    aput-object v14, v1, v20

    .line 401
    .line 402
    aput-object v30, v1, v24

    .line 403
    .line 404
    aput-object v4, v1, v26

    .line 405
    .line 406
    aput-object v7, v1, v27

    .line 407
    .line 408
    aput-object v11, v1, v29

    .line 409
    .line 410
    aput-object v13, v1, v31

    .line 411
    .line 412
    aput-object v15, v1, v33

    .line 413
    .line 414
    aput-object v9, v1, v35

    .line 415
    .line 416
    aput-object v32, v1, v37

    .line 417
    .line 418
    const/16 v2, 0x10

    .line 419
    .line 420
    aput-object v34, v1, v2

    .line 421
    .line 422
    aput-object v36, v1, v16

    .line 423
    .line 424
    aput-object v38, v1, v39

    .line 425
    .line 426
    aput-object v40, v1, v17

    .line 427
    .line 428
    aput-object v42, v1, v41

    .line 429
    .line 430
    aput-object v44, v1, v43

    .line 431
    .line 432
    aput-object v46, v1, v45

    .line 433
    .line 434
    const/16 v2, 0x17

    .line 435
    .line 436
    aput-object v47, v1, v2

    .line 437
    .line 438
    const/16 v2, 0x18

    .line 439
    .line 440
    aput-object v48, v1, v2

    .line 441
    .line 442
    const/16 v2, 0x19

    .line 443
    .line 444
    aput-object v49, v1, v2

    .line 445
    .line 446
    const/16 v2, 0x1a

    .line 447
    .line 448
    aput-object v50, v1, v2

    .line 449
    .line 450
    const/16 v2, 0x1b

    .line 451
    .line 452
    aput-object v0, v1, v2

    .line 453
    .line 454
    sput-object v1, Lorg/wikimedia/testkitchen/config/CurationFilter;->$childSerializers:[Lkotlin/Lazy;

    .line 455
    .line 456
    return-void
.end method


# virtual methods
.method public synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public synthetic negate()Ljava/util/function/Predicate;
    .locals 0

    .line 1
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    check-cast p1, Lorg/wikimedia/testkitchen/event/Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lorg/wikimedia/testkitchen/event/Event;->agentData:Lorg/wikimedia/testkitchen/context/AgentData;

    .line 7
    .line 8
    sget-object v1, Lorg/wikimedia/testkitchen/config/CurationFilter;->Companion:Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;

    .line 9
    .line 10
    iget-object v2, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->agentAppInstallIdRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v4, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appInstallId:Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v4, v3

    .line 19
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v4}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1c

    .line 27
    .line 28
    iget-object v1, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->agentClientPlatformRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v2, v0, Lorg/wikimedia/testkitchen/context/AgentData;->clientPlatform:Ljava/lang/String;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object v2, v3

    .line 36
    :goto_1
    invoke-static {v1, v2}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1c

    .line 41
    .line 42
    iget-object v1, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->agentClientPlatformFamilyRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v2, v0, Lorg/wikimedia/testkitchen/context/AgentData;->clientPlatformFamily:Ljava/lang/String;

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move-object v2, v3

    .line 50
    :goto_2
    invoke-static {v1, v2}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1c

    .line 55
    .line 56
    iget-object v1, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->agentAppFlavorRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iget-object v2, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appFlavor:Ljava/lang/String;

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    move-object v2, v3

    .line 64
    :goto_3
    invoke-static {v1, v2}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_1c

    .line 69
    .line 70
    iget-object v1, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->agentAppThemeRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    iget-object v2, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appTheme:Ljava/lang/String;

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_4
    move-object v2, v3

    .line 78
    :goto_4
    invoke-static {v1, v2}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_1c

    .line 83
    .line 84
    iget-object v1, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->agentAppVersionRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 85
    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    iget-object v2, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appVersion:Ljava/lang/Integer;

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_5
    move-object v2, v3

    .line 92
    :goto_5
    invoke-static {v1, v2}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_1c

    .line 97
    .line 98
    iget-object v1, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->agentAppVersionNameRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 99
    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    iget-object v2, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appVersionName:Ljava/lang/String;

    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_6
    move-object v2, v3

    .line 106
    :goto_6
    invoke-static {v1, v2}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_1c

    .line 111
    .line 112
    iget-object v1, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->agentDeviceFamilyRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 113
    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    iget-object v2, v0, Lorg/wikimedia/testkitchen/context/AgentData;->deviceFamily:Ljava/lang/String;

    .line 117
    .line 118
    goto :goto_7

    .line 119
    :cond_7
    move-object v2, v3

    .line 120
    :goto_7
    invoke-static {v1, v2}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_1c

    .line 125
    .line 126
    iget-object v1, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->agentDeviceLanguageRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 127
    .line 128
    if-eqz v0, :cond_8

    .line 129
    .line 130
    iget-object v2, v0, Lorg/wikimedia/testkitchen/context/AgentData;->deviceLanguage:Ljava/lang/String;

    .line 131
    .line 132
    goto :goto_8

    .line 133
    :cond_8
    move-object v2, v3

    .line 134
    :goto_8
    invoke-static {v1, v2}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_1c

    .line 139
    .line 140
    iget-object v1, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->agentReleaseStatusRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 141
    .line 142
    if-eqz v0, :cond_9

    .line 143
    .line 144
    iget-object v0, v0, Lorg/wikimedia/testkitchen/context/AgentData;->releaseStatus:Ljava/lang/String;

    .line 145
    .line 146
    goto :goto_9

    .line 147
    :cond_9
    move-object v0, v3

    .line 148
    :goto_9
    invoke-static {v1, v0}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_1c

    .line 153
    .line 154
    iget-object v0, p1, Lorg/wikimedia/testkitchen/event/Event;->mediawikiData:Lorg/wikimedia/testkitchen/context/MediawikiData;

    .line 155
    .line 156
    iget-object v1, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->mediawikiDatabase:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 157
    .line 158
    if-eqz v0, :cond_a

    .line 159
    .line 160
    iget-object v0, v0, Lorg/wikimedia/testkitchen/context/MediawikiData;->database:Ljava/lang/String;

    .line 161
    .line 162
    goto :goto_a

    .line 163
    :cond_a
    move-object v0, v3

    .line 164
    :goto_a
    invoke-static {v1, v0}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_1c

    .line 169
    .line 170
    iget-object v0, p1, Lorg/wikimedia/testkitchen/event/Event;->pageData:Lorg/wikimedia/testkitchen/context/PageData;

    .line 171
    .line 172
    iget-object v1, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->pageIdRules:Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;

    .line 173
    .line 174
    if-eqz v0, :cond_b

    .line 175
    .line 176
    iget-object v2, v0, Lorg/wikimedia/testkitchen/context/PageData;->id:Ljava/lang/Integer;

    .line 177
    .line 178
    goto :goto_b

    .line 179
    :cond_b
    move-object v2, v3

    .line 180
    :goto_b
    invoke-static {v1, v2}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_1c

    .line 185
    .line 186
    iget-object v1, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->pageNamespaceIdRules:Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;

    .line 187
    .line 188
    if-eqz v0, :cond_c

    .line 189
    .line 190
    iget-object v2, v0, Lorg/wikimedia/testkitchen/context/PageData;->namespaceId:Ljava/lang/Integer;

    .line 191
    .line 192
    goto :goto_c

    .line 193
    :cond_c
    move-object v2, v3

    .line 194
    :goto_c
    invoke-static {v1, v2}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_1c

    .line 199
    .line 200
    iget-object v1, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->pageNamespaceNameRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 201
    .line 202
    if-eqz v0, :cond_d

    .line 203
    .line 204
    iget-object v2, v0, Lorg/wikimedia/testkitchen/context/PageData;->namespaceName:Ljava/lang/String;

    .line 205
    .line 206
    goto :goto_d

    .line 207
    :cond_d
    move-object v2, v3

    .line 208
    :goto_d
    invoke-static {v1, v2}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_1c

    .line 213
    .line 214
    iget-object v1, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->pageTitleRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 215
    .line 216
    if-eqz v0, :cond_e

    .line 217
    .line 218
    iget-object v2, v0, Lorg/wikimedia/testkitchen/context/PageData;->title:Ljava/lang/String;

    .line 219
    .line 220
    goto :goto_e

    .line 221
    :cond_e
    move-object v2, v3

    .line 222
    :goto_e
    invoke-static {v1, v2}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_1c

    .line 227
    .line 228
    iget-object v1, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->pageRevisionIdRules:Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;

    .line 229
    .line 230
    if-eqz v0, :cond_f

    .line 231
    .line 232
    iget-object v2, v0, Lorg/wikimedia/testkitchen/context/PageData;->revisionId:Ljava/lang/Long;

    .line 233
    .line 234
    goto :goto_f

    .line 235
    :cond_f
    move-object v2, v3

    .line 236
    :goto_f
    invoke-static {v1, v2}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-eqz v1, :cond_1c

    .line 241
    .line 242
    iget-object v1, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->pageWikidataQidRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 243
    .line 244
    if-eqz v0, :cond_10

    .line 245
    .line 246
    iget-object v2, v0, Lorg/wikimedia/testkitchen/context/PageData;->wikidataItemQid:Ljava/lang/String;

    .line 247
    .line 248
    goto :goto_10

    .line 249
    :cond_10
    move-object v2, v3

    .line 250
    :goto_10
    invoke-static {v1, v2}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_1c

    .line 255
    .line 256
    iget-object v1, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->pageContentLanguageRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 257
    .line 258
    if-eqz v0, :cond_11

    .line 259
    .line 260
    iget-object v0, v0, Lorg/wikimedia/testkitchen/context/PageData;->contentLanguage:Ljava/lang/String;

    .line 261
    .line 262
    goto :goto_11

    .line 263
    :cond_11
    move-object v0, v3

    .line 264
    :goto_11
    invoke-static {v1, v0}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_1c

    .line 269
    .line 270
    iget-object p1, p1, Lorg/wikimedia/testkitchen/event/Event;->performerData:Lorg/wikimedia/testkitchen/context/PerformerData;

    .line 271
    .line 272
    iget-object v0, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->performerIdRules:Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;

    .line 273
    .line 274
    if-eqz p1, :cond_12

    .line 275
    .line 276
    iget-object v1, p1, Lorg/wikimedia/testkitchen/context/PerformerData;->id:Ljava/lang/Integer;

    .line 277
    .line 278
    goto :goto_12

    .line 279
    :cond_12
    move-object v1, v3

    .line 280
    :goto_12
    invoke-static {v0, v1}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-eqz v0, :cond_1c

    .line 285
    .line 286
    iget-object v0, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->performerNameRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 287
    .line 288
    if-eqz p1, :cond_13

    .line 289
    .line 290
    iget-object v1, p1, Lorg/wikimedia/testkitchen/context/PerformerData;->name:Ljava/lang/String;

    .line 291
    .line 292
    goto :goto_13

    .line 293
    :cond_13
    move-object v1, v3

    .line 294
    :goto_13
    invoke-static {v0, v1}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_1c

    .line 299
    .line 300
    iget-object v0, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->performerSessionIdRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 301
    .line 302
    if-eqz p1, :cond_14

    .line 303
    .line 304
    iget-object v1, p1, Lorg/wikimedia/testkitchen/context/PerformerData;->sessionId:Ljava/lang/String;

    .line 305
    .line 306
    goto :goto_14

    .line 307
    :cond_14
    move-object v1, v3

    .line 308
    :goto_14
    invoke-static {v0, v1}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_1c

    .line 313
    .line 314
    iget-object v0, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->performerPageviewIdRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 315
    .line 316
    if-eqz p1, :cond_15

    .line 317
    .line 318
    iget-object v1, p1, Lorg/wikimedia/testkitchen/context/PerformerData;->pageviewId:Ljava/lang/String;

    .line 319
    .line 320
    goto :goto_15

    .line 321
    :cond_15
    move-object v1, v3

    .line 322
    :goto_15
    invoke-static {v0, v1}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-eqz v0, :cond_1c

    .line 327
    .line 328
    iget-object v0, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->performerGroupsRules:Lorg/wikimedia/testkitchen/config/curation/CollectionCurationRules;

    .line 329
    .line 330
    if-eqz p1, :cond_16

    .line 331
    .line 332
    iget-object v1, p1, Lorg/wikimedia/testkitchen/context/PerformerData;->groups:Ljava/util/Collection;

    .line 333
    .line 334
    goto :goto_16

    .line 335
    :cond_16
    move-object v1, v3

    .line 336
    :goto_16
    invoke-static {v0, v1}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_1c

    .line 341
    .line 342
    iget-object v0, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->performerIsLoggedInRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 343
    .line 344
    if-eqz p1, :cond_17

    .line 345
    .line 346
    iget-object v1, p1, Lorg/wikimedia/testkitchen/context/PerformerData;->isLoggedIn:Ljava/lang/Boolean;

    .line 347
    .line 348
    goto :goto_17

    .line 349
    :cond_17
    move-object v1, v3

    .line 350
    :goto_17
    invoke-static {v0, v1}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    if-eqz v0, :cond_1c

    .line 355
    .line 356
    iget-object v0, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->performerIsTempRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 357
    .line 358
    if-eqz p1, :cond_18

    .line 359
    .line 360
    iget-object v1, p1, Lorg/wikimedia/testkitchen/context/PerformerData;->isTemp:Ljava/lang/Boolean;

    .line 361
    .line 362
    goto :goto_18

    .line 363
    :cond_18
    move-object v1, v3

    .line 364
    :goto_18
    invoke-static {v0, v1}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-eqz v0, :cond_1c

    .line 369
    .line 370
    iget-object v0, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->performerRegistrationDtRules:Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;

    .line 371
    .line 372
    if-eqz p1, :cond_19

    .line 373
    .line 374
    iget-object v1, p1, Lorg/wikimedia/testkitchen/context/PerformerData;->registrationDt:Lj$/time/Instant;

    .line 375
    .line 376
    goto :goto_19

    .line 377
    :cond_19
    move-object v1, v3

    .line 378
    :goto_19
    invoke-static {v0, v1}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_1c

    .line 383
    .line 384
    iget-object v0, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->performerLanguageGroupsRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 385
    .line 386
    if-eqz p1, :cond_1a

    .line 387
    .line 388
    iget-object v1, p1, Lorg/wikimedia/testkitchen/context/PerformerData;->languageGroups:Ljava/lang/String;

    .line 389
    .line 390
    goto :goto_1a

    .line 391
    :cond_1a
    move-object v1, v3

    .line 392
    :goto_1a
    invoke-static {v0, v1}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-eqz v0, :cond_1c

    .line 397
    .line 398
    iget-object p0, p0, Lorg/wikimedia/testkitchen/config/CurationFilter;->performerLanguagePrimaryRules:Lorg/wikimedia/testkitchen/config/curation/CurationRules;

    .line 399
    .line 400
    if-eqz p1, :cond_1b

    .line 401
    .line 402
    iget-object v3, p1, Lorg/wikimedia/testkitchen/context/PerformerData;->languagePrimary:Ljava/lang/String;

    .line 403
    .line 404
    :cond_1b
    invoke-static {p0, v3}, Lorg/wikimedia/testkitchen/config/CurationFilter$Companion;->applyPredicate(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result p0

    .line 408
    if-eqz p0, :cond_1c

    .line 409
    .line 410
    const/4 p0, 0x1

    .line 411
    return p0

    .line 412
    :cond_1c
    const/4 p0, 0x0

    .line 413
    return p0
.end method
