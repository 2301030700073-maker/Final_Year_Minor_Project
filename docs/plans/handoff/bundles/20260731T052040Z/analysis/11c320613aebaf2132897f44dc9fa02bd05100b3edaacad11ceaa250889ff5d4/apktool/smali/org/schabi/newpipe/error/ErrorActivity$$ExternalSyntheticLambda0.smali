.class public final synthetic Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/error/ErrorActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/error/ErrorActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/error/ErrorActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    iget-object v2, v0, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/error/ErrorActivity;

    .line 6
    .line 7
    sget-object v0, Lorg/schabi/newpipe/error/ErrorActivity;->Companion:Lorg/schabi/newpipe/error/ErrorActivity$Companion;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const-string v0, "GITHUB"

    .line 13
    .line 14
    invoke-virtual {v2, v2, v0}, Lorg/schabi/newpipe/error/ErrorActivity;->openPrivacyPolicyDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    const-string v0, "* __Timestamp:__ "

    .line 19
    .line 20
    const-string v1, "\n```\n"

    .line 21
    .line 22
    const-string v3, "* __OS:__ "

    .line 23
    .line 24
    const-string v4, "* __Service:__ "

    .line 25
    .line 26
    const-string v5, "* __Package:__ "

    .line 27
    .line 28
    const-string v6, "* __App Language:__ "

    .line 29
    .line 30
    const-string v7, "* __Content Language:__ "

    .line 31
    .line 32
    const-string v8, "* __Content Country:__ "

    .line 33
    .line 34
    const-string v9, "* __Request:__ "

    .line 35
    .line 36
    const-string v10, "* __User Action:__ "

    .line 37
    .line 38
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const/16 v12, 0x400

    .line 41
    .line 42
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iget-object v12, v2, Lorg/schabi/newpipe/error/ErrorActivity;->binding:Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    .line 46
    .line 47
    if-eqz v12, :cond_f

    .line 48
    .line 49
    iget-object v12, v12, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorCommentBox:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v12, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 52
    .line 53
    invoke-virtual {v12}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v12

    .line 61
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    const/16 v15, 0xa

    .line 66
    .line 67
    if-lez v14, :cond_0

    .line 68
    .line 69
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :cond_0
    :goto_0
    const-string v12, "## Exception"

    .line 80
    .line 81
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v12, v2, Lorg/schabi/newpipe/error/ErrorActivity;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    const-string v14, "errorInfo"

    .line 90
    .line 91
    if-eqz v12, :cond_e

    .line 92
    .line 93
    :try_start_1
    iget-object v12, v12, Lorg/schabi/newpipe/error/ErrorInfo;->userAction:Lorg/schabi/newpipe/error/UserAction;

    .line 94
    .line 95
    invoke-virtual {v12}, Lorg/schabi/newpipe/error/UserAction;->getMessage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v12

    .line 99
    const/16 p0, 0x0

    .line 100
    .line 101
    new-instance v13, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v10, v2, Lorg/schabi/newpipe/error/ErrorActivity;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 120
    .line 121
    if-eqz v10, :cond_d

    .line 122
    .line 123
    iget-object v10, v10, Lorg/schabi/newpipe/error/ErrorInfo;->request:Ljava/lang/String;

    .line 124
    .line 125
    new-instance v12, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-static {v2}, Lorg/schabi/newpipe/util/Localization;->getPreferredContentCountry(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-virtual {v9}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-static {v2}, Lorg/schabi/newpipe/util/Localization;->getPreferredLocale(Landroid/content/Context;)Ljava/util/Locale;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    new-instance v9, Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 169
    .line 170
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-direct {v9, v10, v8}, Lorg/schabi/newpipe/extractor/localization/Localization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLocalizationCode()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-static {}, Lorg/schabi/newpipe/util/Localization;->getAppLocale()Ljava/util/Locale;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget-object v6, v2, Lorg/schabi/newpipe/error/ErrorActivity;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 217
    .line 218
    if-eqz v6, :cond_c

    .line 219
    .line 220
    sget-object v7, Lorg/schabi/newpipe/error/ErrorInfo;->Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    .line 221
    .line 222
    iget-object v6, v6, Lorg/schabi/newpipe/error/ErrorInfo;->serviceId:Ljava/lang/Integer;

    .line 223
    .line 224
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-static {v6}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->getServiceName(Ljava/lang/Integer;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-object v6, v2, Lorg/schabi/newpipe/error/ErrorActivity;->currentTimeStamp:Ljava/lang/String;

    .line 242
    .line 243
    if-eqz v6, :cond_b

    .line 244
    .line 245
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    iget-object v0, v2, Lorg/schabi/newpipe/error/ErrorActivity;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 278
    .line 279
    if-eqz v0, :cond_a

    .line 280
    .line 281
    iget-object v0, v0, Lorg/schabi/newpipe/error/ErrorInfo;->serviceId:Ljava/lang/Integer;

    .line 282
    .line 283
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    invoke-static {v0}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->getServiceName(Ljava/lang/Integer;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v0, "* __Version:__ 0.29.0"

    .line 301
    .line 302
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-static {}, Lorg/schabi/newpipe/error/ErrorActivity;->getOsString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    iget-object v0, v2, Lorg/schabi/newpipe/error/ErrorActivity;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 323
    .line 324
    if-eqz v0, :cond_9

    .line 325
    .line 326
    iget-object v0, v0, Lorg/schabi/newpipe/error/ErrorInfo;->stackTraces:[Ljava/lang/String;

    .line 327
    .line 328
    array-length v0, v0

    .line 329
    const/4 v3, 0x1

    .line 330
    if-le v0, v3, :cond_2

    .line 331
    .line 332
    const-string v0, "<details><summary><b>Exceptions ("

    .line 333
    .line 334
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    iget-object v0, v2, Lorg/schabi/newpipe/error/ErrorActivity;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 338
    .line 339
    if-eqz v0, :cond_1

    .line 340
    .line 341
    iget-object v0, v0, Lorg/schabi/newpipe/error/ErrorInfo;->stackTraces:[Ljava/lang/String;

    .line 342
    .line 343
    array-length v0, v0

    .line 344
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const-string v0, ")</b></summary><p>\n"

    .line 348
    .line 349
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    goto :goto_1

    .line 353
    :cond_1
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    throw p0

    .line 357
    :cond_2
    :goto_1
    iget-object v0, v2, Lorg/schabi/newpipe/error/ErrorActivity;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 358
    .line 359
    if-eqz v0, :cond_8

    .line 360
    .line 361
    iget-object v0, v0, Lorg/schabi/newpipe/error/ErrorInfo;->stackTraces:[Ljava/lang/String;

    .line 362
    .line 363
    array-length v4, v0

    .line 364
    const/4 v5, 0x0

    .line 365
    move v6, v5

    .line 366
    :goto_2
    if-ge v5, v4, :cond_5

    .line 367
    .line 368
    aget-object v7, v0, v5

    .line 369
    .line 370
    add-int/2addr v6, v3

    .line 371
    const-string v8, "<details><summary><b>Crash log "

    .line 372
    .line 373
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    iget-object v8, v2, Lorg/schabi/newpipe/error/ErrorActivity;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 377
    .line 378
    if-eqz v8, :cond_4

    .line 379
    .line 380
    iget-object v8, v8, Lorg/schabi/newpipe/error/ErrorInfo;->stackTraces:[Ljava/lang/String;

    .line 381
    .line 382
    array-length v8, v8

    .line 383
    if-le v8, v3, :cond_3

    .line 384
    .line 385
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    :cond_3
    const-string v8, "</b>"

    .line 389
    .line 390
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    const-string v8, "</summary><p>\n"

    .line 394
    .line 395
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    new-instance v8, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v7

    .line 416
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    const-string v7, "</details>\n"

    .line 420
    .line 421
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    add-int/lit8 v5, v5, 0x1

    .line 425
    .line 426
    goto :goto_2

    .line 427
    :cond_4
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    throw p0

    .line 431
    :cond_5
    iget-object v0, v2, Lorg/schabi/newpipe/error/ErrorActivity;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 432
    .line 433
    if-eqz v0, :cond_7

    .line 434
    .line 435
    iget-object v0, v0, Lorg/schabi/newpipe/error/ErrorInfo;->stackTraces:[Ljava/lang/String;

    .line 436
    .line 437
    array-length v0, v0

    .line 438
    if-le v0, v3, :cond_6

    .line 439
    .line 440
    const-string v0, "</p></details>\n"

    .line 441
    .line 442
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    :cond_6
    const-string v0, "<hr>\n"

    .line 446
    .line 447
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    goto :goto_4

    .line 455
    :cond_7
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    throw p0

    .line 459
    :cond_8
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    throw p0

    .line 463
    :cond_9
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    throw p0

    .line 467
    :cond_a
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    throw p0

    .line 471
    :cond_b
    const-string v0, "currentTimeStamp"

    .line 472
    .line 473
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    throw p0

    .line 477
    :cond_c
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    throw p0

    .line 481
    :cond_d
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    throw p0

    .line 485
    :cond_e
    const/16 p0, 0x0

    .line 486
    .line 487
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    throw p0

    .line 491
    :cond_f
    const/16 p0, 0x0

    .line 492
    .line 493
    const-string v0, "binding"

    .line 494
    .line 495
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 499
    :goto_3
    sget-object v1, Lorg/schabi/newpipe/error/ErrorActivity;->TAG:Ljava/lang/String;

    .line 500
    .line 501
    const-string v3, "Error while erroring: Could not build markdown"

    .line 502
    .line 503
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    .line 505
    .line 506
    const-string v0, ""

    .line 507
    .line 508
    :goto_4
    invoke-static {v2, v0}, Landroidx/transition/Transition$Impl26;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    return-void

    .line 512
    :pswitch_1
    const-string v0, "EMAIL"

    .line 513
    .line 514
    invoke-virtual {v2, v2, v0}, Lorg/schabi/newpipe/error/ErrorActivity;->openPrivacyPolicyDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    return-void

    .line 518
    nop

    .line 519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
