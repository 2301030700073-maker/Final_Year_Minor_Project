.class public final Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $owner$delegate:Lkotlin/Lazy;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_viewModels:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;->$this_viewModels:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;->$owner$delegate:Lkotlin/Lazy;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;->$this_viewModels:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;->$owner$delegate:Lkotlin/Lazy;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 16
    .line 17
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 23
    .line 24
    :cond_0
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-nez p0, :cond_2

    .line 31
    .line 32
    :cond_1
    check-cast v1, Lorg/wikipedia/wiktionary/WiktionaryDialog;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :cond_2
    return-object p0

    .line 39
    :pswitch_0
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 44
    .line 45
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    move-object v2, p0

    .line 50
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 51
    .line 52
    :cond_3
    if-eqz v2, :cond_4

    .line 53
    .line 54
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-nez p0, :cond_5

    .line 59
    .line 60
    :cond_4
    check-cast v1, Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    :cond_5
    return-object p0

    .line 67
    :pswitch_1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 72
    .line 73
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 74
    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    move-object v2, p0

    .line 78
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 79
    .line 80
    :cond_6
    if-eqz v2, :cond_7

    .line 81
    .line 82
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-nez p0, :cond_8

    .line 87
    .line 88
    :cond_7
    check-cast v1, Lorg/wikipedia/watchlist/WatchlistExpiryDialog;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    :cond_8
    return-object p0

    .line 95
    :pswitch_2
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 100
    .line 101
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 102
    .line 103
    if-eqz v0, :cond_9

    .line 104
    .line 105
    move-object v2, p0

    .line 106
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 107
    .line 108
    :cond_9
    if-eqz v2, :cond_a

    .line 109
    .line 110
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    if-nez p0, :cond_b

    .line 115
    .line 116
    :cond_a
    check-cast v1, Lorg/wikipedia/usercontrib/UserInformationDialog;

    .line 117
    .line 118
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    :cond_b
    return-object p0

    .line 123
    :pswitch_3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 128
    .line 129
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 130
    .line 131
    if-eqz v0, :cond_c

    .line 132
    .line 133
    move-object v2, p0

    .line 134
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 135
    .line 136
    :cond_c
    if-eqz v2, :cond_d

    .line 137
    .line 138
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    if-nez p0, :cond_e

    .line 143
    .line 144
    :cond_d
    check-cast v1, Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 145
    .line 146
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    :cond_e
    return-object p0

    .line 151
    :pswitch_4
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 156
    .line 157
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 158
    .line 159
    if-eqz v0, :cond_f

    .line 160
    .line 161
    move-object v2, p0

    .line 162
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 163
    .line 164
    :cond_f
    if-eqz v2, :cond_10

    .line 165
    .line 166
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    if-nez p0, :cond_11

    .line 171
    .line 172
    :cond_10
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    .line 173
    .line 174
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    :cond_11
    return-object p0

    .line 179
    :pswitch_5
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 184
    .line 185
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 186
    .line 187
    if-eqz v0, :cond_12

    .line 188
    .line 189
    move-object v2, p0

    .line 190
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 191
    .line 192
    :cond_12
    if-eqz v2, :cond_13

    .line 193
    .line 194
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    if-nez p0, :cond_14

    .line 199
    .line 200
    :cond_13
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 201
    .line 202
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    :cond_14
    return-object p0

    .line 207
    :pswitch_6
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 212
    .line 213
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 214
    .line 215
    if-eqz v0, :cond_15

    .line 216
    .line 217
    move-object v2, p0

    .line 218
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 219
    .line 220
    :cond_15
    if-eqz v2, :cond_16

    .line 221
    .line 222
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    if-nez p0, :cond_17

    .line 227
    .line 228
    :cond_16
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 229
    .line 230
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    :cond_17
    return-object p0

    .line 235
    :pswitch_7
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 240
    .line 241
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 242
    .line 243
    if-eqz v0, :cond_18

    .line 244
    .line 245
    move-object v2, p0

    .line 246
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 247
    .line 248
    :cond_18
    if-eqz v2, :cond_19

    .line 249
    .line 250
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    if-nez p0, :cond_1a

    .line 255
    .line 256
    :cond_19
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;

    .line 257
    .line 258
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    :cond_1a
    return-object p0

    .line 263
    :pswitch_8
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 268
    .line 269
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 270
    .line 271
    if-eqz v0, :cond_1b

    .line 272
    .line 273
    move-object v2, p0

    .line 274
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 275
    .line 276
    :cond_1b
    if-eqz v2, :cond_1c

    .line 277
    .line 278
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    if-nez p0, :cond_1d

    .line 283
    .line 284
    :cond_1c
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    .line 285
    .line 286
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    :cond_1d
    return-object p0

    .line 291
    :pswitch_9
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 296
    .line 297
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 298
    .line 299
    if-eqz v0, :cond_1e

    .line 300
    .line 301
    move-object v2, p0

    .line 302
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 303
    .line 304
    :cond_1e
    if-eqz v2, :cond_1f

    .line 305
    .line 306
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    if-nez p0, :cond_20

    .line 311
    .line 312
    :cond_1f
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 313
    .line 314
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    :cond_20
    return-object p0

    .line 319
    :pswitch_a
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 324
    .line 325
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 326
    .line 327
    if-eqz v0, :cond_21

    .line 328
    .line 329
    move-object v2, p0

    .line 330
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 331
    .line 332
    :cond_21
    if-eqz v2, :cond_22

    .line 333
    .line 334
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    if-nez p0, :cond_23

    .line 339
    .line 340
    :cond_22
    check-cast v1, Lorg/wikipedia/search/SearchResultsFragment;

    .line 341
    .line 342
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    :cond_23
    return-object p0

    .line 347
    :pswitch_b
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 352
    .line 353
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 354
    .line 355
    if-eqz v0, :cond_24

    .line 356
    .line 357
    move-object v2, p0

    .line 358
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 359
    .line 360
    :cond_24
    if-eqz v2, :cond_25

    .line 361
    .line 362
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    if-nez p0, :cond_26

    .line 367
    .line 368
    :cond_25
    check-cast v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;

    .line 369
    .line 370
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    :cond_26
    return-object p0

    .line 375
    :pswitch_c
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object p0

    .line 379
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 380
    .line 381
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 382
    .line 383
    if-eqz v0, :cond_27

    .line 384
    .line 385
    move-object v2, p0

    .line 386
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 387
    .line 388
    :cond_27
    if-eqz v2, :cond_28

    .line 389
    .line 390
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 391
    .line 392
    .line 393
    move-result-object p0

    .line 394
    if-nez p0, :cond_29

    .line 395
    .line 396
    :cond_28
    check-cast v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;

    .line 397
    .line 398
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 399
    .line 400
    .line 401
    move-result-object p0

    .line 402
    :cond_29
    return-object p0

    .line 403
    :pswitch_d
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object p0

    .line 407
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 408
    .line 409
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 410
    .line 411
    if-eqz v0, :cond_2a

    .line 412
    .line 413
    move-object v2, p0

    .line 414
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 415
    .line 416
    :cond_2a
    if-eqz v2, :cond_2b

    .line 417
    .line 418
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 419
    .line 420
    .line 421
    move-result-object p0

    .line 422
    if-nez p0, :cond_2c

    .line 423
    .line 424
    :cond_2b
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 425
    .line 426
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 427
    .line 428
    .line 429
    move-result-object p0

    .line 430
    :cond_2c
    return-object p0

    .line 431
    :pswitch_e
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object p0

    .line 435
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 436
    .line 437
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 438
    .line 439
    if-eqz v0, :cond_2d

    .line 440
    .line 441
    move-object v2, p0

    .line 442
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 443
    .line 444
    :cond_2d
    if-eqz v2, :cond_2e

    .line 445
    .line 446
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 447
    .line 448
    .line 449
    move-result-object p0

    .line 450
    if-nez p0, :cond_2f

    .line 451
    .line 452
    :cond_2e
    check-cast v1, Lorg/wikipedia/places/PlacesFragment;

    .line 453
    .line 454
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 455
    .line 456
    .line 457
    move-result-object p0

    .line 458
    :cond_2f
    return-object p0

    .line 459
    :pswitch_f
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object p0

    .line 463
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 464
    .line 465
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 466
    .line 467
    if-eqz v0, :cond_30

    .line 468
    .line 469
    move-object v2, p0

    .line 470
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 471
    .line 472
    :cond_30
    if-eqz v2, :cond_31

    .line 473
    .line 474
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 475
    .line 476
    .line 477
    move-result-object p0

    .line 478
    if-nez p0, :cond_32

    .line 479
    .line 480
    :cond_31
    check-cast v1, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 481
    .line 482
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 483
    .line 484
    .line 485
    move-result-object p0

    .line 486
    :cond_32
    return-object p0

    .line 487
    :pswitch_10
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object p0

    .line 491
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 492
    .line 493
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 494
    .line 495
    if-eqz v0, :cond_33

    .line 496
    .line 497
    move-object v2, p0

    .line 498
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 499
    .line 500
    :cond_33
    if-eqz v2, :cond_34

    .line 501
    .line 502
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 503
    .line 504
    .line 505
    move-result-object p0

    .line 506
    if-nez p0, :cond_35

    .line 507
    .line 508
    :cond_34
    check-cast v1, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;

    .line 509
    .line 510
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 511
    .line 512
    .line 513
    move-result-object p0

    .line 514
    :cond_35
    return-object p0

    .line 515
    :pswitch_11
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object p0

    .line 519
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 520
    .line 521
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 522
    .line 523
    if-eqz v0, :cond_36

    .line 524
    .line 525
    move-object v2, p0

    .line 526
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 527
    .line 528
    :cond_36
    if-eqz v2, :cond_37

    .line 529
    .line 530
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 531
    .line 532
    .line 533
    move-result-object p0

    .line 534
    if-nez p0, :cond_38

    .line 535
    .line 536
    :cond_37
    check-cast v1, Lorg/wikipedia/history/HistoryFragment;

    .line 537
    .line 538
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 539
    .line 540
    .line 541
    move-result-object p0

    .line 542
    :cond_38
    return-object p0

    .line 543
    :pswitch_12
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object p0

    .line 547
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 548
    .line 549
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 550
    .line 551
    if-eqz v0, :cond_39

    .line 552
    .line 553
    move-object v2, p0

    .line 554
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 555
    .line 556
    :cond_39
    if-eqz v2, :cond_3a

    .line 557
    .line 558
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 559
    .line 560
    .line 561
    move-result-object p0

    .line 562
    if-nez p0, :cond_3b

    .line 563
    .line 564
    :cond_3a
    check-cast v1, Lorg/wikipedia/games/GamesHubFragment;

    .line 565
    .line 566
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 567
    .line 568
    .line 569
    move-result-object p0

    .line 570
    :cond_3b
    return-object p0

    .line 571
    :pswitch_13
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object p0

    .line 575
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 576
    .line 577
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 578
    .line 579
    if-eqz v0, :cond_3c

    .line 580
    .line 581
    move-object v2, p0

    .line 582
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 583
    .line 584
    :cond_3c
    if-eqz v2, :cond_3d

    .line 585
    .line 586
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 587
    .line 588
    .line 589
    move-result-object p0

    .line 590
    if-nez p0, :cond_3e

    .line 591
    .line 592
    :cond_3d
    check-cast v1, Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 593
    .line 594
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 595
    .line 596
    .line 597
    move-result-object p0

    .line 598
    :cond_3e
    return-object p0

    .line 599
    :pswitch_14
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object p0

    .line 603
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 604
    .line 605
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 606
    .line 607
    if-eqz v0, :cond_3f

    .line 608
    .line 609
    move-object v2, p0

    .line 610
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 611
    .line 612
    :cond_3f
    if-eqz v2, :cond_40

    .line 613
    .line 614
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 615
    .line 616
    .line 617
    move-result-object p0

    .line 618
    if-nez p0, :cond_41

    .line 619
    .line 620
    :cond_40
    check-cast v1, Lorg/wikipedia/feed/topread/TopReadFragment;

    .line 621
    .line 622
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 623
    .line 624
    .line 625
    move-result-object p0

    .line 626
    :cond_41
    return-object p0

    .line 627
    :pswitch_15
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object p0

    .line 631
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 632
    .line 633
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 634
    .line 635
    if-eqz v0, :cond_42

    .line 636
    .line 637
    move-object v2, p0

    .line 638
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 639
    .line 640
    :cond_42
    if-eqz v2, :cond_43

    .line 641
    .line 642
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 643
    .line 644
    .line 645
    move-result-object p0

    .line 646
    if-nez p0, :cond_44

    .line 647
    .line 648
    :cond_43
    check-cast v1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 649
    .line 650
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 651
    .line 652
    .line 653
    move-result-object p0

    .line 654
    :cond_44
    return-object p0

    .line 655
    :pswitch_16
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object p0

    .line 659
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 660
    .line 661
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 662
    .line 663
    if-eqz v0, :cond_45

    .line 664
    .line 665
    move-object v2, p0

    .line 666
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 667
    .line 668
    :cond_45
    if-eqz v2, :cond_46

    .line 669
    .line 670
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 671
    .line 672
    .line 673
    move-result-object p0

    .line 674
    if-nez p0, :cond_47

    .line 675
    .line 676
    :cond_46
    check-cast v1, Lorg/wikipedia/feed/news/NewsFragment;

    .line 677
    .line 678
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 679
    .line 680
    .line 681
    move-result-object p0

    .line 682
    :cond_47
    return-object p0

    .line 683
    :pswitch_17
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object p0

    .line 687
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 688
    .line 689
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 690
    .line 691
    if-eqz v0, :cond_48

    .line 692
    .line 693
    move-object v2, p0

    .line 694
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 695
    .line 696
    :cond_48
    if-eqz v2, :cond_49

    .line 697
    .line 698
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 699
    .line 700
    .line 701
    move-result-object p0

    .line 702
    if-nez p0, :cond_4a

    .line 703
    .line 704
    :cond_49
    check-cast v1, Lorg/wikipedia/diff/ArticleEditDetailsFragment;

    .line 705
    .line 706
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 707
    .line 708
    .line 709
    move-result-object p0

    .line 710
    :cond_4a
    return-object p0

    .line 711
    :pswitch_18
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object p0

    .line 715
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 716
    .line 717
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 718
    .line 719
    if-eqz v0, :cond_4b

    .line 720
    .line 721
    move-object v2, p0

    .line 722
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 723
    .line 724
    :cond_4b
    if-eqz v2, :cond_4c

    .line 725
    .line 726
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 727
    .line 728
    .line 729
    move-result-object p0

    .line 730
    if-nez p0, :cond_4d

    .line 731
    .line 732
    :cond_4c
    check-cast v1, Lorg/wikipedia/commons/ImagePreviewDialog;

    .line 733
    .line 734
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 735
    .line 736
    .line 737
    move-result-object p0

    .line 738
    :cond_4d
    return-object p0

    .line 739
    :pswitch_19
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object p0

    .line 743
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 744
    .line 745
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 746
    .line 747
    if-eqz v0, :cond_4e

    .line 748
    .line 749
    move-object v2, p0

    .line 750
    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 751
    .line 752
    :cond_4e
    if-eqz v2, :cond_4f

    .line 753
    .line 754
    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 755
    .line 756
    .line 757
    move-result-object p0

    .line 758
    if-nez p0, :cond_50

    .line 759
    .line 760
    :cond_4f
    check-cast v1, Lorg/wikipedia/donate/DonateDialog;

    .line 761
    .line 762
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 763
    .line 764
    .line 765
    move-result-object p0

    .line 766
    :cond_50
    return-object p0

    .line 767
    :pswitch_data_0
    .packed-switch 0x0
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
