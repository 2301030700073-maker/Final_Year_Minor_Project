.class public final Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final val$keyword:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;->val$keyword:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;->val$keyword:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Landroidx/viewpager/widget/ViewPager$1;

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager$1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    check-cast p1, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 22
    .line 23
    iget-object p0, p1, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->name:Ljava/lang/String;

    .line 24
    .line 25
    check-cast p2, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 26
    .line 27
    iget-object p1, p2, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->name:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v1, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    return p0

    .line 34
    :pswitch_0
    check-cast p0, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    check-cast p2, Lapp/k9mail/legacy/ui/folder/DisplayFolder;

    .line 44
    .line 45
    iget-boolean p0, p2, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->isInTopGroup:Z

    .line 46
    .line 47
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p1, Lapp/k9mail/legacy/ui/folder/DisplayFolder;

    .line 52
    .line 53
    iget-boolean p1, p1, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->isInTopGroup:Z

    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    :goto_1
    return p0

    .line 64
    :pswitch_1
    check-cast p0, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;

    .line 65
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_2

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_2
    check-cast p2, Lapp/k9mail/legacy/ui/folder/DisplayFolder;

    .line 74
    .line 75
    iget-object p0, p2, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 76
    .line 77
    iget-object p0, p0, Lnet/thunderbird/feature/mail/folder/api/Folder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 78
    .line 79
    sget-object p2, Lnet/thunderbird/feature/mail/folder/api/FolderType;->REGULAR:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 80
    .line 81
    if-eq p0, p2, :cond_3

    .line 82
    .line 83
    move p0, v2

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move p0, v3

    .line 86
    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    check-cast p1, Lapp/k9mail/legacy/ui/folder/DisplayFolder;

    .line 91
    .line 92
    iget-object p1, p1, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 93
    .line 94
    iget-object p1, p1, Lnet/thunderbird/feature/mail/folder/api/Folder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 95
    .line 96
    if-eq p1, p2, :cond_4

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    move v2, v3

    .line 100
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Object;)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    :goto_4
    return p0

    .line 109
    :pswitch_2
    check-cast p0, Landroidx/viewpager/widget/ViewPager$1;

    .line 110
    .line 111
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager$1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-eqz p0, :cond_5

    .line 116
    .line 117
    goto :goto_7

    .line 118
    :cond_5
    check-cast p2, Lapp/k9mail/legacy/ui/folder/DisplayFolder;

    .line 119
    .line 120
    iget-object p0, p2, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 121
    .line 122
    iget-object p0, p0, Lnet/thunderbird/feature/mail/folder/api/Folder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 123
    .line 124
    sget-object p2, Lnet/thunderbird/feature/mail/folder/api/FolderType;->OUTBOX:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 125
    .line 126
    if-ne p0, p2, :cond_6

    .line 127
    .line 128
    move p0, v2

    .line 129
    goto :goto_5

    .line 130
    :cond_6
    move p0, v3

    .line 131
    :goto_5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p1, Lapp/k9mail/legacy/ui/folder/DisplayFolder;

    .line 136
    .line 137
    iget-object p1, p1, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 138
    .line 139
    iget-object p1, p1, Lnet/thunderbird/feature/mail/folder/api/Folder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 140
    .line 141
    if-ne p1, p2, :cond_7

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_7
    move v2, v3

    .line 145
    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Object;)I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    :goto_7
    return p0

    .line 154
    :pswitch_3
    check-cast p0, Landroidx/viewpager/widget/ViewPager$1;

    .line 155
    .line 156
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager$1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-eqz p0, :cond_8

    .line 161
    .line 162
    goto :goto_8

    .line 163
    :cond_8
    check-cast p1, Lcom/fsck/k9/mail/folders/RemoteFolder;

    .line 164
    .line 165
    iget-object p0, p1, Lcom/fsck/k9/mail/folders/RemoteFolder;->displayName:Ljava/lang/String;

    .line 166
    .line 167
    check-cast p2, Lcom/fsck/k9/mail/folders/RemoteFolder;

    .line 168
    .line 169
    iget-object p1, p2, Lcom/fsck/k9/mail/folders/RemoteFolder;->displayName:Ljava/lang/String;

    .line 170
    .line 171
    invoke-interface {v1, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    :goto_8
    return p0

    .line 176
    :pswitch_4
    check-cast p0, Landroidx/compose/ui/semantics/SemanticsSortKt$special$$inlined$thenBy$1;

    .line 177
    .line 178
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsSortKt$special$$inlined$thenBy$1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    if-eqz p0, :cond_9

    .line 183
    .line 184
    goto :goto_9

    .line 185
    :cond_9
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 186
    .line 187
    iget p0, p1, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 188
    .line 189
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    check-cast p2, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 194
    .line 195
    iget p1, p2, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 196
    .line 197
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    :goto_9
    return p0

    .line 206
    :pswitch_5
    check-cast p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 207
    .line 208
    invoke-virtual {p0, p1}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    check-cast p1, Ljava/lang/Comparable;

    .line 213
    .line 214
    invoke-virtual {p0, p2}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    check-cast p0, Ljava/lang/Comparable;

    .line 219
    .line 220
    invoke-interface {p1, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    return p0

    .line 225
    :pswitch_6
    check-cast p1, Landroid/util/Rational;

    .line 226
    .line 227
    check-cast p2, Landroid/util/Rational;

    .line 228
    .line 229
    check-cast p0, Landroid/util/Rational;

    .line 230
    .line 231
    invoke-virtual {p1}, Landroid/util/Rational;->floatValue()F

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    cmpl-float v1, p1, v0

    .line 240
    .line 241
    if-lez v1, :cond_a

    .line 242
    .line 243
    div-float/2addr v0, p1

    .line 244
    goto :goto_a

    .line 245
    :cond_a
    div-float v0, p1, v0

    .line 246
    .line 247
    :goto_a
    invoke-virtual {p2}, Landroid/util/Rational;->floatValue()F

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    cmpl-float p2, p1, p0

    .line 256
    .line 257
    if-lez p2, :cond_b

    .line 258
    .line 259
    div-float/2addr p0, p1

    .line 260
    goto :goto_b

    .line 261
    :cond_b
    div-float p0, p1, p0

    .line 262
    .line 263
    :goto_b
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 264
    .line 265
    .line 266
    move-result p0

    .line 267
    return p0

    .line 268
    :pswitch_7
    check-cast p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 269
    .line 270
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->streams:Ljava/util/ArrayList;

    .line 271
    .line 272
    check-cast p1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;

    .line 273
    .line 274
    iget-object p1, p1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamBuilder:Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-eqz v0, :cond_10

    .line 285
    .line 286
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    check-cast v0, Landroidx/camera/camera2/pipe/CameraStream;

    .line 291
    .line 292
    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_d

    .line 305
    .line 306
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    check-cast v1, Landroidx/camera/camera2/pipe/CameraStream;

    .line 311
    .line 312
    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-lez v2, :cond_c

    .line 325
    .line 326
    move-object v0, v1

    .line 327
    goto :goto_c

    .line 328
    :cond_d
    check-cast p2, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;

    .line 329
    .line 330
    iget-object p1, p2, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamBuilder:Ljava/util/ArrayList;

    .line 331
    .line 332
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 337
    .line 338
    .line 339
    move-result p2

    .line 340
    if-eqz p2, :cond_10

    .line 341
    .line 342
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object p2

    .line 346
    check-cast p2, Landroidx/camera/camera2/pipe/CameraStream;

    .line 347
    .line 348
    invoke-interface {p0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 349
    .line 350
    .line 351
    move-result p2

    .line 352
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 353
    .line 354
    .line 355
    move-result-object p2

    .line 356
    :cond_e
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    if-eqz v1, :cond_f

    .line 361
    .line 362
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    check-cast v1, Landroidx/camera/camera2/pipe/CameraStream;

    .line 367
    .line 368
    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {p2, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    if-lez v2, :cond_e

    .line 381
    .line 382
    move-object p2, v1

    .line 383
    goto :goto_d

    .line 384
    :cond_f
    invoke-virtual {v0, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    goto :goto_e

    .line 389
    :cond_10
    invoke-static {}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m()V

    .line 390
    .line 391
    .line 392
    :goto_e
    return v3

    .line 393
    :pswitch_8
    check-cast p1, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;

    .line 394
    .line 395
    check-cast p2, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;

    .line 396
    .line 397
    check-cast p0, Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {p2, p0}, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->getScore(Ljava/lang/String;)F

    .line 400
    .line 401
    .line 402
    move-result p2

    .line 403
    invoke-virtual {p1, p0}, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->getScore(Ljava/lang/String;)F

    .line 404
    .line 405
    .line 406
    move-result p0

    .line 407
    cmpg-float p1, p2, p0

    .line 408
    .line 409
    if-gez p1, :cond_11

    .line 410
    .line 411
    const/4 v2, -0x1

    .line 412
    goto :goto_f

    .line 413
    :cond_11
    cmpl-float p0, p2, p0

    .line 414
    .line 415
    if-nez p0, :cond_12

    .line 416
    .line 417
    move v2, v3

    .line 418
    :cond_12
    :goto_f
    return v2

    .line 419
    :pswitch_data_0
    .packed-switch 0x0
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
