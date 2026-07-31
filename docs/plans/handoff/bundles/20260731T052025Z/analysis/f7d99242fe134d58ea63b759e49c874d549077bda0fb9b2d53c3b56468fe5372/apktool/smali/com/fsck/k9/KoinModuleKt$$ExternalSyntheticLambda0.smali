.class public final synthetic Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    const/16 v2, 0xd

    .line 7
    .line 8
    const/16 v8, 0xa

    .line 9
    .line 10
    const/4 v9, 0x7

    .line 11
    const/16 v10, 0xb

    .line 12
    .line 13
    const/16 v11, 0x14

    .line 14
    .line 15
    const/16 v12, 0x13

    .line 16
    .line 17
    const/16 v13, 0x12

    .line 18
    .line 19
    const/16 v14, 0x17

    .line 20
    .line 21
    const/16 v15, 0x16

    .line 22
    .line 23
    const/16 v3, 0x15

    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    const/4 v6, 0x2

    .line 27
    const/4 v7, 0x1

    .line 28
    const/4 v4, 0x0

    .line 29
    sget-object v21, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    packed-switch v0, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    move-object/from16 v0, p1

    .line 35
    .line 36
    check-cast v0, Lorg/koin/core/module/Module;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v8, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 42
    .line 43
    invoke-direct {v8, v13}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 44
    .line 45
    .line 46
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 47
    .line 48
    const-class v1, Lcom/fsck/k9/backend/BackendManager;

    .line 49
    .line 50
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    sget-object v23, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    sget-object v27, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 58
    .line 59
    move-object/from16 v5, v23

    .line 60
    .line 61
    move-object/from16 v9, v27

    .line 62
    .line 63
    invoke-direct/range {v4 .. v9}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 67
    .line 68
    invoke-direct {v1, v4}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 75
    .line 76
    invoke-direct {v1, v12}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 77
    .line 78
    .line 79
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 80
    .line 81
    const-class v2, Lcom/fsck/k9/backends/DefaultImapBackendFactory;

    .line 82
    .line 83
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 84
    .line 85
    .line 86
    move-result-object v24

    .line 87
    const/16 v25, 0x0

    .line 88
    .line 89
    move-object/from16 v26, v1

    .line 90
    .line 91
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 92
    .line 93
    .line 94
    move-object/from16 v1, v22

    .line 95
    .line 96
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 97
    .line 98
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 102
    .line 103
    .line 104
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 105
    .line 106
    invoke-direct {v1, v11}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 107
    .line 108
    .line 109
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    .line 111
    const-class v2, Lcom/fsck/k9/backends/AndroidAlarmManager;

    .line 112
    .line 113
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 114
    .line 115
    .line 116
    move-result-object v24

    .line 117
    move-object/from16 v26, v1

    .line 118
    .line 119
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 120
    .line 121
    .line 122
    move-object/from16 v1, v22

    .line 123
    .line 124
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 125
    .line 126
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 130
    .line 131
    .line 132
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 133
    .line 134
    invoke-direct {v1, v3}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 135
    .line 136
    .line 137
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 138
    .line 139
    const-class v2, Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

    .line 140
    .line 141
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 142
    .line 143
    .line 144
    move-result-object v24

    .line 145
    move-object/from16 v26, v1

    .line 146
    .line 147
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 148
    .line 149
    .line 150
    move-object/from16 v1, v22

    .line 151
    .line 152
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 153
    .line 154
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 158
    .line 159
    .line 160
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 161
    .line 162
    invoke-direct {v1, v15}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 163
    .line 164
    .line 165
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 166
    .line 167
    const-class v2, Lcom/fsck/k9/backends/DefaultPop3BackendFactory;

    .line 168
    .line 169
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 170
    .line 171
    .line 172
    move-result-object v24

    .line 173
    move-object/from16 v26, v1

    .line 174
    .line 175
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 176
    .line 177
    .line 178
    move-object/from16 v1, v22

    .line 179
    .line 180
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 181
    .line 182
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 186
    .line 187
    .line 188
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 189
    .line 190
    invoke-direct {v1, v14}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 191
    .line 192
    .line 193
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 194
    .line 195
    const-class v2, Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;

    .line 196
    .line 197
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 198
    .line 199
    .line 200
    move-result-object v24

    .line 201
    move-object/from16 v26, v1

    .line 202
    .line 203
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 204
    .line 205
    .line 206
    move-object/from16 v1, v22

    .line 207
    .line 208
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 209
    .line 210
    .line 211
    return-object v21

    .line 212
    :pswitch_0
    move-object/from16 v0, p1

    .line 213
    .line 214
    check-cast v0, Lkotlin/Pair;

    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v0, Ljava/lang/String;

    .line 222
    .line 223
    return-object v0

    .line 224
    :pswitch_1
    move-object/from16 v0, p1

    .line 225
    .line 226
    check-cast v0, Lorg/koin/core/module/Module;

    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    new-instance v7, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 232
    .line 233
    invoke-direct {v7, v10}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 234
    .line 235
    .line 236
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 237
    .line 238
    const-class v1, Lcom/fsck/k9/account/AccountRemover;

    .line 239
    .line 240
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    sget-object v9, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 245
    .line 246
    const/4 v6, 0x0

    .line 247
    sget-object v13, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 248
    .line 249
    move-object v4, v9

    .line 250
    move-object v8, v13

    .line 251
    invoke-direct/range {v3 .. v8}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 252
    .line 253
    .line 254
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 255
    .line 256
    invoke-direct {v1, v3}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 260
    .line 261
    .line 262
    new-instance v12, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 263
    .line 264
    const/16 v1, 0xc

    .line 265
    .line 266
    invoke-direct {v12, v1}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 267
    .line 268
    .line 269
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 270
    .line 271
    const-class v1, Lcom/fsck/k9/account/AccountRemoverWorker;

    .line 272
    .line 273
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 274
    .line 275
    .line 276
    move-result-object v10

    .line 277
    const/4 v11, 0x0

    .line 278
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 279
    .line 280
    .line 281
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 282
    .line 283
    invoke-direct {v1, v8}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 287
    .line 288
    .line 289
    new-instance v12, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 290
    .line 291
    invoke-direct {v12, v2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 292
    .line 293
    .line 294
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 295
    .line 296
    const-class v1, Lcom/fsck/k9/account/DefaultBackgroundAccountRemover;

    .line 297
    .line 298
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 299
    .line 300
    .line 301
    move-result-object v10

    .line 302
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 303
    .line 304
    .line 305
    invoke-static {v8, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 306
    .line 307
    .line 308
    return-object v21

    .line 309
    :pswitch_2
    move-object/from16 v0, p1

    .line 310
    .line 311
    check-cast v0, Lorg/koin/core/module/Module;

    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    new-instance v6, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 317
    .line 318
    invoke-direct {v6, v1}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 319
    .line 320
    .line 321
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 322
    .line 323
    const-class v1, Lcom/fsck/k9/account/AccountOwnerNameProvider;

    .line 324
    .line 325
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    sget-object v11, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 330
    .line 331
    const/4 v5, 0x0

    .line 332
    sget-object v15, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 333
    .line 334
    move-object v3, v11

    .line 335
    move-object v7, v15

    .line 336
    invoke-direct/range {v2 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 337
    .line 338
    .line 339
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 340
    .line 341
    invoke-direct {v1, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 345
    .line 346
    .line 347
    new-instance v14, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 348
    .line 349
    invoke-direct {v14, v9}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 350
    .line 351
    .line 352
    new-instance v10, Lorg/koin/core/definition/BeanDefinition;

    .line 353
    .line 354
    const-class v1, Lcom/fsck/k9/account/AccountStateLoader;

    .line 355
    .line 356
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 357
    .line 358
    .line 359
    move-result-object v12

    .line 360
    const/4 v13, 0x0

    .line 361
    invoke-direct/range {v10 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 362
    .line 363
    .line 364
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 365
    .line 366
    invoke-direct {v1, v10}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 370
    .line 371
    .line 372
    new-instance v14, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 373
    .line 374
    const/16 v1, 0x8

    .line 375
    .line 376
    invoke-direct {v14, v1}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 377
    .line 378
    .line 379
    new-instance v10, Lorg/koin/core/definition/BeanDefinition;

    .line 380
    .line 381
    const-class v1, Lcom/fsck/k9/account/AccountServerSettingsUpdater;

    .line 382
    .line 383
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 384
    .line 385
    .line 386
    move-result-object v12

    .line 387
    invoke-direct/range {v10 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 388
    .line 389
    .line 390
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 391
    .line 392
    invoke-direct {v1, v10}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 396
    .line 397
    .line 398
    new-instance v14, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 399
    .line 400
    const/16 v1, 0x9

    .line 401
    .line 402
    invoke-direct {v14, v1}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 403
    .line 404
    .line 405
    new-instance v10, Lorg/koin/core/definition/BeanDefinition;

    .line 406
    .line 407
    const-class v1, Lcom/fsck/k9/account/AccountActivator;

    .line 408
    .line 409
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 410
    .line 411
    .line 412
    move-result-object v12

    .line 413
    invoke-direct/range {v10 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 414
    .line 415
    .line 416
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 417
    .line 418
    invoke-direct {v1, v10}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 422
    .line 423
    .line 424
    new-instance v14, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 425
    .line 426
    invoke-direct {v14, v8}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 427
    .line 428
    .line 429
    new-instance v10, Lorg/koin/core/definition/BeanDefinition;

    .line 430
    .line 431
    const-class v1, Lcom/fsck/k9/account/DefaultDeletePolicyProvider;

    .line 432
    .line 433
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 434
    .line 435
    .line 436
    move-result-object v12

    .line 437
    invoke-direct/range {v10 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 438
    .line 439
    .line 440
    invoke-static {v10, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 441
    .line 442
    .line 443
    return-object v21

    .line 444
    :pswitch_3
    move-object/from16 v0, p1

    .line 445
    .line 446
    check-cast v0, Lorg/koin/core/module/Module;

    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    .line 450
    .line 451
    iget-object v1, v0, Lorg/koin/core/module/Module;->eagerInstances:Ljava/util/LinkedHashSet;

    .line 452
    .line 453
    new-instance v12, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 454
    .line 455
    invoke-direct {v12, v7}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 456
    .line 457
    .line 458
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 459
    .line 460
    const-class v2, Lcom/fsck/k9/DefaultMessagingListenerProvider;

    .line 461
    .line 462
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 463
    .line 464
    .line 465
    move-result-object v10

    .line 466
    sget-object v14, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 467
    .line 468
    const/4 v11, 0x0

    .line 469
    sget-object v18, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 470
    .line 471
    move-object v9, v14

    .line 472
    move-object/from16 v13, v18

    .line 473
    .line 474
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 475
    .line 476
    .line 477
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 478
    .line 479
    invoke-direct {v2, v8}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 483
    .line 484
    .line 485
    new-instance v2, Lorg/koin/core/qualifier/StringQualifier;

    .line 486
    .line 487
    const-string v3, "controllerExtensions"

    .line 488
    .line 489
    invoke-direct {v2, v3}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    new-instance v3, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 493
    .line 494
    invoke-direct {v3, v6}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 495
    .line 496
    .line 497
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    .line 498
    .line 499
    const-class v4, Ljava/util/List;

    .line 500
    .line 501
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 502
    .line 503
    .line 504
    move-result-object v15

    .line 505
    move-object/from16 v16, v2

    .line 506
    .line 507
    move-object/from16 v17, v3

    .line 508
    .line 509
    invoke-direct/range {v13 .. v18}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 510
    .line 511
    .line 512
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 513
    .line 514
    invoke-direct {v2, v13}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 518
    .line 519
    .line 520
    new-instance v2, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 521
    .line 522
    invoke-direct {v2, v5}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 523
    .line 524
    .line 525
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    .line 526
    .line 527
    const-class v3, Lcom/fsck/k9/crypto/openpgp/OpenPgpEncryptionExtractor;

    .line 528
    .line 529
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 530
    .line 531
    .line 532
    move-result-object v15

    .line 533
    const/16 v16, 0x0

    .line 534
    .line 535
    move-object/from16 v17, v2

    .line 536
    .line 537
    invoke-direct/range {v13 .. v18}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 538
    .line 539
    .line 540
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 541
    .line 542
    invoke-direct {v2, v13}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 546
    .line 547
    .line 548
    new-instance v2, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 549
    .line 550
    const/4 v3, 0x4

    .line 551
    invoke-direct {v2, v3}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 552
    .line 553
    .line 554
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    .line 555
    .line 556
    const-class v3, Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 557
    .line 558
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 559
    .line 560
    .line 561
    move-result-object v15

    .line 562
    move-object/from16 v17, v2

    .line 563
    .line 564
    invoke-direct/range {v13 .. v18}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 565
    .line 566
    .line 567
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 568
    .line 569
    invoke-direct {v2, v13}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 573
    .line 574
    .line 575
    new-instance v2, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 576
    .line 577
    const/4 v3, 0x5

    .line 578
    invoke-direct {v2, v3}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 579
    .line 580
    .line 581
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    .line 582
    .line 583
    const-class v3, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 584
    .line 585
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 586
    .line 587
    .line 588
    move-result-object v15

    .line 589
    move-object/from16 v17, v2

    .line 590
    .line 591
    invoke-direct/range {v13 .. v18}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 592
    .line 593
    .line 594
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 595
    .line 596
    invoke-direct {v2, v13}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    return-object v21

    .line 606
    :pswitch_4
    move-object/from16 v0, p1

    .line 607
    .line 608
    check-cast v0, Lorg/koin/core/module/Module;

    .line 609
    .line 610
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 611
    .line 612
    .line 613
    new-array v1, v7, [Lorg/koin/core/module/Module;

    .line 614
    .line 615
    sget-object v2, Lnet/thunderbird/feature/widget/message/list/KoinModuleKt;->featureWidgetMessageListModule:Lorg/koin/core/module/Module;

    .line 616
    .line 617
    aput-object v2, v1, v4

    .line 618
    .line 619
    iget-object v2, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 620
    .line 621
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 622
    .line 623
    .line 624
    new-instance v7, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 625
    .line 626
    const/16 v1, 0x11

    .line 627
    .line 628
    invoke-direct {v7, v1}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 629
    .line 630
    .line 631
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 632
    .line 633
    const-class v1, Lapp/k9mail/widget/K9MessageListWidgetConfig;

    .line 634
    .line 635
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 636
    .line 637
    .line 638
    move-result-object v5

    .line 639
    sget-object v15, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 640
    .line 641
    const/4 v6, 0x0

    .line 642
    sget-object v19, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 643
    .line 644
    move-object v4, v15

    .line 645
    move-object/from16 v8, v19

    .line 646
    .line 647
    invoke-direct/range {v3 .. v8}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 648
    .line 649
    .line 650
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 651
    .line 652
    invoke-direct {v1, v3}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 656
    .line 657
    .line 658
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 659
    .line 660
    invoke-direct {v1, v13}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 661
    .line 662
    .line 663
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    .line 664
    .line 665
    const-class v2, Lapp/k9mail/widget/K9UnreadWidgetConfig;

    .line 666
    .line 667
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 668
    .line 669
    .line 670
    move-result-object v16

    .line 671
    const/16 v17, 0x0

    .line 672
    .line 673
    move-object/from16 v18, v1

    .line 674
    .line 675
    invoke-direct/range {v14 .. v19}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 676
    .line 677
    .line 678
    invoke-static {v14, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 679
    .line 680
    .line 681
    return-object v21

    .line 682
    :pswitch_5
    move-object/from16 v0, p1

    .line 683
    .line 684
    check-cast v0, Lorg/koin/core/module/Module;

    .line 685
    .line 686
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 687
    .line 688
    .line 689
    new-instance v12, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 690
    .line 691
    invoke-direct {v12, v2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 692
    .line 693
    .line 694
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 695
    .line 696
    const-class v1, Lapp/k9mail/provider/K9AppNameProvider;

    .line 697
    .line 698
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 699
    .line 700
    .line 701
    move-result-object v10

    .line 702
    sget-object v14, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 703
    .line 704
    const/4 v11, 0x0

    .line 705
    sget-object v18, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 706
    .line 707
    move-object v9, v14

    .line 708
    move-object/from16 v13, v18

    .line 709
    .line 710
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 711
    .line 712
    .line 713
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 714
    .line 715
    invoke-direct {v1, v8}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 719
    .line 720
    .line 721
    new-instance v2, Lorg/koin/core/definition/KoinDefinition;

    .line 722
    .line 723
    invoke-direct {v2, v0, v1}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 724
    .line 725
    .line 726
    const-class v1, Lnet/thunderbird/core/common/provider/AppNameProvider;

    .line 727
    .line 728
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    const-class v3, Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 733
    .line 734
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 735
    .line 736
    .line 737
    move-result-object v3

    .line 738
    const-class v8, Lcom/fsck/k9/preferences/FilePrefixProvider;

    .line 739
    .line 740
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 741
    .line 742
    .line 743
    move-result-object v8

    .line 744
    new-array v5, v5, [Lkotlin/reflect/KClass;

    .line 745
    .line 746
    aput-object v1, v5, v4

    .line 747
    .line 748
    aput-object v3, v5, v7

    .line 749
    .line 750
    aput-object v8, v5, v6

    .line 751
    .line 752
    invoke-static {v2, v5}, Lkotlin/io/ByteStreamsKt;->binds(Lorg/koin/core/definition/KoinDefinition;[Lkotlin/reflect/KClass;)V

    .line 753
    .line 754
    .line 755
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 756
    .line 757
    const/16 v2, 0xe

    .line 758
    .line 759
    invoke-direct {v1, v2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 760
    .line 761
    .line 762
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    .line 763
    .line 764
    const-class v2, Lapp/k9mail/provider/K9ThemeProvider;

    .line 765
    .line 766
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 767
    .line 768
    .line 769
    move-result-object v15

    .line 770
    const/16 v16, 0x0

    .line 771
    .line 772
    move-object/from16 v17, v1

    .line 773
    .line 774
    invoke-direct/range {v13 .. v18}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 775
    .line 776
    .line 777
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 778
    .line 779
    invoke-direct {v1, v13}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 783
    .line 784
    .line 785
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 786
    .line 787
    const/16 v2, 0xf

    .line 788
    .line 789
    invoke-direct {v1, v2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 790
    .line 791
    .line 792
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    .line 793
    .line 794
    const-class v2, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 795
    .line 796
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 797
    .line 798
    .line 799
    move-result-object v15

    .line 800
    move-object/from16 v17, v1

    .line 801
    .line 802
    invoke-direct/range {v13 .. v18}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 803
    .line 804
    .line 805
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 806
    .line 807
    invoke-direct {v1, v13}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 811
    .line 812
    .line 813
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 814
    .line 815
    const/16 v2, 0x10

    .line 816
    .line 817
    invoke-direct {v1, v2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 818
    .line 819
    .line 820
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    .line 821
    .line 822
    const-class v2, Lapp/k9mail/provider/K9AppNotificationIconProvider;

    .line 823
    .line 824
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 825
    .line 826
    .line 827
    move-result-object v15

    .line 828
    move-object/from16 v17, v1

    .line 829
    .line 830
    invoke-direct/range {v13 .. v18}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 831
    .line 832
    .line 833
    invoke-static {v13, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 834
    .line 835
    .line 836
    return-object v21

    .line 837
    :pswitch_6
    move-object/from16 v0, p1

    .line 838
    .line 839
    check-cast v0, Lapp/k9mail/legacy/mailstore/RemoteFolderDetails;

    .line 840
    .line 841
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 842
    .line 843
    .line 844
    iget-object v0, v0, Lapp/k9mail/legacy/mailstore/RemoteFolderDetails;->folder:Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 845
    .line 846
    return-object v0

    .line 847
    :pswitch_7
    move-object/from16 v0, p1

    .line 848
    .line 849
    check-cast v0, Lapp/k9mail/legacy/mailstore/RemoteFolderDetails;

    .line 850
    .line 851
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 852
    .line 853
    .line 854
    iget-boolean v0, v0, Lapp/k9mail/legacy/mailstore/RemoteFolderDetails;->isPushEnabled:Z

    .line 855
    .line 856
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    return-object v0

    .line 861
    :pswitch_8
    move-object/from16 v0, p1

    .line 862
    .line 863
    check-cast v0, Lorg/koin/core/module/Module;

    .line 864
    .line 865
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 866
    .line 867
    .line 868
    new-instance v5, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 869
    .line 870
    invoke-direct {v5, v9}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 871
    .line 872
    .line 873
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 874
    .line 875
    const-class v2, Lapp/k9mail/feature/widget/unread/UnreadWidgetRepository;

    .line 876
    .line 877
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 878
    .line 879
    .line 880
    move-result-object v3

    .line 881
    sget-object v12, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 882
    .line 883
    const/4 v4, 0x0

    .line 884
    sget-object v16, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 885
    .line 886
    move-object v2, v12

    .line 887
    move-object/from16 v6, v16

    .line 888
    .line 889
    invoke-direct/range {v1 .. v6}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 890
    .line 891
    .line 892
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 893
    .line 894
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 898
    .line 899
    .line 900
    new-instance v15, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 901
    .line 902
    const/16 v1, 0x8

    .line 903
    .line 904
    invoke-direct {v15, v1}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 905
    .line 906
    .line 907
    new-instance v11, Lorg/koin/core/definition/BeanDefinition;

    .line 908
    .line 909
    const-class v1, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;

    .line 910
    .line 911
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 912
    .line 913
    .line 914
    move-result-object v13

    .line 915
    const/4 v14, 0x0

    .line 916
    invoke-direct/range {v11 .. v16}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 917
    .line 918
    .line 919
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 920
    .line 921
    invoke-direct {v1, v11}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 922
    .line 923
    .line 924
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 925
    .line 926
    .line 927
    new-instance v15, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 928
    .line 929
    const/16 v1, 0x9

    .line 930
    .line 931
    invoke-direct {v15, v1}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 932
    .line 933
    .line 934
    new-instance v11, Lorg/koin/core/definition/BeanDefinition;

    .line 935
    .line 936
    const-class v1, Lapp/k9mail/feature/widget/unread/UnreadWidgetUpdater;

    .line 937
    .line 938
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 939
    .line 940
    .line 941
    move-result-object v13

    .line 942
    invoke-direct/range {v11 .. v16}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 943
    .line 944
    .line 945
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 946
    .line 947
    invoke-direct {v1, v11}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 948
    .line 949
    .line 950
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 951
    .line 952
    .line 953
    new-instance v15, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 954
    .line 955
    invoke-direct {v15, v8}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 956
    .line 957
    .line 958
    new-instance v11, Lorg/koin/core/definition/BeanDefinition;

    .line 959
    .line 960
    const-class v1, Lcom/fsck/k9/controller/MessagingController$8;

    .line 961
    .line 962
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 963
    .line 964
    .line 965
    move-result-object v13

    .line 966
    invoke-direct/range {v11 .. v16}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 967
    .line 968
    .line 969
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 970
    .line 971
    invoke-direct {v1, v11}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 972
    .line 973
    .line 974
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 975
    .line 976
    .line 977
    new-instance v15, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 978
    .line 979
    invoke-direct {v15, v10}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 980
    .line 981
    .line 982
    new-instance v11, Lorg/koin/core/definition/BeanDefinition;

    .line 983
    .line 984
    const-class v1, Lapp/k9mail/feature/widget/unread/UnreadWidgetMigrations;

    .line 985
    .line 986
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 987
    .line 988
    .line 989
    move-result-object v13

    .line 990
    invoke-direct/range {v11 .. v16}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 991
    .line 992
    .line 993
    invoke-static {v11, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 994
    .line 995
    .line 996
    return-object v21

    .line 997
    :pswitch_9
    move-object/from16 v0, p1

    .line 998
    .line 999
    check-cast v0, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;

    .line 1000
    .line 1001
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1002
    .line 1003
    .line 1004
    iget-boolean v0, v0, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->selected:Z

    .line 1005
    .line 1006
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    return-object v0

    .line 1011
    :pswitch_a
    move-object/from16 v0, p1

    .line 1012
    .line 1013
    check-cast v0, Lorg/koin/core/module/Module;

    .line 1014
    .line 1015
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1016
    .line 1017
    .line 1018
    new-instance v12, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1019
    .line 1020
    const/16 v1, 0x1d

    .line 1021
    .line 1022
    invoke-direct {v12, v1}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1023
    .line 1024
    .line 1025
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 1026
    .line 1027
    const-class v1, Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;

    .line 1028
    .line 1029
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v10

    .line 1033
    sget-object v14, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 1034
    .line 1035
    const/4 v11, 0x0

    .line 1036
    sget-object v18, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 1037
    .line 1038
    move-object v9, v14

    .line 1039
    move-object/from16 v13, v18

    .line 1040
    .line 1041
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1042
    .line 1043
    .line 1044
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1045
    .line 1046
    invoke-direct {v1, v8}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1050
    .line 1051
    .line 1052
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 1053
    .line 1054
    invoke-direct {v1, v7}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1055
    .line 1056
    .line 1057
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    .line 1058
    .line 1059
    const-class v2, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 1060
    .line 1061
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v15

    .line 1065
    const/16 v16, 0x0

    .line 1066
    .line 1067
    move-object/from16 v17, v1

    .line 1068
    .line 1069
    invoke-direct/range {v13 .. v18}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1070
    .line 1071
    .line 1072
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1073
    .line 1074
    invoke-direct {v1, v13}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1078
    .line 1079
    .line 1080
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 1081
    .line 1082
    invoke-direct {v1, v6}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1083
    .line 1084
    .line 1085
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    .line 1086
    .line 1087
    const-class v2, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 1088
    .line 1089
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v15

    .line 1093
    move-object/from16 v17, v1

    .line 1094
    .line 1095
    invoke-direct/range {v13 .. v18}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1096
    .line 1097
    .line 1098
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1099
    .line 1100
    invoke-direct {v1, v13}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1104
    .line 1105
    .line 1106
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 1107
    .line 1108
    invoke-direct {v1, v5}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1109
    .line 1110
    .line 1111
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    .line 1112
    .line 1113
    const-class v2, Lapp/k9mail/feature/settings/import/ui/PickAppViewModel;

    .line 1114
    .line 1115
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v15

    .line 1119
    move-object/from16 v17, v1

    .line 1120
    .line 1121
    invoke-direct/range {v13 .. v18}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1122
    .line 1123
    .line 1124
    invoke-static {v13, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 1125
    .line 1126
    .line 1127
    return-object v21

    .line 1128
    :pswitch_b
    move-object/from16 v0, p1

    .line 1129
    .line 1130
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 1131
    .line 1132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1133
    .line 1134
    .line 1135
    const/4 v1, 0x0

    .line 1136
    sget-object v2, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeScreenKt;->lambda$-2019640873:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1137
    .line 1138
    invoke-static {v0, v1, v2, v5}, Landroidx/camera/core/impl/Config$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    .line 1139
    .line 1140
    .line 1141
    return-object v21

    .line 1142
    :pswitch_c
    move-object/from16 v0, p1

    .line 1143
    .line 1144
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 1145
    .line 1146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1147
    .line 1148
    .line 1149
    return-object v21

    .line 1150
    :pswitch_d
    move-object/from16 v0, p1

    .line 1151
    .line 1152
    check-cast v0, Lorg/koin/core/module/Module;

    .line 1153
    .line 1154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1155
    .line 1156
    .line 1157
    new-array v1, v7, [Lorg/koin/core/module/Module;

    .line 1158
    .line 1159
    sget-object v2, Lapp/k9mail/core/android/permissions/CorePermissionsAndroidModuleKt;->corePermissionsAndroidModule:Lorg/koin/core/module/Module;

    .line 1160
    .line 1161
    aput-object v2, v1, v4

    .line 1162
    .line 1163
    iget-object v2, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 1164
    .line 1165
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 1166
    .line 1167
    .line 1168
    new-instance v7, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1169
    .line 1170
    const/16 v1, 0x1b

    .line 1171
    .line 1172
    invoke-direct {v7, v1}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1173
    .line 1174
    .line 1175
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 1176
    .line 1177
    const-class v1, Lapp/k9mail/feature/onboarding/permissions/domain/usecase/CheckPermission;

    .line 1178
    .line 1179
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v5

    .line 1183
    sget-object v4, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 1184
    .line 1185
    const/4 v6, 0x0

    .line 1186
    sget-object v8, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 1187
    .line 1188
    invoke-direct/range {v3 .. v8}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1189
    .line 1190
    .line 1191
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1192
    .line 1193
    invoke-direct {v1, v3}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1197
    .line 1198
    .line 1199
    new-instance v12, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1200
    .line 1201
    const/16 v1, 0x1c

    .line 1202
    .line 1203
    invoke-direct {v12, v1}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1204
    .line 1205
    .line 1206
    move-object v13, v8

    .line 1207
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 1208
    .line 1209
    const-class v1, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;

    .line 1210
    .line 1211
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v10

    .line 1215
    const/4 v11, 0x0

    .line 1216
    move-object v9, v4

    .line 1217
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1218
    .line 1219
    .line 1220
    invoke-static {v8, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 1221
    .line 1222
    .line 1223
    return-object v21

    .line 1224
    :pswitch_e
    move-object/from16 v0, p1

    .line 1225
    .line 1226
    check-cast v0, Landroidx/navigation/NavOptionsBuilder;

    .line 1227
    .line 1228
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1229
    .line 1230
    .line 1231
    const-string/jumbo v1, "welcome"

    .line 1232
    .line 1233
    .line 1234
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1235
    .line 1236
    .line 1237
    move-result v2

    .line 1238
    if-nez v2, :cond_0

    .line 1239
    .line 1240
    iput-object v1, v0, Landroidx/navigation/NavOptionsBuilder;->popUpToRoute:Ljava/lang/String;

    .line 1241
    .line 1242
    const/4 v1, -0x1

    .line 1243
    iput v1, v0, Landroidx/navigation/NavOptionsBuilder;->popUpToId:I

    .line 1244
    .line 1245
    iput-boolean v7, v0, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    .line 1246
    .line 1247
    iput-boolean v4, v0, Landroidx/navigation/NavOptionsBuilder;->saveState:Z

    .line 1248
    .line 1249
    goto :goto_0

    .line 1250
    :cond_0
    const-string v0, "Cannot pop up to an empty route"

    .line 1251
    .line 1252
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1253
    .line 1254
    .line 1255
    const/16 v21, 0x0

    .line 1256
    .line 1257
    :goto_0
    return-object v21

    .line 1258
    :pswitch_f
    move-object/from16 v0, p1

    .line 1259
    .line 1260
    check-cast v0, Lorg/koin/core/module/Module;

    .line 1261
    .line 1262
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1263
    .line 1264
    .line 1265
    new-instance v9, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1266
    .line 1267
    invoke-direct {v9, v4}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1268
    .line 1269
    .line 1270
    new-instance v5, Lorg/koin/core/definition/BeanDefinition;

    .line 1271
    .line 1272
    const-class v1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;

    .line 1273
    .line 1274
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v7

    .line 1278
    sget-object v23, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 1279
    .line 1280
    const/4 v8, 0x0

    .line 1281
    sget-object v27, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 1282
    .line 1283
    move-object/from16 v6, v23

    .line 1284
    .line 1285
    move-object/from16 v10, v27

    .line 1286
    .line 1287
    invoke-direct/range {v5 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1288
    .line 1289
    .line 1290
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1291
    .line 1292
    invoke-direct {v1, v5}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1296
    .line 1297
    .line 1298
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1299
    .line 1300
    const/16 v2, 0x11

    .line 1301
    .line 1302
    invoke-direct {v1, v2}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1303
    .line 1304
    .line 1305
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 1306
    .line 1307
    const-class v2, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadAdapter;

    .line 1308
    .line 1309
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v24

    .line 1313
    const/16 v25, 0x0

    .line 1314
    .line 1315
    move-object/from16 v26, v1

    .line 1316
    .line 1317
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1318
    .line 1319
    .line 1320
    move-object/from16 v1, v22

    .line 1321
    .line 1322
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1323
    .line 1324
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1328
    .line 1329
    .line 1330
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1331
    .line 1332
    invoke-direct {v1, v13}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1333
    .line 1334
    .line 1335
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 1336
    .line 1337
    const-class v2, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadParser;

    .line 1338
    .line 1339
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v24

    .line 1343
    move-object/from16 v26, v1

    .line 1344
    .line 1345
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1346
    .line 1347
    .line 1348
    move-object/from16 v1, v22

    .line 1349
    .line 1350
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1351
    .line 1352
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1356
    .line 1357
    .line 1358
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1359
    .line 1360
    invoke-direct {v1, v12}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1361
    .line 1362
    .line 1363
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 1364
    .line 1365
    const-class v2, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadValidator;

    .line 1366
    .line 1367
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v24

    .line 1371
    move-object/from16 v26, v1

    .line 1372
    .line 1373
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1374
    .line 1375
    .line 1376
    move-object/from16 v1, v22

    .line 1377
    .line 1378
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1379
    .line 1380
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1381
    .line 1382
    .line 1383
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1384
    .line 1385
    .line 1386
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1387
    .line 1388
    invoke-direct {v1, v11}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1389
    .line 1390
    .line 1391
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 1392
    .line 1393
    const-class v2, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadMapper;

    .line 1394
    .line 1395
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v24

    .line 1399
    move-object/from16 v26, v1

    .line 1400
    .line 1401
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1402
    .line 1403
    .line 1404
    move-object/from16 v1, v22

    .line 1405
    .line 1406
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1407
    .line 1408
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1409
    .line 1410
    .line 1411
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1412
    .line 1413
    .line 1414
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1415
    .line 1416
    invoke-direct {v1, v3}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1417
    .line 1418
    .line 1419
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 1420
    .line 1421
    const-class v2, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodePayloadReader;

    .line 1422
    .line 1423
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v24

    .line 1427
    move-object/from16 v26, v1

    .line 1428
    .line 1429
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1430
    .line 1431
    .line 1432
    move-object/from16 v1, v22

    .line 1433
    .line 1434
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1435
    .line 1436
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1437
    .line 1438
    .line 1439
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1440
    .line 1441
    .line 1442
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1443
    .line 1444
    invoke-direct {v1, v15}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1445
    .line 1446
    .line 1447
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 1448
    .line 1449
    const-class v2, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeSettingsWriter;

    .line 1450
    .line 1451
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v24

    .line 1455
    move-object/from16 v26, v1

    .line 1456
    .line 1457
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1458
    .line 1459
    .line 1460
    move-object/from16 v1, v22

    .line 1461
    .line 1462
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1463
    .line 1464
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1465
    .line 1466
    .line 1467
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1468
    .line 1469
    .line 1470
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1471
    .line 1472
    invoke-direct {v1, v14}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1473
    .line 1474
    .line 1475
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 1476
    .line 1477
    const-class v2, Lapp/k9mail/feature/migration/qrcode/settings/DefaultUuidGenerator;

    .line 1478
    .line 1479
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v24

    .line 1483
    move-object/from16 v26, v1

    .line 1484
    .line 1485
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1486
    .line 1487
    .line 1488
    move-object/from16 v1, v22

    .line 1489
    .line 1490
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1491
    .line 1492
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1493
    .line 1494
    .line 1495
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1496
    .line 1497
    .line 1498
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1499
    .line 1500
    const/16 v2, 0x18

    .line 1501
    .line 1502
    invoke-direct {v1, v2}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1503
    .line 1504
    .line 1505
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 1506
    .line 1507
    const-class v2, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;

    .line 1508
    .line 1509
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v24

    .line 1513
    move-object/from16 v26, v1

    .line 1514
    .line 1515
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1516
    .line 1517
    .line 1518
    move-object/from16 v1, v22

    .line 1519
    .line 1520
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 1521
    .line 1522
    .line 1523
    return-object v21

    .line 1524
    :pswitch_10
    move-object/from16 v0, p1

    .line 1525
    .line 1526
    check-cast v0, Lkotlin/Pair;

    .line 1527
    .line 1528
    sget v1, Lapp/k9mail/feature/migration/provider/SettingsProvider;->$r8$clinit:I

    .line 1529
    .line 1530
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1531
    .line 1532
    .line 1533
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 1534
    .line 1535
    check-cast v0, Ljava/lang/String;

    .line 1536
    .line 1537
    return-object v0

    .line 1538
    :pswitch_11
    move-object/from16 v0, p1

    .line 1539
    .line 1540
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 1541
    .line 1542
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1543
    .line 1544
    .line 1545
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties_androidKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 1546
    .line 1547
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->TestTagsAsResourceId:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1548
    .line 1549
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties_androidKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 1550
    .line 1551
    aget-object v2, v2, v4

    .line 1552
    .line 1553
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1554
    .line 1555
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 1556
    .line 1557
    .line 1558
    return-object v21

    .line 1559
    :pswitch_12
    move-object/from16 v0, p1

    .line 1560
    .line 1561
    check-cast v0, Landroidx/navigation/NavOptionsBuilder;

    .line 1562
    .line 1563
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1564
    .line 1565
    .line 1566
    const-string v1, "incoming-server/config"

    .line 1567
    .line 1568
    invoke-static {v0, v1}, Landroidx/navigation/NavOptionsBuilder;->popUpTo$default(Landroidx/navigation/NavOptionsBuilder;Ljava/lang/String;)V

    .line 1569
    .line 1570
    .line 1571
    return-object v21

    .line 1572
    :pswitch_13
    move-object/from16 v0, p1

    .line 1573
    .line 1574
    check-cast v0, Landroidx/navigation/NavOptionsBuilder;

    .line 1575
    .line 1576
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1577
    .line 1578
    .line 1579
    const-string v1, "autoconfig"

    .line 1580
    .line 1581
    invoke-static {v0, v1}, Landroidx/navigation/NavOptionsBuilder;->popUpTo$default(Landroidx/navigation/NavOptionsBuilder;Ljava/lang/String;)V

    .line 1582
    .line 1583
    .line 1584
    return-object v21

    .line 1585
    :pswitch_14
    move-object/from16 v0, p1

    .line 1586
    .line 1587
    check-cast v0, Lorg/koin/core/module/Module;

    .line 1588
    .line 1589
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1590
    .line 1591
    .line 1592
    const/4 v3, 0x4

    .line 1593
    new-array v2, v3, [Lorg/koin/core/module/Module;

    .line 1594
    .line 1595
    sget-object v3, Lapp/k9mail/feature/account/common/AccountCommonModuleKt;->featureAccountCommonModule:Lorg/koin/core/module/Module;

    .line 1596
    .line 1597
    aput-object v3, v2, v4

    .line 1598
    .line 1599
    sget-object v3, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt;->featureAccountOAuthModule:Lorg/koin/core/module/Module;

    .line 1600
    .line 1601
    aput-object v3, v2, v7

    .line 1602
    .line 1603
    sget-object v3, Lapp/k9mail/feature/account/server/validation/ServerValidationModuleKt;->featureAccountServerValidationModule:Lorg/koin/core/module/Module;

    .line 1604
    .line 1605
    aput-object v3, v2, v6

    .line 1606
    .line 1607
    sget-object v3, Lapp/k9mail/feature/account/server/settings/ServerSettingsModuleKt;->featureAccountServerSettingsModule:Lorg/koin/core/module/Module;

    .line 1608
    .line 1609
    aput-object v3, v2, v5

    .line 1610
    .line 1611
    iget-object v3, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 1612
    .line 1613
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 1614
    .line 1615
    .line 1616
    new-instance v2, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1617
    .line 1618
    invoke-direct {v2, v5}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1619
    .line 1620
    .line 1621
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 1622
    .line 1623
    const-class v3, Lapp/k9mail/feature/account/setup/navigation/DefaultAccountSetupNavigation;

    .line 1624
    .line 1625
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v24

    .line 1629
    sget-object v26, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 1630
    .line 1631
    const/16 v25, 0x0

    .line 1632
    .line 1633
    sget-object v30, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 1634
    .line 1635
    move-object/from16 v23, v26

    .line 1636
    .line 1637
    move-object/from16 v27, v30

    .line 1638
    .line 1639
    move-object/from16 v26, v2

    .line 1640
    .line 1641
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1642
    .line 1643
    .line 1644
    move-object/from16 v2, v22

    .line 1645
    .line 1646
    move-object/from16 v26, v23

    .line 1647
    .line 1648
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1649
    .line 1650
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1651
    .line 1652
    .line 1653
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1654
    .line 1655
    .line 1656
    new-instance v2, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1657
    .line 1658
    invoke-direct {v2, v10}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1659
    .line 1660
    .line 1661
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1662
    .line 1663
    const-class v3, Lokhttp3/OkHttpClient;

    .line 1664
    .line 1665
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v27

    .line 1669
    const/16 v28, 0x0

    .line 1670
    .line 1671
    move-object/from16 v29, v2

    .line 1672
    .line 1673
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1674
    .line 1675
    .line 1676
    move-object/from16 v2, v25

    .line 1677
    .line 1678
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1679
    .line 1680
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1681
    .line 1682
    .line 1683
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1684
    .line 1685
    .line 1686
    new-instance v2, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 1687
    .line 1688
    const/16 v3, 0x18

    .line 1689
    .line 1690
    invoke-direct {v2, v3}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1691
    .line 1692
    .line 1693
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1694
    .line 1695
    const-class v3, Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryRegistry;

    .line 1696
    .line 1697
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v27

    .line 1701
    move-object/from16 v29, v2

    .line 1702
    .line 1703
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1704
    .line 1705
    .line 1706
    move-object/from16 v2, v25

    .line 1707
    .line 1708
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1709
    .line 1710
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1711
    .line 1712
    .line 1713
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1714
    .line 1715
    .line 1716
    new-instance v2, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 1717
    .line 1718
    const/16 v3, 0x19

    .line 1719
    .line 1720
    invoke-direct {v2, v3}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1721
    .line 1722
    .line 1723
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1724
    .line 1725
    const-class v3, Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryService;

    .line 1726
    .line 1727
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v27

    .line 1731
    move-object/from16 v29, v2

    .line 1732
    .line 1733
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1734
    .line 1735
    .line 1736
    move-object/from16 v2, v25

    .line 1737
    .line 1738
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1739
    .line 1740
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1741
    .line 1742
    .line 1743
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1744
    .line 1745
    .line 1746
    new-instance v2, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 1747
    .line 1748
    const/16 v3, 0x1a

    .line 1749
    .line 1750
    invoke-direct {v2, v3}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1751
    .line 1752
    .line 1753
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1754
    .line 1755
    const-class v3, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;

    .line 1756
    .line 1757
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v27

    .line 1761
    move-object/from16 v29, v2

    .line 1762
    .line 1763
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1764
    .line 1765
    .line 1766
    move-object/from16 v2, v25

    .line 1767
    .line 1768
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 1769
    .line 1770
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1771
    .line 1772
    .line 1773
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1774
    .line 1775
    .line 1776
    new-instance v2, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 1777
    .line 1778
    const/16 v3, 0x1b

    .line 1779
    .line 1780
    invoke-direct {v2, v3}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1781
    .line 1782
    .line 1783
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1784
    .line 1785
    const-class v3, Lapp/k9mail/feature/account/setup/domain/usecase/CreateAccount;

    .line 1786
    .line 1787
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v27

    .line 1791
    sget-object v30, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 1792
    .line 1793
    move-object/from16 v29, v2

    .line 1794
    .line 1795
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1796
    .line 1797
    .line 1798
    move-object/from16 v2, v25

    .line 1799
    .line 1800
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1801
    .line 1802
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1803
    .line 1804
    .line 1805
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1806
    .line 1807
    .line 1808
    new-instance v2, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 1809
    .line 1810
    const/16 v3, 0x1c

    .line 1811
    .line 1812
    invoke-direct {v2, v3}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1813
    .line 1814
    .line 1815
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1816
    .line 1817
    const-class v3, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryValidator;

    .line 1818
    .line 1819
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1820
    .line 1821
    .line 1822
    move-result-object v27

    .line 1823
    move-object/from16 v29, v2

    .line 1824
    .line 1825
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1826
    .line 1827
    .line 1828
    move-object/from16 v2, v25

    .line 1829
    .line 1830
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1831
    .line 1832
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1833
    .line 1834
    .line 1835
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1836
    .line 1837
    .line 1838
    new-instance v2, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 1839
    .line 1840
    const/16 v3, 0x1d

    .line 1841
    .line 1842
    invoke-direct {v2, v3}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1843
    .line 1844
    .line 1845
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1846
    .line 1847
    const-class v3, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsValidator;

    .line 1848
    .line 1849
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1850
    .line 1851
    .line 1852
    move-result-object v27

    .line 1853
    move-object/from16 v29, v2

    .line 1854
    .line 1855
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1856
    .line 1857
    .line 1858
    move-object/from16 v2, v25

    .line 1859
    .line 1860
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1861
    .line 1862
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1863
    .line 1864
    .line 1865
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1866
    .line 1867
    .line 1868
    new-instance v2, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1869
    .line 1870
    invoke-direct {v2, v7}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1871
    .line 1872
    .line 1873
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1874
    .line 1875
    const-class v3, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryViewModel;

    .line 1876
    .line 1877
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v27

    .line 1881
    move-object/from16 v29, v2

    .line 1882
    .line 1883
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1884
    .line 1885
    .line 1886
    move-object/from16 v2, v25

    .line 1887
    .line 1888
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1889
    .line 1890
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1891
    .line 1892
    .line 1893
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1894
    .line 1895
    .line 1896
    new-instance v2, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1897
    .line 1898
    invoke-direct {v2, v6}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1899
    .line 1900
    .line 1901
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1902
    .line 1903
    const-class v3, Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;

    .line 1904
    .line 1905
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1906
    .line 1907
    .line 1908
    move-result-object v27

    .line 1909
    move-object/from16 v29, v2

    .line 1910
    .line 1911
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1912
    .line 1913
    .line 1914
    move-object/from16 v2, v25

    .line 1915
    .line 1916
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1917
    .line 1918
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1919
    .line 1920
    .line 1921
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1922
    .line 1923
    .line 1924
    new-instance v2, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1925
    .line 1926
    const/4 v3, 0x4

    .line 1927
    invoke-direct {v2, v3}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1928
    .line 1929
    .line 1930
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1931
    .line 1932
    const-class v3, Lapp/k9mail/feature/account/setup/domain/usecase/GetSpecialFolderOptions;

    .line 1933
    .line 1934
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v27

    .line 1938
    move-object/from16 v29, v2

    .line 1939
    .line 1940
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1941
    .line 1942
    .line 1943
    move-object/from16 v2, v25

    .line 1944
    .line 1945
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1946
    .line 1947
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1948
    .line 1949
    .line 1950
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1951
    .line 1952
    .line 1953
    new-instance v2, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1954
    .line 1955
    const/4 v3, 0x5

    .line 1956
    invoke-direct {v2, v3}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1957
    .line 1958
    .line 1959
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1960
    .line 1961
    const-class v3, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateSpecialFolderOptions;

    .line 1962
    .line 1963
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1964
    .line 1965
    .line 1966
    move-result-object v27

    .line 1967
    move-object/from16 v29, v2

    .line 1968
    .line 1969
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1970
    .line 1971
    .line 1972
    move-object/from16 v2, v25

    .line 1973
    .line 1974
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1975
    .line 1976
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1977
    .line 1978
    .line 1979
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1980
    .line 1981
    .line 1982
    new-instance v2, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 1983
    .line 1984
    invoke-direct {v2, v1}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1985
    .line 1986
    .line 1987
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1988
    .line 1989
    const-class v1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormUiModel;

    .line 1990
    .line 1991
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1992
    .line 1993
    .line 1994
    move-result-object v27

    .line 1995
    move-object/from16 v29, v2

    .line 1996
    .line 1997
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1998
    .line 1999
    .line 2000
    move-object/from16 v1, v25

    .line 2001
    .line 2002
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2003
    .line 2004
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2005
    .line 2006
    .line 2007
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2008
    .line 2009
    .line 2010
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 2011
    .line 2012
    invoke-direct {v1, v9}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2013
    .line 2014
    .line 2015
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 2016
    .line 2017
    const-class v2, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;

    .line 2018
    .line 2019
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2020
    .line 2021
    .line 2022
    move-result-object v27

    .line 2023
    move-object/from16 v29, v1

    .line 2024
    .line 2025
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2026
    .line 2027
    .line 2028
    move-object/from16 v1, v25

    .line 2029
    .line 2030
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2031
    .line 2032
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2033
    .line 2034
    .line 2035
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2036
    .line 2037
    .line 2038
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 2039
    .line 2040
    const/16 v2, 0x8

    .line 2041
    .line 2042
    invoke-direct {v1, v2}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2043
    .line 2044
    .line 2045
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 2046
    .line 2047
    const-class v2, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;

    .line 2048
    .line 2049
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2050
    .line 2051
    .line 2052
    move-result-object v27

    .line 2053
    move-object/from16 v29, v1

    .line 2054
    .line 2055
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2056
    .line 2057
    .line 2058
    move-object/from16 v1, v25

    .line 2059
    .line 2060
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2061
    .line 2062
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2063
    .line 2064
    .line 2065
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2066
    .line 2067
    .line 2068
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 2069
    .line 2070
    const/16 v2, 0x9

    .line 2071
    .line 2072
    invoke-direct {v1, v2}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2073
    .line 2074
    .line 2075
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 2076
    .line 2077
    const-class v2, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsViewModel;

    .line 2078
    .line 2079
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2080
    .line 2081
    .line 2082
    move-result-object v27

    .line 2083
    move-object/from16 v29, v1

    .line 2084
    .line 2085
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2086
    .line 2087
    .line 2088
    move-object/from16 v1, v25

    .line 2089
    .line 2090
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2091
    .line 2092
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2093
    .line 2094
    .line 2095
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2096
    .line 2097
    .line 2098
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 2099
    .line 2100
    invoke-direct {v1, v8}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2101
    .line 2102
    .line 2103
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 2104
    .line 2105
    const-class v2, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountViewModel;

    .line 2106
    .line 2107
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2108
    .line 2109
    .line 2110
    move-result-object v27

    .line 2111
    move-object/from16 v29, v1

    .line 2112
    .line 2113
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2114
    .line 2115
    .line 2116
    move-object/from16 v1, v25

    .line 2117
    .line 2118
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 2119
    .line 2120
    .line 2121
    return-object v21

    .line 2122
    :pswitch_15
    move-object/from16 v0, p1

    .line 2123
    .line 2124
    check-cast v0, Lorg/koin/core/module/Module;

    .line 2125
    .line 2126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2127
    .line 2128
    .line 2129
    const/4 v1, 0x4

    .line 2130
    new-array v1, v1, [Lorg/koin/core/module/Module;

    .line 2131
    .line 2132
    sget-object v2, Lnet/thunderbird/core/common/CoreCommonModuleKt;->coreCommonModule:Lorg/koin/core/module/Module;

    .line 2133
    .line 2134
    aput-object v2, v1, v4

    .line 2135
    .line 2136
    sget-object v2, Lapp/k9mail/feature/account/common/AccountCommonModuleKt;->featureAccountCommonModule:Lorg/koin/core/module/Module;

    .line 2137
    .line 2138
    aput-object v2, v1, v7

    .line 2139
    .line 2140
    sget-object v2, Lapp/k9mail/feature/account/server/certificate/ServerCertificateModuleKt;->featureAccountServerCertificateModule:Lorg/koin/core/module/Module;

    .line 2141
    .line 2142
    aput-object v2, v1, v6

    .line 2143
    .line 2144
    sget-object v2, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt;->featureAccountOAuthModule:Lorg/koin/core/module/Module;

    .line 2145
    .line 2146
    aput-object v2, v1, v5

    .line 2147
    .line 2148
    iget-object v2, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 2149
    .line 2150
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 2151
    .line 2152
    .line 2153
    new-instance v8, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2154
    .line 2155
    invoke-direct {v8, v3}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2156
    .line 2157
    .line 2158
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 2159
    .line 2160
    const-class v1, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;

    .line 2161
    .line 2162
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2163
    .line 2164
    .line 2165
    move-result-object v6

    .line 2166
    sget-object v23, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 2167
    .line 2168
    const/4 v7, 0x0

    .line 2169
    sget-object v27, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 2170
    .line 2171
    move-object/from16 v5, v23

    .line 2172
    .line 2173
    move-object/from16 v9, v27

    .line 2174
    .line 2175
    invoke-direct/range {v4 .. v9}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2176
    .line 2177
    .line 2178
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2179
    .line 2180
    invoke-direct {v1, v4}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2181
    .line 2182
    .line 2183
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2184
    .line 2185
    .line 2186
    new-instance v1, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2187
    .line 2188
    invoke-direct {v1, v15}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2189
    .line 2190
    .line 2191
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2192
    .line 2193
    const-class v2, Lapp/k9mail/feature/account/server/validation/ui/IncomingServerValidationViewModel;

    .line 2194
    .line 2195
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2196
    .line 2197
    .line 2198
    move-result-object v24

    .line 2199
    const/16 v25, 0x0

    .line 2200
    .line 2201
    move-object/from16 v26, v1

    .line 2202
    .line 2203
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2204
    .line 2205
    .line 2206
    move-object/from16 v1, v22

    .line 2207
    .line 2208
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2209
    .line 2210
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2211
    .line 2212
    .line 2213
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2214
    .line 2215
    .line 2216
    new-instance v1, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2217
    .line 2218
    invoke-direct {v1, v14}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2219
    .line 2220
    .line 2221
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2222
    .line 2223
    const-class v2, Lapp/k9mail/feature/account/server/validation/ui/OutgoingServerValidationViewModel;

    .line 2224
    .line 2225
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2226
    .line 2227
    .line 2228
    move-result-object v24

    .line 2229
    move-object/from16 v26, v1

    .line 2230
    .line 2231
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2232
    .line 2233
    .line 2234
    move-object/from16 v1, v22

    .line 2235
    .line 2236
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 2237
    .line 2238
    .line 2239
    return-object v21

    .line 2240
    :pswitch_16
    move-object/from16 v0, p1

    .line 2241
    .line 2242
    check-cast v0, Ljava/lang/String;

    .line 2243
    .line 2244
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2245
    .line 2246
    .line 2247
    return-object v21

    .line 2248
    :pswitch_17
    move-object/from16 v0, p1

    .line 2249
    .line 2250
    check-cast v0, Lorg/koin/core/module/Module;

    .line 2251
    .line 2252
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2253
    .line 2254
    .line 2255
    new-instance v5, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2256
    .line 2257
    const/16 v1, 0x11

    .line 2258
    .line 2259
    invoke-direct {v5, v1}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2260
    .line 2261
    .line 2262
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 2263
    .line 2264
    const-class v2, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsValidator;

    .line 2265
    .line 2266
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2267
    .line 2268
    .line 2269
    move-result-object v3

    .line 2270
    sget-object v15, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 2271
    .line 2272
    const/4 v4, 0x0

    .line 2273
    sget-object v19, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 2274
    .line 2275
    move-object v2, v15

    .line 2276
    move-object/from16 v6, v19

    .line 2277
    .line 2278
    invoke-direct/range {v1 .. v6}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2279
    .line 2280
    .line 2281
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2282
    .line 2283
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2284
    .line 2285
    .line 2286
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2287
    .line 2288
    .line 2289
    new-instance v1, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2290
    .line 2291
    invoke-direct {v1, v13}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2292
    .line 2293
    .line 2294
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    .line 2295
    .line 2296
    const-class v2, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsValidator;

    .line 2297
    .line 2298
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2299
    .line 2300
    .line 2301
    move-result-object v16

    .line 2302
    const/16 v17, 0x0

    .line 2303
    .line 2304
    move-object/from16 v18, v1

    .line 2305
    .line 2306
    invoke-direct/range {v14 .. v19}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2307
    .line 2308
    .line 2309
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2310
    .line 2311
    invoke-direct {v1, v14}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2312
    .line 2313
    .line 2314
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2315
    .line 2316
    .line 2317
    new-instance v1, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2318
    .line 2319
    invoke-direct {v1, v12}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2320
    .line 2321
    .line 2322
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    .line 2323
    .line 2324
    const-class v2, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;

    .line 2325
    .line 2326
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2327
    .line 2328
    .line 2329
    move-result-object v16

    .line 2330
    move-object/from16 v18, v1

    .line 2331
    .line 2332
    invoke-direct/range {v14 .. v19}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2333
    .line 2334
    .line 2335
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2336
    .line 2337
    invoke-direct {v1, v14}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2338
    .line 2339
    .line 2340
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2341
    .line 2342
    .line 2343
    new-instance v1, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2344
    .line 2345
    invoke-direct {v1, v11}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2346
    .line 2347
    .line 2348
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    .line 2349
    .line 2350
    const-class v2, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;

    .line 2351
    .line 2352
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2353
    .line 2354
    .line 2355
    move-result-object v16

    .line 2356
    move-object/from16 v18, v1

    .line 2357
    .line 2358
    invoke-direct/range {v14 .. v19}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2359
    .line 2360
    .line 2361
    invoke-static {v14, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 2362
    .line 2363
    .line 2364
    return-object v21

    .line 2365
    :pswitch_18
    move-object/from16 v0, p1

    .line 2366
    .line 2367
    check-cast v0, Lorg/koin/core/module/Module;

    .line 2368
    .line 2369
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2370
    .line 2371
    .line 2372
    new-instance v15, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2373
    .line 2374
    invoke-direct {v15, v8}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2375
    .line 2376
    .line 2377
    new-instance v11, Lorg/koin/core/definition/BeanDefinition;

    .line 2378
    .line 2379
    const-class v1, Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;

    .line 2380
    .line 2381
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2382
    .line 2383
    .line 2384
    move-result-object v13

    .line 2385
    sget-object v4, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 2386
    .line 2387
    const/4 v14, 0x0

    .line 2388
    sget-object v16, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 2389
    .line 2390
    move-object v12, v4

    .line 2391
    invoke-direct/range {v11 .. v16}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2392
    .line 2393
    .line 2394
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2395
    .line 2396
    invoke-direct {v1, v11}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2397
    .line 2398
    .line 2399
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2400
    .line 2401
    .line 2402
    new-instance v7, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2403
    .line 2404
    invoke-direct {v7, v10}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2405
    .line 2406
    .line 2407
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 2408
    .line 2409
    const-class v1, Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;

    .line 2410
    .line 2411
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2412
    .line 2413
    .line 2414
    move-result-object v5

    .line 2415
    const/4 v6, 0x0

    .line 2416
    sget-object v8, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 2417
    .line 2418
    invoke-direct/range {v3 .. v8}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2419
    .line 2420
    .line 2421
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2422
    .line 2423
    invoke-direct {v1, v3}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2424
    .line 2425
    .line 2426
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2427
    .line 2428
    .line 2429
    new-instance v7, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2430
    .line 2431
    const/16 v1, 0xc

    .line 2432
    .line 2433
    invoke-direct {v7, v1}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2434
    .line 2435
    .line 2436
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 2437
    .line 2438
    const-class v1, Lapp/k9mail/feature/account/server/certificate/domain/usecase/FormatServerCertificateError;

    .line 2439
    .line 2440
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2441
    .line 2442
    .line 2443
    move-result-object v5

    .line 2444
    invoke-direct/range {v3 .. v8}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2445
    .line 2446
    .line 2447
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2448
    .line 2449
    invoke-direct {v1, v3}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2450
    .line 2451
    .line 2452
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2453
    .line 2454
    .line 2455
    new-instance v7, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2456
    .line 2457
    invoke-direct {v7, v2}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2458
    .line 2459
    .line 2460
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 2461
    .line 2462
    const-class v1, Lapp/k9mail/feature/account/server/certificate/ui/DefaultServerNameFormatter;

    .line 2463
    .line 2464
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2465
    .line 2466
    .line 2467
    move-result-object v5

    .line 2468
    invoke-direct/range {v3 .. v8}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2469
    .line 2470
    .line 2471
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2472
    .line 2473
    invoke-direct {v1, v3}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2474
    .line 2475
    .line 2476
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2477
    .line 2478
    .line 2479
    new-instance v7, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2480
    .line 2481
    const/16 v1, 0xe

    .line 2482
    .line 2483
    invoke-direct {v7, v1}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2484
    .line 2485
    .line 2486
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 2487
    .line 2488
    const-class v1, Lapp/k9mail/feature/account/server/certificate/ui/DefaultFingerprintFormatter;

    .line 2489
    .line 2490
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2491
    .line 2492
    .line 2493
    move-result-object v5

    .line 2494
    invoke-direct/range {v3 .. v8}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2495
    .line 2496
    .line 2497
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2498
    .line 2499
    invoke-direct {v1, v3}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2500
    .line 2501
    .line 2502
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2503
    .line 2504
    .line 2505
    new-instance v7, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2506
    .line 2507
    const/16 v1, 0xf

    .line 2508
    .line 2509
    invoke-direct {v7, v1}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2510
    .line 2511
    .line 2512
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 2513
    .line 2514
    const-class v1, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;

    .line 2515
    .line 2516
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2517
    .line 2518
    .line 2519
    move-result-object v5

    .line 2520
    invoke-direct/range {v3 .. v8}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2521
    .line 2522
    .line 2523
    invoke-static {v3, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 2524
    .line 2525
    .line 2526
    return-object v21

    .line 2527
    :pswitch_19
    move-object/from16 v0, p1

    .line 2528
    .line 2529
    check-cast v0, Lorg/koin/core/module/Module;

    .line 2530
    .line 2531
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2532
    .line 2533
    .line 2534
    new-array v2, v7, [Lorg/koin/core/module/Module;

    .line 2535
    .line 2536
    sget-object v3, Lnet/thunderbird/core/common/CoreCommonModuleKt;->coreCommonModule:Lorg/koin/core/module/Module;

    .line 2537
    .line 2538
    aput-object v3, v2, v4

    .line 2539
    .line 2540
    iget-object v3, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 2541
    .line 2542
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 2543
    .line 2544
    .line 2545
    new-instance v14, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2546
    .line 2547
    invoke-direct {v14, v4}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2548
    .line 2549
    .line 2550
    new-instance v10, Lorg/koin/core/definition/BeanDefinition;

    .line 2551
    .line 2552
    const-class v2, Lnet/openid/appauth/AuthorizationService;

    .line 2553
    .line 2554
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2555
    .line 2556
    .line 2557
    move-result-object v12

    .line 2558
    sget-object v23, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 2559
    .line 2560
    const/4 v13, 0x0

    .line 2561
    sget-object v27, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 2562
    .line 2563
    move-object/from16 v11, v23

    .line 2564
    .line 2565
    move-object/from16 v15, v27

    .line 2566
    .line 2567
    invoke-direct/range {v10 .. v15}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2568
    .line 2569
    .line 2570
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2571
    .line 2572
    invoke-direct {v2, v10}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2573
    .line 2574
    .line 2575
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2576
    .line 2577
    .line 2578
    new-instance v2, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2579
    .line 2580
    invoke-direct {v2, v6}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2581
    .line 2582
    .line 2583
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2584
    .line 2585
    const-class v3, Lapp/k9mail/feature/account/oauth/data/AuthorizationRepository;

    .line 2586
    .line 2587
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2588
    .line 2589
    .line 2590
    move-result-object v24

    .line 2591
    const/16 v25, 0x0

    .line 2592
    .line 2593
    move-object/from16 v26, v2

    .line 2594
    .line 2595
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2596
    .line 2597
    .line 2598
    move-object/from16 v2, v22

    .line 2599
    .line 2600
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2601
    .line 2602
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2603
    .line 2604
    .line 2605
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2606
    .line 2607
    .line 2608
    new-instance v2, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2609
    .line 2610
    invoke-direct {v2, v5}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2611
    .line 2612
    .line 2613
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2614
    .line 2615
    const-class v3, Lapp/k9mail/feature/account/oauth/data/AuthorizationStateRepository;

    .line 2616
    .line 2617
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2618
    .line 2619
    .line 2620
    move-result-object v24

    .line 2621
    move-object/from16 v26, v2

    .line 2622
    .line 2623
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2624
    .line 2625
    .line 2626
    move-object/from16 v2, v22

    .line 2627
    .line 2628
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2629
    .line 2630
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2631
    .line 2632
    .line 2633
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2634
    .line 2635
    .line 2636
    new-instance v2, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2637
    .line 2638
    const/4 v3, 0x4

    .line 2639
    invoke-direct {v2, v3}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2640
    .line 2641
    .line 2642
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2643
    .line 2644
    const-class v3, Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;

    .line 2645
    .line 2646
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2647
    .line 2648
    .line 2649
    move-result-object v24

    .line 2650
    move-object/from16 v26, v2

    .line 2651
    .line 2652
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2653
    .line 2654
    .line 2655
    move-object/from16 v2, v22

    .line 2656
    .line 2657
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2658
    .line 2659
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2660
    .line 2661
    .line 2662
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2663
    .line 2664
    .line 2665
    new-instance v2, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2666
    .line 2667
    const/4 v3, 0x5

    .line 2668
    invoke-direct {v2, v3}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2669
    .line 2670
    .line 2671
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2672
    .line 2673
    const-class v3, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn;

    .line 2674
    .line 2675
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2676
    .line 2677
    .line 2678
    move-result-object v24

    .line 2679
    move-object/from16 v26, v2

    .line 2680
    .line 2681
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2682
    .line 2683
    .line 2684
    move-object/from16 v2, v22

    .line 2685
    .line 2686
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2687
    .line 2688
    invoke-direct {v3, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2689
    .line 2690
    .line 2691
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2692
    .line 2693
    .line 2694
    new-instance v2, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2695
    .line 2696
    invoke-direct {v2, v1}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2697
    .line 2698
    .line 2699
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2700
    .line 2701
    const-class v1, Lapp/k9mail/feature/account/oauth/domain/usecase/CheckIsGoogleSignIn;

    .line 2702
    .line 2703
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2704
    .line 2705
    .line 2706
    move-result-object v24

    .line 2707
    move-object/from16 v26, v2

    .line 2708
    .line 2709
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2710
    .line 2711
    .line 2712
    move-object/from16 v1, v22

    .line 2713
    .line 2714
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2715
    .line 2716
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2717
    .line 2718
    .line 2719
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2720
    .line 2721
    .line 2722
    new-instance v1, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2723
    .line 2724
    invoke-direct {v1, v9}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2725
    .line 2726
    .line 2727
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2728
    .line 2729
    const-class v2, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;

    .line 2730
    .line 2731
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2732
    .line 2733
    .line 2734
    move-result-object v24

    .line 2735
    move-object/from16 v26, v1

    .line 2736
    .line 2737
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2738
    .line 2739
    .line 2740
    move-object/from16 v1, v22

    .line 2741
    .line 2742
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 2743
    .line 2744
    .line 2745
    return-object v21

    .line 2746
    :pswitch_1a
    move-object/from16 v0, p1

    .line 2747
    .line 2748
    check-cast v0, Lorg/koin/core/module/Module;

    .line 2749
    .line 2750
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2751
    .line 2752
    .line 2753
    const/4 v3, 0x5

    .line 2754
    new-array v1, v3, [Lorg/koin/core/module/Module;

    .line 2755
    .line 2756
    sget-object v2, Lapp/k9mail/feature/account/common/AccountCommonModuleKt;->featureAccountCommonModule:Lorg/koin/core/module/Module;

    .line 2757
    .line 2758
    aput-object v2, v1, v4

    .line 2759
    .line 2760
    sget-object v2, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt;->featureAccountOAuthModule:Lorg/koin/core/module/Module;

    .line 2761
    .line 2762
    aput-object v2, v1, v7

    .line 2763
    .line 2764
    sget-object v2, Lapp/k9mail/feature/account/server/certificate/ServerCertificateModuleKt;->featureAccountServerCertificateModule:Lorg/koin/core/module/Module;

    .line 2765
    .line 2766
    aput-object v2, v1, v6

    .line 2767
    .line 2768
    sget-object v2, Lapp/k9mail/feature/account/server/settings/ServerSettingsModuleKt;->featureAccountServerSettingsModule:Lorg/koin/core/module/Module;

    .line 2769
    .line 2770
    aput-object v2, v1, v5

    .line 2771
    .line 2772
    sget-object v2, Lapp/k9mail/feature/account/server/validation/ServerValidationModuleKt;->featureAccountServerValidationModule:Lorg/koin/core/module/Module;

    .line 2773
    .line 2774
    const/16 v20, 0x4

    .line 2775
    .line 2776
    aput-object v2, v1, v20

    .line 2777
    .line 2778
    iget-object v2, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 2779
    .line 2780
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 2781
    .line 2782
    .line 2783
    new-instance v7, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 2784
    .line 2785
    invoke-direct {v7, v15}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2786
    .line 2787
    .line 2788
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 2789
    .line 2790
    const-class v1, Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation;

    .line 2791
    .line 2792
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2793
    .line 2794
    .line 2795
    move-result-object v5

    .line 2796
    sget-object v9, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 2797
    .line 2798
    const/4 v6, 0x0

    .line 2799
    sget-object v8, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 2800
    .line 2801
    move-object v4, v9

    .line 2802
    invoke-direct/range {v3 .. v8}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2803
    .line 2804
    .line 2805
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2806
    .line 2807
    invoke-direct {v1, v3}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2808
    .line 2809
    .line 2810
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2811
    .line 2812
    .line 2813
    new-instance v12, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 2814
    .line 2815
    invoke-direct {v12, v14}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2816
    .line 2817
    .line 2818
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 2819
    .line 2820
    const-class v1, Lapp/k9mail/feature/account/edit/domain/usecase/LoadAccountState;

    .line 2821
    .line 2822
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2823
    .line 2824
    .line 2825
    move-result-object v10

    .line 2826
    const/4 v11, 0x0

    .line 2827
    sget-object v13, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 2828
    .line 2829
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2830
    .line 2831
    .line 2832
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2833
    .line 2834
    invoke-direct {v1, v8}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2835
    .line 2836
    .line 2837
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2838
    .line 2839
    .line 2840
    new-instance v12, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 2841
    .line 2842
    const/16 v2, 0x18

    .line 2843
    .line 2844
    invoke-direct {v12, v2}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2845
    .line 2846
    .line 2847
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 2848
    .line 2849
    const-class v1, Lapp/k9mail/feature/account/edit/domain/usecase/GetAccountState;

    .line 2850
    .line 2851
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2852
    .line 2853
    .line 2854
    move-result-object v10

    .line 2855
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2856
    .line 2857
    .line 2858
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2859
    .line 2860
    invoke-direct {v1, v8}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2861
    .line 2862
    .line 2863
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2864
    .line 2865
    .line 2866
    new-instance v12, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 2867
    .line 2868
    const/16 v1, 0x19

    .line 2869
    .line 2870
    invoke-direct {v12, v1}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2871
    .line 2872
    .line 2873
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 2874
    .line 2875
    const-class v1, Lapp/k9mail/feature/account/edit/domain/usecase/SaveServerSettings;

    .line 2876
    .line 2877
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2878
    .line 2879
    .line 2880
    move-result-object v10

    .line 2881
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2882
    .line 2883
    .line 2884
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2885
    .line 2886
    invoke-direct {v1, v8}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2887
    .line 2888
    .line 2889
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2890
    .line 2891
    .line 2892
    new-instance v12, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 2893
    .line 2894
    const/16 v1, 0x1a

    .line 2895
    .line 2896
    invoke-direct {v12, v1}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2897
    .line 2898
    .line 2899
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 2900
    .line 2901
    const-class v1, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyIncomingServerSettingsViewModel;

    .line 2902
    .line 2903
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2904
    .line 2905
    .line 2906
    move-result-object v10

    .line 2907
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2908
    .line 2909
    .line 2910
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2911
    .line 2912
    invoke-direct {v1, v8}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2913
    .line 2914
    .line 2915
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2916
    .line 2917
    .line 2918
    new-instance v12, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 2919
    .line 2920
    const/16 v1, 0x1b

    .line 2921
    .line 2922
    invoke-direct {v12, v1}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2923
    .line 2924
    .line 2925
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 2926
    .line 2927
    const-class v1, Lapp/k9mail/feature/account/edit/ui/server/settings/modify/ModifyOutgoingServerSettingsViewModel;

    .line 2928
    .line 2929
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2930
    .line 2931
    .line 2932
    move-result-object v10

    .line 2933
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2934
    .line 2935
    .line 2936
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2937
    .line 2938
    invoke-direct {v1, v8}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2939
    .line 2940
    .line 2941
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2942
    .line 2943
    .line 2944
    new-instance v12, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 2945
    .line 2946
    const/16 v1, 0x1c

    .line 2947
    .line 2948
    invoke-direct {v12, v1}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2949
    .line 2950
    .line 2951
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 2952
    .line 2953
    const-class v1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveIncomingServerSettingsViewModel;

    .line 2954
    .line 2955
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2956
    .line 2957
    .line 2958
    move-result-object v10

    .line 2959
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2960
    .line 2961
    .line 2962
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2963
    .line 2964
    invoke-direct {v1, v8}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2965
    .line 2966
    .line 2967
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2968
    .line 2969
    .line 2970
    new-instance v12, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 2971
    .line 2972
    const/16 v1, 0x1d

    .line 2973
    .line 2974
    invoke-direct {v12, v1}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2975
    .line 2976
    .line 2977
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 2978
    .line 2979
    const-class v1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveOutgoingServerSettingsViewModel;

    .line 2980
    .line 2981
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2982
    .line 2983
    .line 2984
    move-result-object v10

    .line 2985
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2986
    .line 2987
    .line 2988
    invoke-static {v8, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 2989
    .line 2990
    .line 2991
    return-object v21

    .line 2992
    :pswitch_1b
    move-object/from16 v0, p1

    .line 2993
    .line 2994
    check-cast v0, Lorg/koin/core/module/Module;

    .line 2995
    .line 2996
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2997
    .line 2998
    .line 2999
    new-array v1, v7, [Lorg/koin/core/module/Module;

    .line 3000
    .line 3001
    sget-object v2, Lnet/thunderbird/core/common/CoreCommonModuleKt;->coreCommonModule:Lorg/koin/core/module/Module;

    .line 3002
    .line 3003
    aput-object v2, v1, v4

    .line 3004
    .line 3005
    iget-object v2, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 3006
    .line 3007
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 3008
    .line 3009
    .line 3010
    new-instance v12, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;

    .line 3011
    .line 3012
    invoke-direct {v12, v3}, Lapp/k9mail/dev/ReleaseConfigKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 3013
    .line 3014
    .line 3015
    new-instance v8, Lorg/koin/core/definition/BeanDefinition;

    .line 3016
    .line 3017
    const-class v1, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 3018
    .line 3019
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3020
    .line 3021
    .line 3022
    move-result-object v10

    .line 3023
    sget-object v9, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 3024
    .line 3025
    const/4 v11, 0x0

    .line 3026
    sget-object v13, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 3027
    .line 3028
    invoke-direct/range {v8 .. v13}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3029
    .line 3030
    .line 3031
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3032
    .line 3033
    invoke-direct {v1, v8}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3034
    .line 3035
    .line 3036
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3037
    .line 3038
    .line 3039
    new-instance v2, Lorg/koin/core/definition/KoinDefinition;

    .line 3040
    .line 3041
    invoke-direct {v2, v0, v1}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/SingleInstanceFactory;)V

    .line 3042
    .line 3043
    .line 3044
    const-class v0, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 3045
    .line 3046
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3047
    .line 3048
    .line 3049
    move-result-object v0

    .line 3050
    const-class v1, Lcom/fsck/k9/mail/oauth/AuthStateStorage;

    .line 3051
    .line 3052
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3053
    .line 3054
    .line 3055
    move-result-object v1

    .line 3056
    new-array v3, v6, [Lkotlin/reflect/KClass;

    .line 3057
    .line 3058
    aput-object v0, v3, v4

    .line 3059
    .line 3060
    aput-object v1, v3, v7

    .line 3061
    .line 3062
    invoke-static {v2, v3}, Lkotlin/io/ByteStreamsKt;->binds(Lorg/koin/core/definition/KoinDefinition;[Lkotlin/reflect/KClass;)V

    .line 3063
    .line 3064
    .line 3065
    return-object v21

    .line 3066
    :pswitch_1c
    move-object/from16 v0, p1

    .line 3067
    .line 3068
    check-cast v0, Lorg/koin/core/module/Module;

    .line 3069
    .line 3070
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3071
    .line 3072
    .line 3073
    new-array v1, v7, [Lorg/koin/core/module/Module;

    .line 3074
    .line 3075
    sget-object v2, Lapp/k9mail/core/android/common/CoreCommonAndroidModuleKt;->coreCommonAndroidModule:Lorg/koin/core/module/Module;

    .line 3076
    .line 3077
    aput-object v2, v1, v4

    .line 3078
    .line 3079
    iget-object v2, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 3080
    .line 3081
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 3082
    .line 3083
    .line 3084
    new-instance v8, Lorg/koin/core/qualifier/StringQualifier;

    .line 3085
    .line 3086
    const-string v1, "AppCoroutineScope"

    .line 3087
    .line 3088
    invoke-direct {v8, v1}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 3089
    .line 3090
    .line 3091
    new-instance v9, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3092
    .line 3093
    invoke-direct {v9, v4}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3094
    .line 3095
    .line 3096
    new-instance v5, Lorg/koin/core/definition/BeanDefinition;

    .line 3097
    .line 3098
    const-class v1, Lkotlinx/coroutines/CoroutineScope;

    .line 3099
    .line 3100
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3101
    .line 3102
    .line 3103
    move-result-object v7

    .line 3104
    sget-object v23, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 3105
    .line 3106
    sget-object v27, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 3107
    .line 3108
    move-object/from16 v6, v23

    .line 3109
    .line 3110
    move-object/from16 v10, v27

    .line 3111
    .line 3112
    invoke-direct/range {v5 .. v10}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3113
    .line 3114
    .line 3115
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3116
    .line 3117
    invoke-direct {v1, v5}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3118
    .line 3119
    .line 3120
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3121
    .line 3122
    .line 3123
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3124
    .line 3125
    const/16 v2, 0x1a

    .line 3126
    .line 3127
    invoke-direct {v1, v2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3128
    .line 3129
    .line 3130
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 3131
    .line 3132
    const-class v2, Lcom/fsck/k9/Preferences;

    .line 3133
    .line 3134
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3135
    .line 3136
    .line 3137
    move-result-object v24

    .line 3138
    const/16 v25, 0x0

    .line 3139
    .line 3140
    move-object/from16 v26, v1

    .line 3141
    .line 3142
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3143
    .line 3144
    .line 3145
    move-object/from16 v1, v22

    .line 3146
    .line 3147
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3148
    .line 3149
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3150
    .line 3151
    .line 3152
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3153
    .line 3154
    .line 3155
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3156
    .line 3157
    const/16 v2, 0x1b

    .line 3158
    .line 3159
    invoke-direct {v1, v2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3160
    .line 3161
    .line 3162
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 3163
    .line 3164
    const-class v2, Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 3165
    .line 3166
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3167
    .line 3168
    .line 3169
    move-result-object v24

    .line 3170
    move-object/from16 v26, v1

    .line 3171
    .line 3172
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3173
    .line 3174
    .line 3175
    move-object/from16 v1, v22

    .line 3176
    .line 3177
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3178
    .line 3179
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3180
    .line 3181
    .line 3182
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3183
    .line 3184
    .line 3185
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3186
    .line 3187
    const/16 v2, 0x1c

    .line 3188
    .line 3189
    invoke-direct {v1, v2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3190
    .line 3191
    .line 3192
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 3193
    .line 3194
    const-class v2, Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 3195
    .line 3196
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3197
    .line 3198
    .line 3199
    move-result-object v24

    .line 3200
    move-object/from16 v26, v1

    .line 3201
    .line 3202
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3203
    .line 3204
    .line 3205
    move-object/from16 v1, v22

    .line 3206
    .line 3207
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3208
    .line 3209
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3210
    .line 3211
    .line 3212
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3213
    .line 3214
    .line 3215
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3216
    .line 3217
    const/16 v2, 0x1d

    .line 3218
    .line 3219
    invoke-direct {v1, v2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3220
    .line 3221
    .line 3222
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 3223
    .line 3224
    const-class v2, Landroid/content/res/Resources;

    .line 3225
    .line 3226
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3227
    .line 3228
    .line 3229
    move-result-object v24

    .line 3230
    move-object/from16 v26, v1

    .line 3231
    .line 3232
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3233
    .line 3234
    .line 3235
    move-object/from16 v1, v22

    .line 3236
    .line 3237
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3238
    .line 3239
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3240
    .line 3241
    .line 3242
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3243
    .line 3244
    .line 3245
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;

    .line 3246
    .line 3247
    invoke-direct {v1, v4}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 3248
    .line 3249
    .line 3250
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 3251
    .line 3252
    const-class v2, Landroid/content/ContentResolver;

    .line 3253
    .line 3254
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3255
    .line 3256
    .line 3257
    move-result-object v24

    .line 3258
    move-object/from16 v26, v1

    .line 3259
    .line 3260
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3261
    .line 3262
    .line 3263
    move-object/from16 v1, v22

    .line 3264
    .line 3265
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3266
    .line 3267
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3268
    .line 3269
    .line 3270
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3271
    .line 3272
    .line 3273
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3274
    .line 3275
    invoke-direct {v1, v12}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3276
    .line 3277
    .line 3278
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 3279
    .line 3280
    const-class v2, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 3281
    .line 3282
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3283
    .line 3284
    .line 3285
    move-result-object v24

    .line 3286
    move-object/from16 v26, v1

    .line 3287
    .line 3288
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3289
    .line 3290
    .line 3291
    move-object/from16 v1, v22

    .line 3292
    .line 3293
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3294
    .line 3295
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3296
    .line 3297
    .line 3298
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3299
    .line 3300
    .line 3301
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3302
    .line 3303
    invoke-direct {v1, v11}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3304
    .line 3305
    .line 3306
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 3307
    .line 3308
    const-class v2, Lcom/fsck/k9/helper/Contacts;

    .line 3309
    .line 3310
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3311
    .line 3312
    .line 3313
    move-result-object v24

    .line 3314
    move-object/from16 v26, v1

    .line 3315
    .line 3316
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3317
    .line 3318
    .line 3319
    move-object/from16 v1, v22

    .line 3320
    .line 3321
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3322
    .line 3323
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3324
    .line 3325
    .line 3326
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3327
    .line 3328
    .line 3329
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3330
    .line 3331
    invoke-direct {v1, v3}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3332
    .line 3333
    .line 3334
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 3335
    .line 3336
    const-class v2, Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    .line 3337
    .line 3338
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3339
    .line 3340
    .line 3341
    move-result-object v24

    .line 3342
    move-object/from16 v26, v1

    .line 3343
    .line 3344
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3345
    .line 3346
    .line 3347
    move-object/from16 v1, v22

    .line 3348
    .line 3349
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3350
    .line 3351
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3352
    .line 3353
    .line 3354
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3355
    .line 3356
    .line 3357
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3358
    .line 3359
    invoke-direct {v1, v15}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3360
    .line 3361
    .line 3362
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 3363
    .line 3364
    const-class v2, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;

    .line 3365
    .line 3366
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3367
    .line 3368
    .line 3369
    move-result-object v24

    .line 3370
    move-object/from16 v26, v1

    .line 3371
    .line 3372
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3373
    .line 3374
    .line 3375
    move-object/from16 v1, v22

    .line 3376
    .line 3377
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3378
    .line 3379
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3380
    .line 3381
    .line 3382
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3383
    .line 3384
    .line 3385
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3386
    .line 3387
    invoke-direct {v1, v14}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3388
    .line 3389
    .line 3390
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 3391
    .line 3392
    const-class v2, Lcom/fsck/k9/LocalKeyStoreManager;

    .line 3393
    .line 3394
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3395
    .line 3396
    .line 3397
    move-result-object v24

    .line 3398
    move-object/from16 v26, v1

    .line 3399
    .line 3400
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3401
    .line 3402
    .line 3403
    move-object/from16 v1, v22

    .line 3404
    .line 3405
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3406
    .line 3407
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3408
    .line 3409
    .line 3410
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3411
    .line 3412
    .line 3413
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3414
    .line 3415
    const/16 v2, 0x18

    .line 3416
    .line 3417
    invoke-direct {v1, v2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3418
    .line 3419
    .line 3420
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 3421
    .line 3422
    const-class v2, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 3423
    .line 3424
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3425
    .line 3426
    .line 3427
    move-result-object v24

    .line 3428
    move-object/from16 v26, v1

    .line 3429
    .line 3430
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3431
    .line 3432
    .line 3433
    move-object/from16 v1, v22

    .line 3434
    .line 3435
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 3436
    .line 3437
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 3438
    .line 3439
    .line 3440
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 3441
    .line 3442
    .line 3443
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 3444
    .line 3445
    const/16 v2, 0x19

    .line 3446
    .line 3447
    invoke-direct {v1, v2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 3448
    .line 3449
    .line 3450
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 3451
    .line 3452
    const-class v2, Lcom/fsck/k9/EmailAddressValidator;

    .line 3453
    .line 3454
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3455
    .line 3456
    .line 3457
    move-result-object v24

    .line 3458
    sget-object v27, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 3459
    .line 3460
    move-object/from16 v26, v1

    .line 3461
    .line 3462
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 3463
    .line 3464
    .line 3465
    move-object/from16 v1, v22

    .line 3466
    .line 3467
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 3468
    .line 3469
    .line 3470
    return-object v21

    .line 3471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
