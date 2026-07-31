.class public final synthetic Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;

.field public final synthetic f$1:Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;->f$1:Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const-string v4, ""

    .line 8
    .line 9
    iget-object v5, v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;->f$1:Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object/from16 v6, p1

    .line 17
    .line 18
    check-cast v6, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;

    .line 19
    .line 20
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v7, v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 24
    .line 25
    check-cast v5, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SignatureChange;

    .line 26
    .line 27
    iget-object v1, v5, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SignatureChange;->signature:Ljava/lang/String;

    .line 28
    .line 29
    const/16 v45, -0x1

    .line 30
    .line 31
    const v46, 0x6fffff

    .line 32
    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v9, 0x0

    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v11, 0x0

    .line 38
    const/4 v12, 0x0

    .line 39
    const/4 v13, 0x0

    .line 40
    const/4 v14, 0x0

    .line 41
    const/4 v15, 0x0

    .line 42
    const/16 v16, 0x0

    .line 43
    .line 44
    const/16 v17, 0x0

    .line 45
    .line 46
    const/16 v18, 0x0

    .line 47
    .line 48
    const/16 v19, 0x0

    .line 49
    .line 50
    const/16 v20, 0x0

    .line 51
    .line 52
    const/16 v21, 0x0

    .line 53
    .line 54
    const/16 v22, 0x0

    .line 55
    .line 56
    const/16 v23, 0x0

    .line 57
    .line 58
    const/16 v24, 0x0

    .line 59
    .line 60
    const/16 v25, 0x0

    .line 61
    .line 62
    const/16 v26, 0x0

    .line 63
    .line 64
    const/16 v27, 0x0

    .line 65
    .line 66
    const/16 v28, 0x0

    .line 67
    .line 68
    const/16 v29, 0x0

    .line 69
    .line 70
    const/16 v30, 0x0

    .line 71
    .line 72
    const/16 v31, 0x0

    .line 73
    .line 74
    const/16 v32, 0x0

    .line 75
    .line 76
    const/16 v33, 0x0

    .line 77
    .line 78
    const/16 v34, 0x0

    .line 79
    .line 80
    const/16 v35, 0x0

    .line 81
    .line 82
    const/16 v36, 0x0

    .line 83
    .line 84
    const/16 v37, 0x0

    .line 85
    .line 86
    const/16 v38, 0x0

    .line 87
    .line 88
    const/16 v39, 0x0

    .line 89
    .line 90
    const/16 v40, 0x0

    .line 91
    .line 92
    const/16 v41, 0x0

    .line 93
    .line 94
    const/16 v42, 0x0

    .line 95
    .line 96
    const/16 v44, -0x1

    .line 97
    .line 98
    move-object/from16 v43, v1

    .line 99
    .line 100
    invoke-static/range {v7 .. v46}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iput-object v1, v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 105
    .line 106
    iget-object v0, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->signature:Ljava/lang/String;

    .line 107
    .line 108
    if-nez v0, :cond_0

    .line 109
    .line 110
    move-object v11, v4

    .line 111
    goto :goto_0

    .line 112
    :cond_0
    move-object v11, v0

    .line 113
    :goto_0
    const/4 v12, 0x0

    .line 114
    const/16 v13, 0x6f

    .line 115
    .line 116
    const/4 v7, 0x0

    .line 117
    const/4 v8, 0x0

    .line 118
    const/4 v9, 0x0

    .line 119
    const/4 v10, 0x0

    .line 120
    invoke-static/range {v6 .. v13}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->copy$default(Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/Pair;I)Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0

    .line 125
    :pswitch_0
    move-object/from16 v1, p1

    .line 126
    .line 127
    check-cast v1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    iget-object v6, v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 133
    .line 134
    check-cast v5, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SignatureLocationChange;

    .line 135
    .line 136
    iget-object v4, v5, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SignatureLocationChange;->signatureLocation:Lkotlin/Pair;

    .line 137
    .line 138
    iget-object v4, v4, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v4, Ljava/lang/Number;

    .line 141
    .line 142
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-ne v4, v3, :cond_1

    .line 147
    .line 148
    move/from16 v29, v3

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_1
    move/from16 v29, v2

    .line 152
    .line 153
    :goto_1
    const/16 v44, -0x1001

    .line 154
    .line 155
    const v45, 0x7fffff

    .line 156
    .line 157
    .line 158
    const/4 v7, 0x0

    .line 159
    const/4 v8, 0x0

    .line 160
    const/4 v9, 0x0

    .line 161
    const/4 v10, 0x0

    .line 162
    const/4 v11, 0x0

    .line 163
    const/4 v12, 0x0

    .line 164
    const/4 v13, 0x0

    .line 165
    const/4 v14, 0x0

    .line 166
    const/4 v15, 0x0

    .line 167
    const/16 v16, 0x0

    .line 168
    .line 169
    const/16 v17, 0x0

    .line 170
    .line 171
    const/16 v18, 0x0

    .line 172
    .line 173
    const/16 v19, 0x0

    .line 174
    .line 175
    const/16 v20, 0x0

    .line 176
    .line 177
    const/16 v21, 0x0

    .line 178
    .line 179
    const/16 v22, 0x0

    .line 180
    .line 181
    const/16 v23, 0x0

    .line 182
    .line 183
    const/16 v24, 0x0

    .line 184
    .line 185
    const/16 v25, 0x0

    .line 186
    .line 187
    const/16 v26, 0x0

    .line 188
    .line 189
    const/16 v27, 0x0

    .line 190
    .line 191
    const/16 v28, 0x0

    .line 192
    .line 193
    const/16 v30, 0x0

    .line 194
    .line 195
    const/16 v31, 0x0

    .line 196
    .line 197
    const/16 v32, 0x0

    .line 198
    .line 199
    const/16 v33, 0x0

    .line 200
    .line 201
    const/16 v34, 0x0

    .line 202
    .line 203
    const/16 v35, 0x0

    .line 204
    .line 205
    const/16 v36, 0x0

    .line 206
    .line 207
    const/16 v37, 0x0

    .line 208
    .line 209
    const/16 v38, 0x0

    .line 210
    .line 211
    const/16 v39, 0x0

    .line 212
    .line 213
    const/16 v40, 0x0

    .line 214
    .line 215
    const/16 v41, 0x0

    .line 216
    .line 217
    const/16 v42, 0x0

    .line 218
    .line 219
    const/16 v43, -0x1

    .line 220
    .line 221
    invoke-static/range {v6 .. v45}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    iput-object v2, v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 226
    .line 227
    iget-object v7, v5, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SignatureLocationChange;->signatureLocation:Lkotlin/Pair;

    .line 228
    .line 229
    const/16 v8, 0x3f

    .line 230
    .line 231
    const/4 v2, 0x0

    .line 232
    const/4 v3, 0x0

    .line 233
    const/4 v4, 0x0

    .line 234
    const/4 v5, 0x0

    .line 235
    const/4 v6, 0x0

    .line 236
    invoke-static/range {v1 .. v8}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->copy$default(Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/Pair;I)Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    return-object v0

    .line 241
    :pswitch_1
    move-object/from16 v1, p1

    .line 242
    .line 243
    check-cast v1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    iget-object v6, v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 249
    .line 250
    check-cast v5, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$UseSignatureChange;

    .line 251
    .line 252
    iget-boolean v2, v5, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$UseSignatureChange;->useSignature:Z

    .line 253
    .line 254
    const/16 v44, -0x1

    .line 255
    .line 256
    const v45, 0x77ffff

    .line 257
    .line 258
    .line 259
    const/4 v7, 0x0

    .line 260
    const/4 v8, 0x0

    .line 261
    const/4 v9, 0x0

    .line 262
    const/4 v10, 0x0

    .line 263
    const/4 v11, 0x0

    .line 264
    const/4 v12, 0x0

    .line 265
    const/4 v13, 0x0

    .line 266
    const/4 v14, 0x0

    .line 267
    const/4 v15, 0x0

    .line 268
    const/16 v16, 0x0

    .line 269
    .line 270
    const/16 v17, 0x0

    .line 271
    .line 272
    const/16 v18, 0x0

    .line 273
    .line 274
    const/16 v19, 0x0

    .line 275
    .line 276
    const/16 v20, 0x0

    .line 277
    .line 278
    const/16 v21, 0x0

    .line 279
    .line 280
    const/16 v22, 0x0

    .line 281
    .line 282
    const/16 v23, 0x0

    .line 283
    .line 284
    const/16 v24, 0x0

    .line 285
    .line 286
    const/16 v25, 0x0

    .line 287
    .line 288
    const/16 v26, 0x0

    .line 289
    .line 290
    const/16 v27, 0x0

    .line 291
    .line 292
    const/16 v28, 0x0

    .line 293
    .line 294
    const/16 v29, 0x0

    .line 295
    .line 296
    const/16 v30, 0x0

    .line 297
    .line 298
    const/16 v31, 0x0

    .line 299
    .line 300
    const/16 v32, 0x0

    .line 301
    .line 302
    const/16 v33, 0x0

    .line 303
    .line 304
    const/16 v34, 0x0

    .line 305
    .line 306
    const/16 v35, 0x0

    .line 307
    .line 308
    const/16 v36, 0x0

    .line 309
    .line 310
    const/16 v37, 0x0

    .line 311
    .line 312
    const/16 v38, 0x0

    .line 313
    .line 314
    const/16 v39, 0x0

    .line 315
    .line 316
    const/16 v40, 0x0

    .line 317
    .line 318
    const/16 v42, 0x0

    .line 319
    .line 320
    const/16 v43, -0x1

    .line 321
    .line 322
    move/from16 v41, v2

    .line 323
    .line 324
    invoke-static/range {v6 .. v45}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    iput-object v2, v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 329
    .line 330
    iget-boolean v5, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->signatureUse:Z

    .line 331
    .line 332
    const/16 v8, 0x77

    .line 333
    .line 334
    const/4 v2, 0x0

    .line 335
    const/4 v3, 0x0

    .line 336
    const/4 v4, 0x0

    .line 337
    const/4 v6, 0x0

    .line 338
    invoke-static/range {v1 .. v8}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->copy$default(Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/Pair;I)Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    return-object v0

    .line 343
    :pswitch_2
    move-object/from16 v1, p1

    .line 344
    .line 345
    check-cast v1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;

    .line 346
    .line 347
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    iget-object v6, v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 351
    .line 352
    check-cast v5, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$BccEmailChange;

    .line 353
    .line 354
    iget-object v2, v5, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$BccEmailChange;->bccEmail:Ljava/lang/String;

    .line 355
    .line 356
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    if-nez v3, :cond_2

    .line 361
    .line 362
    :goto_2
    move-object v11, v2

    .line 363
    goto :goto_3

    .line 364
    :cond_2
    const/4 v2, 0x0

    .line 365
    goto :goto_2

    .line 366
    :goto_3
    const/16 v44, -0x1

    .line 367
    .line 368
    const v45, 0x7fffff

    .line 369
    .line 370
    .line 371
    const/4 v7, 0x0

    .line 372
    const/4 v8, 0x0

    .line 373
    const/4 v9, 0x0

    .line 374
    const/4 v10, 0x0

    .line 375
    const/4 v12, 0x0

    .line 376
    const/4 v13, 0x0

    .line 377
    const/4 v14, 0x0

    .line 378
    const/4 v15, 0x0

    .line 379
    const/16 v16, 0x0

    .line 380
    .line 381
    const/16 v17, 0x0

    .line 382
    .line 383
    const/16 v18, 0x0

    .line 384
    .line 385
    const/16 v19, 0x0

    .line 386
    .line 387
    const/16 v20, 0x0

    .line 388
    .line 389
    const/16 v21, 0x0

    .line 390
    .line 391
    const/16 v22, 0x0

    .line 392
    .line 393
    const/16 v23, 0x0

    .line 394
    .line 395
    const/16 v24, 0x0

    .line 396
    .line 397
    const/16 v25, 0x0

    .line 398
    .line 399
    const/16 v26, 0x0

    .line 400
    .line 401
    const/16 v27, 0x0

    .line 402
    .line 403
    const/16 v28, 0x0

    .line 404
    .line 405
    const/16 v29, 0x0

    .line 406
    .line 407
    const/16 v30, 0x0

    .line 408
    .line 409
    const/16 v31, 0x0

    .line 410
    .line 411
    const/16 v32, 0x0

    .line 412
    .line 413
    const/16 v33, 0x0

    .line 414
    .line 415
    const/16 v34, 0x0

    .line 416
    .line 417
    const/16 v35, 0x0

    .line 418
    .line 419
    const/16 v36, 0x0

    .line 420
    .line 421
    const/16 v37, 0x0

    .line 422
    .line 423
    const/16 v38, 0x0

    .line 424
    .line 425
    const/16 v39, 0x0

    .line 426
    .line 427
    const/16 v40, 0x0

    .line 428
    .line 429
    const/16 v41, 0x0

    .line 430
    .line 431
    const/16 v42, 0x0

    .line 432
    .line 433
    const/16 v43, -0x201

    .line 434
    .line 435
    invoke-static/range {v6 .. v45}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    iput-object v2, v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 440
    .line 441
    iget-object v0, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->alwaysBcc:Ljava/lang/String;

    .line 442
    .line 443
    if-nez v0, :cond_3

    .line 444
    .line 445
    goto :goto_4

    .line 446
    :cond_3
    move-object v4, v0

    .line 447
    :goto_4
    const/4 v7, 0x0

    .line 448
    const/16 v8, 0x7b

    .line 449
    .line 450
    const/4 v2, 0x0

    .line 451
    const/4 v3, 0x0

    .line 452
    const/4 v5, 0x0

    .line 453
    const/4 v6, 0x0

    .line 454
    invoke-static/range {v1 .. v8}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->copy$default(Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/Pair;I)Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    return-object v0

    .line 459
    :pswitch_3
    move-object/from16 v1, p1

    .line 460
    .line 461
    check-cast v1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;

    .line 462
    .line 463
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    .line 465
    .line 466
    iget-object v6, v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 467
    .line 468
    check-cast v5, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SenderEmailChange;

    .line 469
    .line 470
    iget-object v7, v5, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SenderEmailChange;->email:Ljava/lang/String;

    .line 471
    .line 472
    const/16 v44, -0x1

    .line 473
    .line 474
    const v45, 0x7fffff

    .line 475
    .line 476
    .line 477
    const/4 v8, 0x0

    .line 478
    const/4 v9, 0x0

    .line 479
    const/4 v10, 0x0

    .line 480
    const/4 v11, 0x0

    .line 481
    const/4 v12, 0x0

    .line 482
    const/4 v13, 0x0

    .line 483
    const/4 v14, 0x0

    .line 484
    const/4 v15, 0x0

    .line 485
    const/16 v16, 0x0

    .line 486
    .line 487
    const/16 v17, 0x0

    .line 488
    .line 489
    const/16 v18, 0x0

    .line 490
    .line 491
    const/16 v19, 0x0

    .line 492
    .line 493
    const/16 v20, 0x0

    .line 494
    .line 495
    const/16 v21, 0x0

    .line 496
    .line 497
    const/16 v22, 0x0

    .line 498
    .line 499
    const/16 v23, 0x0

    .line 500
    .line 501
    const/16 v24, 0x0

    .line 502
    .line 503
    const/16 v25, 0x0

    .line 504
    .line 505
    const/16 v26, 0x0

    .line 506
    .line 507
    const/16 v27, 0x0

    .line 508
    .line 509
    const/16 v28, 0x0

    .line 510
    .line 511
    const/16 v29, 0x0

    .line 512
    .line 513
    const/16 v30, 0x0

    .line 514
    .line 515
    const/16 v31, 0x0

    .line 516
    .line 517
    const/16 v32, 0x0

    .line 518
    .line 519
    const/16 v33, 0x0

    .line 520
    .line 521
    const/16 v34, 0x0

    .line 522
    .line 523
    const/16 v35, 0x0

    .line 524
    .line 525
    const/16 v36, 0x0

    .line 526
    .line 527
    const/16 v37, 0x0

    .line 528
    .line 529
    const/16 v38, 0x0

    .line 530
    .line 531
    const/16 v39, 0x0

    .line 532
    .line 533
    const/16 v40, 0x0

    .line 534
    .line 535
    const/16 v41, 0x0

    .line 536
    .line 537
    const/16 v42, 0x0

    .line 538
    .line 539
    const/16 v43, -0x9

    .line 540
    .line 541
    invoke-static/range {v6 .. v45}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    iput-object v4, v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 546
    .line 547
    iget-object v4, v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->emailAddressValidator:Lcom/fsck/k9/EmailAddressValidator;

    .line 548
    .line 549
    iget-object v5, v5, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SenderEmailChange;->email:Ljava/lang/String;

    .line 550
    .line 551
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 552
    .line 553
    .line 554
    invoke-static {v5}, Lcom/fsck/k9/EmailAddressValidator;->isValidAddressOnly(Ljava/lang/CharSequence;)Z

    .line 555
    .line 556
    .line 557
    move-result v4

    .line 558
    if-eqz v4, :cond_4

    .line 559
    .line 560
    new-instance v2, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$ToggleSaveButtonEnabled;

    .line 561
    .line 562
    invoke-direct {v2, v3}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$ToggleSaveButtonEnabled;-><init>(Z)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v0, v2}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    goto :goto_5

    .line 569
    :cond_4
    new-instance v3, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$ToggleSaveButtonEnabled;

    .line 570
    .line 571
    invoke-direct {v3, v2}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$ToggleSaveButtonEnabled;-><init>(Z)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v0, v3}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 575
    .line 576
    .line 577
    :goto_5
    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 578
    .line 579
    iget-object v3, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->email:Ljava/lang/String;

    .line 580
    .line 581
    const/4 v7, 0x0

    .line 582
    const/16 v8, 0x7d

    .line 583
    .line 584
    const/4 v2, 0x0

    .line 585
    const/4 v4, 0x0

    .line 586
    const/4 v5, 0x0

    .line 587
    const/4 v6, 0x0

    .line 588
    invoke-static/range {v1 .. v8}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->copy$default(Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/Pair;I)Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    return-object v0

    .line 593
    :pswitch_4
    move-object/from16 v1, p1

    .line 594
    .line 595
    check-cast v1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;

    .line 596
    .line 597
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 598
    .line 599
    .line 600
    iget-object v6, v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 601
    .line 602
    check-cast v5, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SenderNameChange;

    .line 603
    .line 604
    iget-object v2, v5, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SenderNameChange;->name:Ljava/lang/String;

    .line 605
    .line 606
    const/16 v44, -0x1

    .line 607
    .line 608
    const v45, 0x7bffff

    .line 609
    .line 610
    .line 611
    const/4 v7, 0x0

    .line 612
    const/4 v8, 0x0

    .line 613
    const/4 v9, 0x0

    .line 614
    const/4 v10, 0x0

    .line 615
    const/4 v11, 0x0

    .line 616
    const/4 v12, 0x0

    .line 617
    const/4 v13, 0x0

    .line 618
    const/4 v14, 0x0

    .line 619
    const/4 v15, 0x0

    .line 620
    const/16 v16, 0x0

    .line 621
    .line 622
    const/16 v17, 0x0

    .line 623
    .line 624
    const/16 v18, 0x0

    .line 625
    .line 626
    const/16 v19, 0x0

    .line 627
    .line 628
    const/16 v20, 0x0

    .line 629
    .line 630
    const/16 v21, 0x0

    .line 631
    .line 632
    const/16 v22, 0x0

    .line 633
    .line 634
    const/16 v23, 0x0

    .line 635
    .line 636
    const/16 v24, 0x0

    .line 637
    .line 638
    const/16 v25, 0x0

    .line 639
    .line 640
    const/16 v26, 0x0

    .line 641
    .line 642
    const/16 v27, 0x0

    .line 643
    .line 644
    const/16 v28, 0x0

    .line 645
    .line 646
    const/16 v29, 0x0

    .line 647
    .line 648
    const/16 v30, 0x0

    .line 649
    .line 650
    const/16 v31, 0x0

    .line 651
    .line 652
    const/16 v32, 0x0

    .line 653
    .line 654
    const/16 v33, 0x0

    .line 655
    .line 656
    const/16 v34, 0x0

    .line 657
    .line 658
    const/16 v35, 0x0

    .line 659
    .line 660
    const/16 v36, 0x0

    .line 661
    .line 662
    const/16 v37, 0x0

    .line 663
    .line 664
    const/16 v38, 0x0

    .line 665
    .line 666
    const/16 v39, 0x0

    .line 667
    .line 668
    const/16 v41, 0x0

    .line 669
    .line 670
    const/16 v42, 0x0

    .line 671
    .line 672
    const/16 v43, -0x1

    .line 673
    .line 674
    move-object/from16 v40, v2

    .line 675
    .line 676
    invoke-static/range {v6 .. v45}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    iput-object v2, v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 681
    .line 682
    iget-object v0, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->senderName:Ljava/lang/String;

    .line 683
    .line 684
    if-nez v0, :cond_5

    .line 685
    .line 686
    move-object v2, v4

    .line 687
    goto :goto_6

    .line 688
    :cond_5
    move-object v2, v0

    .line 689
    :goto_6
    const/4 v7, 0x0

    .line 690
    const/16 v8, 0x7e

    .line 691
    .line 692
    const/4 v3, 0x0

    .line 693
    const/4 v4, 0x0

    .line 694
    const/4 v5, 0x0

    .line 695
    const/4 v6, 0x0

    .line 696
    invoke-static/range {v1 .. v8}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->copy$default(Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/Pair;I)Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    return-object v0

    .line 701
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
