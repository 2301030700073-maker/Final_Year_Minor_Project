.class public final synthetic Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 8
    iput p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget p0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x6

    .line 6
    const/16 v3, 0x2bc

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    packed-switch p0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p1, Landroidx/sqlite/SQLiteStatement;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :pswitch_0
    check-cast p1, Landroidx/navigation/NavDestination;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object p0, p1, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 33
    .line 34
    iget p0, p0, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 35
    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :pswitch_1
    check-cast p1, Landroidx/navigation/NavDestination;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object p0, p1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 47
    .line 48
    if-eqz p0, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 51
    .line 52
    iget v0, v0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 53
    .line 54
    iget-object p1, p1, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 55
    .line 56
    iget p1, p1, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 57
    .line 58
    if-ne v0, p1, :cond_0

    .line 59
    .line 60
    move-object v5, p0

    .line 61
    :cond_0
    return-object v5

    .line 62
    :pswitch_2
    check-cast p1, Landroidx/navigation/NavDestination;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object p0, p1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 68
    .line 69
    if-eqz p0, :cond_1

    .line 70
    .line 71
    iget-object v0, p0, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 72
    .line 73
    iget v0, v0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 74
    .line 75
    iget-object p1, p1, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 76
    .line 77
    iget p1, p1, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 78
    .line 79
    if-ne v0, p1, :cond_1

    .line 80
    .line 81
    move-object v5, p0

    .line 82
    :cond_1
    return-object v5

    .line 83
    :pswitch_3
    check-cast p1, Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance p0, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;

    .line 89
    .line 90
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->createSavedStateHandle(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p0, p1}, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;)V

    .line 95
    .line 96
    .line 97
    return-object p0

    .line 98
    :pswitch_4
    check-cast p1, Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    new-instance p0, Landroidx/navigation/fragment/FragmentNavigator$ClearEntryStateViewModel;

    .line 104
    .line 105
    invoke-direct {p0}, Landroidx/navigation/fragment/FragmentNavigator$ClearEntryStateViewModel;-><init>()V

    .line 106
    .line 107
    .line 108
    return-object p0

    .line 109
    :pswitch_5
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    .line 110
    .line 111
    iget-object p0, p1, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    .line 112
    .line 113
    return-object p0

    .line 114
    :pswitch_6
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 115
    .line 116
    invoke-static {v3, v4, v5, v2}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {p0, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :pswitch_7
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 126
    .line 127
    invoke-static {v3, v4, v5, v2}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {p0, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :pswitch_8
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 137
    .line 138
    invoke-static {v3, v4, v5, v2}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-static {p0, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    return-object p0

    .line 147
    :pswitch_9
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 148
    .line 149
    invoke-static {v3, v4, v5, v2}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-static {p0, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :pswitch_a
    check-cast p1, Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 159
    .line 160
    new-instance p0, Landroidx/navigation/compose/BackStackEntryIdViewModel;

    .line 161
    .line 162
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->createSavedStateHandle(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-direct {p0, p1}, Landroidx/navigation/compose/BackStackEntryIdViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;)V

    .line 167
    .line 168
    .line 169
    return-object p0

    .line 170
    :pswitch_b
    check-cast p1, Landroid/view/View;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    const p0, 0x7f0902e3

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    instance-of p1, p0, Ljava/lang/ref/WeakReference;

    .line 183
    .line 184
    if-eqz p1, :cond_2

    .line 185
    .line 186
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 187
    .line 188
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    move-object v5, p0

    .line 193
    check-cast v5, Landroidx/navigation/NavHostController;

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_2
    instance-of p1, p0, Landroidx/navigation/NavHostController;

    .line 197
    .line 198
    if-eqz p1, :cond_3

    .line 199
    .line 200
    move-object v5, p0

    .line 201
    check-cast v5, Landroidx/navigation/NavHostController;

    .line 202
    .line 203
    :cond_3
    :goto_0
    return-object v5

    .line 204
    :pswitch_c
    check-cast p1, Landroid/view/View;

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    instance-of p1, p0, Landroid/view/View;

    .line 214
    .line 215
    if-eqz p1, :cond_4

    .line 216
    .line 217
    move-object v5, p0

    .line 218
    check-cast v5, Landroid/view/View;

    .line 219
    .line 220
    :cond_4
    return-object v5

    .line 221
    :pswitch_d
    check-cast p1, Landroidx/navigation/NavDestination;

    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    instance-of p0, p1, Landroidx/navigation/NavGraph;

    .line 227
    .line 228
    if-eqz p0, :cond_5

    .line 229
    .line 230
    check-cast p1, Landroidx/navigation/NavGraph;

    .line 231
    .line 232
    iget-object p0, p1, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 233
    .line 234
    iget p1, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 235
    .line 236
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/stream/RawField;->findNode$navigation_common_release(I)Landroidx/navigation/NavDestination;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    :cond_5
    return-object v5

    .line 241
    :pswitch_e
    check-cast p1, Landroidx/navigation/NavDestination;

    .line 242
    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    iget-object p0, p1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 247
    .line 248
    return-object p0

    .line 249
    :pswitch_f
    check-cast p1, Landroid/content/Context;

    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    instance-of p0, p1, Landroid/app/Activity;

    .line 255
    .line 256
    if-eqz p0, :cond_6

    .line 257
    .line 258
    move-object v5, p1

    .line 259
    check-cast v5, Landroid/app/Activity;

    .line 260
    .line 261
    :cond_6
    return-object v5

    .line 262
    :pswitch_10
    check-cast p1, Landroid/content/Context;

    .line 263
    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    instance-of p0, p1, Landroid/content/ContextWrapper;

    .line 268
    .line 269
    if-eqz p0, :cond_7

    .line 270
    .line 271
    check-cast p1, Landroid/content/ContextWrapper;

    .line 272
    .line 273
    goto :goto_1

    .line 274
    :cond_7
    move-object p1, v5

    .line 275
    :goto_1
    if-eqz p1, :cond_8

    .line 276
    .line 277
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    :cond_8
    return-object v5

    .line 282
    :pswitch_11
    check-cast p1, Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 283
    .line 284
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    new-instance p0, Landroidx/navigation/NavControllerViewModel;

    .line 288
    .line 289
    invoke-direct {p0}, Landroidx/navigation/NavControllerViewModel;-><init>()V

    .line 290
    .line 291
    .line 292
    return-object p0

    .line 293
    :pswitch_12
    check-cast p1, Landroid/content/Context;

    .line 294
    .line 295
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    instance-of p0, p1, Landroid/content/ContextWrapper;

    .line 299
    .line 300
    if-eqz p0, :cond_9

    .line 301
    .line 302
    check-cast p1, Landroid/content/ContextWrapper;

    .line 303
    .line 304
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    :cond_9
    return-object v5

    .line 309
    :pswitch_13
    check-cast p1, Landroid/content/Context;

    .line 310
    .line 311
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    instance-of p0, p1, Landroid/content/ContextWrapper;

    .line 315
    .line 316
    if-eqz p0, :cond_a

    .line 317
    .line 318
    check-cast p1, Landroid/content/ContextWrapper;

    .line 319
    .line 320
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    :cond_a
    return-object v5

    .line 325
    :pswitch_14
    check-cast p1, Ljava/util/Map$Entry;

    .line 326
    .line 327
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    instance-of v1, p0, [B

    .line 335
    .line 336
    if-eqz v1, :cond_d

    .line 337
    .line 338
    check-cast p0, [B

    .line 339
    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    const-string v2, "["

    .line 346
    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 348
    .line 349
    .line 350
    array-length v2, p0

    .line 351
    move v3, v4

    .line 352
    :goto_2
    if-ge v4, v2, :cond_c

    .line 353
    .line 354
    aget-byte v5, p0, v4

    .line 355
    .line 356
    add-int/2addr v3, v0

    .line 357
    if-le v3, v0, :cond_b

    .line 358
    .line 359
    const-string v6, ", "

    .line 360
    .line 361
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 362
    .line 363
    .line 364
    :cond_b
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 369
    .line 370
    .line 371
    add-int/lit8 v4, v4, 0x1

    .line 372
    .line 373
    goto :goto_2

    .line 374
    :cond_c
    const-string p0, "]"

    .line 375
    .line 376
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    goto :goto_3

    .line 384
    :cond_d
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object p0

    .line 388
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p0

    .line 392
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    const-string v1, "  "

    .line 395
    .line 396
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    check-cast p1, Landroidx/datastore/preferences/core/Preferences$Key;

    .line 404
    .line 405
    iget-object p1, p1, Landroidx/datastore/preferences/core/Preferences$Key;->name:Ljava/lang/String;

    .line 406
    .line 407
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    const-string p1, " = "

    .line 411
    .line 412
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object p0

    .line 422
    return-object p0

    .line 423
    :pswitch_15
    check-cast p1, Landroid/content/Context;

    .line 424
    .line 425
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 429
    .line 430
    return-object p0

    .line 431
    :pswitch_16
    check-cast p1, Ljava/io/File;

    .line 432
    .line 433
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 437
    .line 438
    .line 439
    move-result-object p0

    .line 440
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p0

    .line 444
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    new-instance p1, Landroidx/datastore/core/SingleProcessCoordinator;

    .line 448
    .line 449
    invoke-direct {p1, p0}, Landroidx/datastore/core/SingleProcessCoordinator;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    return-object p1

    .line 453
    :pswitch_17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    check-cast p1, Ljava/util/List;

    .line 457
    .line 458
    new-instance p0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 459
    .line 460
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->AnnotatedStringSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 465
    .line 466
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 467
    .line 468
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v4

    .line 472
    if-eqz v4, :cond_f

    .line 473
    .line 474
    :cond_e
    move-object v1, v5

    .line 475
    goto :goto_4

    .line 476
    :cond_f
    if-eqz v1, :cond_e

    .line 477
    .line 478
    iget-object v2, v2, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 481
    .line 482
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 487
    .line 488
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    sget v0, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 496
    .line 497
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->TextRangeSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 498
    .line 499
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    if-eqz v2, :cond_11

    .line 504
    .line 505
    :cond_10
    move-object p1, v5

    .line 506
    goto :goto_5

    .line 507
    :cond_11
    if-eqz p1, :cond_10

    .line 508
    .line 509
    iget-object v0, v0, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 510
    .line 511
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 512
    .line 513
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object p1

    .line 517
    check-cast p1, Landroidx/compose/ui/text/TextRange;

    .line 518
    .line 519
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    iget-wide v2, p1, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 523
    .line 524
    invoke-direct {p0, v1, v2, v3, v5}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;)V

    .line 525
    .line 526
    .line 527
    return-object p0

    .line 528
    :pswitch_18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    .line 530
    .line 531
    check-cast p1, Ljava/lang/Integer;

    .line 532
    .line 533
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 534
    .line 535
    .line 536
    move-result p0

    .line 537
    new-instance p1, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    .line 538
    .line 539
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/style/TextMotion$Linearity;-><init>(I)V

    .line 540
    .line 541
    .line 542
    return-object p1

    .line 543
    :pswitch_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    check-cast p1, Ljava/util/List;

    .line 547
    .line 548
    new-instance p0, Landroidx/compose/ui/text/style/TextMotion;

    .line 549
    .line 550
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 555
    .line 556
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    sget-object v3, Landroidx/compose/ui/text/ParagraphKt;->TextMotionLinearitySaver:Landroidx/compose/ui/platform/WeakCache;

    .line 561
    .line 562
    if-eqz v2, :cond_13

    .line 563
    .line 564
    :cond_12
    move-object v1, v5

    .line 565
    goto :goto_6

    .line 566
    :cond_13
    if-eqz v1, :cond_12

    .line 567
    .line 568
    iget-object v2, v3, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 569
    .line 570
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 571
    .line 572
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    check-cast v1, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    .line 577
    .line 578
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    .line 580
    .line 581
    iget v1, v1, Landroidx/compose/ui/text/style/TextMotion$Linearity;->value:I

    .line 582
    .line 583
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object p1

    .line 587
    if-eqz p1, :cond_14

    .line 588
    .line 589
    move-object v5, p1

    .line 590
    check-cast v5, Ljava/lang/Boolean;

    .line 591
    .line 592
    :cond_14
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 596
    .line 597
    .line 598
    move-result p1

    .line 599
    invoke-direct {p0, v1, p1}, Landroidx/compose/ui/text/style/TextMotion;-><init>(IZ)V

    .line 600
    .line 601
    .line 602
    return-object p0

    .line 603
    :pswitch_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 604
    .line 605
    .line 606
    check-cast p1, Ljava/lang/Integer;

    .line 607
    .line 608
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 609
    .line 610
    .line 611
    move-result p0

    .line 612
    new-instance p1, Landroidx/compose/ui/text/style/LineBreak;

    .line 613
    .line 614
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/style/LineBreak;-><init>(I)V

    .line 615
    .line 616
    .line 617
    return-object p1

    .line 618
    :pswitch_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 619
    .line 620
    .line 621
    check-cast p1, Ljava/lang/Integer;

    .line 622
    .line 623
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 624
    .line 625
    .line 626
    move-result p0

    .line 627
    new-instance p1, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 628
    .line 629
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    .line 630
    .line 631
    .line 632
    return-object p1

    .line 633
    :pswitch_1c
    check-cast p1, Landroidx/room/DatabaseConfiguration;

    .line 634
    .line 635
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 636
    .line 637
    .line 638
    new-instance p0, Lkotlin/NotImplementedError;

    .line 639
    .line 640
    invoke-direct {p0, v4}, Lkotlin/NotImplementedError;-><init>(I)V

    .line 641
    .line 642
    .line 643
    throw p0

    .line 644
    nop

    .line 645
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
