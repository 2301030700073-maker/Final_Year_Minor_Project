.class public final Landroidx/fragment/app/FragmentManager$SaveBackStackState;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OpGenerator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mName:Ljava/lang/String;

.field public final synthetic this$0:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/fragment/app/FragmentManager$SaveBackStackState;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$SaveBackStackState;->this$0:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/fragment/app/FragmentManager$SaveBackStackState;->mName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 18

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
    iget v3, v0, Landroidx/fragment/app/FragmentManager$SaveBackStackState;->$r8$classId:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    iget-object v6, v0, Landroidx/fragment/app/FragmentManager$SaveBackStackState;->mName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager$SaveBackStackState;->this$0:Landroidx/fragment/app/FragmentManager;

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    packed-switch v3, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget-object v3, v0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroidx/fragment/app/BackStackState;

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    goto/16 :goto_6

    .line 30
    .line 31
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    if-eqz v9, :cond_3

    .line 45
    .line 46
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    check-cast v9, Landroidx/fragment/app/BackStackRecord;

    .line 51
    .line 52
    iget-boolean v10, v9, Landroidx/fragment/app/BackStackRecord;->mBeingSaved:Z

    .line 53
    .line 54
    if-eqz v10, :cond_1

    .line 55
    .line 56
    iget-object v9, v9, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    if-eqz v10, :cond_1

    .line 67
    .line 68
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    check-cast v10, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 73
    .line 74
    iget-object v10, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 75
    .line 76
    if-eqz v10, :cond_2

    .line 77
    .line 78
    iget-object v11, v10, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    new-instance v8, Ljava/util/HashMap;

    .line 85
    .line 86
    iget-object v9, v3, Landroidx/fragment/app/BackStackState;->mFragments:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    invoke-direct {v8, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-eqz v10, :cond_8

    .line 104
    .line 105
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    check-cast v10, Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    check-cast v11, Landroidx/fragment/app/Fragment;

    .line 116
    .line 117
    if-eqz v11, :cond_5

    .line 118
    .line 119
    iget-object v10, v11, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    iget-object v11, v0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Lokhttp3/Dispatcher;

    .line 126
    .line 127
    invoke-virtual {v11, v10, v4}, Lokhttp3/Dispatcher;->setSavedState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    if-eqz v10, :cond_4

    .line 132
    .line 133
    iget-object v11, v0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 134
    .line 135
    iget-object v11, v11, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 136
    .line 137
    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    const-string v12, "state"

    .line 142
    .line 143
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 144
    .line 145
    .line 146
    move-result-object v12

    .line 147
    check-cast v12, Landroidx/fragment/app/FragmentState;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentManager$3;

    .line 150
    .line 151
    .line 152
    move-result-object v13

    .line 153
    invoke-virtual {v12, v13}, Landroidx/fragment/app/FragmentState;->instantiate(Landroidx/fragment/app/FragmentManager$3;)Landroidx/fragment/app/Fragment;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    iput-object v10, v12, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 158
    .line 159
    const-string v13, "savedInstanceState"

    .line 160
    .line 161
    invoke-virtual {v10, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 162
    .line 163
    .line 164
    move-result-object v14

    .line 165
    if-nez v14, :cond_6

    .line 166
    .line 167
    iget-object v14, v12, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 168
    .line 169
    new-instance v15, Landroid/os/Bundle;

    .line 170
    .line 171
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v14, v13, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 175
    .line 176
    .line 177
    :cond_6
    const-string v13, "arguments"

    .line 178
    .line 179
    invoke-virtual {v10, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    if-eqz v10, :cond_7

    .line 184
    .line 185
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 186
    .line 187
    .line 188
    :cond_7
    invoke-virtual {v12, v10}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 189
    .line 190
    .line 191
    iget-object v10, v12, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v8, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .line 201
    .line 202
    iget-object v3, v3, Landroidx/fragment/app/BackStackState;->mTransactions:Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    if-eqz v6, :cond_c

    .line 213
    .line 214
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    check-cast v6, Landroidx/fragment/app/BackStackRecordState;

    .line 219
    .line 220
    iget-object v9, v6, Landroidx/fragment/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    .line 221
    .line 222
    new-instance v10, Landroidx/fragment/app/BackStackRecord;

    .line 223
    .line 224
    invoke-direct {v10, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6, v10}, Landroidx/fragment/app/BackStackRecordState;->fillInBackStackRecord(Landroidx/fragment/app/BackStackRecord;)V

    .line 228
    .line 229
    .line 230
    move v11, v7

    .line 231
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 232
    .line 233
    .line 234
    move-result v12

    .line 235
    if-ge v11, v12, :cond_b

    .line 236
    .line 237
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v12

    .line 241
    check-cast v12, Ljava/lang/String;

    .line 242
    .line 243
    if-eqz v12, :cond_a

    .line 244
    .line 245
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v13

    .line 249
    check-cast v13, Landroidx/fragment/app/Fragment;

    .line 250
    .line 251
    if-eqz v13, :cond_9

    .line 252
    .line 253
    iget-object v12, v10, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v12

    .line 259
    check-cast v12, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 260
    .line 261
    iput-object v13, v12, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_9
    iget-object v0, v6, Landroidx/fragment/app/BackStackRecordState;->mName:Ljava/lang/String;

    .line 265
    .line 266
    const-string v1, " failed due to missing saved state for Fragment ("

    .line 267
    .line 268
    const-string v2, ")"

    .line 269
    .line 270
    const-string v3, "Restoring FragmentTransaction "

    .line 271
    .line 272
    invoke-static {v3, v0, v1, v12, v2}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_a
    :goto_4
    add-int/lit8 v11, v11, 0x1

    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_b
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    if-eqz v3, :cond_d

    .line 292
    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    .line 298
    .line 299
    invoke-virtual {v3, v1, v2}, Landroidx/fragment/app/BackStackRecord;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 300
    .line 301
    .line 302
    move v7, v5

    .line 303
    goto :goto_5

    .line 304
    :cond_d
    :goto_6
    return v7

    .line 305
    :pswitch_0
    const/4 v3, -0x1

    .line 306
    invoke-virtual {v0, v3, v6, v5}, Landroidx/fragment/app/FragmentManager;->findBackStackIndex(ILjava/lang/String;Z)I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    if-gez v3, :cond_e

    .line 311
    .line 312
    move v5, v7

    .line 313
    goto/16 :goto_11

    .line 314
    .line 315
    :cond_e
    move v7, v3

    .line 316
    :goto_7
    iget-object v8, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 319
    .line 320
    .line 321
    move-result v8

    .line 322
    const-string v9, "saveBackStack(\""

    .line 323
    .line 324
    if-ge v7, v8, :cond_10

    .line 325
    .line 326
    iget-object v8, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    check-cast v8, Landroidx/fragment/app/BackStackRecord;

    .line 333
    .line 334
    iget-boolean v10, v8, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 335
    .line 336
    if-eqz v10, :cond_f

    .line 337
    .line 338
    add-int/lit8 v7, v7, 0x1

    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 342
    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v3, "\") included FragmentTransactions must use setReorderingAllowed(true) to ensure that the back stack can be restored as an atomic operation. Found "

    .line 352
    .line 353
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v3, " that did not use setReorderingAllowed(true)."

    .line 360
    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 372
    .line 373
    .line 374
    throw v4

    .line 375
    :cond_10
    new-instance v7, Ljava/util/HashSet;

    .line 376
    .line 377
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 378
    .line 379
    .line 380
    move v8, v3

    .line 381
    :goto_8
    iget-object v10, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 382
    .line 383
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 384
    .line 385
    .line 386
    move-result v10

    .line 387
    if-ge v8, v10, :cond_1a

    .line 388
    .line 389
    iget-object v10, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 390
    .line 391
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v10

    .line 395
    check-cast v10, Landroidx/fragment/app/BackStackRecord;

    .line 396
    .line 397
    new-instance v11, Ljava/util/HashSet;

    .line 398
    .line 399
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 400
    .line 401
    .line 402
    new-instance v12, Ljava/util/HashSet;

    .line 403
    .line 404
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 405
    .line 406
    .line 407
    iget-object v13, v10, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 408
    .line 409
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 410
    .line 411
    .line 412
    move-result-object v13

    .line 413
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 414
    .line 415
    .line 416
    move-result v14

    .line 417
    if-eqz v14, :cond_17

    .line 418
    .line 419
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v14

    .line 423
    check-cast v14, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 424
    .line 425
    iget-object v15, v14, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 426
    .line 427
    if-nez v15, :cond_11

    .line 428
    .line 429
    goto :goto_9

    .line 430
    :cond_11
    move-object/from16 v16, v4

    .line 431
    .line 432
    iget-boolean v4, v14, Landroidx/fragment/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    .line 433
    .line 434
    const/4 v5, 0x2

    .line 435
    if-eqz v4, :cond_12

    .line 436
    .line 437
    iget v4, v14, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 438
    .line 439
    move/from16 p0, v8

    .line 440
    .line 441
    const/4 v8, 0x1

    .line 442
    if-eq v4, v8, :cond_13

    .line 443
    .line 444
    if-eq v4, v5, :cond_13

    .line 445
    .line 446
    const/16 v8, 0x8

    .line 447
    .line 448
    if-ne v4, v8, :cond_14

    .line 449
    .line 450
    goto :goto_a

    .line 451
    :cond_12
    move/from16 p0, v8

    .line 452
    .line 453
    :cond_13
    :goto_a
    invoke-virtual {v7, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    invoke-virtual {v11, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    :cond_14
    iget v4, v14, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 460
    .line 461
    const/4 v8, 0x1

    .line 462
    if-eq v4, v8, :cond_15

    .line 463
    .line 464
    if-ne v4, v5, :cond_16

    .line 465
    .line 466
    :cond_15
    invoke-virtual {v12, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    :cond_16
    move/from16 v8, p0

    .line 470
    .line 471
    move-object/from16 v4, v16

    .line 472
    .line 473
    const/4 v5, 0x1

    .line 474
    goto :goto_9

    .line 475
    :cond_17
    move-object/from16 v16, v4

    .line 476
    .line 477
    move/from16 p0, v8

    .line 478
    .line 479
    invoke-virtual {v11, v12}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 480
    .line 481
    .line 482
    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    .line 483
    .line 484
    .line 485
    move-result v4

    .line 486
    if-nez v4, :cond_19

    .line 487
    .line 488
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 489
    .line 490
    const-string v2, "\") must be self contained and not reference fragments from non-saved FragmentTransactions. Found reference to fragment"

    .line 491
    .line 492
    invoke-static {v9, v6, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    .line 497
    .line 498
    .line 499
    move-result v3

    .line 500
    const/4 v8, 0x1

    .line 501
    if-ne v3, v8, :cond_18

    .line 502
    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    const-string v4, " "

    .line 506
    .line 507
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    goto :goto_b

    .line 526
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 527
    .line 528
    const-string v4, "s "

    .line 529
    .line 530
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    :goto_b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    const-string v3, " in "

    .line 544
    .line 545
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    const-string v3, " that were previously added to the FragmentManager through a separate FragmentTransaction."

    .line 552
    .line 553
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 564
    .line 565
    .line 566
    throw v16

    .line 567
    :cond_19
    add-int/lit8 v8, p0, 0x1

    .line 568
    .line 569
    move-object/from16 v4, v16

    .line 570
    .line 571
    const/4 v5, 0x1

    .line 572
    goto/16 :goto_8

    .line 573
    .line 574
    :cond_1a
    move-object/from16 v16, v4

    .line 575
    .line 576
    new-instance v4, Ljava/util/ArrayDeque;

    .line 577
    .line 578
    invoke-direct {v4, v7}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 579
    .line 580
    .line 581
    :cond_1b
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 582
    .line 583
    .line 584
    move-result v5

    .line 585
    if-nez v5, :cond_1f

    .line 586
    .line 587
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v5

    .line 591
    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 592
    .line 593
    iget-boolean v8, v5, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 594
    .line 595
    if-eqz v8, :cond_1d

    .line 596
    .line 597
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 598
    .line 599
    const-string v2, "\") must not contain retained fragments. Found "

    .line 600
    .line 601
    invoke-static {v9, v6, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    move-result v3

    .line 609
    if-eqz v3, :cond_1c

    .line 610
    .line 611
    const-string v3, "direct reference to retained "

    .line 612
    .line 613
    goto :goto_c

    .line 614
    :cond_1c
    const-string v3, "retained child "

    .line 615
    .line 616
    :goto_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    const-string v3, "fragment "

    .line 620
    .line 621
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v2

    .line 631
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 635
    .line 636
    .line 637
    throw v16

    .line 638
    :cond_1d
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 639
    .line 640
    iget-object v5, v5, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Lokhttp3/Dispatcher;

    .line 641
    .line 642
    invoke-virtual {v5}, Lokhttp3/Dispatcher;->getActiveFragments()Ljava/util/ArrayList;

    .line 643
    .line 644
    .line 645
    move-result-object v5

    .line 646
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 647
    .line 648
    .line 649
    move-result-object v5

    .line 650
    :cond_1e
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 651
    .line 652
    .line 653
    move-result v8

    .line 654
    if-eqz v8, :cond_1b

    .line 655
    .line 656
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object v8

    .line 660
    check-cast v8, Landroidx/fragment/app/Fragment;

    .line 661
    .line 662
    if-eqz v8, :cond_1e

    .line 663
    .line 664
    invoke-virtual {v4, v8}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 665
    .line 666
    .line 667
    goto :goto_d

    .line 668
    :cond_1f
    new-instance v4, Ljava/util/ArrayList;

    .line 669
    .line 670
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 674
    .line 675
    .line 676
    move-result-object v5

    .line 677
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 678
    .line 679
    .line 680
    move-result v7

    .line 681
    if-eqz v7, :cond_20

    .line 682
    .line 683
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v7

    .line 687
    check-cast v7, Landroidx/fragment/app/Fragment;

    .line 688
    .line 689
    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 690
    .line 691
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    goto :goto_e

    .line 695
    :cond_20
    new-instance v5, Ljava/util/ArrayList;

    .line 696
    .line 697
    iget-object v7, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 698
    .line 699
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 700
    .line 701
    .line 702
    move-result v7

    .line 703
    sub-int/2addr v7, v3

    .line 704
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 705
    .line 706
    .line 707
    move v7, v3

    .line 708
    :goto_f
    iget-object v8, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 709
    .line 710
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 711
    .line 712
    .line 713
    move-result v8

    .line 714
    if-ge v7, v8, :cond_21

    .line 715
    .line 716
    move-object/from16 v8, v16

    .line 717
    .line 718
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    add-int/lit8 v7, v7, 0x1

    .line 722
    .line 723
    goto :goto_f

    .line 724
    :cond_21
    new-instance v7, Landroidx/fragment/app/BackStackState;

    .line 725
    .line 726
    invoke-direct {v7, v4, v5}, Landroidx/fragment/app/BackStackState;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 727
    .line 728
    .line 729
    iget-object v4, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 730
    .line 731
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 732
    .line 733
    .line 734
    move-result v4

    .line 735
    const/16 v17, 0x1

    .line 736
    .line 737
    add-int/lit8 v4, v4, -0x1

    .line 738
    .line 739
    :goto_10
    if-lt v4, v3, :cond_22

    .line 740
    .line 741
    iget-object v8, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 742
    .line 743
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v8

    .line 747
    check-cast v8, Landroidx/fragment/app/BackStackRecord;

    .line 748
    .line 749
    new-instance v9, Landroidx/fragment/app/BackStackRecord;

    .line 750
    .line 751
    invoke-direct {v9, v8}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/BackStackRecord;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v9}, Landroidx/fragment/app/BackStackRecord;->collapseOps()V

    .line 755
    .line 756
    .line 757
    new-instance v10, Landroidx/fragment/app/BackStackRecordState;

    .line 758
    .line 759
    invoke-direct {v10, v9}, Landroidx/fragment/app/BackStackRecordState;-><init>(Landroidx/fragment/app/BackStackRecord;)V

    .line 760
    .line 761
    .line 762
    sub-int v9, v4, v3

    .line 763
    .line 764
    invoke-virtual {v5, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    const/4 v9, 0x1

    .line 768
    iput-boolean v9, v8, Landroidx/fragment/app/BackStackRecord;->mBeingSaved:Z

    .line 769
    .line 770
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 774
    .line 775
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    .line 777
    .line 778
    add-int/lit8 v4, v4, -0x1

    .line 779
    .line 780
    goto :goto_10

    .line 781
    :cond_22
    const/4 v9, 0x1

    .line 782
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    .line 783
    .line 784
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move v5, v9

    .line 788
    :goto_11
    return v5

    .line 789
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
