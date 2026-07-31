.class public final Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
.super Landroidx/fragment/app/Fragment$7;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/core/view/AccessibilityDelegateCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/AccessibilityDelegateCompat;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 4
    .line 5
    const/16 p1, 0x9

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment$7;-><init>(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final createAccessibilityNodeInfo$androidx$compose$ui$platform$AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 46

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 10
    .line 11
    iget-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 12
    .line 13
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    iget-object v4, v4, Landroidx/compose/ui/platform/ComposeViewContext;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 18
    .line 19
    invoke-interface {v4}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Landroidx/lifecycle/LifecycleRegistry;

    .line 24
    .line 25
    iget-object v4, v4, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 26
    .line 27
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 28
    .line 29
    if-ne v4, v5, :cond_1

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v6, 0x0

    .line 43
    :goto_0
    move-object v7, v0

    .line 44
    goto/16 :goto_53

    .line 45
    .line 46
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 55
    .line 56
    if-nez v4, :cond_2

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_0

    .line 63
    .line 64
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object v5, v4, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 70
    .line 71
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    iget-object v8, v5, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 76
    .line 77
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->IsSensitiveData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 78
    .line 79
    iget-object v7, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 80
    .line 81
    invoke-virtual {v7, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    if-nez v7, :cond_3

    .line 86
    .line 87
    const/4 v7, 0x0

    .line 88
    :cond_3
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    const/16 v9, 0x22

    .line 95
    .line 96
    if-eqz v7, :cond_5

    .line 97
    .line 98
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    .line 100
    if-lt v11, v9, :cond_4

    .line 101
    .line 102
    invoke-static {v2}, Landroidx/camera/camera2/compat/Api34Compat;->isRequestFromAccessibilityTool(Landroid/view/accessibility/AccessibilityManager;)Z

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    goto :goto_1

    .line 107
    :cond_4
    const/4 v11, 0x1

    .line 108
    :goto_1
    if-nez v11, :cond_5

    .line 109
    .line 110
    move-object v7, v0

    .line 111
    const/4 v6, 0x0

    .line 112
    goto/16 :goto_53

    .line 113
    .line 114
    :cond_5
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    iget-object v12, v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 119
    .line 120
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 121
    .line 122
    if-lt v13, v9, :cond_6

    .line 123
    .line 124
    invoke-static {v12, v7}, Landroidx/camera/camera2/compat/Api34Compat;->setAccessibilityDataSensitive(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    const/16 v14, 0x40

    .line 129
    .line 130
    invoke-virtual {v11, v14, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBooleanProperty(IZ)V

    .line 131
    .line 132
    .line 133
    :goto_2
    const/4 v7, -0x1

    .line 134
    if-ne v1, v7, :cond_8

    .line 135
    .line 136
    invoke-virtual {v3}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    instance-of v15, v14, Landroid/view/View;

    .line 141
    .line 142
    if-eqz v15, :cond_7

    .line 143
    .line 144
    check-cast v14, Landroid/view/View;

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_7
    const/4 v14, 0x0

    .line 148
    :goto_3
    iput v7, v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 149
    .line 150
    invoke-virtual {v12, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 151
    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_8
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 155
    .line 156
    .line 157
    move-result-object v14

    .line 158
    if-eqz v14, :cond_9

    .line 159
    .line 160
    iget v14, v14, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 161
    .line 162
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    goto :goto_4

    .line 167
    :cond_9
    const/4 v14, 0x0

    .line 168
    :goto_4
    if-eqz v14, :cond_b3

    .line 169
    .line 170
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result v14

    .line 174
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 175
    .line 176
    .line 177
    move-result-object v15

    .line 178
    invoke-virtual {v15}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 179
    .line 180
    .line 181
    move-result-object v15

    .line 182
    iget v15, v15, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 183
    .line 184
    if-ne v14, v15, :cond_a

    .line 185
    .line 186
    move v14, v7

    .line 187
    :cond_a
    iput v14, v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 188
    .line 189
    invoke-virtual {v12, v3, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 190
    .line 191
    .line 192
    :goto_5
    iput v1, v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mVirtualDescendantId:I

    .line 193
    .line 194
    invoke-virtual {v12, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsInScreen(Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v11, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 202
    .line 203
    .line 204
    sget-object v4, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->AccessibilityActionsResourceIds:Landroidx/collection/MutableIntList;

    .line 205
    .line 206
    iget-object v14, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->drawingOrder:Landroidx/collection/MutableIntIntMap;

    .line 207
    .line 208
    iget-object v15, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->labelToActionId:Landroidx/collection/SparseArrayCompat;

    .line 209
    .line 210
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 211
    .line 212
    .line 213
    move-result-object v16

    .line 214
    const/16 p0, 0x0

    .line 215
    .line 216
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    const-string v10, "android.view.View"

    .line 221
    .line 222
    invoke-virtual {v11, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 223
    .line 224
    .line 225
    iget-object v10, v5, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 226
    .line 227
    iget-object v7, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 228
    .line 229
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 230
    .line 231
    invoke-virtual {v7, v9}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    if-eqz v9, :cond_b

    .line 236
    .line 237
    const-string v9, "android.widget.EditText"

    .line 238
    .line 239
    invoke-virtual {v11, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    :cond_b
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 243
    .line 244
    invoke-virtual {v7, v9}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    if-eqz v9, :cond_c

    .line 249
    .line 250
    const-string v9, "android.widget.TextView"

    .line 251
    .line 252
    invoke-virtual {v11, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    :cond_c
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 256
    .line 257
    invoke-virtual {v7, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    if-nez v9, :cond_d

    .line 262
    .line 263
    move-object/from16 v9, p0

    .line 264
    .line 265
    :cond_d
    check-cast v9, Landroidx/compose/ui/semantics/Role;

    .line 266
    .line 267
    move-object/from16 v17, v2

    .line 268
    .line 269
    if-eqz v9, :cond_12

    .line 270
    .line 271
    iget v2, v9, Landroidx/compose/ui/semantics/Role;->value:I

    .line 272
    .line 273
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->isFake$ui()Z

    .line 274
    .line 275
    .line 276
    move-result v20

    .line 277
    if-nez v20, :cond_e

    .line 278
    .line 279
    move-object/from16 v20, v15

    .line 280
    .line 281
    const/4 v15, 0x4

    .line 282
    invoke-static {v15, v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move-result-object v19

    .line 286
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    .line 287
    .line 288
    .line 289
    move-result v19

    .line 290
    move-object/from16 v21, v4

    .line 291
    .line 292
    if-eqz v19, :cond_13

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_e
    move-object/from16 v20, v15

    .line 296
    .line 297
    const/4 v15, 0x4

    .line 298
    move-object/from16 v21, v4

    .line 299
    .line 300
    :goto_6
    const-string v4, "AccessibilityNodeInfo.roleDescription"

    .line 301
    .line 302
    if-ne v2, v15, :cond_f

    .line 303
    .line 304
    const v2, 0x7f120635

    .line 305
    .line 306
    .line 307
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 312
    .line 313
    .line 314
    move-result-object v15

    .line 315
    invoke-virtual {v15, v4, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 316
    .line 317
    .line 318
    goto :goto_7

    .line 319
    :cond_f
    const/4 v15, 0x2

    .line 320
    if-ne v2, v15, :cond_10

    .line 321
    .line 322
    const v2, 0x7f120634

    .line 323
    .line 324
    .line 325
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 330
    .line 331
    .line 332
    move-result-object v15

    .line 333
    invoke-virtual {v15, v4, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 334
    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_10
    invoke-static {v2}, Landroidx/compose/ui/platform/TestTagKt;->toLegacyClassName-V4PA4sw(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    const/4 v15, 0x5

    .line 342
    if-ne v2, v15, :cond_11

    .line 343
    .line 344
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->isUnmergedLeafNode$ui()Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-nez v2, :cond_11

    .line 349
    .line 350
    iget-boolean v2, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    .line 351
    .line 352
    if-eqz v2, :cond_13

    .line 353
    .line 354
    :cond_11
    invoke-virtual {v11, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 355
    .line 356
    .line 357
    goto :goto_7

    .line 358
    :cond_12
    move-object/from16 v21, v4

    .line 359
    .line 360
    move-object/from16 v20, v15

    .line 361
    .line 362
    :cond_13
    :goto_7
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-virtual {v12, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 371
    .line 372
    .line 373
    invoke-static {v5}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->isImportantForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    invoke-virtual {v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setImportantForAccessibility(Z)V

    .line 378
    .line 379
    .line 380
    const/16 v2, 0x22

    .line 381
    .line 382
    if-lt v13, v2, :cond_14

    .line 383
    .line 384
    invoke-static/range {v17 .. v17}, Landroidx/camera/camera2/compat/Api34Compat;->isRequestFromAccessibilityTool(Landroid/view/accessibility/AccessibilityManager;)Z

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    :goto_8
    const/4 v15, 0x4

    .line 389
    goto :goto_9

    .line 390
    :cond_14
    const/4 v2, 0x1

    .line 391
    goto :goto_8

    .line 392
    :goto_9
    invoke-static {v15, v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 397
    .line 398
    .line 399
    move-result v13

    .line 400
    move/from16 v17, v2

    .line 401
    .line 402
    const/4 v2, 0x0

    .line 403
    const/4 v15, 0x0

    .line 404
    :goto_a
    if-ge v15, v13, :cond_1c

    .line 405
    .line 406
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v22

    .line 410
    move-object/from16 v23, v4

    .line 411
    .line 412
    move-object/from16 v4, v22

    .line 413
    .line 414
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 415
    .line 416
    move/from16 v22, v13

    .line 417
    .line 418
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    .line 419
    .line 420
    .line 421
    move-result-object v13

    .line 422
    move/from16 v24, v15

    .line 423
    .line 424
    iget v15, v4, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 425
    .line 426
    invoke-virtual {v13, v15}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    .line 427
    .line 428
    .line 429
    move-result v13

    .line 430
    if-eqz v13, :cond_1b

    .line 431
    .line 432
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 433
    .line 434
    .line 435
    move-result-object v13

    .line 436
    invoke-virtual {v13}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    .line 437
    .line 438
    .line 439
    move-result-object v13

    .line 440
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 441
    .line 442
    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    check-cast v4, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 447
    .line 448
    const/4 v13, -0x1

    .line 449
    if-ne v15, v13, :cond_15

    .line 450
    .line 451
    goto :goto_d

    .line 452
    :cond_15
    if-eqz v4, :cond_16

    .line 453
    .line 454
    invoke-virtual {v12, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 455
    .line 456
    .line 457
    goto :goto_c

    .line 458
    :cond_16
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    invoke-virtual {v4, v15}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 467
    .line 468
    if-eqz v4, :cond_18

    .line 469
    .line 470
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 471
    .line 472
    if-eqz v4, :cond_18

    .line 473
    .line 474
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->IsSensitiveData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 479
    .line 480
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 481
    .line 482
    invoke-virtual {v4, v13}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    if-nez v4, :cond_17

    .line 487
    .line 488
    move-object/from16 v4, p0

    .line 489
    .line 490
    :cond_17
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 491
    .line 492
    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    move-result v4

    .line 496
    goto :goto_b

    .line 497
    :cond_18
    const/4 v4, 0x0

    .line 498
    :goto_b
    if-nez v17, :cond_19

    .line 499
    .line 500
    if-nez v4, :cond_1a

    .line 501
    .line 502
    :cond_19
    invoke-virtual {v12, v3, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 503
    .line 504
    .line 505
    :cond_1a
    :goto_c
    invoke-virtual {v14, v15, v2}, Landroidx/collection/MutableIntIntMap;->set(II)V

    .line 506
    .line 507
    .line 508
    add-int/lit8 v2, v2, 0x1

    .line 509
    .line 510
    :cond_1b
    :goto_d
    add-int/lit8 v15, v24, 0x1

    .line 511
    .line 512
    move/from16 v13, v22

    .line 513
    .line 514
    move-object/from16 v4, v23

    .line 515
    .line 516
    goto :goto_a

    .line 517
    :cond_1c
    iget v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 518
    .line 519
    if-ne v1, v2, :cond_1d

    .line 520
    .line 521
    const/4 v2, 0x1

    .line 522
    invoke-virtual {v12, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 523
    .line 524
    .line 525
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 526
    .line 527
    invoke-virtual {v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 528
    .line 529
    .line 530
    goto :goto_e

    .line 531
    :cond_1d
    const/4 v2, 0x0

    .line 532
    invoke-virtual {v12, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 533
    .line 534
    .line 535
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 536
    .line 537
    invoke-virtual {v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 538
    .line 539
    .line 540
    :goto_e
    invoke-static {v5}, Landroidx/compose/ui/platform/TestTagKt;->getInfoText(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/text/AnnotatedString;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    if-eqz v2, :cond_38

    .line 545
    .line 546
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 550
    .line 551
    .line 552
    move-result-object v25

    .line 553
    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->urlSpanCache:Landroidx/core/view/MenuHostHelper;

    .line 554
    .line 555
    new-instance v13, Landroid/text/SpannableString;

    .line 556
    .line 557
    iget-object v15, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 558
    .line 559
    move-object/from16 v17, v3

    .line 560
    .line 561
    iget-object v3, v2, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    .line 562
    .line 563
    invoke-direct {v13, v15}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 564
    .line 565
    .line 566
    move-object/from16 v28, v15

    .line 567
    .line 568
    iget-object v15, v2, Landroidx/compose/ui/text/AnnotatedString;->spanStylesOrNull:Ljava/util/ArrayList;

    .line 569
    .line 570
    move-object/from16 v29, v8

    .line 571
    .line 572
    if-eqz v15, :cond_29

    .line 573
    .line 574
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    .line 575
    .line 576
    .line 577
    move-result v8

    .line 578
    move-object/from16 v30, v0

    .line 579
    .line 580
    const/4 v0, 0x0

    .line 581
    :goto_f
    if-ge v0, v8, :cond_28

    .line 582
    .line 583
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v22

    .line 587
    move/from16 v31, v0

    .line 588
    .line 589
    move-object/from16 v0, v22

    .line 590
    .line 591
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 592
    .line 593
    move/from16 v32, v8

    .line 594
    .line 595
    iget-object v8, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 596
    .line 597
    check-cast v8, Landroidx/compose/ui/text/SpanStyle;

    .line 598
    .line 599
    move-object/from16 v33, v15

    .line 600
    .line 601
    iget v15, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 602
    .line 603
    iget v0, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 604
    .line 605
    move-object/from16 v34, v14

    .line 606
    .line 607
    iget-object v14, v8, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 608
    .line 609
    move-object/from16 v36, v9

    .line 610
    .line 611
    move-object/from16 v35, v10

    .line 612
    .line 613
    invoke-interface {v14}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 614
    .line 615
    .line 616
    move-result-wide v9

    .line 617
    move-object v14, v5

    .line 618
    move-object/from16 v37, v6

    .line 619
    .line 620
    iget-wide v5, v8, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    .line 621
    .line 622
    move-wide/from16 v23, v5

    .line 623
    .line 624
    iget-object v5, v8, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 625
    .line 626
    iget-object v6, v8, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 627
    .line 628
    move-object/from16 v38, v5

    .line 629
    .line 630
    iget-object v5, v8, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 631
    .line 632
    move-object/from16 v39, v14

    .line 633
    .line 634
    iget-object v14, v8, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    .line 635
    .line 636
    move-object/from16 v40, v11

    .line 637
    .line 638
    move-object/from16 v41, v12

    .line 639
    .line 640
    iget-wide v11, v8, Landroidx/compose/ui/text/SpanStyle;->background:J

    .line 641
    .line 642
    move-wide/from16 v42, v11

    .line 643
    .line 644
    iget-object v11, v8, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 645
    .line 646
    iget-object v8, v8, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 647
    .line 648
    move-object v12, v7

    .line 649
    move-object/from16 v22, v8

    .line 650
    .line 651
    invoke-interface/range {v22 .. v22}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 652
    .line 653
    .line 654
    move-result-wide v7

    .line 655
    invoke-static {v9, v10, v7, v8}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 656
    .line 657
    .line 658
    move-result v7

    .line 659
    const-wide/16 v44, 0x10

    .line 660
    .line 661
    if-eqz v7, :cond_1e

    .line 662
    .line 663
    move-object/from16 v8, v22

    .line 664
    .line 665
    goto :goto_11

    .line 666
    :cond_1e
    cmp-long v7, v9, v44

    .line 667
    .line 668
    if-eqz v7, :cond_1f

    .line 669
    .line 670
    new-instance v7, Landroidx/compose/ui/text/style/ColorStyle;

    .line 671
    .line 672
    invoke-direct {v7, v9, v10}, Landroidx/compose/ui/text/style/ColorStyle;-><init>(J)V

    .line 673
    .line 674
    .line 675
    :goto_10
    move-object v8, v7

    .line 676
    goto :goto_11

    .line 677
    :cond_1f
    sget-object v7, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    .line 678
    .line 679
    goto :goto_10

    .line 680
    :goto_11
    invoke-interface {v8}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 681
    .line 682
    .line 683
    move-result-wide v7

    .line 684
    invoke-static {v13, v7, v8, v15, v0}, Landroidx/room/util/SchemaInfoUtilKt;->setColor-RPmYEkk(Landroid/text/Spannable;JII)V

    .line 685
    .line 686
    .line 687
    move/from16 v27, v0

    .line 688
    .line 689
    move-object/from16 v22, v13

    .line 690
    .line 691
    move/from16 v26, v15

    .line 692
    .line 693
    invoke-static/range {v22 .. v27}, Landroidx/room/util/SchemaInfoUtilKt;->setFontSize-KmRG4DE(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V

    .line 694
    .line 695
    .line 696
    move-object/from16 v0, v22

    .line 697
    .line 698
    move/from16 v7, v26

    .line 699
    .line 700
    move/from16 v8, v27

    .line 701
    .line 702
    if-nez v38, :cond_21

    .line 703
    .line 704
    if-eqz v6, :cond_20

    .line 705
    .line 706
    goto :goto_12

    .line 707
    :cond_20
    const/16 v6, 0x21

    .line 708
    .line 709
    goto :goto_15

    .line 710
    :cond_21
    :goto_12
    if-nez v38, :cond_22

    .line 711
    .line 712
    sget-object v9, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    .line 713
    .line 714
    goto :goto_13

    .line 715
    :cond_22
    move-object/from16 v9, v38

    .line 716
    .line 717
    :goto_13
    if-eqz v6, :cond_23

    .line 718
    .line 719
    iget v6, v6, Landroidx/compose/ui/text/font/FontStyle;->value:I

    .line 720
    .line 721
    goto :goto_14

    .line 722
    :cond_23
    const/4 v6, 0x0

    .line 723
    :goto_14
    new-instance v10, Landroid/text/style/StyleSpan;

    .line 724
    .line 725
    invoke-static {v9, v6}, Landroidx/sqlite/SQLite;->getAndroidTypefaceStyle-FO1MlWM(Landroidx/compose/ui/text/font/FontWeight;I)I

    .line 726
    .line 727
    .line 728
    move-result v6

    .line 729
    invoke-direct {v10, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 730
    .line 731
    .line 732
    const/16 v6, 0x21

    .line 733
    .line 734
    invoke-virtual {v0, v10, v7, v8, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 735
    .line 736
    .line 737
    :goto_15
    if-eqz v11, :cond_25

    .line 738
    .line 739
    iget v9, v11, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 740
    .line 741
    or-int/lit8 v10, v9, 0x1

    .line 742
    .line 743
    if-ne v10, v9, :cond_24

    .line 744
    .line 745
    new-instance v10, Landroid/text/style/UnderlineSpan;

    .line 746
    .line 747
    invoke-direct {v10}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v0, v10, v7, v8, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 751
    .line 752
    .line 753
    :cond_24
    or-int/lit8 v10, v9, 0x2

    .line 754
    .line 755
    if-ne v10, v9, :cond_25

    .line 756
    .line 757
    new-instance v9, Landroid/text/style/StrikethroughSpan;

    .line 758
    .line 759
    invoke-direct {v9}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v0, v9, v7, v8, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 763
    .line 764
    .line 765
    :cond_25
    if-eqz v5, :cond_26

    .line 766
    .line 767
    new-instance v9, Landroid/text/style/ScaleXSpan;

    .line 768
    .line 769
    iget v5, v5, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    .line 770
    .line 771
    invoke-direct {v9, v5}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v0, v9, v7, v8, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 775
    .line 776
    .line 777
    :cond_26
    invoke-static {v0, v14, v7, v8}, Landroidx/room/util/SchemaInfoUtilKt;->setLocaleList(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V

    .line 778
    .line 779
    .line 780
    cmp-long v5, v42, v44

    .line 781
    .line 782
    if-eqz v5, :cond_27

    .line 783
    .line 784
    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    .line 785
    .line 786
    invoke-static/range {v42 .. v43}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 787
    .line 788
    .line 789
    move-result v9

    .line 790
    invoke-direct {v5, v9}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v0, v5, v7, v8, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 794
    .line 795
    .line 796
    :cond_27
    add-int/lit8 v5, v31, 0x1

    .line 797
    .line 798
    move-object v13, v0

    .line 799
    move v0, v5

    .line 800
    move-object v7, v12

    .line 801
    move/from16 v8, v32

    .line 802
    .line 803
    move-object/from16 v15, v33

    .line 804
    .line 805
    move-object/from16 v14, v34

    .line 806
    .line 807
    move-object/from16 v10, v35

    .line 808
    .line 809
    move-object/from16 v9, v36

    .line 810
    .line 811
    move-object/from16 v6, v37

    .line 812
    .line 813
    move-object/from16 v5, v39

    .line 814
    .line 815
    move-object/from16 v11, v40

    .line 816
    .line 817
    move-object/from16 v12, v41

    .line 818
    .line 819
    goto/16 :goto_f

    .line 820
    .line 821
    :cond_28
    :goto_16
    move-object/from16 v39, v5

    .line 822
    .line 823
    move-object/from16 v37, v6

    .line 824
    .line 825
    move-object/from16 v36, v9

    .line 826
    .line 827
    move-object/from16 v35, v10

    .line 828
    .line 829
    move-object/from16 v40, v11

    .line 830
    .line 831
    move-object/from16 v41, v12

    .line 832
    .line 833
    move-object v0, v13

    .line 834
    move-object/from16 v34, v14

    .line 835
    .line 836
    move-object v12, v7

    .line 837
    goto :goto_17

    .line 838
    :cond_29
    move-object/from16 v30, v0

    .line 839
    .line 840
    goto :goto_16

    .line 841
    :goto_17
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    .line 842
    .line 843
    .line 844
    move-result v5

    .line 845
    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 846
    .line 847
    if-eqz v3, :cond_2b

    .line 848
    .line 849
    new-instance v7, Ljava/util/ArrayList;

    .line 850
    .line 851
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 852
    .line 853
    .line 854
    move-result v8

    .line 855
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 856
    .line 857
    .line 858
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 859
    .line 860
    .line 861
    move-result v8

    .line 862
    const/4 v9, 0x0

    .line 863
    :goto_18
    if-ge v9, v8, :cond_2c

    .line 864
    .line 865
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object v10

    .line 869
    move-object v11, v10

    .line 870
    check-cast v11, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 871
    .line 872
    iget-object v13, v11, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 873
    .line 874
    instance-of v13, v13, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 875
    .line 876
    if-eqz v13, :cond_2a

    .line 877
    .line 878
    iget v13, v11, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 879
    .line 880
    iget v11, v11, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 881
    .line 882
    const/4 v14, 0x0

    .line 883
    invoke-static {v14, v5, v13, v11}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    .line 884
    .line 885
    .line 886
    move-result v11

    .line 887
    if-eqz v11, :cond_2a

    .line 888
    .line 889
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    .line 891
    .line 892
    :cond_2a
    add-int/lit8 v9, v9, 0x1

    .line 893
    .line 894
    goto :goto_18

    .line 895
    :cond_2b
    move-object v7, v6

    .line 896
    :cond_2c
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 897
    .line 898
    .line 899
    move-result v5

    .line 900
    const/4 v8, 0x0

    .line 901
    :goto_19
    if-ge v8, v5, :cond_2e

    .line 902
    .line 903
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 904
    .line 905
    .line 906
    move-result-object v9

    .line 907
    check-cast v9, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 908
    .line 909
    iget-object v10, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 910
    .line 911
    check-cast v10, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 912
    .line 913
    iget v11, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 914
    .line 915
    iget v9, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 916
    .line 917
    instance-of v13, v10, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 918
    .line 919
    if-eqz v13, :cond_2d

    .line 920
    .line 921
    new-instance v13, Landroid/text/style/TtsSpan$VerbatimBuilder;

    .line 922
    .line 923
    iget-object v10, v10, Landroidx/compose/ui/text/VerbatimTtsAnnotation;->verbatim:Ljava/lang/String;

    .line 924
    .line 925
    invoke-direct {v13, v10}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v13}, Landroid/text/style/TtsSpan$Builder;->build()Landroid/text/style/TtsSpan;

    .line 929
    .line 930
    .line 931
    move-result-object v10

    .line 932
    const/16 v13, 0x21

    .line 933
    .line 934
    invoke-virtual {v0, v10, v11, v9, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 935
    .line 936
    .line 937
    add-int/lit8 v8, v8, 0x1

    .line 938
    .line 939
    goto :goto_19

    .line 940
    :cond_2d
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 941
    .line 942
    .line 943
    return-object p0

    .line 944
    :cond_2e
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    .line 945
    .line 946
    .line 947
    move-result v5

    .line 948
    if-eqz v3, :cond_30

    .line 949
    .line 950
    new-instance v6, Ljava/util/ArrayList;

    .line 951
    .line 952
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 953
    .line 954
    .line 955
    move-result v7

    .line 956
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 957
    .line 958
    .line 959
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 960
    .line 961
    .line 962
    move-result v7

    .line 963
    const/4 v8, 0x0

    .line 964
    :goto_1a
    if-ge v8, v7, :cond_30

    .line 965
    .line 966
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    move-result-object v9

    .line 970
    move-object v10, v9

    .line 971
    check-cast v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 972
    .line 973
    iget-object v11, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 974
    .line 975
    instance-of v11, v11, Landroidx/compose/ui/text/UrlAnnotation;

    .line 976
    .line 977
    if-eqz v11, :cond_2f

    .line 978
    .line 979
    iget v11, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 980
    .line 981
    iget v10, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 982
    .line 983
    const/4 v14, 0x0

    .line 984
    invoke-static {v14, v5, v11, v10}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    .line 985
    .line 986
    .line 987
    move-result v10

    .line 988
    if-eqz v10, :cond_2f

    .line 989
    .line 990
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    .line 992
    .line 993
    :cond_2f
    add-int/lit8 v8, v8, 0x1

    .line 994
    .line 995
    goto :goto_1a

    .line 996
    :cond_30
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 997
    .line 998
    .line 999
    move-result v3

    .line 1000
    const/4 v5, 0x0

    .line 1001
    :goto_1b
    if-ge v5, v3, :cond_32

    .line 1002
    .line 1003
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v7

    .line 1007
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1008
    .line 1009
    iget-object v8, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 1010
    .line 1011
    check-cast v8, Landroidx/compose/ui/text/UrlAnnotation;

    .line 1012
    .line 1013
    iget v9, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 1014
    .line 1015
    iget v7, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 1016
    .line 1017
    iget-object v10, v4, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 1018
    .line 1019
    check-cast v10, Ljava/util/WeakHashMap;

    .line 1020
    .line 1021
    invoke-virtual {v10, v8}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v11

    .line 1025
    if-nez v11, :cond_31

    .line 1026
    .line 1027
    new-instance v11, Landroid/text/style/URLSpan;

    .line 1028
    .line 1029
    iget-object v13, v8, Landroidx/compose/ui/text/UrlAnnotation;->url:Ljava/lang/String;

    .line 1030
    .line 1031
    invoke-direct {v11, v13}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v10, v8, v11}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    .line 1036
    .line 1037
    :cond_31
    check-cast v11, Landroid/text/style/URLSpan;

    .line 1038
    .line 1039
    const/16 v13, 0x21

    .line 1040
    .line 1041
    invoke-virtual {v0, v11, v9, v7, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1042
    .line 1043
    .line 1044
    add-int/lit8 v5, v5, 0x1

    .line 1045
    .line 1046
    goto :goto_1b

    .line 1047
    :cond_32
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    .line 1048
    .line 1049
    .line 1050
    move-result v3

    .line 1051
    invoke-virtual {v2, v3}, Landroidx/compose/ui/text/AnnotatedString;->getLinkAnnotations(I)Ljava/util/List;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v2

    .line 1055
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 1056
    .line 1057
    .line 1058
    move-result v3

    .line 1059
    const/4 v5, 0x0

    .line 1060
    :goto_1c
    if-ge v5, v3, :cond_37

    .line 1061
    .line 1062
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v6

    .line 1066
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1067
    .line 1068
    iget v7, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 1069
    .line 1070
    iget-object v8, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 1071
    .line 1072
    iget v9, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 1073
    .line 1074
    if-eq v7, v9, :cond_36

    .line 1075
    .line 1076
    move-object v10, v8

    .line 1077
    check-cast v10, Landroidx/compose/ui/text/LinkAnnotation;

    .line 1078
    .line 1079
    instance-of v11, v10, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 1080
    .line 1081
    if-eqz v11, :cond_34

    .line 1082
    .line 1083
    new-instance v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1084
    .line 1085
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1086
    .line 1087
    .line 1088
    check-cast v8, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 1089
    .line 1090
    invoke-direct {v6, v7, v9, v8}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 1091
    .line 1092
    .line 1093
    iget-object v10, v4, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    .line 1094
    .line 1095
    check-cast v10, Ljava/util/WeakHashMap;

    .line 1096
    .line 1097
    invoke-virtual {v10, v6}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v11

    .line 1101
    if-nez v11, :cond_33

    .line 1102
    .line 1103
    new-instance v11, Landroid/text/style/URLSpan;

    .line 1104
    .line 1105
    iget-object v8, v8, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    .line 1106
    .line 1107
    invoke-direct {v11, v8}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v10, v6, v11}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    .line 1112
    .line 1113
    :cond_33
    check-cast v11, Landroid/text/style/URLSpan;

    .line 1114
    .line 1115
    const/16 v13, 0x21

    .line 1116
    .line 1117
    invoke-virtual {v0, v11, v7, v9, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1118
    .line 1119
    .line 1120
    goto :goto_1d

    .line 1121
    :cond_34
    iget-object v8, v4, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    .line 1122
    .line 1123
    check-cast v8, Ljava/util/WeakHashMap;

    .line 1124
    .line 1125
    invoke-virtual {v8, v6}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v11

    .line 1129
    if-nez v11, :cond_35

    .line 1130
    .line 1131
    new-instance v11, Landroidx/compose/ui/text/platform/ComposeClickableSpan;

    .line 1132
    .line 1133
    invoke-direct {v11, v10}, Landroidx/compose/ui/text/platform/ComposeClickableSpan;-><init>(Landroidx/compose/ui/text/LinkAnnotation;)V

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v8, v6, v11}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    :cond_35
    check-cast v11, Landroid/text/style/ClickableSpan;

    .line 1140
    .line 1141
    const/16 v13, 0x21

    .line 1142
    .line 1143
    invoke-virtual {v0, v11, v7, v9, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1144
    .line 1145
    .line 1146
    goto :goto_1d

    .line 1147
    :cond_36
    const/16 v13, 0x21

    .line 1148
    .line 1149
    :goto_1d
    add-int/lit8 v5, v5, 0x1

    .line 1150
    .line 1151
    goto :goto_1c

    .line 1152
    :cond_37
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->trimToSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v0

    .line 1156
    check-cast v0, Landroid/text/SpannableString;

    .line 1157
    .line 1158
    move-object/from16 v2, v40

    .line 1159
    .line 1160
    goto :goto_1e

    .line 1161
    :cond_38
    move-object/from16 v30, v0

    .line 1162
    .line 1163
    move-object/from16 v17, v3

    .line 1164
    .line 1165
    move-object/from16 v39, v5

    .line 1166
    .line 1167
    move-object/from16 v37, v6

    .line 1168
    .line 1169
    move-object/from16 v29, v8

    .line 1170
    .line 1171
    move-object/from16 v36, v9

    .line 1172
    .line 1173
    move-object/from16 v35, v10

    .line 1174
    .line 1175
    move-object/from16 v41, v12

    .line 1176
    .line 1177
    move-object/from16 v34, v14

    .line 1178
    .line 1179
    move-object v12, v7

    .line 1180
    move-object/from16 v0, p0

    .line 1181
    .line 1182
    move-object v2, v11

    .line 1183
    :goto_1e
    invoke-virtual {v2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    .line 1185
    .line 1186
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Error:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1187
    .line 1188
    invoke-virtual {v12, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1189
    .line 1190
    .line 1191
    move-result v3

    .line 1192
    if-eqz v3, :cond_3a

    .line 1193
    .line 1194
    move-object/from16 v3, v41

    .line 1195
    .line 1196
    const/4 v4, 0x1

    .line 1197
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v12, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v0

    .line 1204
    if-nez v0, :cond_39

    .line 1205
    .line 1206
    move-object/from16 v0, p0

    .line 1207
    .line 1208
    :cond_39
    check-cast v0, Ljava/lang/CharSequence;

    .line 1209
    .line 1210
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    .line 1211
    .line 1212
    .line 1213
    :goto_1f
    move-object/from16 v0, v37

    .line 1214
    .line 1215
    move-object/from16 v14, v39

    .line 1216
    .line 1217
    goto :goto_20

    .line 1218
    :cond_3a
    move-object/from16 v3, v41

    .line 1219
    .line 1220
    goto :goto_1f

    .line 1221
    :goto_20
    invoke-static {v14, v0}, Landroidx/compose/ui/platform/TestTagKt;->getInfoStateDescriptionOrNull(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v4

    .line 1225
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1226
    .line 1227
    const/16 v6, 0x1e

    .line 1228
    .line 1229
    if-lt v5, v6, :cond_3b

    .line 1230
    .line 1231
    invoke-static {v3, v4}, Landroidx/core/os/BuildCompat$Api30Impl;->setStateDescription(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 1232
    .line 1233
    .line 1234
    goto :goto_21

    .line 1235
    :cond_3b
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v5

    .line 1239
    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    .line 1240
    .line 1241
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1242
    .line 1243
    .line 1244
    :goto_21
    invoke-static {v14}, Landroidx/compose/ui/platform/TestTagKt;->getInfoIsCheckable(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1245
    .line 1246
    .line 1247
    move-result v4

    .line 1248
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 1249
    .line 1250
    .line 1251
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1252
    .line 1253
    invoke-virtual {v12, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v4

    .line 1257
    if-nez v4, :cond_3c

    .line 1258
    .line 1259
    move-object/from16 v4, p0

    .line 1260
    .line 1261
    :cond_3c
    check-cast v4, Landroidx/compose/ui/state/ToggleableState;

    .line 1262
    .line 1263
    if-eqz v4, :cond_3e

    .line 1264
    .line 1265
    sget-object v5, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    .line 1266
    .line 1267
    if-ne v4, v5, :cond_3d

    .line 1268
    .line 1269
    const/4 v5, 0x1

    .line 1270
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 1271
    .line 1272
    .line 1273
    goto :goto_22

    .line 1274
    :cond_3d
    sget-object v5, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    .line 1275
    .line 1276
    if-ne v4, v5, :cond_3e

    .line 1277
    .line 1278
    const/4 v4, 0x0

    .line 1279
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 1280
    .line 1281
    .line 1282
    :cond_3e
    :goto_22
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1283
    .line 1284
    invoke-virtual {v12, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v4

    .line 1288
    if-nez v4, :cond_3f

    .line 1289
    .line 1290
    move-object/from16 v4, p0

    .line 1291
    .line 1292
    :cond_3f
    check-cast v4, Ljava/lang/Boolean;

    .line 1293
    .line 1294
    if-eqz v4, :cond_42

    .line 1295
    .line 1296
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1297
    .line 1298
    .line 1299
    move-result v4

    .line 1300
    if-nez v36, :cond_40

    .line 1301
    .line 1302
    move-object/from16 v9, v36

    .line 1303
    .line 1304
    const/4 v15, 0x4

    .line 1305
    goto :goto_23

    .line 1306
    :cond_40
    move-object/from16 v9, v36

    .line 1307
    .line 1308
    iget v5, v9, Landroidx/compose/ui/semantics/Role;->value:I

    .line 1309
    .line 1310
    const/4 v15, 0x4

    .line 1311
    if-ne v5, v15, :cond_41

    .line 1312
    .line 1313
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 1314
    .line 1315
    .line 1316
    goto :goto_24

    .line 1317
    :cond_41
    :goto_23
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 1318
    .line 1319
    .line 1320
    :goto_24
    move-object/from16 v4, v35

    .line 1321
    .line 1322
    goto :goto_25

    .line 1323
    :cond_42
    move-object/from16 v9, v36

    .line 1324
    .line 1325
    const/4 v15, 0x4

    .line 1326
    goto :goto_24

    .line 1327
    :goto_25
    iget-boolean v5, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    .line 1328
    .line 1329
    if-eqz v5, :cond_43

    .line 1330
    .line 1331
    invoke-static {v15, v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v5

    .line 1335
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 1336
    .line 1337
    .line 1338
    move-result v5

    .line 1339
    if-eqz v5, :cond_46

    .line 1340
    .line 1341
    :cond_43
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1342
    .line 1343
    invoke-virtual {v12, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v5

    .line 1347
    if-nez v5, :cond_44

    .line 1348
    .line 1349
    move-object/from16 v5, p0

    .line 1350
    .line 1351
    :cond_44
    check-cast v5, Ljava/util/List;

    .line 1352
    .line 1353
    if-eqz v5, :cond_45

    .line 1354
    .line 1355
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v5

    .line 1359
    check-cast v5, Ljava/lang/String;

    .line 1360
    .line 1361
    goto :goto_26

    .line 1362
    :cond_45
    move-object/from16 v5, p0

    .line 1363
    .line 1364
    :goto_26
    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1365
    .line 1366
    .line 1367
    :cond_46
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->TestTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1368
    .line 1369
    invoke-virtual {v12, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v5

    .line 1373
    if-nez v5, :cond_47

    .line 1374
    .line 1375
    move-object/from16 v5, p0

    .line 1376
    .line 1377
    :cond_47
    check-cast v5, Ljava/lang/String;

    .line 1378
    .line 1379
    if-eqz v5, :cond_4a

    .line 1380
    .line 1381
    move-object v6, v14

    .line 1382
    :goto_27
    if-eqz v6, :cond_49

    .line 1383
    .line 1384
    iget-object v7, v6, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1385
    .line 1386
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->TestTagsAsResourceId:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1387
    .line 1388
    iget-object v10, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 1389
    .line 1390
    invoke-virtual {v10, v8}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1391
    .line 1392
    .line 1393
    move-result v10

    .line 1394
    if-eqz v10, :cond_48

    .line 1395
    .line 1396
    invoke-virtual {v7, v8}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v6

    .line 1400
    check-cast v6, Ljava/lang/Boolean;

    .line 1401
    .line 1402
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1403
    .line 1404
    .line 1405
    move-result v6

    .line 1406
    goto :goto_28

    .line 1407
    :cond_48
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v6

    .line 1411
    goto :goto_27

    .line 1412
    :cond_49
    const/4 v6, 0x0

    .line 1413
    :goto_28
    if-eqz v6, :cond_4a

    .line 1414
    .line 1415
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    .line 1416
    .line 1417
    .line 1418
    :cond_4a
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->Heading:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1419
    .line 1420
    invoke-virtual {v12, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v5

    .line 1424
    if-nez v5, :cond_4b

    .line 1425
    .line 1426
    move-object/from16 v5, p0

    .line 1427
    .line 1428
    :cond_4b
    check-cast v5, Lkotlin/Unit;

    .line 1429
    .line 1430
    if-eqz v5, :cond_4c

    .line 1431
    .line 1432
    const/4 v5, 0x1

    .line 1433
    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHeading(Z)V

    .line 1434
    .line 1435
    .line 1436
    :cond_4c
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->TextEntryKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1437
    .line 1438
    invoke-virtual {v12, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v5

    .line 1442
    if-nez v5, :cond_4d

    .line 1443
    .line 1444
    move-object/from16 v5, p0

    .line 1445
    .line 1446
    :cond_4d
    check-cast v5, Lkotlin/Unit;

    .line 1447
    .line 1448
    if-eqz v5, :cond_4e

    .line 1449
    .line 1450
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTextEntryKey()V

    .line 1451
    .line 1452
    .line 1453
    :cond_4e
    const/4 v13, -0x1

    .line 1454
    if-eq v1, v13, :cond_50

    .line 1455
    .line 1456
    iget v5, v14, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 1457
    .line 1458
    move-object/from16 v6, v34

    .line 1459
    .line 1460
    invoke-virtual {v6, v5}, Landroidx/collection/MutableIntIntMap;->getOrDefault(I)I

    .line 1461
    .line 1462
    .line 1463
    move-result v5

    .line 1464
    if-eq v5, v13, :cond_4f

    .line 1465
    .line 1466
    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setDrawingOrder(I)V

    .line 1467
    .line 1468
    .line 1469
    goto :goto_29

    .line 1470
    :cond_4f
    const-string v5, "AccessibilityDelegate"

    .line 1471
    .line 1472
    const-string v6, "Drawing order is not available, was AccessibilityNodeInfo requested for a child node before its parent?"

    .line 1473
    .line 1474
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    .line 1476
    .line 1477
    :cond_50
    :goto_29
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1478
    .line 1479
    invoke-virtual {v12, v5}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1480
    .line 1481
    .line 1482
    move-result v5

    .line 1483
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 1484
    .line 1485
    .line 1486
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->IsEditable:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1487
    .line 1488
    invoke-virtual {v12, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v5

    .line 1492
    if-nez v5, :cond_51

    .line 1493
    .line 1494
    move-object/from16 v5, p0

    .line 1495
    .line 1496
    :cond_51
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1497
    .line 1498
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1499
    .line 1500
    .line 1501
    move-result v5

    .line 1502
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 1503
    .line 1504
    .line 1505
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->MaxTextLength:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1506
    .line 1507
    invoke-virtual {v12, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v5

    .line 1511
    if-nez v5, :cond_52

    .line 1512
    .line 1513
    move-object/from16 v5, p0

    .line 1514
    .line 1515
    :cond_52
    check-cast v5, Ljava/lang/Integer;

    .line 1516
    .line 1517
    if-eqz v5, :cond_53

    .line 1518
    .line 1519
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1520
    .line 1521
    .line 1522
    move-result v5

    .line 1523
    goto :goto_2a

    .line 1524
    :cond_53
    const/4 v5, -0x1

    .line 1525
    :goto_2a
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    .line 1526
    .line 1527
    .line 1528
    invoke-static {v14}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1529
    .line 1530
    .line 1531
    move-result v5

    .line 1532
    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 1533
    .line 1534
    .line 1535
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1536
    .line 1537
    invoke-virtual {v12, v5}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1538
    .line 1539
    .line 1540
    move-result v7

    .line 1541
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    .line 1545
    .line 1546
    .line 1547
    move-result v7

    .line 1548
    if-eqz v7, :cond_55

    .line 1549
    .line 1550
    invoke-virtual {v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v7

    .line 1554
    check-cast v7, Ljava/lang/Boolean;

    .line 1555
    .line 1556
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1557
    .line 1558
    .line 1559
    move-result v7

    .line 1560
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 1561
    .line 1562
    .line 1563
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    .line 1564
    .line 1565
    .line 1566
    move-result v7

    .line 1567
    if-eqz v7, :cond_54

    .line 1568
    .line 1569
    const/4 v15, 0x2

    .line 1570
    invoke-virtual {v2, v15}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1571
    .line 1572
    .line 1573
    move-object/from16 v7, v30

    .line 1574
    .line 1575
    iput v1, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    .line 1576
    .line 1577
    const/4 v8, 0x1

    .line 1578
    goto :goto_2b

    .line 1579
    :cond_54
    move-object/from16 v7, v30

    .line 1580
    .line 1581
    const/4 v8, 0x1

    .line 1582
    const/4 v15, 0x2

    .line 1583
    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1584
    .line 1585
    .line 1586
    goto :goto_2b

    .line 1587
    :cond_55
    move-object/from16 v7, v30

    .line 1588
    .line 1589
    const/4 v8, 0x1

    .line 1590
    const/4 v15, 0x2

    .line 1591
    :goto_2b
    invoke-static {v14}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->isHidden(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1592
    .line 1593
    .line 1594
    move-result v10

    .line 1595
    xor-int/2addr v10, v8

    .line 1596
    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 1597
    .line 1598
    .line 1599
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->isFake$ui()Z

    .line 1600
    .line 1601
    .line 1602
    move-result v8

    .line 1603
    if-eqz v8, :cond_56

    .line 1604
    .line 1605
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v39

    .line 1609
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1610
    .line 1611
    .line 1612
    goto :goto_2c

    .line 1613
    :cond_56
    move-object/from16 v39, v14

    .line 1614
    .line 1615
    :goto_2c
    invoke-virtual/range {v39 .. v39}, Landroidx/compose/ui/semantics/SemanticsNode;->getTouchBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v8

    .line 1619
    invoke-virtual {v8}, Landroidx/compose/ui/geometry/Rect;->isEmpty()Z

    .line 1620
    .line 1621
    .line 1622
    move-result v8

    .line 1623
    if-eqz v8, :cond_57

    .line 1624
    .line 1625
    const/4 v8, 0x0

    .line 1626
    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 1627
    .line 1628
    .line 1629
    :cond_57
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->LiveRegion:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1630
    .line 1631
    invoke-virtual {v12, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v8

    .line 1635
    if-nez v8, :cond_58

    .line 1636
    .line 1637
    move-object/from16 v8, p0

    .line 1638
    .line 1639
    :cond_58
    check-cast v8, Landroidx/compose/ui/semantics/LiveRegionMode;

    .line 1640
    .line 1641
    if-eqz v8, :cond_5b

    .line 1642
    .line 1643
    iget v8, v8, Landroidx/compose/ui/semantics/LiveRegionMode;->value:I

    .line 1644
    .line 1645
    if-nez v8, :cond_5a

    .line 1646
    .line 1647
    :cond_59
    const/4 v15, 0x1

    .line 1648
    goto :goto_2d

    .line 1649
    :cond_5a
    const/4 v10, 0x1

    .line 1650
    if-ne v8, v10, :cond_59

    .line 1651
    .line 1652
    :goto_2d
    invoke-virtual {v3, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    .line 1653
    .line 1654
    .line 1655
    :cond_5b
    const/4 v8, 0x0

    .line 1656
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1657
    .line 1658
    .line 1659
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->OnClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1660
    .line 1661
    invoke-virtual {v12, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v8

    .line 1665
    if-nez v8, :cond_5c

    .line 1666
    .line 1667
    move-object/from16 v8, p0

    .line 1668
    .line 1669
    :cond_5c
    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1670
    .line 1671
    if-eqz v8, :cond_64

    .line 1672
    .line 1673
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1674
    .line 1675
    invoke-virtual {v12, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v10

    .line 1679
    if-nez v10, :cond_5d

    .line 1680
    .line 1681
    move-object/from16 v10, p0

    .line 1682
    .line 1683
    :cond_5d
    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1684
    .line 1685
    .line 1686
    move-result v10

    .line 1687
    if-nez v9, :cond_5e

    .line 1688
    .line 1689
    goto :goto_2e

    .line 1690
    :cond_5e
    iget v11, v9, Landroidx/compose/ui/semantics/Role;->value:I

    .line 1691
    .line 1692
    const/4 v15, 0x4

    .line 1693
    if-ne v11, v15, :cond_5f

    .line 1694
    .line 1695
    goto :goto_2f

    .line 1696
    :cond_5f
    :goto_2e
    if-nez v9, :cond_60

    .line 1697
    .line 1698
    goto :goto_30

    .line 1699
    :cond_60
    iget v9, v9, Landroidx/compose/ui/semantics/Role;->value:I

    .line 1700
    .line 1701
    const/4 v11, 0x3

    .line 1702
    if-ne v9, v11, :cond_61

    .line 1703
    .line 1704
    :goto_2f
    const/4 v9, 0x1

    .line 1705
    goto :goto_31

    .line 1706
    :cond_61
    :goto_30
    const/4 v9, 0x0

    .line 1707
    :goto_31
    if-eqz v9, :cond_63

    .line 1708
    .line 1709
    if-eqz v9, :cond_62

    .line 1710
    .line 1711
    if-nez v10, :cond_62

    .line 1712
    .line 1713
    goto :goto_32

    .line 1714
    :cond_62
    const/4 v9, 0x0

    .line 1715
    goto :goto_33

    .line 1716
    :cond_63
    :goto_32
    const/4 v9, 0x1

    .line 1717
    :goto_33
    invoke-virtual {v3, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1718
    .line 1719
    .line 1720
    invoke-static {v14}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1721
    .line 1722
    .line 1723
    move-result v9

    .line 1724
    if-eqz v9, :cond_64

    .line 1725
    .line 1726
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    .line 1727
    .line 1728
    .line 1729
    move-result v9

    .line 1730
    if-eqz v9, :cond_64

    .line 1731
    .line 1732
    new-instance v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1733
    .line 1734
    const/16 v10, 0x10

    .line 1735
    .line 1736
    iget-object v8, v8, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1737
    .line 1738
    invoke-direct {v9, v8, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/String;I)V

    .line 1739
    .line 1740
    .line 1741
    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1742
    .line 1743
    .line 1744
    :cond_64
    const/4 v8, 0x0

    .line 1745
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 1746
    .line 1747
    .line 1748
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->OnLongClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1749
    .line 1750
    invoke-static {v4, v8}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v8

    .line 1754
    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1755
    .line 1756
    if-eqz v8, :cond_65

    .line 1757
    .line 1758
    const/4 v10, 0x1

    .line 1759
    invoke-virtual {v3, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 1760
    .line 1761
    .line 1762
    invoke-static {v14}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1763
    .line 1764
    .line 1765
    move-result v9

    .line 1766
    if-eqz v9, :cond_65

    .line 1767
    .line 1768
    new-instance v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1769
    .line 1770
    const/16 v10, 0x20

    .line 1771
    .line 1772
    iget-object v8, v8, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1773
    .line 1774
    invoke-direct {v9, v8, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/String;I)V

    .line 1775
    .line 1776
    .line 1777
    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1778
    .line 1779
    .line 1780
    :cond_65
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->CopyText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1781
    .line 1782
    invoke-static {v4, v8}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v8

    .line 1786
    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1787
    .line 1788
    if-eqz v8, :cond_66

    .line 1789
    .line 1790
    new-instance v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1791
    .line 1792
    const/16 v10, 0x4000

    .line 1793
    .line 1794
    iget-object v8, v8, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1795
    .line 1796
    invoke-direct {v9, v8, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/String;I)V

    .line 1797
    .line 1798
    .line 1799
    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1800
    .line 1801
    .line 1802
    :cond_66
    invoke-static {v14}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1803
    .line 1804
    .line 1805
    move-result v8

    .line 1806
    if-eqz v8, :cond_6b

    .line 1807
    .line 1808
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->SetText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1809
    .line 1810
    invoke-static {v4, v8}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1811
    .line 1812
    .line 1813
    move-result-object v8

    .line 1814
    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1815
    .line 1816
    if-eqz v8, :cond_67

    .line 1817
    .line 1818
    new-instance v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1819
    .line 1820
    const/high16 v10, 0x200000

    .line 1821
    .line 1822
    iget-object v8, v8, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1823
    .line 1824
    invoke-direct {v9, v8, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/String;I)V

    .line 1825
    .line 1826
    .line 1827
    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1828
    .line 1829
    .line 1830
    :cond_67
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->OnImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1831
    .line 1832
    invoke-static {v4, v8}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v8

    .line 1836
    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1837
    .line 1838
    if-eqz v8, :cond_68

    .line 1839
    .line 1840
    new-instance v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1841
    .line 1842
    const v10, 0x1020054

    .line 1843
    .line 1844
    .line 1845
    iget-object v8, v8, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1846
    .line 1847
    invoke-direct {v9, v8, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/String;I)V

    .line 1848
    .line 1849
    .line 1850
    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1851
    .line 1852
    .line 1853
    :cond_68
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->CutText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1854
    .line 1855
    invoke-static {v4, v8}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1856
    .line 1857
    .line 1858
    move-result-object v8

    .line 1859
    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1860
    .line 1861
    if-eqz v8, :cond_69

    .line 1862
    .line 1863
    new-instance v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1864
    .line 1865
    const/high16 v10, 0x10000

    .line 1866
    .line 1867
    iget-object v8, v8, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1868
    .line 1869
    invoke-direct {v9, v8, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/String;I)V

    .line 1870
    .line 1871
    .line 1872
    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1873
    .line 1874
    .line 1875
    :cond_69
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->PasteText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1876
    .line 1877
    invoke-static {v4, v8}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v8

    .line 1881
    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1882
    .line 1883
    if-eqz v8, :cond_6b

    .line 1884
    .line 1885
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    .line 1886
    .line 1887
    .line 1888
    move-result v9

    .line 1889
    if-eqz v9, :cond_6b

    .line 1890
    .line 1891
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/platform/AndroidComposeView;->getClipboardManager()Landroidx/compose/ui/platform/AndroidClipboardManager;

    .line 1892
    .line 1893
    .line 1894
    move-result-object v9

    .line 1895
    invoke-virtual {v9}, Landroidx/compose/ui/platform/AndroidClipboardManager;->getClipboardManager()Landroid/content/ClipboardManager;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v9

    .line 1899
    invoke-virtual {v9}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    .line 1900
    .line 1901
    .line 1902
    move-result-object v9

    .line 1903
    if-eqz v9, :cond_6a

    .line 1904
    .line 1905
    const-string v10, "text/*"

    .line 1906
    .line 1907
    invoke-virtual {v9, v10}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 1908
    .line 1909
    .line 1910
    move-result v9

    .line 1911
    goto :goto_34

    .line 1912
    :cond_6a
    const/4 v9, 0x0

    .line 1913
    :goto_34
    if-eqz v9, :cond_6b

    .line 1914
    .line 1915
    new-instance v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1916
    .line 1917
    const v10, 0x8000

    .line 1918
    .line 1919
    .line 1920
    iget-object v8, v8, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1921
    .line 1922
    invoke-direct {v9, v8, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/String;I)V

    .line 1923
    .line 1924
    .line 1925
    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1926
    .line 1927
    .line 1928
    :cond_6b
    invoke-static {v14}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 1929
    .line 1930
    .line 1931
    move-result-object v8

    .line 1932
    if-eqz v8, :cond_75

    .line 1933
    .line 1934
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 1935
    .line 1936
    .line 1937
    move-result v8

    .line 1938
    if-nez v8, :cond_6c

    .line 1939
    .line 1940
    goto/16 :goto_39

    .line 1941
    .line 1942
    :cond_6c
    invoke-virtual {v7, v14}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionStart(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 1943
    .line 1944
    .line 1945
    move-result v8

    .line 1946
    invoke-virtual {v7, v14}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionEnd(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 1947
    .line 1948
    .line 1949
    move-result v9

    .line 1950
    invoke-virtual {v3, v8, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    .line 1951
    .line 1952
    .line 1953
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->SetSelection:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1954
    .line 1955
    invoke-static {v4, v8}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1956
    .line 1957
    .line 1958
    move-result-object v8

    .line 1959
    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1960
    .line 1961
    new-instance v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1962
    .line 1963
    if-eqz v8, :cond_6d

    .line 1964
    .line 1965
    iget-object v8, v8, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1966
    .line 1967
    goto :goto_35

    .line 1968
    :cond_6d
    move-object/from16 v8, p0

    .line 1969
    .line 1970
    :goto_35
    const/high16 v10, 0x20000

    .line 1971
    .line 1972
    invoke-direct {v9, v8, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/String;I)V

    .line 1973
    .line 1974
    .line 1975
    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1976
    .line 1977
    .line 1978
    const/16 v8, 0x100

    .line 1979
    .line 1980
    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1981
    .line 1982
    .line 1983
    const/16 v8, 0x200

    .line 1984
    .line 1985
    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1986
    .line 1987
    .line 1988
    const/16 v8, 0xb

    .line 1989
    .line 1990
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 1991
    .line 1992
    .line 1993
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1994
    .line 1995
    invoke-static {v4, v8}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v8

    .line 1999
    check-cast v8, Ljava/util/List;

    .line 2000
    .line 2001
    if-eqz v8, :cond_6e

    .line 2002
    .line 2003
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 2004
    .line 2005
    .line 2006
    move-result v8

    .line 2007
    if-eqz v8, :cond_75

    .line 2008
    .line 2009
    :cond_6e
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2010
    .line 2011
    invoke-virtual {v12, v8}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2012
    .line 2013
    .line 2014
    move-result v8

    .line 2015
    if-eqz v8, :cond_75

    .line 2016
    .line 2017
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2018
    .line 2019
    invoke-virtual {v12, v8}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2020
    .line 2021
    .line 2022
    move-result v8

    .line 2023
    if-eqz v8, :cond_6f

    .line 2024
    .line 2025
    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2026
    .line 2027
    .line 2028
    move-result-object v5

    .line 2029
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2030
    .line 2031
    .line 2032
    move-result v5

    .line 2033
    if-nez v5, :cond_6f

    .line 2034
    .line 2035
    goto :goto_39

    .line 2036
    :cond_6f
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 2037
    .line 2038
    .line 2039
    move-result-object v5

    .line 2040
    :goto_36
    if-eqz v5, :cond_71

    .line 2041
    .line 2042
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2043
    .line 2044
    .line 2045
    move-result-object v6

    .line 2046
    if-eqz v6, :cond_70

    .line 2047
    .line 2048
    iget-boolean v8, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    .line 2049
    .line 2050
    const/4 v10, 0x1

    .line 2051
    if-ne v8, v10, :cond_70

    .line 2052
    .line 2053
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2054
    .line 2055
    iget-object v6, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2056
    .line 2057
    invoke-virtual {v6, v8}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2058
    .line 2059
    .line 2060
    move-result v6

    .line 2061
    if-eqz v6, :cond_70

    .line 2062
    .line 2063
    goto :goto_37

    .line 2064
    :cond_70
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 2065
    .line 2066
    .line 2067
    move-result-object v5

    .line 2068
    goto :goto_36

    .line 2069
    :cond_71
    move-object/from16 v5, p0

    .line 2070
    .line 2071
    :goto_37
    if-eqz v5, :cond_74

    .line 2072
    .line 2073
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2074
    .line 2075
    .line 2076
    move-result-object v5

    .line 2077
    if-eqz v5, :cond_73

    .line 2078
    .line 2079
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2080
    .line 2081
    iget-object v5, v5, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2082
    .line 2083
    invoke-virtual {v5, v6}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    .line 2085
    .line 2086
    move-result-object v5

    .line 2087
    if-nez v5, :cond_72

    .line 2088
    .line 2089
    move-object/from16 v5, p0

    .line 2090
    .line 2091
    :cond_72
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2092
    .line 2093
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2094
    .line 2095
    .line 2096
    move-result v5

    .line 2097
    goto :goto_38

    .line 2098
    :cond_73
    const/4 v5, 0x0

    .line 2099
    :goto_38
    if-nez v5, :cond_74

    .line 2100
    .line 2101
    goto :goto_39

    .line 2102
    :cond_74
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    .line 2103
    .line 2104
    .line 2105
    move-result v5

    .line 2106
    or-int/lit8 v5, v5, 0x14

    .line 2107
    .line 2108
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 2109
    .line 2110
    .line 2111
    :cond_75
    :goto_39
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2112
    .line 2113
    const/16 v6, 0x1a

    .line 2114
    .line 2115
    if-lt v5, v6, :cond_7a

    .line 2116
    .line 2117
    new-instance v5, Ljava/util/ArrayList;

    .line 2118
    .line 2119
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2120
    .line 2121
    .line 2122
    const-string v6, "androidx.compose.ui.semantics.id"

    .line 2123
    .line 2124
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2125
    .line 2126
    .line 2127
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    .line 2128
    .line 2129
    .line 2130
    move-result-object v6

    .line 2131
    if-eqz v6, :cond_77

    .line 2132
    .line 2133
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 2134
    .line 2135
    .line 2136
    move-result v6

    .line 2137
    if-nez v6, :cond_76

    .line 2138
    .line 2139
    goto :goto_3a

    .line 2140
    :cond_76
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2141
    .line 2142
    invoke-virtual {v12, v6}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2143
    .line 2144
    .line 2145
    move-result v6

    .line 2146
    if-eqz v6, :cond_77

    .line 2147
    .line 2148
    const-string v6, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    .line 2149
    .line 2150
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2151
    .line 2152
    .line 2153
    :cond_77
    :goto_3a
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->TestTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2154
    .line 2155
    invoke-virtual {v12, v6}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2156
    .line 2157
    .line 2158
    move-result v6

    .line 2159
    if-eqz v6, :cond_78

    .line 2160
    .line 2161
    const-string v6, "androidx.compose.ui.semantics.testTag"

    .line 2162
    .line 2163
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2164
    .line 2165
    .line 2166
    :cond_78
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->Shape:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2167
    .line 2168
    invoke-virtual {v12, v6}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2169
    .line 2170
    .line 2171
    move-result v6

    .line 2172
    if-eqz v6, :cond_79

    .line 2173
    .line 2174
    const-string v6, "androidx.compose.ui.semantics.shapeType"

    .line 2175
    .line 2176
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2177
    .line 2178
    .line 2179
    const-string v6, "androidx.compose.ui.semantics.shapeRect"

    .line 2180
    .line 2181
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2182
    .line 2183
    .line 2184
    const-string v6, "androidx.compose.ui.semantics.shapeCorners"

    .line 2185
    .line 2186
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2187
    .line 2188
    .line 2189
    const-string v6, "androidx.compose.ui.semantics.shapeRegion"

    .line 2190
    .line 2191
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2192
    .line 2193
    .line 2194
    :cond_79
    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAvailableExtraData(Ljava/util/ArrayList;)V

    .line 2195
    .line 2196
    .line 2197
    :cond_7a
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2198
    .line 2199
    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2200
    .line 2201
    .line 2202
    move-result-object v4

    .line 2203
    check-cast v4, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 2204
    .line 2205
    const/4 v5, 0x0

    .line 2206
    if-eqz v4, :cond_80

    .line 2207
    .line 2208
    iget v6, v4, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->current:F

    .line 2209
    .line 2210
    iget-object v8, v4, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->range:Lkotlin/ranges/ClosedFloatRange;

    .line 2211
    .line 2212
    iget v9, v8, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    .line 2213
    .line 2214
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsActions;->SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2215
    .line 2216
    invoke-virtual {v12, v10}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2217
    .line 2218
    .line 2219
    move-result v11

    .line 2220
    if-eqz v11, :cond_7b

    .line 2221
    .line 2222
    const-string v11, "android.widget.SeekBar"

    .line 2223
    .line 2224
    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2225
    .line 2226
    .line 2227
    goto :goto_3b

    .line 2228
    :cond_7b
    const-string v11, "android.widget.ProgressBar"

    .line 2229
    .line 2230
    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2231
    .line 2232
    .line 2233
    :goto_3b
    sget-object v11, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->Indeterminate:Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 2234
    .line 2235
    if-eq v4, v11, :cond_7c

    .line 2236
    .line 2237
    const/4 v4, 0x1

    .line 2238
    invoke-static {v4, v5, v9, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 2239
    .line 2240
    .line 2241
    move-result-object v11

    .line 2242
    invoke-virtual {v3, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 2243
    .line 2244
    .line 2245
    :cond_7c
    invoke-virtual {v12, v10}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2246
    .line 2247
    .line 2248
    move-result v4

    .line 2249
    if-eqz v4, :cond_80

    .line 2250
    .line 2251
    invoke-static {v14}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2252
    .line 2253
    .line 2254
    move-result v4

    .line 2255
    if-eqz v4, :cond_80

    .line 2256
    .line 2257
    cmpg-float v4, v9, v5

    .line 2258
    .line 2259
    if-gez v4, :cond_7d

    .line 2260
    .line 2261
    move v9, v5

    .line 2262
    :cond_7d
    cmpg-float v4, v6, v9

    .line 2263
    .line 2264
    if-gez v4, :cond_7e

    .line 2265
    .line 2266
    sget-object v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2267
    .line 2268
    invoke-virtual {v2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2269
    .line 2270
    .line 2271
    :cond_7e
    iget v4, v8, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    .line 2272
    .line 2273
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2274
    .line 2275
    .line 2276
    move-result-object v4

    .line 2277
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 2278
    .line 2279
    .line 2280
    move-result v4

    .line 2281
    cmpl-float v8, v5, v4

    .line 2282
    .line 2283
    if-lez v8, :cond_7f

    .line 2284
    .line 2285
    goto :goto_3c

    .line 2286
    :cond_7f
    move v4, v5

    .line 2287
    :goto_3c
    cmpl-float v4, v6, v4

    .line 2288
    .line 2289
    if-lez v4, :cond_80

    .line 2290
    .line 2291
    sget-object v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2292
    .line 2293
    invoke-virtual {v2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2294
    .line 2295
    .line 2296
    :cond_80
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2297
    .line 2298
    const/16 v6, 0x18

    .line 2299
    .line 2300
    if-lt v4, v6, :cond_82

    .line 2301
    .line 2302
    invoke-static {v14}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2303
    .line 2304
    .line 2305
    move-result v6

    .line 2306
    if-eqz v6, :cond_82

    .line 2307
    .line 2308
    iget-object v6, v14, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2309
    .line 2310
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2311
    .line 2312
    iget-object v6, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2313
    .line 2314
    invoke-virtual {v6, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2315
    .line 2316
    .line 2317
    move-result-object v6

    .line 2318
    if-nez v6, :cond_81

    .line 2319
    .line 2320
    move-object/from16 v6, p0

    .line 2321
    .line 2322
    :cond_81
    check-cast v6, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2323
    .line 2324
    if-eqz v6, :cond_82

    .line 2325
    .line 2326
    new-instance v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2327
    .line 2328
    const v9, 0x102003d

    .line 2329
    .line 2330
    .line 2331
    iget-object v6, v6, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 2332
    .line 2333
    invoke-direct {v8, v6, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/String;I)V

    .line 2334
    .line 2335
    .line 2336
    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2337
    .line 2338
    .line 2339
    :cond_82
    iget-object v6, v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2340
    .line 2341
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2342
    .line 2343
    .line 2344
    move-result-object v8

    .line 2345
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2346
    .line 2347
    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2348
    .line 2349
    invoke-virtual {v8, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2350
    .line 2351
    .line 2352
    move-result-object v8

    .line 2353
    if-nez v8, :cond_83

    .line 2354
    .line 2355
    move-object/from16 v8, p0

    .line 2356
    .line 2357
    :cond_83
    check-cast v8, Landroidx/compose/ui/semantics/CollectionInfo;

    .line 2358
    .line 2359
    if-eqz v8, :cond_84

    .line 2360
    .line 2361
    iget v9, v8, Landroidx/compose/ui/semantics/CollectionInfo;->rowCount:I

    .line 2362
    .line 2363
    iget v8, v8, Landroidx/compose/ui/semantics/CollectionInfo;->columnCount:I

    .line 2364
    .line 2365
    const/4 v10, 0x0

    .line 2366
    invoke-static {v9, v8, v10, v10}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 2367
    .line 2368
    .line 2369
    move-result-object v8

    .line 2370
    invoke-virtual {v6, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 2371
    .line 2372
    .line 2373
    goto :goto_41

    .line 2374
    :cond_84
    new-instance v8, Ljava/util/ArrayList;

    .line 2375
    .line 2376
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2377
    .line 2378
    .line 2379
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2380
    .line 2381
    .line 2382
    move-result-object v9

    .line 2383
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2384
    .line 2385
    iget-object v9, v9, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2386
    .line 2387
    invoke-virtual {v9, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2388
    .line 2389
    .line 2390
    move-result-object v9

    .line 2391
    if-nez v9, :cond_85

    .line 2392
    .line 2393
    move-object/from16 v9, p0

    .line 2394
    .line 2395
    :cond_85
    if-eqz v9, :cond_87

    .line 2396
    .line 2397
    const/4 v15, 0x4

    .line 2398
    invoke-static {v15, v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 2399
    .line 2400
    .line 2401
    move-result-object v9

    .line 2402
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 2403
    .line 2404
    .line 2405
    move-result v10

    .line 2406
    const/4 v11, 0x0

    .line 2407
    :goto_3d
    if-ge v11, v10, :cond_87

    .line 2408
    .line 2409
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2410
    .line 2411
    .line 2412
    move-result-object v12

    .line 2413
    check-cast v12, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 2414
    .line 2415
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2416
    .line 2417
    .line 2418
    move-result-object v13

    .line 2419
    sget-object v15, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2420
    .line 2421
    iget-object v13, v13, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2422
    .line 2423
    invoke-virtual {v13, v15}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2424
    .line 2425
    .line 2426
    move-result v13

    .line 2427
    if-eqz v13, :cond_86

    .line 2428
    .line 2429
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2430
    .line 2431
    .line 2432
    :cond_86
    add-int/lit8 v11, v11, 0x1

    .line 2433
    .line 2434
    goto :goto_3d

    .line 2435
    :cond_87
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2436
    .line 2437
    .line 2438
    move-result v9

    .line 2439
    if-nez v9, :cond_8a

    .line 2440
    .line 2441
    invoke-static {v8}, Landroidx/room/util/SchemaInfoUtilKt;->calculateIfHorizontallyStacked(Ljava/util/ArrayList;)Z

    .line 2442
    .line 2443
    .line 2444
    move-result v9

    .line 2445
    if-eqz v9, :cond_88

    .line 2446
    .line 2447
    const/4 v10, 0x1

    .line 2448
    goto :goto_3e

    .line 2449
    :cond_88
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 2450
    .line 2451
    .line 2452
    move-result v10

    .line 2453
    :goto_3e
    if-eqz v9, :cond_89

    .line 2454
    .line 2455
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 2456
    .line 2457
    .line 2458
    move-result v8

    .line 2459
    :goto_3f
    const/4 v9, 0x0

    .line 2460
    goto :goto_40

    .line 2461
    :cond_89
    const/4 v8, 0x1

    .line 2462
    goto :goto_3f

    .line 2463
    :goto_40
    invoke-static {v10, v8, v9, v9}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 2464
    .line 2465
    .line 2466
    move-result-object v8

    .line 2467
    invoke-virtual {v6, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 2468
    .line 2469
    .line 2470
    :cond_8a
    :goto_41
    invoke-static {v14, v2}, Landroidx/room/util/SchemaInfoUtilKt;->setCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2471
    .line 2472
    .line 2473
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2474
    .line 2475
    .line 2476
    move-result-object v6

    .line 2477
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2478
    .line 2479
    invoke-static {v6, v8}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2480
    .line 2481
    .line 2482
    move-result-object v6

    .line 2483
    check-cast v6, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 2484
    .line 2485
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2486
    .line 2487
    .line 2488
    move-result-object v8

    .line 2489
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2490
    .line 2491
    invoke-static {v8, v9}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2492
    .line 2493
    .line 2494
    move-result-object v8

    .line 2495
    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2496
    .line 2497
    if-eqz v6, :cond_93

    .line 2498
    .line 2499
    if-eqz v8, :cond_93

    .line 2500
    .line 2501
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2502
    .line 2503
    .line 2504
    move-result-object v9

    .line 2505
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2506
    .line 2507
    iget-object v9, v9, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2508
    .line 2509
    invoke-virtual {v9, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2510
    .line 2511
    .line 2512
    move-result-object v9

    .line 2513
    if-nez v9, :cond_8b

    .line 2514
    .line 2515
    move-object/from16 v9, p0

    .line 2516
    .line 2517
    :cond_8b
    if-nez v9, :cond_8e

    .line 2518
    .line 2519
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2520
    .line 2521
    .line 2522
    move-result-object v9

    .line 2523
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2524
    .line 2525
    iget-object v9, v9, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2526
    .line 2527
    invoke-virtual {v9, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2528
    .line 2529
    .line 2530
    move-result-object v9

    .line 2531
    if-nez v9, :cond_8c

    .line 2532
    .line 2533
    move-object/from16 v9, p0

    .line 2534
    .line 2535
    :cond_8c
    if-eqz v9, :cond_8d

    .line 2536
    .line 2537
    goto :goto_42

    .line 2538
    :cond_8d
    const-string v9, "android.widget.HorizontalScrollView"

    .line 2539
    .line 2540
    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2541
    .line 2542
    .line 2543
    :cond_8e
    :goto_42
    iget-object v9, v6, Landroidx/compose/ui/semantics/ScrollAxisRange;->maxValue:Lkotlin/jvm/functions/Function0;

    .line 2544
    .line 2545
    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2546
    .line 2547
    .line 2548
    move-result-object v9

    .line 2549
    check-cast v9, Ljava/lang/Number;

    .line 2550
    .line 2551
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 2552
    .line 2553
    .line 2554
    move-result v9

    .line 2555
    cmpl-float v9, v9, v5

    .line 2556
    .line 2557
    if-lez v9, :cond_8f

    .line 2558
    .line 2559
    const/4 v10, 0x1

    .line 2560
    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2561
    .line 2562
    .line 2563
    :cond_8f
    invoke-static {v14}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2564
    .line 2565
    .line 2566
    move-result v9

    .line 2567
    if-eqz v9, :cond_93

    .line 2568
    .line 2569
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollForward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    .line 2570
    .line 2571
    .line 2572
    move-result v9

    .line 2573
    sget-object v10, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2574
    .line 2575
    if-eqz v9, :cond_91

    .line 2576
    .line 2577
    sget-object v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2578
    .line 2579
    invoke-virtual {v2, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2580
    .line 2581
    .line 2582
    move-object/from16 v9, v29

    .line 2583
    .line 2584
    iget-object v11, v9, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2585
    .line 2586
    if-ne v11, v10, :cond_90

    .line 2587
    .line 2588
    sget-object v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2589
    .line 2590
    goto :goto_43

    .line 2591
    :cond_90
    sget-object v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2592
    .line 2593
    :goto_43
    invoke-virtual {v2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2594
    .line 2595
    .line 2596
    goto :goto_44

    .line 2597
    :cond_91
    move-object/from16 v9, v29

    .line 2598
    .line 2599
    :goto_44
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollBackward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    .line 2600
    .line 2601
    .line 2602
    move-result v6

    .line 2603
    if-eqz v6, :cond_93

    .line 2604
    .line 2605
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2606
    .line 2607
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2608
    .line 2609
    .line 2610
    iget-object v6, v9, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2611
    .line 2612
    if-ne v6, v10, :cond_92

    .line 2613
    .line 2614
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2615
    .line 2616
    goto :goto_45

    .line 2617
    :cond_92
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2618
    .line 2619
    :goto_45
    invoke-virtual {v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2620
    .line 2621
    .line 2622
    :cond_93
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2623
    .line 2624
    .line 2625
    move-result-object v6

    .line 2626
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2627
    .line 2628
    invoke-static {v6, v9}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2629
    .line 2630
    .line 2631
    move-result-object v6

    .line 2632
    check-cast v6, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 2633
    .line 2634
    if-eqz v6, :cond_9a

    .line 2635
    .line 2636
    if-eqz v8, :cond_9a

    .line 2637
    .line 2638
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2639
    .line 2640
    .line 2641
    move-result-object v8

    .line 2642
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2643
    .line 2644
    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2645
    .line 2646
    invoke-virtual {v8, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2647
    .line 2648
    .line 2649
    move-result-object v8

    .line 2650
    if-nez v8, :cond_94

    .line 2651
    .line 2652
    move-object/from16 v8, p0

    .line 2653
    .line 2654
    :cond_94
    if-nez v8, :cond_97

    .line 2655
    .line 2656
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2657
    .line 2658
    .line 2659
    move-result-object v8

    .line 2660
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2661
    .line 2662
    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2663
    .line 2664
    invoke-virtual {v8, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2665
    .line 2666
    .line 2667
    move-result-object v8

    .line 2668
    if-nez v8, :cond_95

    .line 2669
    .line 2670
    move-object/from16 v8, p0

    .line 2671
    .line 2672
    :cond_95
    if-eqz v8, :cond_96

    .line 2673
    .line 2674
    goto :goto_46

    .line 2675
    :cond_96
    const-string v8, "android.widget.ScrollView"

    .line 2676
    .line 2677
    invoke-virtual {v2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2678
    .line 2679
    .line 2680
    :cond_97
    :goto_46
    iget-object v8, v6, Landroidx/compose/ui/semantics/ScrollAxisRange;->maxValue:Lkotlin/jvm/functions/Function0;

    .line 2681
    .line 2682
    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2683
    .line 2684
    .line 2685
    move-result-object v8

    .line 2686
    check-cast v8, Ljava/lang/Number;

    .line 2687
    .line 2688
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 2689
    .line 2690
    .line 2691
    move-result v8

    .line 2692
    cmpl-float v5, v8, v5

    .line 2693
    .line 2694
    const/4 v10, 0x1

    .line 2695
    if-lez v5, :cond_98

    .line 2696
    .line 2697
    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2698
    .line 2699
    .line 2700
    :cond_98
    invoke-static {v14}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2701
    .line 2702
    .line 2703
    move-result v5

    .line 2704
    if-eqz v5, :cond_9b

    .line 2705
    .line 2706
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollForward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    .line 2707
    .line 2708
    .line 2709
    move-result v5

    .line 2710
    if-eqz v5, :cond_99

    .line 2711
    .line 2712
    sget-object v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2713
    .line 2714
    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2715
    .line 2716
    .line 2717
    sget-object v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2718
    .line 2719
    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2720
    .line 2721
    .line 2722
    :cond_99
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollBackward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    .line 2723
    .line 2724
    .line 2725
    move-result v5

    .line 2726
    if-eqz v5, :cond_9b

    .line 2727
    .line 2728
    sget-object v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2729
    .line 2730
    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2731
    .line 2732
    .line 2733
    sget-object v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2734
    .line 2735
    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2736
    .line 2737
    .line 2738
    goto :goto_47

    .line 2739
    :cond_9a
    const/4 v10, 0x1

    .line 2740
    :cond_9b
    :goto_47
    const/16 v5, 0x1d

    .line 2741
    .line 2742
    if-lt v4, v5, :cond_9c

    .line 2743
    .line 2744
    invoke-static {v14, v2}, Landroidx/compose/ui/platform/TestTagKt;->addPageActions(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2745
    .line 2746
    .line 2747
    :cond_9c
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2748
    .line 2749
    .line 2750
    move-result-object v4

    .line 2751
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2752
    .line 2753
    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2754
    .line 2755
    .line 2756
    move-result-object v4

    .line 2757
    check-cast v4, Ljava/lang/CharSequence;

    .line 2758
    .line 2759
    invoke-virtual {v2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPaneTitle(Ljava/lang/CharSequence;)V

    .line 2760
    .line 2761
    .line 2762
    invoke-static {v14}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2763
    .line 2764
    .line 2765
    move-result v4

    .line 2766
    if-eqz v4, :cond_ac

    .line 2767
    .line 2768
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2769
    .line 2770
    .line 2771
    move-result-object v4

    .line 2772
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsActions;->Expand:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2773
    .line 2774
    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2775
    .line 2776
    .line 2777
    move-result-object v4

    .line 2778
    check-cast v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2779
    .line 2780
    if-eqz v4, :cond_9d

    .line 2781
    .line 2782
    new-instance v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2783
    .line 2784
    const/high16 v6, 0x40000

    .line 2785
    .line 2786
    iget-object v4, v4, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 2787
    .line 2788
    invoke-direct {v5, v4, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/String;I)V

    .line 2789
    .line 2790
    .line 2791
    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2792
    .line 2793
    .line 2794
    :cond_9d
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2795
    .line 2796
    .line 2797
    move-result-object v4

    .line 2798
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsActions;->Collapse:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2799
    .line 2800
    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2801
    .line 2802
    .line 2803
    move-result-object v4

    .line 2804
    check-cast v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2805
    .line 2806
    if-eqz v4, :cond_9e

    .line 2807
    .line 2808
    new-instance v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2809
    .line 2810
    const/high16 v6, 0x80000

    .line 2811
    .line 2812
    iget-object v4, v4, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 2813
    .line 2814
    invoke-direct {v5, v4, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/String;I)V

    .line 2815
    .line 2816
    .line 2817
    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2818
    .line 2819
    .line 2820
    :cond_9e
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2821
    .line 2822
    .line 2823
    move-result-object v4

    .line 2824
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsActions;->Dismiss:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2825
    .line 2826
    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2827
    .line 2828
    .line 2829
    move-result-object v4

    .line 2830
    check-cast v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2831
    .line 2832
    if-eqz v4, :cond_9f

    .line 2833
    .line 2834
    new-instance v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2835
    .line 2836
    const/high16 v6, 0x100000

    .line 2837
    .line 2838
    iget-object v4, v4, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 2839
    .line 2840
    invoke-direct {v5, v4, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/String;I)V

    .line 2841
    .line 2842
    .line 2843
    invoke-virtual {v2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2844
    .line 2845
    .line 2846
    :cond_9f
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2847
    .line 2848
    .line 2849
    move-result-object v4

    .line 2850
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsActions;->CustomActions:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2851
    .line 2852
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->CustomActions:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2853
    .line 2854
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2855
    .line 2856
    invoke-virtual {v4, v6}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2857
    .line 2858
    .line 2859
    move-result v4

    .line 2860
    if-eqz v4, :cond_ac

    .line 2861
    .line 2862
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2863
    .line 2864
    .line 2865
    move-result-object v4

    .line 2866
    invoke-virtual {v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2867
    .line 2868
    .line 2869
    move-result-object v4

    .line 2870
    check-cast v4, Ljava/util/List;

    .line 2871
    .line 2872
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 2873
    .line 2874
    .line 2875
    move-result v5

    .line 2876
    move-object/from16 v6, v21

    .line 2877
    .line 2878
    iget v8, v6, Landroidx/collection/MutableIntList;->_size:I

    .line 2879
    .line 2880
    if-ge v5, v8, :cond_ab

    .line 2881
    .line 2882
    new-instance v5, Landroidx/collection/SparseArrayCompat;

    .line 2883
    .line 2884
    const/4 v8, 0x0

    .line 2885
    invoke-direct {v5, v8}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    .line 2886
    .line 2887
    .line 2888
    invoke-static {}, Landroidx/collection/ObjectIntMapKt;->mutableObjectIntMapOf()Landroidx/collection/MutableObjectIntMap;

    .line 2889
    .line 2890
    .line 2891
    move-result-object v9

    .line 2892
    move-object/from16 v11, v20

    .line 2893
    .line 2894
    iget-boolean v12, v11, Landroidx/collection/SparseArrayCompat;->garbage:Z

    .line 2895
    .line 2896
    if-eqz v12, :cond_a0

    .line 2897
    .line 2898
    invoke-static {v11}, Landroidx/collection/ArraySetKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 2899
    .line 2900
    .line 2901
    :cond_a0
    iget-object v12, v11, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 2902
    .line 2903
    iget v13, v11, Landroidx/collection/SparseArrayCompat;->size:I

    .line 2904
    .line 2905
    invoke-static {v13, v1, v12}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch(II[I)I

    .line 2906
    .line 2907
    .line 2908
    move-result v12

    .line 2909
    if-ltz v12, :cond_a1

    .line 2910
    .line 2911
    goto :goto_48

    .line 2912
    :cond_a1
    move v10, v8

    .line 2913
    :goto_48
    if-eqz v10, :cond_a9

    .line 2914
    .line 2915
    invoke-virtual {v11, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 2916
    .line 2917
    .line 2918
    move-result-object v10

    .line 2919
    check-cast v10, Landroidx/collection/MutableObjectIntMap;

    .line 2920
    .line 2921
    new-instance v12, Landroidx/collection/MutableIntList;

    .line 2922
    .line 2923
    invoke-direct {v12}, Landroidx/collection/MutableIntList;-><init>()V

    .line 2924
    .line 2925
    .line 2926
    iget-object v13, v6, Landroidx/collection/MutableIntList;->content:[I

    .line 2927
    .line 2928
    iget v6, v6, Landroidx/collection/MutableIntList;->_size:I

    .line 2929
    .line 2930
    move v15, v8

    .line 2931
    :goto_49
    if-ge v15, v6, :cond_a2

    .line 2932
    .line 2933
    aget v8, v13, v15

    .line 2934
    .line 2935
    invoke-virtual {v12, v8}, Landroidx/collection/MutableIntList;->add(I)V

    .line 2936
    .line 2937
    .line 2938
    add-int/lit8 v15, v15, 0x1

    .line 2939
    .line 2940
    const/4 v8, 0x0

    .line 2941
    goto :goto_49

    .line 2942
    :cond_a2
    new-instance v6, Ljava/util/ArrayList;

    .line 2943
    .line 2944
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2945
    .line 2946
    .line 2947
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 2948
    .line 2949
    .line 2950
    move-result v8

    .line 2951
    const/4 v13, 0x0

    .line 2952
    :goto_4a
    if-ge v13, v8, :cond_a8

    .line 2953
    .line 2954
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2955
    .line 2956
    .line 2957
    move-result-object v15

    .line 2958
    check-cast v15, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .line 2959
    .line 2960
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2961
    .line 2962
    .line 2963
    move/from16 v16, v8

    .line 2964
    .line 2965
    invoke-virtual {v15}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    .line 2966
    .line 2967
    .line 2968
    move-result-object v8

    .line 2969
    invoke-virtual {v10, v8}, Landroidx/collection/MutableObjectIntMap;->findKeyIndex(Ljava/lang/Object;)I

    .line 2970
    .line 2971
    .line 2972
    move-result v8

    .line 2973
    if-ltz v8, :cond_a7

    .line 2974
    .line 2975
    invoke-virtual {v15}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    .line 2976
    .line 2977
    .line 2978
    move-result-object v8

    .line 2979
    invoke-virtual {v10, v8}, Landroidx/collection/MutableObjectIntMap;->findKeyIndex(Ljava/lang/Object;)I

    .line 2980
    .line 2981
    .line 2982
    move-result v18

    .line 2983
    if-ltz v18, :cond_a6

    .line 2984
    .line 2985
    iget-object v8, v10, Landroidx/collection/MutableObjectIntMap;->values:[I

    .line 2986
    .line 2987
    aget v8, v8, v18

    .line 2988
    .line 2989
    move-object/from16 v18, v10

    .line 2990
    .line 2991
    invoke-virtual {v15}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    .line 2992
    .line 2993
    .line 2994
    move-result-object v10

    .line 2995
    invoke-virtual {v5, v8, v10}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 2996
    .line 2997
    .line 2998
    invoke-virtual {v15}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    .line 2999
    .line 3000
    .line 3001
    move-result-object v10

    .line 3002
    invoke-virtual {v9, v8, v10}, Landroidx/collection/MutableObjectIntMap;->set(ILjava/lang/Object;)V

    .line 3003
    .line 3004
    .line 3005
    iget-object v10, v12, Landroidx/collection/MutableIntList;->content:[I

    .line 3006
    .line 3007
    move-object/from16 v19, v10

    .line 3008
    .line 3009
    iget v10, v12, Landroidx/collection/MutableIntList;->_size:I

    .line 3010
    .line 3011
    move/from16 v20, v13

    .line 3012
    .line 3013
    const/4 v13, 0x0

    .line 3014
    :goto_4b
    if-ge v13, v10, :cond_a4

    .line 3015
    .line 3016
    move/from16 v21, v10

    .line 3017
    .line 3018
    aget v10, v19, v13

    .line 3019
    .line 3020
    if-ne v8, v10, :cond_a3

    .line 3021
    .line 3022
    goto :goto_4c

    .line 3023
    :cond_a3
    add-int/lit8 v13, v13, 0x1

    .line 3024
    .line 3025
    move/from16 v10, v21

    .line 3026
    .line 3027
    goto :goto_4b

    .line 3028
    :cond_a4
    const/4 v13, -0x1

    .line 3029
    :goto_4c
    if-ltz v13, :cond_a5

    .line 3030
    .line 3031
    invoke-virtual {v12, v13}, Landroidx/collection/MutableIntList;->removeAt(I)V

    .line 3032
    .line 3033
    .line 3034
    :cond_a5
    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3035
    .line 3036
    invoke-virtual {v15}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    .line 3037
    .line 3038
    .line 3039
    move-result-object v13

    .line 3040
    invoke-direct {v10, v13, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/String;I)V

    .line 3041
    .line 3042
    .line 3043
    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 3044
    .line 3045
    .line 3046
    goto :goto_4d

    .line 3047
    :cond_a6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3048
    .line 3049
    const-string v1, "There is no key "

    .line 3050
    .line 3051
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3052
    .line 3053
    .line 3054
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3055
    .line 3056
    .line 3057
    const-string v1, " in the map"

    .line 3058
    .line 3059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3060
    .line 3061
    .line 3062
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3063
    .line 3064
    .line 3065
    move-result-object v0

    .line 3066
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 3067
    .line 3068
    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 3069
    .line 3070
    .line 3071
    throw v1

    .line 3072
    :cond_a7
    move-object/from16 v18, v10

    .line 3073
    .line 3074
    move/from16 v20, v13

    .line 3075
    .line 3076
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3077
    .line 3078
    .line 3079
    :goto_4d
    add-int/lit8 v13, v20, 0x1

    .line 3080
    .line 3081
    move/from16 v8, v16

    .line 3082
    .line 3083
    move-object/from16 v10, v18

    .line 3084
    .line 3085
    goto/16 :goto_4a

    .line 3086
    .line 3087
    :cond_a8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 3088
    .line 3089
    .line 3090
    move-result v4

    .line 3091
    const/4 v15, 0x0

    .line 3092
    :goto_4e
    if-ge v15, v4, :cond_aa

    .line 3093
    .line 3094
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3095
    .line 3096
    .line 3097
    move-result-object v8

    .line 3098
    check-cast v8, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .line 3099
    .line 3100
    invoke-virtual {v12, v15}, Landroidx/collection/MutableIntList;->get(I)I

    .line 3101
    .line 3102
    .line 3103
    move-result v10

    .line 3104
    invoke-virtual {v8}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    .line 3105
    .line 3106
    .line 3107
    move-result-object v13

    .line 3108
    invoke-virtual {v5, v10, v13}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 3109
    .line 3110
    .line 3111
    invoke-virtual {v8}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    .line 3112
    .line 3113
    .line 3114
    move-result-object v13

    .line 3115
    invoke-virtual {v9, v10, v13}, Landroidx/collection/MutableObjectIntMap;->set(ILjava/lang/Object;)V

    .line 3116
    .line 3117
    .line 3118
    new-instance v13, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3119
    .line 3120
    invoke-virtual {v8}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    .line 3121
    .line 3122
    .line 3123
    move-result-object v8

    .line 3124
    invoke-direct {v13, v8, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/String;I)V

    .line 3125
    .line 3126
    .line 3127
    invoke-virtual {v2, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 3128
    .line 3129
    .line 3130
    add-int/lit8 v15, v15, 0x1

    .line 3131
    .line 3132
    goto :goto_4e

    .line 3133
    :cond_a9
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 3134
    .line 3135
    .line 3136
    move-result v8

    .line 3137
    const/4 v15, 0x0

    .line 3138
    :goto_4f
    if-ge v15, v8, :cond_aa

    .line 3139
    .line 3140
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3141
    .line 3142
    .line 3143
    move-result-object v10

    .line 3144
    check-cast v10, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .line 3145
    .line 3146
    invoke-virtual {v6, v15}, Landroidx/collection/MutableIntList;->get(I)I

    .line 3147
    .line 3148
    .line 3149
    move-result v12

    .line 3150
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    .line 3151
    .line 3152
    .line 3153
    move-result-object v13

    .line 3154
    invoke-virtual {v5, v12, v13}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 3155
    .line 3156
    .line 3157
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    .line 3158
    .line 3159
    .line 3160
    move-result-object v13

    .line 3161
    invoke-virtual {v9, v12, v13}, Landroidx/collection/MutableObjectIntMap;->set(ILjava/lang/Object;)V

    .line 3162
    .line 3163
    .line 3164
    new-instance v13, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3165
    .line 3166
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->getLabel()Ljava/lang/String;

    .line 3167
    .line 3168
    .line 3169
    move-result-object v10

    .line 3170
    invoke-direct {v13, v10, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/String;I)V

    .line 3171
    .line 3172
    .line 3173
    invoke-virtual {v2, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 3174
    .line 3175
    .line 3176
    add-int/lit8 v15, v15, 0x1

    .line 3177
    .line 3178
    goto :goto_4f

    .line 3179
    :cond_aa
    iget-object v4, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->actionIdToLabel:Landroidx/collection/SparseArrayCompat;

    .line 3180
    .line 3181
    invoke-virtual {v4, v1, v5}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 3182
    .line 3183
    .line 3184
    invoke-virtual {v11, v1, v9}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 3185
    .line 3186
    .line 3187
    goto :goto_50

    .line 3188
    :cond_ab
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3189
    .line 3190
    const-string v1, "Can\'t have more than "

    .line 3191
    .line 3192
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3193
    .line 3194
    .line 3195
    iget v1, v6, Landroidx/collection/MutableIntList;->_size:I

    .line 3196
    .line 3197
    const-string v2, " custom actions for one widget"

    .line 3198
    .line 3199
    invoke-static {v0, v1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 3200
    .line 3201
    .line 3202
    move-result-object v0

    .line 3203
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 3204
    .line 3205
    .line 3206
    return-object p0

    .line 3207
    :cond_ac
    :goto_50
    invoke-static {v14, v0}, Landroidx/compose/ui/platform/TestTagKt;->access$isScreenReaderFocusable(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Z

    .line 3208
    .line 3209
    .line 3210
    move-result v0

    .line 3211
    invoke-virtual {v2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScreenReaderFocusable(Z)V

    .line 3212
    .line 3213
    .line 3214
    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Landroidx/collection/MutableIntIntMap;

    .line 3215
    .line 3216
    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntIntMap;->getOrDefault(I)I

    .line 3217
    .line 3218
    .line 3219
    move-result v0

    .line 3220
    const/4 v13, -0x1

    .line 3221
    if-eq v0, v13, :cond_ae

    .line 3222
    .line 3223
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 3224
    .line 3225
    .line 3226
    move-result-object v4

    .line 3227
    invoke-static {v4, v0}, Landroidx/compose/ui/platform/TestTagKt;->semanticsIdToView(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 3228
    .line 3229
    .line 3230
    move-result-object v4

    .line 3231
    if-eqz v4, :cond_ad

    .line 3232
    .line 3233
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;)V

    .line 3234
    .line 3235
    .line 3236
    move-object/from16 v4, v17

    .line 3237
    .line 3238
    goto :goto_51

    .line 3239
    :cond_ad
    move-object/from16 v4, v17

    .line 3240
    .line 3241
    invoke-virtual {v3, v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    .line 3242
    .line 3243
    .line 3244
    :goto_51
    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalBeforeVal:Ljava/lang/String;

    .line 3245
    .line 3246
    move-object/from16 v5, p0

    .line 3247
    .line 3248
    invoke-virtual {v7, v1, v2, v0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->addExtraDataToAccessibilityNodeInfoHelper(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3249
    .line 3250
    .line 3251
    goto :goto_52

    .line 3252
    :cond_ae
    move-object/from16 v5, p0

    .line 3253
    .line 3254
    move-object/from16 v4, v17

    .line 3255
    .line 3256
    :goto_52
    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Landroidx/collection/MutableIntIntMap;

    .line 3257
    .line 3258
    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntIntMap;->getOrDefault(I)I

    .line 3259
    .line 3260
    .line 3261
    move-result v0

    .line 3262
    const/4 v13, -0x1

    .line 3263
    if-eq v0, v13, :cond_af

    .line 3264
    .line 3265
    invoke-virtual {v4}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 3266
    .line 3267
    .line 3268
    move-result-object v4

    .line 3269
    invoke-static {v4, v0}, Landroidx/compose/ui/platform/TestTagKt;->semanticsIdToView(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 3270
    .line 3271
    .line 3272
    move-result-object v0

    .line 3273
    if-eqz v0, :cond_af

    .line 3274
    .line 3275
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    .line 3276
    .line 3277
    .line 3278
    iget-object v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalAfterVal:Ljava/lang/String;

    .line 3279
    .line 3280
    invoke-virtual {v7, v1, v2, v0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->addExtraDataToAccessibilityNodeInfoHelper(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3281
    .line 3282
    .line 3283
    :cond_af
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 3284
    .line 3285
    .line 3286
    move-result-object v0

    .line 3287
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->AccessibilityClassName:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 3288
    .line 3289
    invoke-static {v0, v3}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 3290
    .line 3291
    .line 3292
    move-result-object v0

    .line 3293
    check-cast v0, Ljava/lang/String;

    .line 3294
    .line 3295
    if-eqz v0, :cond_b0

    .line 3296
    .line 3297
    invoke-virtual {v2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 3298
    .line 3299
    .line 3300
    :cond_b0
    move-object v6, v2

    .line 3301
    :goto_53
    iget-boolean v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendingFocusAffectingEvent:Z

    .line 3302
    .line 3303
    if-eqz v0, :cond_b2

    .line 3304
    .line 3305
    iget v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 3306
    .line 3307
    if-ne v1, v0, :cond_b1

    .line 3308
    .line 3309
    iput-object v6, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyAccessibilityFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 3310
    .line 3311
    :cond_b1
    iget v0, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    .line 3312
    .line 3313
    if-ne v1, v0, :cond_b2

    .line 3314
    .line 3315
    iput-object v6, v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 3316
    .line 3317
    :cond_b2
    return-object v6

    .line 3318
    :cond_b3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3319
    .line 3320
    const-string v2, "semanticsNode "

    .line 3321
    .line 3322
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3323
    .line 3324
    .line 3325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3326
    .line 3327
    .line 3328
    const-string v1, " has null parent"

    .line 3329
    .line 3330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3331
    .line 3332
    .line 3333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3334
    .line 3335
    .line 3336
    move-result-object v0

    .line 3337
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    .line 3338
    .line 3339
    .line 3340
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 3341
    .line 3342
    .line 3343
    const/4 v5, 0x0

    .line 3344
    return-object v5
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 8
    .line 9
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->addExtraDataToAccessibilityNodeInfoHelper(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->createAccessibilityNodeInfo$androidx$compose$ui$platform$AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 12
    .line 13
    check-cast p0, Landroidx/customview/widget/ExploreByTouchHelper;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 20
    .line 21
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final findFocus(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 5

    .line 1
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->$r8$classId:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    if-ne p1, v2, :cond_0

    .line 18
    .line 19
    iget p1, v3, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p0, "Unknown focus type: "

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget p1, v3, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    .line 37
    .line 38
    if-ne p1, v1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    :goto_0
    return-object v4

    .line 46
    :pswitch_0
    check-cast v3, Landroidx/customview/widget/ExploreByTouchHelper;

    .line 47
    .line 48
    if-ne p1, v2, :cond_3

    .line 49
    .line 50
    iget p1, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    iget p1, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 54
    .line 55
    :goto_1
    if-ne p1, v1, :cond_4

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    :goto_2
    return-object v4

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget v4, v0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->$r8$classId:I

    .line 10
    .line 11
    const/16 v7, 0x40

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 14
    .line 15
    packed-switch v4, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 19
    .line 20
    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 21
    .line 22
    const/4 v14, 0x0

    .line 23
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object v15

    .line 27
    move/from16 p0, v14

    .line 28
    .line 29
    iget-object v14, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 40
    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    iget-object v5, v5, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 44
    .line 45
    if-nez v5, :cond_1

    .line 46
    .line 47
    :cond_0
    :goto_0
    const/16 v20, 0x0

    .line 48
    .line 49
    goto/16 :goto_4a

    .line 50
    .line 51
    :cond_1
    iget-object v10, v5, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 52
    .line 53
    iget v9, v5, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 54
    .line 55
    iget-object v8, v5, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 56
    .line 57
    iget-object v11, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 58
    .line 59
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->IsSensitiveData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 60
    .line 61
    invoke-virtual {v11, v13}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    if-nez v13, :cond_2

    .line 66
    .line 67
    const/4 v13, 0x0

    .line 68
    :cond_2
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    if-eqz v13, :cond_4

    .line 75
    .line 76
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    .line 78
    const/16 v6, 0x22

    .line 79
    .line 80
    if-lt v13, v6, :cond_3

    .line 81
    .line 82
    invoke-static {v4}, Landroidx/camera/camera2/compat/Api34Compat;->isRequestFromAccessibilityTool(Landroid/view/accessibility/AccessibilityManager;)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const/4 v6, 0x1

    .line 88
    :goto_1
    if-nez v6, :cond_4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    const/16 v6, 0xc

    .line 92
    .line 93
    if-eq v2, v7, :cond_88

    .line 94
    .line 95
    const/16 v7, 0x80

    .line 96
    .line 97
    if-eq v2, v7, :cond_86

    .line 98
    .line 99
    const/16 v4, 0x8

    .line 100
    .line 101
    const/16 v7, 0x200

    .line 102
    .line 103
    const/16 v13, 0x100

    .line 104
    .line 105
    if-eq v2, v13, :cond_68

    .line 106
    .line 107
    if-eq v2, v7, :cond_68

    .line 108
    .line 109
    const/16 v7, 0x4000

    .line 110
    .line 111
    if-eq v2, v7, :cond_66

    .line 112
    .line 113
    const/high16 v7, 0x20000

    .line 114
    .line 115
    if-eq v2, v7, :cond_62

    .line 116
    .line 117
    invoke-static {v5}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-nez v7, :cond_5

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_5
    const/4 v7, 0x1

    .line 125
    if-eq v2, v7, :cond_5f

    .line 126
    .line 127
    const/4 v7, 0x2

    .line 128
    if-eq v2, v7, :cond_5d

    .line 129
    .line 130
    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 131
    .line 132
    sparse-switch v2, :sswitch_data_0

    .line 133
    .line 134
    .line 135
    packed-switch v2, :pswitch_data_1

    .line 136
    .line 137
    .line 138
    packed-switch v2, :pswitch_data_2

    .line 139
    .line 140
    .line 141
    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->actionIdToLabel:Landroidx/collection/SparseArrayCompat;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 148
    .line 149
    if-eqz v0, :cond_0

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Ljava/lang/CharSequence;

    .line 156
    .line 157
    if-nez v0, :cond_6

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_6
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->CustomActions:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 161
    .line 162
    invoke-virtual {v11, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    if-nez v1, :cond_7

    .line 167
    .line 168
    const/4 v12, 0x0

    .line 169
    goto :goto_2

    .line 170
    :cond_7
    move-object v12, v1

    .line 171
    :goto_2
    check-cast v12, Ljava/util/List;

    .line 172
    .line 173
    if-nez v12, :cond_8

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_8
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    const/4 v2, 0x0

    .line 182
    :goto_3
    if-ge v2, v1, :cond_0

    .line 183
    .line 184
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    check-cast v3, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    .line 189
    .line 190
    iget-object v4, v3, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->label:Ljava/lang/String;

    .line 191
    .line 192
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_9

    .line 197
    .line 198
    iget-object v0, v3, Landroidx/compose/ui/semantics/CustomAccessibilityAction;->action:Lkotlin/jvm/functions/Function0;

    .line 199
    .line 200
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Ljava/lang/Boolean;

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    goto/16 :goto_4b

    .line 211
    .line 212
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :pswitch_0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 216
    .line 217
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    if-nez v0, :cond_a

    .line 222
    .line 223
    const/4 v12, 0x0

    .line 224
    goto :goto_4

    .line 225
    :cond_a
    move-object v12, v0

    .line 226
    :goto_4
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 227
    .line 228
    if-eqz v12, :cond_0

    .line 229
    .line 230
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 231
    .line 232
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 233
    .line 234
    if-eqz v0, :cond_0

    .line 235
    .line 236
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    check-cast v0, Ljava/lang/Boolean;

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 243
    .line 244
    .line 245
    move-result v11

    .line 246
    goto/16 :goto_4b

    .line 247
    .line 248
    :pswitch_1
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageLeft:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 249
    .line 250
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    if-nez v0, :cond_b

    .line 255
    .line 256
    const/4 v12, 0x0

    .line 257
    goto :goto_5

    .line 258
    :cond_b
    move-object v12, v0

    .line 259
    :goto_5
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 260
    .line 261
    if-eqz v12, :cond_0

    .line 262
    .line 263
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 264
    .line 265
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 266
    .line 267
    if-eqz v0, :cond_0

    .line 268
    .line 269
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    check-cast v0, Ljava/lang/Boolean;

    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 276
    .line 277
    .line 278
    move-result v11

    .line 279
    goto/16 :goto_4b

    .line 280
    .line 281
    :pswitch_2
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 282
    .line 283
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    if-nez v0, :cond_c

    .line 288
    .line 289
    const/4 v12, 0x0

    .line 290
    goto :goto_6

    .line 291
    :cond_c
    move-object v12, v0

    .line 292
    :goto_6
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 293
    .line 294
    if-eqz v12, :cond_0

    .line 295
    .line 296
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 297
    .line 298
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 299
    .line 300
    if-eqz v0, :cond_0

    .line 301
    .line 302
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    check-cast v0, Ljava/lang/Boolean;

    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 309
    .line 310
    .line 311
    move-result v11

    .line 312
    goto/16 :goto_4b

    .line 313
    .line 314
    :pswitch_3
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageUp:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 315
    .line 316
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    if-nez v0, :cond_d

    .line 321
    .line 322
    const/4 v12, 0x0

    .line 323
    goto :goto_7

    .line 324
    :cond_d
    move-object v12, v0

    .line 325
    :goto_7
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 326
    .line 327
    if-eqz v12, :cond_0

    .line 328
    .line 329
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 330
    .line 331
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 332
    .line 333
    if-eqz v0, :cond_0

    .line 334
    .line 335
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    check-cast v0, Ljava/lang/Boolean;

    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 342
    .line 343
    .line 344
    move-result v11

    .line 345
    goto/16 :goto_4b

    .line 346
    .line 347
    :pswitch_4
    :sswitch_0
    const/16 v16, 0x20

    .line 348
    .line 349
    const-wide v17, 0xffffffffL

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    goto/16 :goto_1e

    .line 355
    .line 356
    :sswitch_1
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->OnImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 357
    .line 358
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    if-nez v0, :cond_e

    .line 363
    .line 364
    const/4 v12, 0x0

    .line 365
    goto :goto_8

    .line 366
    :cond_e
    move-object v12, v0

    .line 367
    :goto_8
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 368
    .line 369
    if-eqz v12, :cond_0

    .line 370
    .line 371
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 372
    .line 373
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 374
    .line 375
    if-eqz v0, :cond_0

    .line 376
    .line 377
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    check-cast v0, Ljava/lang/Boolean;

    .line 382
    .line 383
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 384
    .line 385
    .line 386
    move-result v11

    .line 387
    goto/16 :goto_4b

    .line 388
    .line 389
    :sswitch_2
    if-eqz v3, :cond_0

    .line 390
    .line 391
    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 392
    .line 393
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    if-nez v1, :cond_f

    .line 398
    .line 399
    goto/16 :goto_0

    .line 400
    .line 401
    :cond_f
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 402
    .line 403
    invoke-virtual {v11, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    if-nez v1, :cond_10

    .line 408
    .line 409
    const/4 v12, 0x0

    .line 410
    goto :goto_9

    .line 411
    :cond_10
    move-object v12, v1

    .line 412
    :goto_9
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 413
    .line 414
    if-eqz v12, :cond_0

    .line 415
    .line 416
    iget-object v1, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 417
    .line 418
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 419
    .line 420
    if-eqz v1, :cond_0

    .line 421
    .line 422
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    check-cast v0, Ljava/lang/Boolean;

    .line 435
    .line 436
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 437
    .line 438
    .line 439
    move-result v11

    .line 440
    goto/16 :goto_4b

    .line 441
    .line 442
    :sswitch_3
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    if-eqz v0, :cond_12

    .line 447
    .line 448
    iget-object v1, v0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 449
    .line 450
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 451
    .line 452
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 453
    .line 454
    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    if-nez v1, :cond_11

    .line 459
    .line 460
    const/4 v1, 0x0

    .line 461
    :cond_11
    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 462
    .line 463
    goto :goto_a

    .line 464
    :cond_12
    const/4 v1, 0x0

    .line 465
    :goto_a
    if-nez v1, :cond_14

    .line 466
    .line 467
    if-eqz v0, :cond_14

    .line 468
    .line 469
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    if-eqz v0, :cond_12

    .line 474
    .line 475
    iget-object v1, v0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 476
    .line 477
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 478
    .line 479
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 480
    .line 481
    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    if-nez v1, :cond_13

    .line 486
    .line 487
    const/4 v1, 0x0

    .line 488
    :cond_13
    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 489
    .line 490
    goto :goto_a

    .line 491
    :cond_14
    if-nez v0, :cond_15

    .line 492
    .line 493
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    new-instance v1, Landroid/graphics/Rect;

    .line 498
    .line 499
    iget v2, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 500
    .line 501
    float-to-double v2, v2

    .line 502
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 503
    .line 504
    .line 505
    move-result-wide v2

    .line 506
    double-to-float v2, v2

    .line 507
    float-to-int v2, v2

    .line 508
    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 509
    .line 510
    float-to-double v3, v3

    .line 511
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 512
    .line 513
    .line 514
    move-result-wide v3

    .line 515
    double-to-float v3, v3

    .line 516
    float-to-int v3, v3

    .line 517
    iget v4, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 518
    .line 519
    float-to-double v4, v4

    .line 520
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 521
    .line 522
    .line 523
    move-result-wide v4

    .line 524
    double-to-float v4, v4

    .line 525
    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 526
    .line 527
    .line 528
    move-result v4

    .line 529
    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 530
    .line 531
    float-to-double v5, v0

    .line 532
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 533
    .line 534
    .line 535
    move-result-wide v5

    .line 536
    double-to-float v0, v5

    .line 537
    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v14, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 545
    .line 546
    .line 547
    move-result v11

    .line 548
    goto/16 :goto_4b

    .line 549
    .line 550
    :cond_15
    const-wide/16 v1, 0x0

    .line 551
    .line 552
    move-wide v11, v1

    .line 553
    const/4 v3, 0x0

    .line 554
    :goto_b
    if-eqz v0, :cond_26

    .line 555
    .line 556
    iget-object v6, v0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 557
    .line 558
    iget-object v13, v0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 559
    .line 560
    iget-object v13, v13, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 561
    .line 562
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 563
    .line 564
    invoke-virtual {v13, v14}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v14

    .line 568
    if-nez v14, :cond_16

    .line 569
    .line 570
    const/4 v14, 0x0

    .line 571
    :cond_16
    check-cast v14, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 572
    .line 573
    if-eqz v14, :cond_25

    .line 574
    .line 575
    iget-object v15, v6, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 576
    .line 577
    iget-object v15, v15, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 578
    .line 579
    check-cast v15, Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 580
    .line 581
    invoke-static {v15}, Landroidx/compose/ui/layout/RulerKt;->boundsInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 582
    .line 583
    .line 584
    move-result-object v15

    .line 585
    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 586
    .line 587
    iget-object v6, v6, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 588
    .line 589
    check-cast v6, Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 590
    .line 591
    invoke-virtual {v6}, Landroidx/compose/ui/node/NodeCoordinator;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 592
    .line 593
    .line 594
    move-result-object v6

    .line 595
    if-eqz v6, :cond_17

    .line 596
    .line 597
    check-cast v6, Landroidx/compose/ui/node/NodeCoordinator;

    .line 598
    .line 599
    invoke-virtual {v6, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    .line 600
    .line 601
    .line 602
    move-result-wide v16

    .line 603
    move-wide/from16 v7, v16

    .line 604
    .line 605
    :goto_c
    const/16 v16, 0x20

    .line 606
    .line 607
    const-wide v17, 0xffffffffL

    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    goto :goto_d

    .line 613
    :cond_17
    move-wide v7, v1

    .line 614
    goto :goto_c

    .line 615
    :goto_d
    invoke-virtual {v15, v7, v8}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    .line 616
    .line 617
    .line 618
    move-result-object v6

    .line 619
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->findCoordinatorToGetBounds$ui()Landroidx/compose/ui/node/NodeCoordinator;

    .line 620
    .line 621
    .line 622
    move-result-object v7

    .line 623
    if-eqz v7, :cond_19

    .line 624
    .line 625
    invoke-virtual {v7}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    .line 626
    .line 627
    .line 628
    move-result-object v8

    .line 629
    iget-boolean v8, v8, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 630
    .line 631
    if-eqz v8, :cond_18

    .line 632
    .line 633
    goto :goto_e

    .line 634
    :cond_18
    const/4 v7, 0x0

    .line 635
    :goto_e
    if-eqz v7, :cond_19

    .line 636
    .line 637
    invoke-virtual {v7, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    .line 638
    .line 639
    .line 640
    move-result-wide v7

    .line 641
    goto :goto_f

    .line 642
    :cond_19
    move-wide v7, v1

    .line 643
    :goto_f
    invoke-static {v7, v8, v11, v12}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 644
    .line 645
    .line 646
    move-result-wide v7

    .line 647
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->findCoordinatorToGetBounds$ui()Landroidx/compose/ui/node/NodeCoordinator;

    .line 648
    .line 649
    .line 650
    move-result-object v9

    .line 651
    if-eqz v9, :cond_1a

    .line 652
    .line 653
    iget-wide v1, v9, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 654
    .line 655
    goto :goto_10

    .line 656
    :cond_1a
    const-wide/16 v1, 0x0

    .line 657
    .line 658
    :goto_10
    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->toSize-ozmzZPI(J)J

    .line 659
    .line 660
    .line 661
    move-result-wide v1

    .line 662
    invoke-static {v7, v8, v1, v2}, Lorg/slf4j/helpers/Util;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    iget v2, v1, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 667
    .line 668
    iget v7, v6, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 669
    .line 670
    sub-float/2addr v2, v7

    .line 671
    iget v7, v1, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 672
    .line 673
    iget v8, v6, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 674
    .line 675
    sub-float/2addr v7, v8

    .line 676
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 677
    .line 678
    .line 679
    move-result v8

    .line 680
    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    .line 681
    .line 682
    .line 683
    move-result v9

    .line 684
    cmpg-float v8, v8, v9

    .line 685
    .line 686
    if-nez v8, :cond_1c

    .line 687
    .line 688
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 689
    .line 690
    .line 691
    move-result v8

    .line 692
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 693
    .line 694
    .line 695
    move-result v9

    .line 696
    cmpg-float v8, v8, v9

    .line 697
    .line 698
    if-gez v8, :cond_1b

    .line 699
    .line 700
    goto :goto_11

    .line 701
    :cond_1b
    move v2, v7

    .line 702
    goto :goto_11

    .line 703
    :cond_1c
    move/from16 v2, p0

    .line 704
    .line 705
    :goto_11
    iget v7, v1, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 706
    .line 707
    iget v8, v6, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 708
    .line 709
    sub-float/2addr v7, v8

    .line 710
    iget v1, v1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 711
    .line 712
    iget v6, v6, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 713
    .line 714
    sub-float/2addr v1, v6

    .line 715
    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    .line 716
    .line 717
    .line 718
    move-result v6

    .line 719
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 720
    .line 721
    .line 722
    move-result v8

    .line 723
    cmpg-float v6, v6, v8

    .line 724
    .line 725
    if-nez v6, :cond_1e

    .line 726
    .line 727
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 728
    .line 729
    .line 730
    move-result v6

    .line 731
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 732
    .line 733
    .line 734
    move-result v8

    .line 735
    cmpg-float v6, v6, v8

    .line 736
    .line 737
    if-gez v6, :cond_1d

    .line 738
    .line 739
    goto :goto_12

    .line 740
    :cond_1d
    move v7, v1

    .line 741
    goto :goto_12

    .line 742
    :cond_1e
    move/from16 v7, p0

    .line 743
    .line 744
    :goto_12
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 745
    .line 746
    .line 747
    move-result v1

    .line 748
    int-to-long v1, v1

    .line 749
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 750
    .line 751
    .line 752
    move-result v6

    .line 753
    int-to-long v6, v6

    .line 754
    shl-long v1, v1, v16

    .line 755
    .line 756
    and-long v6, v6, v17

    .line 757
    .line 758
    or-long/2addr v1, v6

    .line 759
    const-wide/16 v6, 0x0

    .line 760
    .line 761
    invoke-static {v1, v2, v6, v7}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 762
    .line 763
    .line 764
    move-result v8

    .line 765
    if-eqz v8, :cond_1f

    .line 766
    .line 767
    move-wide v6, v1

    .line 768
    goto :goto_13

    .line 769
    :cond_1f
    shr-long v8, v1, v16

    .line 770
    .line 771
    long-to-int v8, v8

    .line 772
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 773
    .line 774
    .line 775
    move-result v8

    .line 776
    and-long v6, v1, v17

    .line 777
    .line 778
    long-to-int v6, v6

    .line 779
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 780
    .line 781
    .line 782
    move-result v6

    .line 783
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 784
    .line 785
    invoke-virtual {v13, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v7

    .line 789
    if-nez v7, :cond_20

    .line 790
    .line 791
    const/4 v7, 0x0

    .line 792
    :cond_20
    check-cast v7, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 793
    .line 794
    iget-object v7, v10, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 795
    .line 796
    if-ne v7, v4, :cond_21

    .line 797
    .line 798
    neg-float v8, v8

    .line 799
    :cond_21
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 800
    .line 801
    invoke-virtual {v13, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object v7

    .line 805
    if-nez v7, :cond_22

    .line 806
    .line 807
    const/4 v7, 0x0

    .line 808
    :cond_22
    check-cast v7, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 809
    .line 810
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 811
    .line 812
    .line 813
    move-result v7

    .line 814
    int-to-long v7, v7

    .line 815
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 816
    .line 817
    .line 818
    move-result v6

    .line 819
    move-wide/from16 v23, v7

    .line 820
    .line 821
    int-to-long v6, v6

    .line 822
    shl-long v8, v23, v16

    .line 823
    .line 824
    and-long v6, v6, v17

    .line 825
    .line 826
    or-long/2addr v6, v8

    .line 827
    :goto_13
    iget-object v8, v14, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 828
    .line 829
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 830
    .line 831
    if-eqz v8, :cond_23

    .line 832
    .line 833
    shr-long v13, v6, v16

    .line 834
    .line 835
    long-to-int v9, v13

    .line 836
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 837
    .line 838
    .line 839
    move-result v9

    .line 840
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 841
    .line 842
    .line 843
    move-result-object v9

    .line 844
    and-long v6, v6, v17

    .line 845
    .line 846
    long-to-int v6, v6

    .line 847
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 848
    .line 849
    .line 850
    move-result v6

    .line 851
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 852
    .line 853
    .line 854
    move-result-object v6

    .line 855
    invoke-interface {v8, v9, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v6

    .line 859
    check-cast v6, Ljava/lang/Boolean;

    .line 860
    .line 861
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 862
    .line 863
    .line 864
    move-result v6

    .line 865
    const/4 v7, 0x1

    .line 866
    if-ne v6, v7, :cond_23

    .line 867
    .line 868
    goto :goto_14

    .line 869
    :cond_23
    if-eqz v3, :cond_24

    .line 870
    .line 871
    :goto_14
    const/4 v3, 0x1

    .line 872
    goto :goto_15

    .line 873
    :cond_24
    const/4 v3, 0x0

    .line 874
    :goto_15
    invoke-static {v11, v12, v1, v2}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 875
    .line 876
    .line 877
    move-result-wide v11

    .line 878
    goto :goto_16

    .line 879
    :cond_25
    const/16 v16, 0x20

    .line 880
    .line 881
    const-wide v17, 0xffffffffL

    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    :goto_16
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    const-wide/16 v1, 0x0

    .line 891
    .line 892
    goto/16 :goto_b

    .line 893
    .line 894
    :cond_26
    move v11, v3

    .line 895
    goto/16 :goto_4b

    .line 896
    .line 897
    :sswitch_4
    if-eqz v3, :cond_27

    .line 898
    .line 899
    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    .line 900
    .line 901
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    goto :goto_17

    .line 906
    :cond_27
    const/4 v0, 0x0

    .line 907
    :goto_17
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->SetText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 908
    .line 909
    invoke-virtual {v11, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v1

    .line 913
    if-nez v1, :cond_28

    .line 914
    .line 915
    const/4 v12, 0x0

    .line 916
    goto :goto_18

    .line 917
    :cond_28
    move-object v12, v1

    .line 918
    :goto_18
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 919
    .line 920
    if-eqz v12, :cond_0

    .line 921
    .line 922
    iget-object v1, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 923
    .line 924
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 925
    .line 926
    if-eqz v1, :cond_0

    .line 927
    .line 928
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString;

    .line 929
    .line 930
    if-nez v0, :cond_29

    .line 931
    .line 932
    const-string v0, ""

    .line 933
    .line 934
    :cond_29
    invoke-direct {v2, v0}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v0

    .line 941
    check-cast v0, Ljava/lang/Boolean;

    .line 942
    .line 943
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 944
    .line 945
    .line 946
    move-result v11

    .line 947
    goto/16 :goto_4b

    .line 948
    .line 949
    :sswitch_5
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Dismiss:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 950
    .line 951
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    if-nez v0, :cond_2a

    .line 956
    .line 957
    const/4 v12, 0x0

    .line 958
    goto :goto_19

    .line 959
    :cond_2a
    move-object v12, v0

    .line 960
    :goto_19
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 961
    .line 962
    if-eqz v12, :cond_0

    .line 963
    .line 964
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 965
    .line 966
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 967
    .line 968
    if-eqz v0, :cond_0

    .line 969
    .line 970
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    check-cast v0, Ljava/lang/Boolean;

    .line 975
    .line 976
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 977
    .line 978
    .line 979
    move-result v11

    .line 980
    goto/16 :goto_4b

    .line 981
    .line 982
    :sswitch_6
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Collapse:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 983
    .line 984
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    .line 986
    .line 987
    move-result-object v0

    .line 988
    if-nez v0, :cond_2b

    .line 989
    .line 990
    const/4 v12, 0x0

    .line 991
    goto :goto_1a

    .line 992
    :cond_2b
    move-object v12, v0

    .line 993
    :goto_1a
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 994
    .line 995
    if-eqz v12, :cond_0

    .line 996
    .line 997
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 998
    .line 999
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1000
    .line 1001
    if-eqz v0, :cond_0

    .line 1002
    .line 1003
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    check-cast v0, Ljava/lang/Boolean;

    .line 1008
    .line 1009
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1010
    .line 1011
    .line 1012
    move-result v11

    .line 1013
    goto/16 :goto_4b

    .line 1014
    .line 1015
    :sswitch_7
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Expand:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1016
    .line 1017
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v0

    .line 1021
    if-nez v0, :cond_2c

    .line 1022
    .line 1023
    const/4 v12, 0x0

    .line 1024
    goto :goto_1b

    .line 1025
    :cond_2c
    move-object v12, v0

    .line 1026
    :goto_1b
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1027
    .line 1028
    if-eqz v12, :cond_0

    .line 1029
    .line 1030
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1031
    .line 1032
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1033
    .line 1034
    if-eqz v0, :cond_0

    .line 1035
    .line 1036
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v0

    .line 1040
    check-cast v0, Ljava/lang/Boolean;

    .line 1041
    .line 1042
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1043
    .line 1044
    .line 1045
    move-result v11

    .line 1046
    goto/16 :goto_4b

    .line 1047
    .line 1048
    :sswitch_8
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->CutText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1049
    .line 1050
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v0

    .line 1054
    if-nez v0, :cond_2d

    .line 1055
    .line 1056
    const/4 v12, 0x0

    .line 1057
    goto :goto_1c

    .line 1058
    :cond_2d
    move-object v12, v0

    .line 1059
    :goto_1c
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1060
    .line 1061
    if-eqz v12, :cond_0

    .line 1062
    .line 1063
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1064
    .line 1065
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1066
    .line 1067
    if-eqz v0, :cond_0

    .line 1068
    .line 1069
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v0

    .line 1073
    check-cast v0, Ljava/lang/Boolean;

    .line 1074
    .line 1075
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1076
    .line 1077
    .line 1078
    move-result v11

    .line 1079
    goto/16 :goto_4b

    .line 1080
    .line 1081
    :sswitch_9
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PasteText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1082
    .line 1083
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    if-nez v0, :cond_2e

    .line 1088
    .line 1089
    const/4 v12, 0x0

    .line 1090
    goto :goto_1d

    .line 1091
    :cond_2e
    move-object v12, v0

    .line 1092
    :goto_1d
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1093
    .line 1094
    if-eqz v12, :cond_0

    .line 1095
    .line 1096
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1097
    .line 1098
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1099
    .line 1100
    if-eqz v0, :cond_0

    .line 1101
    .line 1102
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v0

    .line 1106
    check-cast v0, Ljava/lang/Boolean;

    .line 1107
    .line 1108
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1109
    .line 1110
    .line 1111
    move-result v11

    .line 1112
    goto/16 :goto_4b

    .line 1113
    .line 1114
    :goto_1e
    const/16 v0, 0x1000

    .line 1115
    .line 1116
    if-ne v2, v0, :cond_2f

    .line 1117
    .line 1118
    const/4 v0, 0x1

    .line 1119
    goto :goto_1f

    .line 1120
    :cond_2f
    const/4 v0, 0x0

    .line 1121
    :goto_1f
    const/16 v1, 0x2000

    .line 1122
    .line 1123
    if-ne v2, v1, :cond_30

    .line 1124
    .line 1125
    const/4 v1, 0x1

    .line 1126
    goto :goto_20

    .line 1127
    :cond_30
    const/4 v1, 0x0

    .line 1128
    :goto_20
    const v3, 0x1020039

    .line 1129
    .line 1130
    .line 1131
    if-ne v2, v3, :cond_31

    .line 1132
    .line 1133
    const/4 v3, 0x1

    .line 1134
    goto :goto_21

    .line 1135
    :cond_31
    const/4 v3, 0x0

    .line 1136
    :goto_21
    const v5, 0x102003b

    .line 1137
    .line 1138
    .line 1139
    if-ne v2, v5, :cond_32

    .line 1140
    .line 1141
    const/4 v5, 0x1

    .line 1142
    goto :goto_22

    .line 1143
    :cond_32
    const/4 v5, 0x0

    .line 1144
    :goto_22
    const v6, 0x1020038

    .line 1145
    .line 1146
    .line 1147
    if-ne v2, v6, :cond_33

    .line 1148
    .line 1149
    const/4 v6, 0x1

    .line 1150
    goto :goto_23

    .line 1151
    :cond_33
    const/4 v6, 0x0

    .line 1152
    :goto_23
    const v7, 0x102003a

    .line 1153
    .line 1154
    .line 1155
    if-ne v2, v7, :cond_34

    .line 1156
    .line 1157
    const/4 v2, 0x1

    .line 1158
    goto :goto_24

    .line 1159
    :cond_34
    const/4 v2, 0x0

    .line 1160
    :goto_24
    if-nez v3, :cond_36

    .line 1161
    .line 1162
    if-nez v5, :cond_36

    .line 1163
    .line 1164
    if-nez v0, :cond_36

    .line 1165
    .line 1166
    if-eqz v1, :cond_35

    .line 1167
    .line 1168
    goto :goto_25

    .line 1169
    :cond_35
    const/4 v7, 0x0

    .line 1170
    goto :goto_26

    .line 1171
    :cond_36
    :goto_25
    const/4 v7, 0x1

    .line 1172
    :goto_26
    if-nez v6, :cond_38

    .line 1173
    .line 1174
    if-nez v2, :cond_38

    .line 1175
    .line 1176
    if-nez v0, :cond_38

    .line 1177
    .line 1178
    if-eqz v1, :cond_37

    .line 1179
    .line 1180
    goto :goto_27

    .line 1181
    :cond_37
    const/4 v12, 0x0

    .line 1182
    goto :goto_28

    .line 1183
    :cond_38
    :goto_27
    const/4 v12, 0x1

    .line 1184
    :goto_28
    if-nez v0, :cond_39

    .line 1185
    .line 1186
    if-eqz v1, :cond_3f

    .line 1187
    .line 1188
    :cond_39
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1189
    .line 1190
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v0

    .line 1194
    if-nez v0, :cond_3a

    .line 1195
    .line 1196
    const/4 v0, 0x0

    .line 1197
    :cond_3a
    check-cast v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 1198
    .line 1199
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1200
    .line 1201
    invoke-virtual {v11, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v2

    .line 1205
    if-nez v2, :cond_3b

    .line 1206
    .line 1207
    const/4 v2, 0x0

    .line 1208
    :cond_3b
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1209
    .line 1210
    if-eqz v0, :cond_3f

    .line 1211
    .line 1212
    iget-object v8, v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->range:Lkotlin/ranges/ClosedFloatRange;

    .line 1213
    .line 1214
    if-eqz v2, :cond_3f

    .line 1215
    .line 1216
    iget v3, v8, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    .line 1217
    .line 1218
    cmpg-float v4, v3, p0

    .line 1219
    .line 1220
    if-gez v4, :cond_3c

    .line 1221
    .line 1222
    move/from16 v4, p0

    .line 1223
    .line 1224
    goto :goto_29

    .line 1225
    :cond_3c
    move v4, v3

    .line 1226
    :goto_29
    cmpl-float v5, p0, v3

    .line 1227
    .line 1228
    if-lez v5, :cond_3d

    .line 1229
    .line 1230
    move v14, v3

    .line 1231
    goto :goto_2a

    .line 1232
    :cond_3d
    move/from16 v14, p0

    .line 1233
    .line 1234
    :goto_2a
    sub-float/2addr v4, v14

    .line 1235
    const/high16 v3, 0x41a00000    # 20.0f

    .line 1236
    .line 1237
    div-float/2addr v4, v3

    .line 1238
    if-eqz v1, :cond_3e

    .line 1239
    .line 1240
    neg-float v4, v4

    .line 1241
    :cond_3e
    iget-object v1, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1242
    .line 1243
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1244
    .line 1245
    if-eqz v1, :cond_0

    .line 1246
    .line 1247
    iget v0, v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->current:F

    .line 1248
    .line 1249
    add-float/2addr v0, v4

    .line 1250
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v0

    .line 1254
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v0

    .line 1258
    check-cast v0, Ljava/lang/Boolean;

    .line 1259
    .line 1260
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1261
    .line 1262
    .line 1263
    move-result v11

    .line 1264
    goto/16 :goto_4b

    .line 1265
    .line 1266
    :cond_3f
    iget-object v0, v10, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 1267
    .line 1268
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 1269
    .line 1270
    check-cast v0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 1271
    .line 1272
    invoke-static {v0}, Landroidx/compose/ui/layout/RulerKt;->boundsInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v0

    .line 1276
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    .line 1277
    .line 1278
    .line 1279
    move-result-wide v8

    .line 1280
    new-instance v0, Ljava/util/ArrayList;

    .line 1281
    .line 1282
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1283
    .line 1284
    .line 1285
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->GetScrollViewportLength:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1286
    .line 1287
    invoke-virtual {v11, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v2

    .line 1291
    if-nez v2, :cond_40

    .line 1292
    .line 1293
    const/4 v2, 0x0

    .line 1294
    :cond_40
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1295
    .line 1296
    if-eqz v2, :cond_41

    .line 1297
    .line 1298
    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1299
    .line 1300
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 1301
    .line 1302
    if-eqz v2, :cond_41

    .line 1303
    .line 1304
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v2

    .line 1308
    check-cast v2, Ljava/lang/Boolean;

    .line 1309
    .line 1310
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1311
    .line 1312
    .line 1313
    move-result v2

    .line 1314
    if-eqz v2, :cond_41

    .line 1315
    .line 1316
    const/4 v2, 0x0

    .line 1317
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v0

    .line 1321
    check-cast v0, Ljava/lang/Float;

    .line 1322
    .line 1323
    goto :goto_2b

    .line 1324
    :cond_41
    const/4 v0, 0x0

    .line 1325
    :goto_2b
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1326
    .line 1327
    invoke-virtual {v11, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v2

    .line 1331
    if-nez v2, :cond_42

    .line 1332
    .line 1333
    const/4 v2, 0x0

    .line 1334
    :cond_42
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1335
    .line 1336
    if-nez v2, :cond_43

    .line 1337
    .line 1338
    goto/16 :goto_0

    .line 1339
    .line 1340
    :cond_43
    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1341
    .line 1342
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1343
    .line 1344
    invoke-virtual {v11, v13}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v13

    .line 1348
    if-nez v13, :cond_44

    .line 1349
    .line 1350
    const/4 v13, 0x0

    .line 1351
    :cond_44
    check-cast v13, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1352
    .line 1353
    if-eqz v13, :cond_4f

    .line 1354
    .line 1355
    if-eqz v7, :cond_4f

    .line 1356
    .line 1357
    if-eqz v0, :cond_45

    .line 1358
    .line 1359
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 1360
    .line 1361
    .line 1362
    move-result v7

    .line 1363
    move-object/from16 p2, v0

    .line 1364
    .line 1365
    move/from16 p1, v1

    .line 1366
    .line 1367
    goto :goto_2c

    .line 1368
    :cond_45
    move-object/from16 p2, v0

    .line 1369
    .line 1370
    move/from16 p1, v1

    .line 1371
    .line 1372
    shr-long v0, v8, v16

    .line 1373
    .line 1374
    long-to-int v0, v0

    .line 1375
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1376
    .line 1377
    .line 1378
    move-result v7

    .line 1379
    :goto_2c
    if-nez v3, :cond_46

    .line 1380
    .line 1381
    if-eqz p1, :cond_47

    .line 1382
    .line 1383
    :cond_46
    neg-float v7, v7

    .line 1384
    :cond_47
    iget-object v0, v10, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1385
    .line 1386
    if-ne v0, v4, :cond_49

    .line 1387
    .line 1388
    if-nez v3, :cond_48

    .line 1389
    .line 1390
    if-eqz v5, :cond_49

    .line 1391
    .line 1392
    :cond_48
    neg-float v7, v7

    .line 1393
    :cond_49
    invoke-static {v13, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->performActionHelper$canScroll(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z

    .line 1394
    .line 1395
    .line 1396
    move-result v0

    .line 1397
    if-eqz v0, :cond_50

    .line 1398
    .line 1399
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageLeft:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1400
    .line 1401
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1402
    .line 1403
    .line 1404
    move-result v1

    .line 1405
    if-nez v1, :cond_4b

    .line 1406
    .line 1407
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1408
    .line 1409
    invoke-virtual {v11, v1}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1410
    .line 1411
    .line 1412
    move-result v1

    .line 1413
    if-eqz v1, :cond_4a

    .line 1414
    .line 1415
    goto :goto_2d

    .line 1416
    :cond_4a
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 1417
    .line 1418
    if-eqz v2, :cond_0

    .line 1419
    .line 1420
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v0

    .line 1424
    invoke-interface {v2, v0, v15}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v0

    .line 1428
    check-cast v0, Ljava/lang/Boolean;

    .line 1429
    .line 1430
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1431
    .line 1432
    .line 1433
    move-result v11

    .line 1434
    goto/16 :goto_4b

    .line 1435
    .line 1436
    :cond_4b
    :goto_2d
    cmpl-float v1, v7, p0

    .line 1437
    .line 1438
    if-lez v1, :cond_4d

    .line 1439
    .line 1440
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1441
    .line 1442
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v0

    .line 1446
    if-nez v0, :cond_4c

    .line 1447
    .line 1448
    const/4 v12, 0x0

    .line 1449
    goto :goto_2e

    .line 1450
    :cond_4c
    move-object v12, v0

    .line 1451
    :goto_2e
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1452
    .line 1453
    goto :goto_30

    .line 1454
    :cond_4d
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v0

    .line 1458
    if-nez v0, :cond_4e

    .line 1459
    .line 1460
    const/4 v12, 0x0

    .line 1461
    goto :goto_2f

    .line 1462
    :cond_4e
    move-object v12, v0

    .line 1463
    :goto_2f
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1464
    .line 1465
    :goto_30
    if-eqz v12, :cond_0

    .line 1466
    .line 1467
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1468
    .line 1469
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1470
    .line 1471
    if-eqz v0, :cond_0

    .line 1472
    .line 1473
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v0

    .line 1477
    check-cast v0, Ljava/lang/Boolean;

    .line 1478
    .line 1479
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1480
    .line 1481
    .line 1482
    move-result v11

    .line 1483
    goto/16 :goto_4b

    .line 1484
    .line 1485
    :cond_4f
    move-object/from16 p2, v0

    .line 1486
    .line 1487
    move/from16 p1, v1

    .line 1488
    .line 1489
    :cond_50
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1490
    .line 1491
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v0

    .line 1495
    if-nez v0, :cond_51

    .line 1496
    .line 1497
    const/4 v0, 0x0

    .line 1498
    :cond_51
    check-cast v0, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1499
    .line 1500
    if-eqz v0, :cond_0

    .line 1501
    .line 1502
    if-eqz v12, :cond_0

    .line 1503
    .line 1504
    if-eqz p2, :cond_52

    .line 1505
    .line 1506
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    .line 1507
    .line 1508
    .line 1509
    move-result v1

    .line 1510
    goto :goto_31

    .line 1511
    :cond_52
    and-long v3, v8, v17

    .line 1512
    .line 1513
    long-to-int v1, v3

    .line 1514
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1515
    .line 1516
    .line 1517
    move-result v1

    .line 1518
    :goto_31
    if-nez v6, :cond_53

    .line 1519
    .line 1520
    if-eqz p1, :cond_54

    .line 1521
    .line 1522
    :cond_53
    neg-float v1, v1

    .line 1523
    :cond_54
    invoke-static {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->performActionHelper$canScroll(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z

    .line 1524
    .line 1525
    .line 1526
    move-result v0

    .line 1527
    if-eqz v0, :cond_0

    .line 1528
    .line 1529
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageUp:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1530
    .line 1531
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1532
    .line 1533
    .line 1534
    move-result v3

    .line 1535
    if-nez v3, :cond_56

    .line 1536
    .line 1537
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1538
    .line 1539
    invoke-virtual {v11, v3}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1540
    .line 1541
    .line 1542
    move-result v3

    .line 1543
    if-eqz v3, :cond_55

    .line 1544
    .line 1545
    goto :goto_32

    .line 1546
    :cond_55
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 1547
    .line 1548
    if-eqz v2, :cond_0

    .line 1549
    .line 1550
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v0

    .line 1554
    invoke-interface {v2, v15, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v0

    .line 1558
    check-cast v0, Ljava/lang/Boolean;

    .line 1559
    .line 1560
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1561
    .line 1562
    .line 1563
    move-result v11

    .line 1564
    goto/16 :goto_4b

    .line 1565
    .line 1566
    :cond_56
    :goto_32
    cmpl-float v1, v1, p0

    .line 1567
    .line 1568
    if-lez v1, :cond_58

    .line 1569
    .line 1570
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1571
    .line 1572
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v0

    .line 1576
    if-nez v0, :cond_57

    .line 1577
    .line 1578
    const/4 v12, 0x0

    .line 1579
    goto :goto_33

    .line 1580
    :cond_57
    move-object v12, v0

    .line 1581
    :goto_33
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1582
    .line 1583
    goto :goto_35

    .line 1584
    :cond_58
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v0

    .line 1588
    if-nez v0, :cond_59

    .line 1589
    .line 1590
    const/4 v12, 0x0

    .line 1591
    goto :goto_34

    .line 1592
    :cond_59
    move-object v12, v0

    .line 1593
    :goto_34
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1594
    .line 1595
    :goto_35
    if-eqz v12, :cond_0

    .line 1596
    .line 1597
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1598
    .line 1599
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1600
    .line 1601
    if-eqz v0, :cond_0

    .line 1602
    .line 1603
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v0

    .line 1607
    check-cast v0, Ljava/lang/Boolean;

    .line 1608
    .line 1609
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1610
    .line 1611
    .line 1612
    move-result v11

    .line 1613
    goto/16 :goto_4b

    .line 1614
    .line 1615
    :sswitch_a
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->OnLongClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1616
    .line 1617
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v0

    .line 1621
    if-nez v0, :cond_5a

    .line 1622
    .line 1623
    const/4 v12, 0x0

    .line 1624
    goto :goto_36

    .line 1625
    :cond_5a
    move-object v12, v0

    .line 1626
    :goto_36
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1627
    .line 1628
    if-eqz v12, :cond_0

    .line 1629
    .line 1630
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1631
    .line 1632
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1633
    .line 1634
    if-eqz v0, :cond_0

    .line 1635
    .line 1636
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1637
    .line 1638
    .line 1639
    move-result-object v0

    .line 1640
    check-cast v0, Ljava/lang/Boolean;

    .line 1641
    .line 1642
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1643
    .line 1644
    .line 1645
    move-result v11

    .line 1646
    goto/16 :goto_4b

    .line 1647
    .line 1648
    :sswitch_b
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->OnClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1649
    .line 1650
    invoke-virtual {v11, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v2

    .line 1654
    if-nez v2, :cond_5b

    .line 1655
    .line 1656
    const/4 v2, 0x0

    .line 1657
    :cond_5b
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1658
    .line 1659
    if-eqz v2, :cond_5c

    .line 1660
    .line 1661
    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1662
    .line 1663
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 1664
    .line 1665
    if-eqz v2, :cond_5c

    .line 1666
    .line 1667
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v2

    .line 1671
    check-cast v2, Ljava/lang/Boolean;

    .line 1672
    .line 1673
    move-object/from16 v22, v2

    .line 1674
    .line 1675
    :goto_37
    const/4 v2, 0x0

    .line 1676
    const/4 v7, 0x1

    .line 1677
    goto :goto_38

    .line 1678
    :cond_5c
    const/16 v22, 0x0

    .line 1679
    .line 1680
    goto :goto_37

    .line 1681
    :goto_38
    invoke-static {v0, v1, v7, v2, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 1682
    .line 1683
    .line 1684
    if-eqz v22, :cond_0

    .line 1685
    .line 1686
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1687
    .line 1688
    .line 1689
    move-result v11

    .line 1690
    goto/16 :goto_4b

    .line 1691
    .line 1692
    :cond_5d
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1693
    .line 1694
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v0

    .line 1698
    if-nez v0, :cond_5e

    .line 1699
    .line 1700
    const/4 v0, 0x0

    .line 1701
    :cond_5e
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1702
    .line 1703
    .line 1704
    move-result v0

    .line 1705
    if-eqz v0, :cond_0

    .line 1706
    .line 1707
    invoke-virtual {v14}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v0

    .line 1711
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 1712
    .line 1713
    const/4 v2, 0x0

    .line 1714
    const/4 v7, 0x1

    .line 1715
    invoke-virtual {v0, v4, v2, v7}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus-I7lrPNg(IZZ)Z

    .line 1716
    .line 1717
    .line 1718
    :goto_39
    const/4 v11, 0x1

    .line 1719
    goto/16 :goto_4b

    .line 1720
    .line 1721
    :cond_5f
    invoke-virtual {v14}, Landroid/view/View;->isInTouchMode()Z

    .line 1722
    .line 1723
    .line 1724
    move-result v0

    .line 1725
    if-eqz v0, :cond_60

    .line 1726
    .line 1727
    invoke-virtual {v14}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 1728
    .line 1729
    .line 1730
    :cond_60
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->RequestFocus:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1731
    .line 1732
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v0

    .line 1736
    if-nez v0, :cond_61

    .line 1737
    .line 1738
    const/4 v12, 0x0

    .line 1739
    goto :goto_3a

    .line 1740
    :cond_61
    move-object v12, v0

    .line 1741
    :goto_3a
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1742
    .line 1743
    if-eqz v12, :cond_0

    .line 1744
    .line 1745
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1746
    .line 1747
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1748
    .line 1749
    if-eqz v0, :cond_0

    .line 1750
    .line 1751
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v0

    .line 1755
    check-cast v0, Ljava/lang/Boolean;

    .line 1756
    .line 1757
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1758
    .line 1759
    .line 1760
    move-result v11

    .line 1761
    goto/16 :goto_4b

    .line 1762
    .line 1763
    :cond_62
    if-eqz v3, :cond_63

    .line 1764
    .line 1765
    const-string v1, "ACTION_ARGUMENT_SELECTION_START_INT"

    .line 1766
    .line 1767
    const/4 v2, -0x1

    .line 1768
    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 1769
    .line 1770
    .line 1771
    move-result v19

    .line 1772
    move/from16 v1, v19

    .line 1773
    .line 1774
    goto :goto_3b

    .line 1775
    :cond_63
    const/4 v2, -0x1

    .line 1776
    move v1, v2

    .line 1777
    :goto_3b
    if-eqz v3, :cond_64

    .line 1778
    .line 1779
    const-string v4, "ACTION_ARGUMENT_SELECTION_END_INT"

    .line 1780
    .line 1781
    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 1782
    .line 1783
    .line 1784
    move-result v8

    .line 1785
    :goto_3c
    const/4 v2, 0x0

    .line 1786
    goto :goto_3d

    .line 1787
    :cond_64
    const/4 v8, -0x1

    .line 1788
    goto :goto_3c

    .line 1789
    :goto_3d
    invoke-virtual {v0, v5, v1, v8, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setAccessibilitySelection(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z

    .line 1790
    .line 1791
    .line 1792
    move-result v1

    .line 1793
    if-eqz v1, :cond_65

    .line 1794
    .line 1795
    invoke-virtual {v0, v9}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    .line 1796
    .line 1797
    .line 1798
    move-result v3

    .line 1799
    const/4 v4, 0x0

    .line 1800
    invoke-static {v0, v3, v2, v4, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 1801
    .line 1802
    .line 1803
    :cond_65
    move v11, v1

    .line 1804
    goto/16 :goto_4b

    .line 1805
    .line 1806
    :cond_66
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->CopyText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1807
    .line 1808
    invoke-virtual {v11, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v0

    .line 1812
    if-nez v0, :cond_67

    .line 1813
    .line 1814
    const/4 v12, 0x0

    .line 1815
    goto :goto_3e

    .line 1816
    :cond_67
    move-object v12, v0

    .line 1817
    :goto_3e
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1818
    .line 1819
    if-eqz v12, :cond_0

    .line 1820
    .line 1821
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1822
    .line 1823
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1824
    .line 1825
    if-eqz v0, :cond_0

    .line 1826
    .line 1827
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1828
    .line 1829
    .line 1830
    move-result-object v0

    .line 1831
    check-cast v0, Ljava/lang/Boolean;

    .line 1832
    .line 1833
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1834
    .line 1835
    .line 1836
    move-result v11

    .line 1837
    goto/16 :goto_4b

    .line 1838
    .line 1839
    :cond_68
    if-eqz v3, :cond_0

    .line 1840
    .line 1841
    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    .line 1842
    .line 1843
    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 1844
    .line 1845
    .line 1846
    move-result v1

    .line 1847
    const-string v6, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    .line 1848
    .line 1849
    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1850
    .line 1851
    .line 1852
    move-result v3

    .line 1853
    if-ne v2, v13, :cond_69

    .line 1854
    .line 1855
    const/4 v2, 0x1

    .line 1856
    goto :goto_3f

    .line 1857
    :cond_69
    const/4 v2, 0x0

    .line 1858
    :goto_3f
    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousTraversedNode:Ljava/lang/Integer;

    .line 1859
    .line 1860
    if-nez v6, :cond_6a

    .line 1861
    .line 1862
    :goto_40
    const/4 v6, -0x1

    .line 1863
    goto :goto_41

    .line 1864
    :cond_6a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1865
    .line 1866
    .line 1867
    move-result v6

    .line 1868
    if-eq v9, v6, :cond_6b

    .line 1869
    .line 1870
    goto :goto_40

    .line 1871
    :goto_41
    iput v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    .line 1872
    .line 1873
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v6

    .line 1877
    iput-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousTraversedNode:Ljava/lang/Integer;

    .line 1878
    .line 1879
    :cond_6b
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 1880
    .line 1881
    .line 1882
    move-result-object v6

    .line 1883
    if-eqz v6, :cond_0

    .line 1884
    .line 1885
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1886
    .line 1887
    .line 1888
    move-result v9

    .line 1889
    if-nez v9, :cond_6c

    .line 1890
    .line 1891
    goto/16 :goto_0

    .line 1892
    .line 1893
    :cond_6c
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 1894
    .line 1895
    .line 1896
    move-result-object v9

    .line 1897
    if-eqz v9, :cond_6e

    .line 1898
    .line 1899
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 1900
    .line 1901
    .line 1902
    move-result v10

    .line 1903
    if-nez v10, :cond_6d

    .line 1904
    .line 1905
    goto :goto_42

    .line 1906
    :cond_6d
    const/4 v10, 0x1

    .line 1907
    if-eq v1, v10, :cond_79

    .line 1908
    .line 1909
    const/4 v10, 0x2

    .line 1910
    if-eq v1, v10, :cond_77

    .line 1911
    .line 1912
    const/4 v10, 0x5

    .line 1913
    const/4 v12, 0x4

    .line 1914
    if-eq v1, v12, :cond_71

    .line 1915
    .line 1916
    if-eq v1, v4, :cond_6f

    .line 1917
    .line 1918
    const/16 v4, 0x10

    .line 1919
    .line 1920
    if-eq v1, v4, :cond_71

    .line 1921
    .line 1922
    :cond_6e
    :goto_42
    const/4 v12, 0x0

    .line 1923
    goto/16 :goto_43

    .line 1924
    .line 1925
    :cond_6f
    sget-object v4, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 1926
    .line 1927
    if-nez v4, :cond_70

    .line 1928
    .line 1929
    new-instance v4, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 1930
    .line 1931
    invoke-direct {v4, v10}, Lnet/openid/appauth/JsonUtil$Field;-><init>(I)V

    .line 1932
    .line 1933
    .line 1934
    sput-object v4, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 1935
    .line 1936
    :cond_70
    sget-object v12, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 1937
    .line 1938
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1939
    .line 1940
    .line 1941
    iput-object v9, v12, Lnet/openid/appauth/JsonUtil$Field;->key:Ljava/lang/Object;

    .line 1942
    .line 1943
    goto/16 :goto_43

    .line 1944
    .line 1945
    :cond_71
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1946
    .line 1947
    invoke-virtual {v11, v4}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1948
    .line 1949
    .line 1950
    move-result v4

    .line 1951
    if-nez v4, :cond_72

    .line 1952
    .line 1953
    goto :goto_42

    .line 1954
    :cond_72
    invoke-static {v8}, Landroidx/compose/ui/platform/TestTagKt;->getTextLayoutResult(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/TextLayoutResult;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v4

    .line 1958
    if-nez v4, :cond_73

    .line 1959
    .line 1960
    goto :goto_42

    .line 1961
    :cond_73
    if-ne v1, v12, :cond_75

    .line 1962
    .line 1963
    sget-object v8, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->lineInstance:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 1964
    .line 1965
    if-nez v8, :cond_74

    .line 1966
    .line 1967
    new-instance v8, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 1968
    .line 1969
    const/4 v10, 0x2

    .line 1970
    invoke-direct {v8, v10}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;-><init>(I)V

    .line 1971
    .line 1972
    .line 1973
    sput-object v8, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->lineInstance:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 1974
    .line 1975
    :cond_74
    sget-object v12, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->lineInstance:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 1976
    .line 1977
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1978
    .line 1979
    .line 1980
    iput-object v9, v12, Lnet/openid/appauth/JsonUtil$Field;->key:Ljava/lang/Object;

    .line 1981
    .line 1982
    iput-object v4, v12, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->impl:Ljava/lang/Object;

    .line 1983
    .line 1984
    goto :goto_43

    .line 1985
    :cond_75
    sget-object v8, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->pageInstance:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    .line 1986
    .line 1987
    if-nez v8, :cond_76

    .line 1988
    .line 1989
    new-instance v8, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    .line 1990
    .line 1991
    invoke-direct {v8, v10}, Lnet/openid/appauth/JsonUtil$Field;-><init>(I)V

    .line 1992
    .line 1993
    .line 1994
    new-instance v10, Landroid/graphics/Rect;

    .line 1995
    .line 1996
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1997
    .line 1998
    .line 1999
    sput-object v8, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->pageInstance:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    .line 2000
    .line 2001
    :cond_76
    sget-object v12, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->pageInstance:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    .line 2002
    .line 2003
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2004
    .line 2005
    .line 2006
    iput-object v9, v12, Lnet/openid/appauth/JsonUtil$Field;->key:Ljava/lang/Object;

    .line 2007
    .line 2008
    iput-object v4, v12, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 2009
    .line 2010
    iput-object v5, v12, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->node:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 2011
    .line 2012
    goto :goto_43

    .line 2013
    :cond_77
    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2014
    .line 2015
    .line 2016
    move-result-object v4

    .line 2017
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2018
    .line 2019
    .line 2020
    move-result-object v4

    .line 2021
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 2022
    .line 2023
    .line 2024
    move-result-object v4

    .line 2025
    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2026
    .line 2027
    sget-object v8, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2028
    .line 2029
    if-nez v8, :cond_78

    .line 2030
    .line 2031
    new-instance v8, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2032
    .line 2033
    const/4 v10, 0x0

    .line 2034
    invoke-direct {v8, v10}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;-><init>(I)V

    .line 2035
    .line 2036
    .line 2037
    invoke-static {v4}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 2038
    .line 2039
    .line 2040
    move-result-object v4

    .line 2041
    iput-object v4, v8, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->impl:Ljava/lang/Object;

    .line 2042
    .line 2043
    sput-object v8, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2044
    .line 2045
    :cond_78
    sget-object v12, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2046
    .line 2047
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2048
    .line 2049
    .line 2050
    invoke-virtual {v12, v9}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->initialize(Ljava/lang/String;)V

    .line 2051
    .line 2052
    .line 2053
    goto :goto_43

    .line 2054
    :cond_79
    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2055
    .line 2056
    .line 2057
    move-result-object v4

    .line 2058
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2059
    .line 2060
    .line 2061
    move-result-object v4

    .line 2062
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 2063
    .line 2064
    .line 2065
    move-result-object v4

    .line 2066
    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2067
    .line 2068
    sget-object v8, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance$1:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2069
    .line 2070
    if-nez v8, :cond_7a

    .line 2071
    .line 2072
    new-instance v8, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2073
    .line 2074
    const/4 v10, 0x1

    .line 2075
    invoke-direct {v8, v10}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;-><init>(I)V

    .line 2076
    .line 2077
    .line 2078
    invoke-static {v4}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 2079
    .line 2080
    .line 2081
    move-result-object v4

    .line 2082
    iput-object v4, v8, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->impl:Ljava/lang/Object;

    .line 2083
    .line 2084
    sput-object v8, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance$1:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2085
    .line 2086
    :cond_7a
    sget-object v12, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance$1:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2087
    .line 2088
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2089
    .line 2090
    .line 2091
    invoke-virtual {v12, v9}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->initialize(Ljava/lang/String;)V

    .line 2092
    .line 2093
    .line 2094
    :goto_43
    if-nez v12, :cond_7b

    .line 2095
    .line 2096
    goto/16 :goto_0

    .line 2097
    .line 2098
    :cond_7b
    invoke-virtual {v0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionEnd(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 2099
    .line 2100
    .line 2101
    move-result v4

    .line 2102
    const/4 v8, -0x1

    .line 2103
    if-ne v4, v8, :cond_7d

    .line 2104
    .line 2105
    if-eqz v2, :cond_7c

    .line 2106
    .line 2107
    const/4 v4, 0x0

    .line 2108
    goto :goto_44

    .line 2109
    :cond_7c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 2110
    .line 2111
    .line 2112
    move-result v4

    .line 2113
    :cond_7d
    :goto_44
    if-eqz v2, :cond_7e

    .line 2114
    .line 2115
    invoke-virtual {v12, v4}, Lnet/openid/appauth/JsonUtil$Field;->following(I)[I

    .line 2116
    .line 2117
    .line 2118
    move-result-object v4

    .line 2119
    goto :goto_45

    .line 2120
    :cond_7e
    invoke-virtual {v12, v4}, Lnet/openid/appauth/JsonUtil$Field;->preceding(I)[I

    .line 2121
    .line 2122
    .line 2123
    move-result-object v4

    .line 2124
    :goto_45
    if-nez v4, :cond_7f

    .line 2125
    .line 2126
    goto/16 :goto_0

    .line 2127
    .line 2128
    :cond_7f
    const/16 v20, 0x0

    .line 2129
    .line 2130
    aget v21, v4, v20

    .line 2131
    .line 2132
    const/16 v25, 0x1

    .line 2133
    .line 2134
    aget v22, v4, v25

    .line 2135
    .line 2136
    if-eqz v3, :cond_83

    .line 2137
    .line 2138
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2139
    .line 2140
    invoke-virtual {v11, v3}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2141
    .line 2142
    .line 2143
    move-result v3

    .line 2144
    if-nez v3, :cond_83

    .line 2145
    .line 2146
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2147
    .line 2148
    invoke-virtual {v11, v3}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2149
    .line 2150
    .line 2151
    move-result v3

    .line 2152
    if-eqz v3, :cond_83

    .line 2153
    .line 2154
    invoke-virtual {v0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionStart(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 2155
    .line 2156
    .line 2157
    move-result v3

    .line 2158
    const/4 v6, -0x1

    .line 2159
    if-ne v3, v6, :cond_81

    .line 2160
    .line 2161
    if-eqz v2, :cond_80

    .line 2162
    .line 2163
    move/from16 v3, v21

    .line 2164
    .line 2165
    goto :goto_46

    .line 2166
    :cond_80
    move/from16 v3, v22

    .line 2167
    .line 2168
    :cond_81
    :goto_46
    if-eqz v2, :cond_82

    .line 2169
    .line 2170
    move/from16 v4, v22

    .line 2171
    .line 2172
    goto :goto_48

    .line 2173
    :cond_82
    move/from16 v4, v21

    .line 2174
    .line 2175
    goto :goto_48

    .line 2176
    :cond_83
    if-eqz v2, :cond_84

    .line 2177
    .line 2178
    move/from16 v3, v22

    .line 2179
    .line 2180
    goto :goto_47

    .line 2181
    :cond_84
    move/from16 v3, v21

    .line 2182
    .line 2183
    :goto_47
    move v4, v3

    .line 2184
    :goto_48
    if-eqz v2, :cond_85

    .line 2185
    .line 2186
    move/from16 v19, v13

    .line 2187
    .line 2188
    goto :goto_49

    .line 2189
    :cond_85
    move/from16 v19, v7

    .line 2190
    .line 2191
    :goto_49
    new-instance v17, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    .line 2192
    .line 2193
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2194
    .line 2195
    .line 2196
    move-result-wide v23

    .line 2197
    move/from16 v20, v1

    .line 2198
    .line 2199
    move-object/from16 v18, v5

    .line 2200
    .line 2201
    invoke-direct/range {v17 .. v24}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;IIIIJ)V

    .line 2202
    .line 2203
    .line 2204
    move-object/from16 v2, v17

    .line 2205
    .line 2206
    move-object/from16 v1, v18

    .line 2207
    .line 2208
    iput-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    .line 2209
    .line 2210
    const/4 v7, 0x1

    .line 2211
    invoke-virtual {v0, v1, v3, v4, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setAccessibilitySelection(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z

    .line 2212
    .line 2213
    .line 2214
    goto/16 :goto_39

    .line 2215
    .line 2216
    :cond_86
    const/16 v20, 0x0

    .line 2217
    .line 2218
    iget v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 2219
    .line 2220
    if-ne v2, v1, :cond_87

    .line 2221
    .line 2222
    const/high16 v2, -0x80000000

    .line 2223
    .line 2224
    iput v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 2225
    .line 2226
    const/4 v2, 0x0

    .line 2227
    iput-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyAccessibilityFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 2228
    .line 2229
    invoke-virtual {v14}, Landroid/view/View;->invalidate()V

    .line 2230
    .line 2231
    .line 2232
    const/high16 v3, 0x10000

    .line 2233
    .line 2234
    invoke-static {v0, v1, v3, v2, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 2235
    .line 2236
    .line 2237
    goto/16 :goto_39

    .line 2238
    .line 2239
    :cond_87
    :goto_4a
    move/from16 v11, v20

    .line 2240
    .line 2241
    goto :goto_4b

    .line 2242
    :cond_88
    const/4 v2, 0x0

    .line 2243
    const/high16 v3, 0x10000

    .line 2244
    .line 2245
    const/16 v20, 0x0

    .line 2246
    .line 2247
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 2248
    .line 2249
    .line 2250
    move-result v5

    .line 2251
    if-eqz v5, :cond_87

    .line 2252
    .line 2253
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 2254
    .line 2255
    .line 2256
    move-result v4

    .line 2257
    if-eqz v4, :cond_87

    .line 2258
    .line 2259
    iget v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 2260
    .line 2261
    if-ne v4, v1, :cond_89

    .line 2262
    .line 2263
    goto :goto_4a

    .line 2264
    :cond_89
    const/high16 v5, -0x80000000

    .line 2265
    .line 2266
    if-eq v4, v5, :cond_8a

    .line 2267
    .line 2268
    invoke-static {v0, v4, v3, v2, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 2269
    .line 2270
    .line 2271
    :cond_8a
    iput v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 2272
    .line 2273
    invoke-virtual {v14}, Landroid/view/View;->invalidate()V

    .line 2274
    .line 2275
    .line 2276
    const v3, 0x8000

    .line 2277
    .line 2278
    .line 2279
    invoke-static {v0, v1, v3, v2, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 2280
    .line 2281
    .line 2282
    goto/16 :goto_39

    .line 2283
    .line 2284
    :goto_4b
    return v11

    .line 2285
    :pswitch_5
    const/16 v20, 0x0

    .line 2286
    .line 2287
    check-cast v0, Landroidx/customview/widget/ExploreByTouchHelper;

    .line 2288
    .line 2289
    iget-object v4, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 2290
    .line 2291
    const/4 v6, -0x1

    .line 2292
    if-eq v1, v6, :cond_92

    .line 2293
    .line 2294
    const/4 v10, 0x1

    .line 2295
    if-eq v2, v10, :cond_91

    .line 2296
    .line 2297
    const/4 v3, 0x2

    .line 2298
    if-eq v2, v3, :cond_90

    .line 2299
    .line 2300
    if-eq v2, v7, :cond_8d

    .line 2301
    .line 2302
    const/16 v7, 0x80

    .line 2303
    .line 2304
    if-eq v2, v7, :cond_8b

    .line 2305
    .line 2306
    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(II)Z

    .line 2307
    .line 2308
    .line 2309
    move-result v11

    .line 2310
    goto :goto_4e

    .line 2311
    :cond_8b
    iget v2, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 2312
    .line 2313
    if-ne v2, v1, :cond_8c

    .line 2314
    .line 2315
    const/high16 v2, -0x80000000

    .line 2316
    .line 2317
    iput v2, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 2318
    .line 2319
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 2320
    .line 2321
    .line 2322
    const/high16 v3, 0x10000

    .line 2323
    .line 2324
    invoke-virtual {v0, v1, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    .line 2325
    .line 2326
    .line 2327
    :goto_4c
    move v11, v10

    .line 2328
    goto :goto_4e

    .line 2329
    :cond_8c
    :goto_4d
    move/from16 v11, v20

    .line 2330
    .line 2331
    goto :goto_4e

    .line 2332
    :cond_8d
    iget-object v2, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2333
    .line 2334
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 2335
    .line 2336
    .line 2337
    move-result v3

    .line 2338
    if-eqz v3, :cond_8c

    .line 2339
    .line 2340
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 2341
    .line 2342
    .line 2343
    move-result v2

    .line 2344
    if-nez v2, :cond_8e

    .line 2345
    .line 2346
    goto :goto_4d

    .line 2347
    :cond_8e
    iget v2, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 2348
    .line 2349
    if-eq v2, v1, :cond_8c

    .line 2350
    .line 2351
    const/high16 v5, -0x80000000

    .line 2352
    .line 2353
    if-eq v2, v5, :cond_8f

    .line 2354
    .line 2355
    iput v5, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 2356
    .line 2357
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 2358
    .line 2359
    .line 2360
    const/high16 v3, 0x10000

    .line 2361
    .line 2362
    invoke-virtual {v0, v2, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    .line 2363
    .line 2364
    .line 2365
    :cond_8f
    iput v1, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 2366
    .line 2367
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 2368
    .line 2369
    .line 2370
    const v3, 0x8000

    .line 2371
    .line 2372
    .line 2373
    invoke-virtual {v0, v1, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    .line 2374
    .line 2375
    .line 2376
    goto :goto_4c

    .line 2377
    :cond_90
    invoke-virtual {v0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 2378
    .line 2379
    .line 2380
    move-result v11

    .line 2381
    goto :goto_4e

    .line 2382
    :cond_91
    invoke-virtual {v0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    .line 2383
    .line 2384
    .line 2385
    move-result v11

    .line 2386
    goto :goto_4e

    .line 2387
    :cond_92
    invoke-virtual {v4, v2, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 2388
    .line 2389
    .line 2390
    move-result v11

    .line 2391
    :goto_4e
    return v11

    .line 2392
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_b
        0x20 -> :sswitch_a
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
        0x8000 -> :sswitch_9
        0x10000 -> :sswitch_8
        0x40000 -> :sswitch_7
        0x80000 -> :sswitch_6
        0x100000 -> :sswitch_5
        0x200000 -> :sswitch_4
        0x1020036 -> :sswitch_3
        0x102003d -> :sswitch_2
        0x1020054 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1020038
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1020046
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
