.class public final synthetic Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 13
    .line 14
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getSavedStateHandlesVM(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/SavedStateHandlesVM;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :pswitch_0
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_1
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 27
    .line 28
    iget-object v1, v0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroidx/compose/ui/geometry/Size;

    .line 35
    .line 36
    iget-wide v2, v2, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 37
    .line 38
    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    cmp-long v2, v2, v5

    .line 44
    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroidx/compose/ui/geometry/Size;

    .line 53
    .line 54
    iget-wide v2, v2, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 55
    .line 56
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, v0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->shaderBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Landroidx/compose/ui/geometry/Size;

    .line 70
    .line 71
    iget-wide v1, v1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/ShaderBrush;->createShader-uvyYCjk(J)Landroid/graphics/Shader;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    :goto_0
    return-object v4

    .line 78
    :pswitch_2
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 79
    .line 80
    move-object v1, v0

    .line 81
    check-cast v1, Landroidx/preference/PreferenceManager;

    .line 82
    .line 83
    :goto_1
    iget-object v4, v1, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    .line 84
    .line 85
    monitor-enter v4

    .line 86
    :try_start_0
    iget-boolean v0, v1, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    .line 87
    .line 88
    if-nez v0, :cond_8

    .line 89
    .line 90
    iput-boolean v2, v1, Landroidx/preference/PreferenceManager;->mNoCommit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 91
    .line 92
    :try_start_1
    iget-object v0, v1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 95
    .line 96
    iget-object v5, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 97
    .line 98
    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    :goto_2
    if-ge v6, v0, :cond_7

    .line 102
    .line 103
    aget-object v7, v5, v6

    .line 104
    .line 105
    check-cast v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 106
    .line 107
    iget-object v8, v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/collection/MutableScatterSet;

    .line 108
    .line 109
    iget-object v7, v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lkotlin/jvm/functions/Function1;

    .line 110
    .line 111
    iget-object v9, v8, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 112
    .line 113
    iget-object v10, v8, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 114
    .line 115
    array-length v11, v10

    .line 116
    add-int/lit8 v11, v11, -0x2

    .line 117
    .line 118
    if-ltz v11, :cond_5

    .line 119
    .line 120
    const/4 v12, 0x0

    .line 121
    :goto_3
    aget-wide v13, v10, v12

    .line 122
    .line 123
    move v15, v2

    .line 124
    not-long v2, v13

    .line 125
    const/16 v16, 0x7

    .line 126
    .line 127
    shl-long v2, v2, v16

    .line 128
    .line 129
    and-long/2addr v2, v13

    .line 130
    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    and-long v2, v2, v16

    .line 136
    .line 137
    cmp-long v2, v2, v16

    .line 138
    .line 139
    if-eqz v2, :cond_4

    .line 140
    .line 141
    sub-int v2, v12, v11

    .line 142
    .line 143
    not-int v2, v2

    .line 144
    ushr-int/lit8 v2, v2, 0x1f

    .line 145
    .line 146
    const/16 v3, 0x8

    .line 147
    .line 148
    rsub-int/lit8 v2, v2, 0x8

    .line 149
    .line 150
    move/from16 v16, v15

    .line 151
    .line 152
    const/4 v15, 0x0

    .line 153
    :goto_4
    if-ge v15, v2, :cond_3

    .line 154
    .line 155
    const-wide/16 v17, 0xff

    .line 156
    .line 157
    and-long v17, v13, v17

    .line 158
    .line 159
    const-wide/16 v19, 0x80

    .line 160
    .line 161
    cmp-long v17, v17, v19

    .line 162
    .line 163
    if-gez v17, :cond_2

    .line 164
    .line 165
    shl-int/lit8 v17, v12, 0x3

    .line 166
    .line 167
    add-int v17, v17, v15

    .line 168
    .line 169
    move/from16 p0, v3

    .line 170
    .line 171
    aget-object v3, v9, v17

    .line 172
    .line 173
    invoke-interface {v7, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_2
    move/from16 p0, v3

    .line 178
    .line 179
    :goto_5
    shr-long v13, v13, p0

    .line 180
    .line 181
    add-int/lit8 v15, v15, 0x1

    .line 182
    .line 183
    move/from16 v3, p0

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_3
    if-ne v2, v3, :cond_6

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_4
    move/from16 v16, v15

    .line 190
    .line 191
    :goto_6
    if-eq v12, v11, :cond_6

    .line 192
    .line 193
    add-int/lit8 v12, v12, 0x1

    .line 194
    .line 195
    move/from16 v2, v16

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_5
    move/from16 v16, v2

    .line 199
    .line 200
    :cond_6
    invoke-virtual {v8}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    .line 202
    .line 203
    add-int/lit8 v6, v6, 0x1

    .line 204
    .line 205
    move/from16 v2, v16

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :goto_7
    const/4 v2, 0x0

    .line 209
    goto :goto_8

    .line 210
    :catchall_0
    move-exception v0

    .line 211
    goto :goto_7

    .line 212
    :cond_7
    move/from16 v16, v2

    .line 213
    .line 214
    const/4 v2, 0x0

    .line 215
    :try_start_2
    iput-boolean v2, v1, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    .line 216
    .line 217
    goto :goto_9

    .line 218
    :catchall_1
    move-exception v0

    .line 219
    goto :goto_a

    .line 220
    :goto_8
    iput-boolean v2, v1, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    .line 221
    .line 222
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 223
    :cond_8
    move/from16 v16, v2

    .line 224
    .line 225
    :goto_9
    monitor-exit v4

    .line 226
    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->drainChanges()Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_9

    .line 231
    .line 232
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 233
    .line 234
    return-object v0

    .line 235
    :cond_9
    move/from16 v2, v16

    .line 236
    .line 237
    goto/16 :goto_1

    .line 238
    .line 239
    :goto_a
    monitor-exit v4

    .line 240
    throw v0

    .line 241
    :pswitch_3
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;

    .line 244
    .line 245
    iget-object v0, v0, Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;->_controller:Lcoil3/svg/internal/AndroidSvg;

    .line 246
    .line 247
    if-eqz v0, :cond_b

    .line 248
    .line 249
    const/4 v2, 0x0

    .line 250
    new-array v1, v2, [Lkotlin/Pair;

    .line 251
    .line 252
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    check-cast v1, [Lkotlin/Pair;

    .line 257
    .line 258
    invoke-static {v1}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Lcoil3/svg/internal/AndroidSvg;->performSave(Landroid/os/Bundle;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_a

    .line 270
    .line 271
    goto :goto_b

    .line 272
    :cond_a
    move-object v4, v1

    .line 273
    :cond_b
    :goto_b
    return-object v4

    .line 274
    :pswitch_4
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 277
    .line 278
    iget-object v1, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->saver:Landroidx/compose/runtime/saveable/Saver;

    .line 279
    .line 280
    iget-object v2, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->value:Ljava/lang/Object;

    .line 281
    .line 282
    if-eqz v2, :cond_c

    .line 283
    .line 284
    invoke-interface {v1, v0, v2}, Landroidx/compose/runtime/saveable/Saver;->save(Landroidx/compose/runtime/saveable/SaveableHolder;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    goto :goto_c

    .line 289
    :cond_c
    const-string v0, "Value should be initialized"

    .line 290
    .line 291
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    :goto_c
    return-object v4

    .line 295
    :pswitch_5
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast v0, Landroidx/compose/material3/internal/FloatProducer;

    .line 298
    .line 299
    invoke-interface {v0}, Landroidx/compose/material3/internal/FloatProducer;->invoke()F

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    const/high16 v1, 0x3f800000    # 1.0f

    .line 304
    .line 305
    cmpl-float v0, v0, v1

    .line 306
    .line 307
    if-ltz v0, :cond_d

    .line 308
    .line 309
    goto :goto_d

    .line 310
    :cond_d
    const v1, 0x3e99999a    # 0.3f

    .line 311
    .line 312
    .line 313
    :goto_d
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    return-object v0

    .line 318
    :pswitch_6
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    .line 321
    .line 322
    iget-object v0, v0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 323
    .line 324
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    instance-of v1, v1, Lkotlinx/coroutines/NotCompleted;

    .line 329
    .line 330
    if-eqz v1, :cond_e

    .line 331
    .line 332
    sget-object v1, Landroidx/compose/material3/SnackbarResult;->Dismissed:Landroidx/compose/material3/SnackbarResult;

    .line 333
    .line 334
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 338
    .line 339
    return-object v0

    .line 340
    :pswitch_7
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v0, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 343
    .line 344
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 345
    .line 346
    .line 347
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 348
    .line 349
    return-object v0

    .line 350
    :pswitch_8
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    .line 353
    .line 354
    iput-object v4, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 355
    .line 356
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 357
    .line 358
    .line 359
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 360
    .line 361
    .line 362
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 363
    .line 364
    .line 365
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 366
    .line 367
    return-object v0

    .line 368
    :pswitch_9
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;

    .line 371
    .line 372
    iput-object v4, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    .line 373
    .line 374
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 375
    .line 376
    .line 377
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 378
    .line 379
    .line 380
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 381
    .line 382
    .line 383
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 384
    .line 385
    return-object v0

    .line 386
    :pswitch_a
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    .line 389
    .line 390
    new-instance v1, Landroid/view/inputmethod/BaseInputConnection;

    .line 391
    .line 392
    iget-object v0, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->view:Landroid/view/View;

    .line 393
    .line 394
    const/4 v2, 0x0

    .line 395
    invoke-direct {v1, v0, v2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 396
    .line 397
    .line 398
    return-object v1

    .line 399
    :pswitch_b
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v0, Landroidx/cardview/widget/CardView$1;

    .line 402
    .line 403
    iget-object v0, v0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 404
    .line 405
    check-cast v0, Landroid/view/View;

    .line 406
    .line 407
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    const-string v1, "input_method"

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 421
    .line 422
    return-object v0

    .line 423
    :pswitch_c
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    .line 426
    .line 427
    iget-boolean v1, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 428
    .line 429
    if-eqz v1, :cond_f

    .line 430
    .line 431
    invoke-static {v0}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;->collectTextContextMenuData(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    goto :goto_e

    .line 436
    :cond_f
    sget-object v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;->Empty:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 437
    .line 438
    :goto_e
    return-object v0

    .line 439
    :pswitch_d
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v0, Landroid/app/RemoteAction;

    .line 442
    .line 443
    invoke-static {v0}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->textClassificationItem$lambda$4(Landroid/app/RemoteAction;)V

    .line 444
    .line 445
    .line 446
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 447
    .line 448
    return-object v0

    .line 449
    :pswitch_e
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 450
    .line 451
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 452
    .line 453
    invoke-interface {v0}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;->close()V

    .line 454
    .line 455
    .line 456
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 457
    .line 458
    return-object v0

    .line 459
    :pswitch_f
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 460
    .line 461
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 462
    .line 463
    invoke-interface {v0}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;->data()Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    return-object v0

    .line 468
    :pswitch_10
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 469
    .line 470
    check-cast v0, Landroidx/compose/ui/unit/IntRect;

    .line 471
    .line 472
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntRect;->getTopLeft-nOcc-ac()J

    .line 473
    .line 474
    .line 475
    move-result-wide v0

    .line 476
    new-instance v2, Landroidx/compose/ui/unit/IntOffset;

    .line 477
    .line 478
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 479
    .line 480
    .line 481
    return-object v2

    .line 482
    :pswitch_11
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 483
    .line 484
    check-cast v0, Landroidx/compose/foundation/gestures/Orientation;

    .line 485
    .line 486
    new-instance v1, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 487
    .line 488
    const/4 v2, 0x0

    .line 489
    invoke-direct {v1, v0, v2}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;-><init>(Landroidx/compose/foundation/gestures/Orientation;F)V

    .line 490
    .line 491
    .line 492
    return-object v1

    .line 493
    :pswitch_12
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 494
    .line 495
    check-cast v0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 496
    .line 497
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    return-object v0

    .line 502
    :pswitch_13
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 503
    .line 504
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString;

    .line 505
    .line 506
    return-object v0

    .line 507
    :pswitch_14
    move/from16 v16, v2

    .line 508
    .line 509
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 510
    .line 511
    check-cast v0, Landroidx/compose/foundation/selection/ToggleableNode;

    .line 512
    .line 513
    iget-object v1, v0, Landroidx/compose/foundation/selection/ToggleableNode;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 514
    .line 515
    iget-boolean v0, v0, Landroidx/compose/foundation/selection/ToggleableNode;->value:Z

    .line 516
    .line 517
    xor-int/lit8 v0, v0, 0x1

    .line 518
    .line 519
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 527
    .line 528
    return-object v0

    .line 529
    :pswitch_15
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 530
    .line 531
    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    .line 532
    .line 533
    return-object v0

    .line 534
    :pswitch_16
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 537
    .line 538
    iget-object v0, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->displayingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;

    .line 539
    .line 540
    if-eqz v0, :cond_10

    .line 541
    .line 542
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 543
    .line 544
    .line 545
    :cond_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 546
    .line 547
    return-object v0

    .line 548
    :pswitch_17
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 549
    .line 550
    check-cast v0, Landroidx/compose/foundation/ScrollableAreaNode;

    .line 551
    .line 552
    sget-object v1, Landroidx/compose/foundation/OverscrollKt;->LocalOverscrollFactory:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 553
    .line 554
    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    check-cast v1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

    .line 559
    .line 560
    iput-object v1, v0, Landroidx/compose/foundation/ScrollableAreaNode;->localOverscrollFactory:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

    .line 561
    .line 562
    if-eqz v1, :cond_11

    .line 563
    .line 564
    new-instance v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 565
    .line 566
    iget-object v6, v1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->context:Landroid/content/Context;

    .line 567
    .line 568
    iget-object v7, v1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->density:Landroidx/compose/ui/unit/Density;

    .line 569
    .line 570
    iget-wide v8, v1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowColor:J

    .line 571
    .line 572
    iget-object v10, v1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowDrawPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 573
    .line 574
    invoke-direct/range {v5 .. v10}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;-><init>(Landroid/content/Context;Landroidx/compose/ui/unit/Density;JLandroidx/compose/foundation/layout/PaddingValuesImpl;)V

    .line 575
    .line 576
    .line 577
    move-object v4, v5

    .line 578
    :cond_11
    iput-object v4, v0, Landroidx/compose/foundation/ScrollableAreaNode;->localOverscrollFactoryCreatedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 579
    .line 580
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 581
    .line 582
    return-object v0

    .line 583
    :pswitch_18
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 584
    .line 585
    check-cast v0, Landroidx/compose/foundation/CombinedClickableNode;

    .line 586
    .line 587
    iget-object v0, v0, Landroidx/compose/foundation/CombinedClickableNode;->onLongClick:Lkotlin/jvm/functions/Function0;

    .line 588
    .line 589
    if-eqz v0, :cond_12

    .line 590
    .line 591
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    :cond_12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 595
    .line 596
    return-object v0

    .line 597
    :pswitch_19
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 598
    .line 599
    check-cast v0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 600
    .line 601
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    .line 602
    .line 603
    if-eqz v1, :cond_13

    .line 604
    .line 605
    iget-object v1, v1, Landroidx/compose/animation/core/Transition;->totalDurationNanos$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 606
    .line 607
    invoke-virtual {v1}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    check-cast v1, Ljava/lang/Number;

    .line 612
    .line 613
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 614
    .line 615
    .line 616
    move-result-wide v1

    .line 617
    goto :goto_f

    .line 618
    :cond_13
    const-wide/16 v1, 0x0

    .line 619
    .line 620
    :goto_f
    iput-wide v1, v0, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 621
    .line 622
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 623
    .line 624
    return-object v0

    .line 625
    :pswitch_1a
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 626
    .line 627
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 628
    .line 629
    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-static {v0}, Landroidx/compose/animation/core/ArcSplineKt;->getDurationScale(Lkotlin/coroutines/CoroutineContext;)F

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    return-object v0

    .line 642
    :pswitch_1b
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 643
    .line 644
    check-cast v0, Landroidx/activity/OnBackPressedDispatcher;

    .line 645
    .line 646
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    .line 647
    .line 648
    invoke-direct {v1, v0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;-><init>(Landroidx/activity/OnBackPressedDispatcher;)V

    .line 649
    .line 650
    .line 651
    return-object v1

    .line 652
    :pswitch_1c
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 653
    .line 654
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 655
    .line 656
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 657
    .line 658
    iget-boolean v1, v0, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedStateRegistryAttached:Z

    .line 659
    .line 660
    if-eqz v1, :cond_16

    .line 661
    .line 662
    iget-object v1, v0, Landroidx/navigation/internal/NavBackStackEntryImpl;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 663
    .line 664
    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 665
    .line 666
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 667
    .line 668
    if-eq v1, v2, :cond_15

    .line 669
    .line 670
    iget-object v1, v0, Landroidx/navigation/internal/NavBackStackEntryImpl;->entry:Landroidx/navigation/NavBackStackEntry;

    .line 671
    .line 672
    iget-object v0, v0, Landroidx/navigation/internal/NavBackStackEntryImpl;->navResultSavedStateFactory$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 673
    .line 674
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 679
    .line 680
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelCreationExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 681
    .line 682
    .line 683
    move-result-object v2

    .line 684
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    new-instance v3, Lcoil3/ImageLoader$Builder;

    .line 695
    .line 696
    invoke-direct {v3, v1, v0, v2}, Lcoil3/ImageLoader$Builder;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 697
    .line 698
    .line 699
    const-class v0, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;

    .line 700
    .line 701
    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 702
    .line 703
    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    if-eqz v1, :cond_14

    .line 712
    .line 713
    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 714
    .line 715
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v1

    .line 719
    invoke-virtual {v3, v1, v0}, Lcoil3/ImageLoader$Builder;->getViewModel$lifecycle_viewmodel(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    check-cast v0, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;

    .line 724
    .line 725
    iget-object v4, v0, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;->handle:Landroidx/lifecycle/SavedStateHandle;

    .line 726
    .line 727
    goto :goto_10

    .line 728
    :cond_14
    const-string v0, "Local and anonymous classes can not be ViewModels"

    .line 729
    .line 730
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    goto :goto_10

    .line 734
    :cond_15
    const-string v0, "You cannot access the NavBackStackEntry\'s SavedStateHandle after the NavBackStackEntry is destroyed."

    .line 735
    .line 736
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    goto :goto_10

    .line 740
    :cond_16
    const-string v0, "You cannot access the NavBackStackEntry\'s SavedStateHandle until it is added to the NavController\'s back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state)."

    .line 741
    .line 742
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    :goto_10
    return-object v4

    .line 746
    nop

    .line 747
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
