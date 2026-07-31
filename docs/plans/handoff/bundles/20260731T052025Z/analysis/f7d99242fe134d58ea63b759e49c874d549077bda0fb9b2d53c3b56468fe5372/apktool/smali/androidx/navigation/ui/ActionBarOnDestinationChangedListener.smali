.class public final Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final activity:Lcom/fsck/k9/ui/base/BaseActivity;

.field public animator:Landroid/animation/ObjectAnimator;

.field public arrowDrawable:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

.field public final configuration:Landroidx/fragment/app/Fragment$7;

.field public final context:Landroid/content/Context;

.field public final openableLayoutWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/base/BaseActivity;Landroidx/fragment/app/Fragment$7;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->context:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p2, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->configuration:Landroidx/fragment/app/Fragment$7;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    iput-object p2, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->openableLayoutWeakReference:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    iput-object p1, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->activity:Lcom/fsck/k9/ui/base/BaseActivity;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final onDestinationChanged(Landroidx/navigation/NavHostController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, Landroidx/navigation/FloatingWindow;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->openableLayoutWeakReference:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move-object v2, v1

    .line 22
    :goto_0
    if-eqz v0, :cond_2

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    iget-object p1, p1, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Landroidx/navigation/internal/NavControllerImpl;->onDestinationChangedListeners:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iget-object p1, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->context:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object v0, p2, Landroidx/navigation/NavDestination;->label:Ljava/lang/CharSequence;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    move-object p3, v1

    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_3
    const-string v4, "\\{(.+?)\\}"

    .line 51
    .line 52
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    new-instance v5, Ljava/lang/StringBuffer;

    .line 61
    .line 62
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .line 64
    .line 65
    if-eqz p3, :cond_4

    .line 66
    .line 67
    invoke-static {p3}, Landroidx/work/Operation$State;->toMap-impl(Landroid/os/Bundle;)Lkotlin/collections/builders/MapBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    sget-object v6, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 73
    .line 74
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_8

    .line 79
    .line 80
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    if-eqz v7, :cond_7

    .line 85
    .line 86
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-eqz v8, :cond_7

    .line 91
    .line 92
    const-string v8, ""

    .line 93
    .line 94
    invoke-virtual {v4, v5, v8}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Landroidx/navigation/NavDestination;->getArguments()Ljava/util/Map;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    check-cast v8, Landroidx/navigation/NavArgument;

    .line 106
    .line 107
    if-eqz v8, :cond_5

    .line 108
    .line 109
    iget-object v8, v8, Landroidx/navigation/NavArgument;->type:Landroidx/navigation/NavType;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    move-object v8, v1

    .line 113
    :goto_2
    sget-object v9, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/IntNavType;

    .line 114
    .line 115
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-eqz v10, :cond_6

    .line 120
    .line 121
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9, v7, p3}, Landroidx/navigation/IntNavType;->get(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    check-cast v7, Ljava/lang/Integer;

    .line 129
    .line 130
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    goto :goto_3

    .line 139
    :cond_6
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8, v7, p3}, Landroidx/navigation/NavType;->get(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    :goto_3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string p1, "Could not find \""

    .line 163
    .line 164
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string p1, "\" in "

    .line 171
    .line 172
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p1, " to fill label \""

    .line 179
    .line 180
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const/16 p1, 0x22

    .line 187
    .line 188
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 196
    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p1

    .line 205
    :cond_8
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p3

    .line 212
    :goto_4
    if-eqz p3, :cond_a

    .line 213
    .line 214
    iget-object v0, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->activity:Lcom/fsck/k9/ui/base/BaseActivity;

    .line 215
    .line 216
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    if-eqz v4, :cond_9

    .line 221
    .line 222
    invoke-virtual {v4, p3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_9
    const-string p0, "Activity "

    .line 227
    .line 228
    const-string p1, " does not have an ActionBar set via setSupportActionBar()"

    .line 229
    .line 230
    invoke-static {v0, p1, p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :cond_a
    :goto_5
    iget-object p3, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->configuration:Landroidx/fragment/app/Fragment$7;

    .line 235
    .line 236
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    sget v0, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 240
    .line 241
    invoke-static {p2}, Landroidx/work/OperationKt;->getHierarchy(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    const/4 v5, 0x0

    .line 254
    if-eqz v4, :cond_d

    .line 255
    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    check-cast v4, Landroidx/navigation/NavDestination;

    .line 261
    .line 262
    iget-object v6, p3, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v6, Ljava/util/HashSet;

    .line 265
    .line 266
    iget-object v7, v4, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 267
    .line 268
    iget v7, v7, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 269
    .line 270
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    if-ne v6, v3, :cond_b

    .line 279
    .line 280
    instance-of v6, v4, Landroidx/navigation/NavGraph;

    .line 281
    .line 282
    if-eqz v6, :cond_c

    .line 283
    .line 284
    iget-object v6, p2, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 285
    .line 286
    iget v6, v6, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 287
    .line 288
    sget v7, Landroidx/navigation/NavGraph;->$r8$clinit:I

    .line 289
    .line 290
    check-cast v4, Landroidx/navigation/NavGraph;

    .line 291
    .line 292
    invoke-static {v4}, Landroidx/compose/ui/unit/IntOffsetKt;->findStartDestination(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    iget-object v4, v4, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 297
    .line 298
    iget v4, v4, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 299
    .line 300
    if-ne v6, v4, :cond_b

    .line 301
    .line 302
    :cond_c
    move p2, v3

    .line 303
    goto :goto_6

    .line 304
    :cond_d
    move p2, v5

    .line 305
    :goto_6
    if-nez v2, :cond_e

    .line 306
    .line 307
    if-eqz p2, :cond_e

    .line 308
    .line 309
    invoke-virtual {p0, v1, v5}, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->setNavigationIcon(Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;I)V

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :cond_e
    if-eqz v2, :cond_f

    .line 314
    .line 315
    if-eqz p2, :cond_f

    .line 316
    .line 317
    move p2, v3

    .line 318
    goto :goto_7

    .line 319
    :cond_f
    move p2, v5

    .line 320
    :goto_7
    iget-object p3, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->arrowDrawable:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 321
    .line 322
    if-eqz p3, :cond_10

    .line 323
    .line 324
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 325
    .line 326
    new-instance v0, Lkotlin/Pair;

    .line 327
    .line 328
    invoke-direct {v0, p3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    goto :goto_8

    .line 332
    :cond_10
    new-instance p3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 333
    .line 334
    invoke-direct {p3, p1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    .line 335
    .line 336
    .line 337
    iput-object p3, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->arrowDrawable:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 338
    .line 339
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 340
    .line 341
    new-instance v0, Lkotlin/Pair;

    .line 342
    .line 343
    invoke-direct {v0, p3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    :goto_8
    iget-object p1, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast p1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 349
    .line 350
    iget-object p3, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast p3, Ljava/lang/Boolean;

    .line 353
    .line 354
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 355
    .line 356
    .line 357
    move-result p3

    .line 358
    if-eqz p2, :cond_11

    .line 359
    .line 360
    const v0, 0x7f1204ca

    .line 361
    .line 362
    .line 363
    goto :goto_9

    .line 364
    :cond_11
    const v0, 0x7f1204c9

    .line 365
    .line 366
    .line 367
    :goto_9
    invoke-virtual {p0, p1, v0}, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->setNavigationIcon(Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;I)V

    .line 368
    .line 369
    .line 370
    if-eqz p2, :cond_12

    .line 371
    .line 372
    const/4 p2, 0x0

    .line 373
    goto :goto_a

    .line 374
    :cond_12
    const/high16 p2, 0x3f800000    # 1.0f

    .line 375
    .line 376
    :goto_a
    if-eqz p3, :cond_14

    .line 377
    .line 378
    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    .line 379
    .line 380
    iget-object v0, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->animator:Landroid/animation/ObjectAnimator;

    .line 381
    .line 382
    if-eqz v0, :cond_13

    .line 383
    .line 384
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 385
    .line 386
    .line 387
    :cond_13
    const/4 v0, 0x2

    .line 388
    new-array v0, v0, [F

    .line 389
    .line 390
    aput p3, v0, v5

    .line 391
    .line 392
    aput p2, v0, v3

    .line 393
    .line 394
    const-string p2, "progress"

    .line 395
    .line 396
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    iput-object p1, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->animator:Landroid/animation/ObjectAnimator;

    .line 401
    .line 402
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 406
    .line 407
    .line 408
    return-void

    .line 409
    :cond_14
    invoke-virtual {p1, p2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 410
    .line 411
    .line 412
    return-void
.end method

.method public final setNavigationIcon(Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->activity:Lcom/fsck/k9/ui/base/BaseActivity;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/ActionBar;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :cond_2
    const-string p1, "Activity "

    .line 41
    .line 42
    const-string p2, " does not have an ActionBar set via setSupportActionBar()"

    .line 43
    .line 44
    invoke-static {p0, p2, p1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
