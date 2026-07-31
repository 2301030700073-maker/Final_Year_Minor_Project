.class public final Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
.super Lcoil3/memory/MemoryCacheService;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


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
    const/16 p1, 0xa

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcoil3/memory/MemoryCacheService;-><init>(I)V

    .line 8
    .line 9
    .line 10
    return-void
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
    .locals 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->$r8$classId:I

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 8
    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 18
    .line 19
    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 20
    .line 21
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 22
    .line 23
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    iget-object v6, v6, Landroidx/compose/ui/platform/ComposeViewContext;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 28
    .line 29
    invoke-interface {v6}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Landroidx/lifecycle/LifecycleRegistry;

    .line 34
    .line 35
    iget-object v6, v6, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 36
    .line 37
    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 38
    .line 39
    if-ne v6, v7, :cond_1

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 52
    .line 53
    invoke-direct {v8, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v8, 0x0

    .line 58
    :goto_0
    move-object v9, v0

    .line 59
    move v5, v1

    .line 60
    goto/16 :goto_4e

    .line 61
    .line 62
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v6, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 71
    .line 72
    if-nez v6, :cond_2

    .line 73
    .line 74
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_0

    .line 79
    .line 80
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    new-instance v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 85
    .line 86
    invoke-direct {v8, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-object v7, v6, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 91
    .line 92
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    iget-object v10, v7, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 97
    .line 98
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->IsSensitiveData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 99
    .line 100
    iget-object v9, v9, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 101
    .line 102
    invoke-virtual {v9, v11}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    if-nez v9, :cond_3

    .line 107
    .line 108
    const/4 v9, 0x0

    .line 109
    :cond_3
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 110
    .line 111
    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    const/16 v12, 0x22

    .line 116
    .line 117
    if-eqz v9, :cond_5

    .line 118
    .line 119
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    .line 121
    if-lt v13, v12, :cond_4

    .line 122
    .line 123
    invoke-static {v4}, Landroidx/core/widget/TextViewCompat$Api34Impl;->isRequestFromAccessibilityTool(Landroid/view/accessibility/AccessibilityManager;)Z

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    const/4 v13, 0x1

    .line 129
    :goto_1
    if-nez v13, :cond_5

    .line 130
    .line 131
    move-object v9, v0

    .line 132
    move v5, v1

    .line 133
    const/4 v8, 0x0

    .line 134
    goto/16 :goto_4e

    .line 135
    .line 136
    :cond_5
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 137
    .line 138
    .line 139
    move-result-object v13

    .line 140
    new-instance v14, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 141
    .line 142
    invoke-direct {v14, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 143
    .line 144
    .line 145
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 146
    .line 147
    if-lt v15, v12, :cond_6

    .line 148
    .line 149
    invoke-static {v13, v9}, Landroidx/core/widget/TextViewCompat$Api34Impl;->setAccessibilityDataSensitive(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_6
    const/16 v8, 0x40

    .line 154
    .line 155
    invoke-virtual {v14, v8, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBooleanProperty(IZ)V

    .line 156
    .line 157
    .line 158
    :goto_2
    const/4 v8, -0x1

    .line 159
    if-ne v1, v8, :cond_8

    .line 160
    .line 161
    invoke-virtual {v5}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    instance-of v2, v9, Landroid/view/View;

    .line 166
    .line 167
    if-eqz v2, :cond_7

    .line 168
    .line 169
    move-object v2, v9

    .line 170
    check-cast v2, Landroid/view/View;

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    const/4 v2, 0x0

    .line 174
    :goto_3
    iput v8, v14, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 175
    .line 176
    invoke-virtual {v13, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_8
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    if-eqz v2, :cond_9

    .line 185
    .line 186
    iget v2, v2, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 187
    .line 188
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    goto :goto_4

    .line 193
    :cond_9
    const/4 v2, 0x0

    .line 194
    :goto_4
    if-eqz v2, :cond_af

    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    iget v9, v9, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 209
    .line 210
    if-ne v2, v9, :cond_a

    .line 211
    .line 212
    move v2, v8

    .line 213
    :cond_a
    iput v2, v14, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 214
    .line 215
    invoke-virtual {v13, v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 216
    .line 217
    .line 218
    :goto_5
    iput v1, v14, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mVirtualDescendantId:I

    .line 219
    .line 220
    invoke-virtual {v13, v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsInScreen(Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v13, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 228
    .line 229
    .line 230
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->drawingOrder:Landroidx/collection/MutableIntIntMap;

    .line 231
    .line 232
    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->labelToActionId:Landroidx/collection/SparseArrayCompat;

    .line 233
    .line 234
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    const-string v11, "android.view.View"

    .line 243
    .line 244
    invoke-virtual {v14, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    iget-object v11, v7, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 248
    .line 249
    iget-object v8, v11, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 250
    .line 251
    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 252
    .line 253
    invoke-virtual {v8, v12}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    if-eqz v12, :cond_b

    .line 258
    .line 259
    const-string v12, "android.widget.EditText"

    .line 260
    .line 261
    invoke-virtual {v14, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 262
    .line 263
    .line 264
    :cond_b
    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 265
    .line 266
    invoke-virtual {v8, v12}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v12

    .line 270
    if-eqz v12, :cond_c

    .line 271
    .line 272
    const-string v12, "android.widget.TextView"

    .line 273
    .line 274
    invoke-virtual {v14, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 275
    .line 276
    .line 277
    :cond_c
    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 278
    .line 279
    invoke-virtual {v8, v12}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v12

    .line 283
    if-nez v12, :cond_d

    .line 284
    .line 285
    const/4 v12, 0x0

    .line 286
    :cond_d
    check-cast v12, Landroidx/compose/ui/semantics/Role;

    .line 287
    .line 288
    move-object/from16 v18, v3

    .line 289
    .line 290
    if-eqz v12, :cond_12

    .line 291
    .line 292
    iget v3, v12, Landroidx/compose/ui/semantics/Role;->value:I

    .line 293
    .line 294
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->isFake$ui()Z

    .line 295
    .line 296
    .line 297
    move-result v21

    .line 298
    if-nez v21, :cond_e

    .line 299
    .line 300
    move-object/from16 v21, v4

    .line 301
    .line 302
    const/4 v4, 0x4

    .line 303
    invoke-static {v4, v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 304
    .line 305
    .line 306
    move-result-object v19

    .line 307
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    .line 308
    .line 309
    .line 310
    move-result v19

    .line 311
    move-object/from16 v22, v6

    .line 312
    .line 313
    if-eqz v19, :cond_13

    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_e
    move-object/from16 v21, v4

    .line 317
    .line 318
    const/4 v4, 0x4

    .line 319
    move-object/from16 v22, v6

    .line 320
    .line 321
    :goto_6
    const-string v6, "AccessibilityNodeInfo.roleDescription"

    .line 322
    .line 323
    if-ne v3, v4, :cond_f

    .line 324
    .line 325
    const v3, 0x7f1304e7

    .line 326
    .line 327
    .line 328
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 337
    .line 338
    .line 339
    goto :goto_7

    .line 340
    :cond_f
    const/4 v4, 0x2

    .line 341
    if-ne v3, v4, :cond_10

    .line 342
    .line 343
    const v3, 0x7f1304e2

    .line 344
    .line 345
    .line 346
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 355
    .line 356
    .line 357
    goto :goto_7

    .line 358
    :cond_10
    invoke-static {v3}, Landroidx/compose/ui/platform/TestTagKt;->toLegacyClassName-V4PA4sw(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    const/4 v6, 0x5

    .line 363
    if-ne v3, v6, :cond_11

    .line 364
    .line 365
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->isUnmergedLeafNode$ui()Z

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    if-nez v3, :cond_11

    .line 370
    .line 371
    iget-boolean v3, v11, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    .line 372
    .line 373
    if-eqz v3, :cond_13

    .line 374
    .line 375
    :cond_11
    invoke-virtual {v14, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 376
    .line 377
    .line 378
    goto :goto_7

    .line 379
    :cond_12
    move-object/from16 v21, v4

    .line 380
    .line 381
    move-object/from16 v22, v6

    .line 382
    .line 383
    :cond_13
    :goto_7
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-virtual {v13, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 392
    .line 393
    .line 394
    invoke-static {v7}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->isImportantForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    invoke-virtual {v14, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setImportantForAccessibility(Z)V

    .line 399
    .line 400
    .line 401
    const/16 v3, 0x22

    .line 402
    .line 403
    if-lt v15, v3, :cond_14

    .line 404
    .line 405
    invoke-static/range {v21 .. v21}, Landroidx/core/widget/TextViewCompat$Api34Impl;->isRequestFromAccessibilityTool(Landroid/view/accessibility/AccessibilityManager;)Z

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    :goto_8
    const/4 v4, 0x4

    .line 410
    goto :goto_9

    .line 411
    :cond_14
    const/4 v3, 0x1

    .line 412
    goto :goto_8

    .line 413
    :goto_9
    invoke-static {v4, v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 418
    .line 419
    .line 420
    move-result v4

    .line 421
    move/from16 v21, v3

    .line 422
    .line 423
    move-object/from16 v23, v10

    .line 424
    .line 425
    const/4 v3, 0x0

    .line 426
    const/4 v15, 0x0

    .line 427
    :goto_a
    iget-object v10, v14, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 428
    .line 429
    if-ge v15, v4, :cond_1c

    .line 430
    .line 431
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v24

    .line 435
    move/from16 v25, v4

    .line 436
    .line 437
    move-object/from16 v4, v24

    .line 438
    .line 439
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 440
    .line 441
    move-object/from16 v24, v6

    .line 442
    .line 443
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    move/from16 v26, v15

    .line 448
    .line 449
    iget v15, v4, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 450
    .line 451
    invoke-virtual {v6, v15}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    .line 452
    .line 453
    .line 454
    move-result v6

    .line 455
    if-eqz v6, :cond_1b

    .line 456
    .line 457
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 458
    .line 459
    .line 460
    move-result-object v6

    .line 461
    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    .line 462
    .line 463
    .line 464
    move-result-object v6

    .line 465
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 466
    .line 467
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    if-nez v4, :cond_1a

    .line 472
    .line 473
    const/4 v4, -0x1

    .line 474
    if-ne v15, v4, :cond_15

    .line 475
    .line 476
    goto :goto_d

    .line 477
    :cond_15
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    invoke-virtual {v4, v15}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v4

    .line 485
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 486
    .line 487
    if-eqz v4, :cond_17

    .line 488
    .line 489
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 490
    .line 491
    if-eqz v4, :cond_17

    .line 492
    .line 493
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 494
    .line 495
    .line 496
    move-result-object v4

    .line 497
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->IsSensitiveData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 498
    .line 499
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 500
    .line 501
    invoke-virtual {v4, v6}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    if-nez v4, :cond_16

    .line 506
    .line 507
    const/4 v4, 0x0

    .line 508
    :cond_16
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 509
    .line 510
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v4

    .line 514
    goto :goto_b

    .line 515
    :cond_17
    const/4 v4, 0x0

    .line 516
    :goto_b
    if-nez v21, :cond_18

    .line 517
    .line 518
    if-nez v4, :cond_19

    .line 519
    .line 520
    :cond_18
    invoke-virtual {v10, v5, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 521
    .line 522
    .line 523
    :cond_19
    invoke-virtual {v2, v15, v3}, Landroidx/collection/MutableIntIntMap;->set(II)V

    .line 524
    .line 525
    .line 526
    add-int/lit8 v3, v3, 0x1

    .line 527
    .line 528
    goto :goto_d

    .line 529
    :cond_1a
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2()V

    .line 530
    .line 531
    .line 532
    :goto_c
    const/4 v8, 0x0

    .line 533
    goto/16 :goto_4f

    .line 534
    .line 535
    :cond_1b
    :goto_d
    add-int/lit8 v15, v26, 0x1

    .line 536
    .line 537
    move-object/from16 v6, v24

    .line 538
    .line 539
    move/from16 v4, v25

    .line 540
    .line 541
    goto :goto_a

    .line 542
    :cond_1c
    iget v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 543
    .line 544
    if-ne v1, v3, :cond_1d

    .line 545
    .line 546
    const/4 v3, 0x1

    .line 547
    invoke-virtual {v10, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 548
    .line 549
    .line 550
    sget-object v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 551
    .line 552
    invoke-virtual {v14, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 553
    .line 554
    .line 555
    goto :goto_e

    .line 556
    :cond_1d
    const/4 v3, 0x0

    .line 557
    invoke-virtual {v10, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 558
    .line 559
    .line 560
    sget-object v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 561
    .line 562
    invoke-virtual {v14, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 563
    .line 564
    .line 565
    :goto_e
    invoke-static {v7}, Landroidx/compose/ui/platform/TestTagKt;->getInfoText(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/text/AnnotatedString;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    if-eqz v3, :cond_3b

    .line 570
    .line 571
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 575
    .line 576
    .line 577
    move-result-object v27

    .line 578
    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->urlSpanCache:Lorg/acra/util/ProcessFinisher;

    .line 579
    .line 580
    new-instance v6, Landroid/text/SpannableString;

    .line 581
    .line 582
    iget-object v15, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 583
    .line 584
    move-object/from16 v21, v5

    .line 585
    .line 586
    iget-object v5, v3, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    .line 587
    .line 588
    invoke-direct {v6, v15}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 589
    .line 590
    .line 591
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->spanStylesOrNull:Ljava/util/ArrayList;

    .line 592
    .line 593
    move-object/from16 v30, v15

    .line 594
    .line 595
    if-eqz v3, :cond_29

    .line 596
    .line 597
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 598
    .line 599
    .line 600
    move-result v15

    .line 601
    move-object/from16 v31, v0

    .line 602
    .line 603
    const/4 v0, 0x0

    .line 604
    :goto_f
    if-ge v0, v15, :cond_28

    .line 605
    .line 606
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v24

    .line 610
    move/from16 v32, v0

    .line 611
    .line 612
    move-object/from16 v0, v24

    .line 613
    .line 614
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 615
    .line 616
    move-object/from16 v33, v3

    .line 617
    .line 618
    iget-object v3, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 619
    .line 620
    check-cast v3, Landroidx/compose/ui/text/SpanStyle;

    .line 621
    .line 622
    move/from16 v34, v15

    .line 623
    .line 624
    iget v15, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 625
    .line 626
    iget v0, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 627
    .line 628
    move-object/from16 v35, v2

    .line 629
    .line 630
    iget-object v2, v3, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 631
    .line 632
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 633
    .line 634
    .line 635
    move-result-wide v1

    .line 636
    move-object/from16 v36, v11

    .line 637
    .line 638
    move-object/from16 v37, v12

    .line 639
    .line 640
    iget-wide v11, v3, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    .line 641
    .line 642
    move-wide/from16 v25, v11

    .line 643
    .line 644
    iget-object v11, v3, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 645
    .line 646
    iget-object v12, v3, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 647
    .line 648
    move-object/from16 v38, v11

    .line 649
    .line 650
    iget-object v11, v3, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 651
    .line 652
    move-object/from16 v39, v7

    .line 653
    .line 654
    iget-object v7, v3, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    .line 655
    .line 656
    move-object/from16 v40, v9

    .line 657
    .line 658
    move-object/from16 v41, v10

    .line 659
    .line 660
    iget-wide v9, v3, Landroidx/compose/ui/text/SpanStyle;->background:J

    .line 661
    .line 662
    move-wide/from16 v42, v9

    .line 663
    .line 664
    iget-object v9, v3, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 665
    .line 666
    iget-object v3, v3, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 667
    .line 668
    move-object v10, v13

    .line 669
    move-object/from16 v44, v14

    .line 670
    .line 671
    invoke-interface {v3}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 672
    .line 673
    .line 674
    move-result-wide v13

    .line 675
    invoke-static {v1, v2, v13, v14}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 676
    .line 677
    .line 678
    move-result v13

    .line 679
    const-wide/16 v45, 0x10

    .line 680
    .line 681
    if-eqz v13, :cond_1e

    .line 682
    .line 683
    goto :goto_10

    .line 684
    :cond_1e
    cmp-long v3, v1, v45

    .line 685
    .line 686
    if-eqz v3, :cond_1f

    .line 687
    .line 688
    new-instance v3, Landroidx/compose/ui/text/style/ColorStyle;

    .line 689
    .line 690
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/text/style/ColorStyle;-><init>(J)V

    .line 691
    .line 692
    .line 693
    goto :goto_10

    .line 694
    :cond_1f
    sget-object v1, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    .line 695
    .line 696
    move-object v3, v1

    .line 697
    :goto_10
    invoke-interface {v3}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 698
    .line 699
    .line 700
    move-result-wide v1

    .line 701
    invoke-static {v6, v1, v2, v15, v0}, Landroidx/sqlite/SQLite;->setColor-RPmYEkk(Landroid/text/Spannable;JII)V

    .line 702
    .line 703
    .line 704
    move/from16 v29, v0

    .line 705
    .line 706
    move-object/from16 v24, v6

    .line 707
    .line 708
    move/from16 v28, v15

    .line 709
    .line 710
    invoke-static/range {v24 .. v29}, Landroidx/sqlite/SQLite;->setFontSize-KmRG4DE(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V

    .line 711
    .line 712
    .line 713
    move-object/from16 v0, v24

    .line 714
    .line 715
    move/from16 v1, v28

    .line 716
    .line 717
    move/from16 v2, v29

    .line 718
    .line 719
    if-nez v38, :cond_21

    .line 720
    .line 721
    if-eqz v12, :cond_20

    .line 722
    .line 723
    goto :goto_11

    .line 724
    :cond_20
    const/16 v3, 0x21

    .line 725
    .line 726
    goto :goto_14

    .line 727
    :cond_21
    :goto_11
    if-nez v38, :cond_22

    .line 728
    .line 729
    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    .line 730
    .line 731
    goto :goto_12

    .line 732
    :cond_22
    move-object/from16 v3, v38

    .line 733
    .line 734
    :goto_12
    if-eqz v12, :cond_23

    .line 735
    .line 736
    iget v6, v12, Landroidx/compose/ui/text/font/FontStyle;->value:I

    .line 737
    .line 738
    goto :goto_13

    .line 739
    :cond_23
    const/4 v6, 0x0

    .line 740
    :goto_13
    new-instance v12, Landroid/text/style/StyleSpan;

    .line 741
    .line 742
    invoke-static {v3, v6}, Lorg/jsoup/Jsoup;->getAndroidTypefaceStyle-FO1MlWM(Landroidx/compose/ui/text/font/FontWeight;I)I

    .line 743
    .line 744
    .line 745
    move-result v3

    .line 746
    invoke-direct {v12, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 747
    .line 748
    .line 749
    const/16 v3, 0x21

    .line 750
    .line 751
    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 752
    .line 753
    .line 754
    :goto_14
    if-eqz v9, :cond_25

    .line 755
    .line 756
    iget v6, v9, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 757
    .line 758
    or-int/lit8 v9, v6, 0x1

    .line 759
    .line 760
    if-ne v9, v6, :cond_24

    .line 761
    .line 762
    new-instance v9, Landroid/text/style/UnderlineSpan;

    .line 763
    .line 764
    invoke-direct {v9}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 768
    .line 769
    .line 770
    :cond_24
    or-int/lit8 v9, v6, 0x2

    .line 771
    .line 772
    if-ne v9, v6, :cond_25

    .line 773
    .line 774
    new-instance v6, Landroid/text/style/StrikethroughSpan;

    .line 775
    .line 776
    invoke-direct {v6}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 780
    .line 781
    .line 782
    :cond_25
    if-eqz v11, :cond_26

    .line 783
    .line 784
    new-instance v6, Landroid/text/style/ScaleXSpan;

    .line 785
    .line 786
    iget v9, v11, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    .line 787
    .line 788
    invoke-direct {v6, v9}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 792
    .line 793
    .line 794
    :cond_26
    invoke-static {v0, v7, v1, v2}, Landroidx/sqlite/SQLite;->setLocaleList(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V

    .line 795
    .line 796
    .line 797
    cmp-long v6, v42, v45

    .line 798
    .line 799
    if-eqz v6, :cond_27

    .line 800
    .line 801
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    .line 802
    .line 803
    invoke-static/range {v42 .. v43}, Landroidx/compose/ui/graphics/Brush;->toArgb-8_81llA(J)I

    .line 804
    .line 805
    .line 806
    move-result v7

    .line 807
    invoke-direct {v6, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 811
    .line 812
    .line 813
    :cond_27
    add-int/lit8 v1, v32, 0x1

    .line 814
    .line 815
    move-object v6, v0

    .line 816
    move v0, v1

    .line 817
    move-object v13, v10

    .line 818
    move-object/from16 v3, v33

    .line 819
    .line 820
    move/from16 v15, v34

    .line 821
    .line 822
    move-object/from16 v2, v35

    .line 823
    .line 824
    move-object/from16 v11, v36

    .line 825
    .line 826
    move-object/from16 v12, v37

    .line 827
    .line 828
    move-object/from16 v7, v39

    .line 829
    .line 830
    move-object/from16 v9, v40

    .line 831
    .line 832
    move-object/from16 v10, v41

    .line 833
    .line 834
    move-object/from16 v14, v44

    .line 835
    .line 836
    move/from16 v1, p1

    .line 837
    .line 838
    goto/16 :goto_f

    .line 839
    .line 840
    :cond_28
    :goto_15
    move-object/from16 v35, v2

    .line 841
    .line 842
    move-object v0, v6

    .line 843
    move-object/from16 v39, v7

    .line 844
    .line 845
    move-object/from16 v40, v9

    .line 846
    .line 847
    move-object/from16 v41, v10

    .line 848
    .line 849
    move-object/from16 v36, v11

    .line 850
    .line 851
    move-object/from16 v37, v12

    .line 852
    .line 853
    move-object v10, v13

    .line 854
    move-object/from16 v44, v14

    .line 855
    .line 856
    goto :goto_16

    .line 857
    :cond_29
    move-object/from16 v31, v0

    .line 858
    .line 859
    goto :goto_15

    .line 860
    :goto_16
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    .line 861
    .line 862
    .line 863
    move-result v1

    .line 864
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 865
    .line 866
    if-eqz v5, :cond_2b

    .line 867
    .line 868
    new-instance v3, Ljava/util/ArrayList;

    .line 869
    .line 870
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 871
    .line 872
    .line 873
    move-result v6

    .line 874
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 875
    .line 876
    .line 877
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 878
    .line 879
    .line 880
    move-result v6

    .line 881
    const/4 v7, 0x0

    .line 882
    :goto_17
    if-ge v7, v6, :cond_2c

    .line 883
    .line 884
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    move-result-object v9

    .line 888
    move-object v11, v9

    .line 889
    check-cast v11, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 890
    .line 891
    iget-object v12, v11, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 892
    .line 893
    instance-of v12, v12, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 894
    .line 895
    if-eqz v12, :cond_2a

    .line 896
    .line 897
    iget v12, v11, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 898
    .line 899
    iget v11, v11, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 900
    .line 901
    const/4 v13, 0x0

    .line 902
    invoke-static {v13, v1, v12, v11}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    .line 903
    .line 904
    .line 905
    move-result v11

    .line 906
    if-eqz v11, :cond_2a

    .line 907
    .line 908
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    .line 910
    .line 911
    :cond_2a
    add-int/lit8 v7, v7, 0x1

    .line 912
    .line 913
    goto :goto_17

    .line 914
    :cond_2b
    move-object v3, v2

    .line 915
    :cond_2c
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 916
    .line 917
    .line 918
    move-result v1

    .line 919
    const/4 v6, 0x0

    .line 920
    :goto_18
    if-ge v6, v1, :cond_2e

    .line 921
    .line 922
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v7

    .line 926
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 927
    .line 928
    iget-object v9, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 929
    .line 930
    check-cast v9, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 931
    .line 932
    iget v11, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 933
    .line 934
    iget v7, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 935
    .line 936
    instance-of v12, v9, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 937
    .line 938
    if-eqz v12, :cond_2d

    .line 939
    .line 940
    new-instance v12, Landroid/text/style/TtsSpan$VerbatimBuilder;

    .line 941
    .line 942
    iget-object v9, v9, Landroidx/compose/ui/text/VerbatimTtsAnnotation;->verbatim:Ljava/lang/String;

    .line 943
    .line 944
    invoke-direct {v12, v9}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 945
    .line 946
    .line 947
    invoke-virtual {v12}, Landroid/text/style/TtsSpan$Builder;->build()Landroid/text/style/TtsSpan;

    .line 948
    .line 949
    .line 950
    move-result-object v9

    .line 951
    const/16 v12, 0x21

    .line 952
    .line 953
    invoke-virtual {v0, v9, v11, v7, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 954
    .line 955
    .line 956
    add-int/lit8 v6, v6, 0x1

    .line 957
    .line 958
    goto :goto_18

    .line 959
    :cond_2d
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 960
    .line 961
    .line 962
    goto/16 :goto_c

    .line 963
    .line 964
    :cond_2e
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    .line 965
    .line 966
    .line 967
    move-result v1

    .line 968
    if-eqz v5, :cond_30

    .line 969
    .line 970
    new-instance v3, Ljava/util/ArrayList;

    .line 971
    .line 972
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 973
    .line 974
    .line 975
    move-result v6

    .line 976
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 977
    .line 978
    .line 979
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 980
    .line 981
    .line 982
    move-result v6

    .line 983
    const/4 v7, 0x0

    .line 984
    :goto_19
    if-ge v7, v6, :cond_31

    .line 985
    .line 986
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    move-result-object v9

    .line 990
    move-object v11, v9

    .line 991
    check-cast v11, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 992
    .line 993
    iget-object v12, v11, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 994
    .line 995
    instance-of v12, v12, Landroidx/compose/ui/text/UrlAnnotation;

    .line 996
    .line 997
    if-eqz v12, :cond_2f

    .line 998
    .line 999
    iget v12, v11, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 1000
    .line 1001
    iget v11, v11, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 1002
    .line 1003
    const/4 v13, 0x0

    .line 1004
    invoke-static {v13, v1, v12, v11}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    .line 1005
    .line 1006
    .line 1007
    move-result v11

    .line 1008
    if-eqz v11, :cond_2f

    .line 1009
    .line 1010
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    .line 1012
    .line 1013
    :cond_2f
    add-int/lit8 v7, v7, 0x1

    .line 1014
    .line 1015
    goto :goto_19

    .line 1016
    :cond_30
    move-object v3, v2

    .line 1017
    :cond_31
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 1018
    .line 1019
    .line 1020
    move-result v1

    .line 1021
    const/4 v6, 0x0

    .line 1022
    :goto_1a
    if-ge v6, v1, :cond_33

    .line 1023
    .line 1024
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v7

    .line 1028
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1029
    .line 1030
    iget-object v9, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 1031
    .line 1032
    check-cast v9, Landroidx/compose/ui/text/UrlAnnotation;

    .line 1033
    .line 1034
    iget v11, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 1035
    .line 1036
    iget v7, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 1037
    .line 1038
    iget-object v12, v4, Lorg/acra/util/ProcessFinisher;->context:Ljava/lang/Object;

    .line 1039
    .line 1040
    check-cast v12, Ljava/util/WeakHashMap;

    .line 1041
    .line 1042
    invoke-virtual {v12, v9}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v13

    .line 1046
    if-nez v13, :cond_32

    .line 1047
    .line 1048
    new-instance v13, Landroid/text/style/URLSpan;

    .line 1049
    .line 1050
    iget-object v14, v9, Landroidx/compose/ui/text/UrlAnnotation;->url:Ljava/lang/String;

    .line 1051
    .line 1052
    invoke-direct {v13, v14}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v12, v9, v13}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    .line 1057
    .line 1058
    :cond_32
    check-cast v13, Landroid/text/style/URLSpan;

    .line 1059
    .line 1060
    const/16 v12, 0x21

    .line 1061
    .line 1062
    invoke-virtual {v0, v13, v11, v7, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1063
    .line 1064
    .line 1065
    add-int/lit8 v6, v6, 0x1

    .line 1066
    .line 1067
    goto :goto_1a

    .line 1068
    :cond_33
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    .line 1069
    .line 1070
    .line 1071
    move-result v1

    .line 1072
    if-eqz v5, :cond_35

    .line 1073
    .line 1074
    new-instance v2, Ljava/util/ArrayList;

    .line 1075
    .line 1076
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1077
    .line 1078
    .line 1079
    move-result v3

    .line 1080
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1081
    .line 1082
    .line 1083
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 1084
    .line 1085
    .line 1086
    move-result v3

    .line 1087
    const/4 v6, 0x0

    .line 1088
    :goto_1b
    if-ge v6, v3, :cond_35

    .line 1089
    .line 1090
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v7

    .line 1094
    move-object v9, v7

    .line 1095
    check-cast v9, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1096
    .line 1097
    iget-object v11, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 1098
    .line 1099
    instance-of v11, v11, Landroidx/compose/ui/text/LinkAnnotation;

    .line 1100
    .line 1101
    if-eqz v11, :cond_34

    .line 1102
    .line 1103
    iget v11, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 1104
    .line 1105
    iget v9, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 1106
    .line 1107
    const/4 v13, 0x0

    .line 1108
    invoke-static {v13, v1, v11, v9}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    .line 1109
    .line 1110
    .line 1111
    move-result v9

    .line 1112
    if-eqz v9, :cond_34

    .line 1113
    .line 1114
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    .line 1116
    .line 1117
    :cond_34
    add-int/lit8 v6, v6, 0x1

    .line 1118
    .line 1119
    goto :goto_1b

    .line 1120
    :cond_35
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 1121
    .line 1122
    .line 1123
    move-result v1

    .line 1124
    const/4 v3, 0x0

    .line 1125
    :goto_1c
    if-ge v3, v1, :cond_3a

    .line 1126
    .line 1127
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v5

    .line 1131
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1132
    .line 1133
    iget v6, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 1134
    .line 1135
    iget-object v7, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 1136
    .line 1137
    iget v9, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 1138
    .line 1139
    if-eq v6, v9, :cond_39

    .line 1140
    .line 1141
    move-object v11, v7

    .line 1142
    check-cast v11, Landroidx/compose/ui/text/LinkAnnotation;

    .line 1143
    .line 1144
    instance-of v12, v11, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 1145
    .line 1146
    if-eqz v12, :cond_37

    .line 1147
    .line 1148
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1149
    .line 1150
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1151
    .line 1152
    .line 1153
    check-cast v7, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 1154
    .line 1155
    invoke-direct {v5, v7, v6, v9}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 1156
    .line 1157
    .line 1158
    iget-object v11, v4, Lorg/acra/util/ProcessFinisher;->config:Ljava/lang/Object;

    .line 1159
    .line 1160
    check-cast v11, Ljava/util/WeakHashMap;

    .line 1161
    .line 1162
    invoke-virtual {v11, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v12

    .line 1166
    if-nez v12, :cond_36

    .line 1167
    .line 1168
    new-instance v12, Landroid/text/style/URLSpan;

    .line 1169
    .line 1170
    iget-object v7, v7, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    .line 1171
    .line 1172
    invoke-direct {v12, v7}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v11, v5, v12}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    :cond_36
    check-cast v12, Landroid/text/style/URLSpan;

    .line 1179
    .line 1180
    const/16 v5, 0x21

    .line 1181
    .line 1182
    invoke-virtual {v0, v12, v6, v9, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1183
    .line 1184
    .line 1185
    goto :goto_1d

    .line 1186
    :cond_37
    iget-object v7, v4, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Ljava/lang/Object;

    .line 1187
    .line 1188
    check-cast v7, Ljava/util/WeakHashMap;

    .line 1189
    .line 1190
    invoke-virtual {v7, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v12

    .line 1194
    if-nez v12, :cond_38

    .line 1195
    .line 1196
    new-instance v12, Landroidx/compose/ui/text/platform/ComposeClickableSpan;

    .line 1197
    .line 1198
    invoke-direct {v12, v11}, Landroidx/compose/ui/text/platform/ComposeClickableSpan;-><init>(Landroidx/compose/ui/text/LinkAnnotation;)V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v7, v5, v12}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    .line 1203
    .line 1204
    :cond_38
    check-cast v12, Landroid/text/style/ClickableSpan;

    .line 1205
    .line 1206
    const/16 v5, 0x21

    .line 1207
    .line 1208
    invoke-virtual {v0, v12, v6, v9, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1209
    .line 1210
    .line 1211
    goto :goto_1d

    .line 1212
    :cond_39
    const/16 v5, 0x21

    .line 1213
    .line 1214
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    .line 1215
    .line 1216
    goto :goto_1c

    .line 1217
    :cond_3a
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->trimToSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v0

    .line 1221
    check-cast v0, Landroid/text/SpannableString;

    .line 1222
    .line 1223
    move-object/from16 v1, v44

    .line 1224
    .line 1225
    goto :goto_1e

    .line 1226
    :cond_3b
    move-object/from16 v31, v0

    .line 1227
    .line 1228
    move-object/from16 v35, v2

    .line 1229
    .line 1230
    move-object/from16 v21, v5

    .line 1231
    .line 1232
    move-object/from16 v39, v7

    .line 1233
    .line 1234
    move-object/from16 v40, v9

    .line 1235
    .line 1236
    move-object/from16 v41, v10

    .line 1237
    .line 1238
    move-object/from16 v36, v11

    .line 1239
    .line 1240
    move-object/from16 v37, v12

    .line 1241
    .line 1242
    move-object v10, v13

    .line 1243
    move-object v1, v14

    .line 1244
    const/4 v0, 0x0

    .line 1245
    :goto_1e
    invoke-virtual {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 1246
    .line 1247
    .line 1248
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Error:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1249
    .line 1250
    invoke-virtual {v8, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1251
    .line 1252
    .line 1253
    move-result v2

    .line 1254
    if-eqz v2, :cond_3d

    .line 1255
    .line 1256
    const/4 v3, 0x1

    .line 1257
    invoke-virtual {v10, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {v8, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v0

    .line 1264
    if-nez v0, :cond_3c

    .line 1265
    .line 1266
    const/4 v0, 0x0

    .line 1267
    :cond_3c
    check-cast v0, Ljava/lang/CharSequence;

    .line 1268
    .line 1269
    move-object/from16 v2, v41

    .line 1270
    .line 1271
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    .line 1272
    .line 1273
    .line 1274
    :goto_1f
    move-object/from16 v0, v39

    .line 1275
    .line 1276
    move-object/from16 v3, v40

    .line 1277
    .line 1278
    goto :goto_20

    .line 1279
    :cond_3d
    move-object/from16 v2, v41

    .line 1280
    .line 1281
    goto :goto_1f

    .line 1282
    :goto_20
    invoke-static {v0, v3}, Landroidx/compose/ui/platform/TestTagKt;->getInfoStateDescriptionOrNull(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v4

    .line 1286
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1287
    .line 1288
    const/16 v6, 0x1e

    .line 1289
    .line 1290
    if-lt v5, v6, :cond_3e

    .line 1291
    .line 1292
    invoke-static {v2, v4}, Landroidx/core/os/BuildCompat$Api30Impl;->setStateDescription(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 1293
    .line 1294
    .line 1295
    goto :goto_21

    .line 1296
    :cond_3e
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v5

    .line 1300
    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    .line 1301
    .line 1302
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1303
    .line 1304
    .line 1305
    :goto_21
    invoke-static {v0}, Landroidx/compose/ui/platform/TestTagKt;->getInfoIsCheckable(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1306
    .line 1307
    .line 1308
    move-result v4

    .line 1309
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 1310
    .line 1311
    .line 1312
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1313
    .line 1314
    invoke-virtual {v8, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v4

    .line 1318
    if-nez v4, :cond_3f

    .line 1319
    .line 1320
    const/4 v4, 0x0

    .line 1321
    :cond_3f
    check-cast v4, Landroidx/compose/ui/state/ToggleableState;

    .line 1322
    .line 1323
    if-eqz v4, :cond_41

    .line 1324
    .line 1325
    sget-object v5, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    .line 1326
    .line 1327
    if-ne v4, v5, :cond_40

    .line 1328
    .line 1329
    const/4 v5, 0x1

    .line 1330
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 1331
    .line 1332
    .line 1333
    goto :goto_22

    .line 1334
    :cond_40
    sget-object v5, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    .line 1335
    .line 1336
    if-ne v4, v5, :cond_41

    .line 1337
    .line 1338
    const/4 v13, 0x0

    .line 1339
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 1340
    .line 1341
    .line 1342
    :cond_41
    :goto_22
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1343
    .line 1344
    invoke-virtual {v8, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v4

    .line 1348
    if-nez v4, :cond_42

    .line 1349
    .line 1350
    const/4 v4, 0x0

    .line 1351
    :cond_42
    check-cast v4, Ljava/lang/Boolean;

    .line 1352
    .line 1353
    if-eqz v4, :cond_45

    .line 1354
    .line 1355
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1356
    .line 1357
    .line 1358
    move-result v4

    .line 1359
    if-nez v37, :cond_43

    .line 1360
    .line 1361
    move-object/from16 v12, v37

    .line 1362
    .line 1363
    const/4 v6, 0x4

    .line 1364
    goto :goto_23

    .line 1365
    :cond_43
    move-object/from16 v12, v37

    .line 1366
    .line 1367
    iget v5, v12, Landroidx/compose/ui/semantics/Role;->value:I

    .line 1368
    .line 1369
    const/4 v6, 0x4

    .line 1370
    if-ne v5, v6, :cond_44

    .line 1371
    .line 1372
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 1373
    .line 1374
    .line 1375
    goto :goto_24

    .line 1376
    :cond_44
    :goto_23
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 1377
    .line 1378
    .line 1379
    :goto_24
    move-object/from16 v4, v36

    .line 1380
    .line 1381
    goto :goto_25

    .line 1382
    :cond_45
    move-object/from16 v12, v37

    .line 1383
    .line 1384
    const/4 v6, 0x4

    .line 1385
    goto :goto_24

    .line 1386
    :goto_25
    iget-boolean v5, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    .line 1387
    .line 1388
    if-eqz v5, :cond_46

    .line 1389
    .line 1390
    invoke-static {v6, v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v5

    .line 1394
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 1395
    .line 1396
    .line 1397
    move-result v5

    .line 1398
    if-eqz v5, :cond_49

    .line 1399
    .line 1400
    :cond_46
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1401
    .line 1402
    invoke-virtual {v8, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v5

    .line 1406
    if-nez v5, :cond_47

    .line 1407
    .line 1408
    const/4 v5, 0x0

    .line 1409
    :cond_47
    check-cast v5, Ljava/util/List;

    .line 1410
    .line 1411
    if-eqz v5, :cond_48

    .line 1412
    .line 1413
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v5

    .line 1417
    check-cast v5, Ljava/lang/String;

    .line 1418
    .line 1419
    goto :goto_26

    .line 1420
    :cond_48
    const/4 v5, 0x0

    .line 1421
    :goto_26
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1422
    .line 1423
    .line 1424
    :cond_49
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->TestTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1425
    .line 1426
    invoke-virtual {v8, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v5

    .line 1430
    if-nez v5, :cond_4a

    .line 1431
    .line 1432
    const/4 v5, 0x0

    .line 1433
    :cond_4a
    check-cast v5, Ljava/lang/String;

    .line 1434
    .line 1435
    if-eqz v5, :cond_4d

    .line 1436
    .line 1437
    move-object v6, v0

    .line 1438
    :goto_27
    if-eqz v6, :cond_4c

    .line 1439
    .line 1440
    iget-object v7, v6, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1441
    .line 1442
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->TestTagsAsResourceId:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1443
    .line 1444
    iget-object v11, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 1445
    .line 1446
    invoke-virtual {v11, v9}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1447
    .line 1448
    .line 1449
    move-result v11

    .line 1450
    if-eqz v11, :cond_4b

    .line 1451
    .line 1452
    invoke-virtual {v7, v9}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v6

    .line 1456
    check-cast v6, Ljava/lang/Boolean;

    .line 1457
    .line 1458
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1459
    .line 1460
    .line 1461
    move-result v6

    .line 1462
    goto :goto_28

    .line 1463
    :cond_4b
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v6

    .line 1467
    goto :goto_27

    .line 1468
    :cond_4c
    const/4 v6, 0x0

    .line 1469
    :goto_28
    if-eqz v6, :cond_4d

    .line 1470
    .line 1471
    invoke-virtual {v10, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    .line 1472
    .line 1473
    .line 1474
    :cond_4d
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->Heading:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1475
    .line 1476
    invoke-virtual {v8, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v5

    .line 1480
    if-nez v5, :cond_4e

    .line 1481
    .line 1482
    const/4 v5, 0x0

    .line 1483
    :cond_4e
    check-cast v5, Lkotlin/Unit;

    .line 1484
    .line 1485
    if-eqz v5, :cond_4f

    .line 1486
    .line 1487
    const/4 v5, 0x1

    .line 1488
    invoke-virtual {v1, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHeading(Z)V

    .line 1489
    .line 1490
    .line 1491
    :cond_4f
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->TextEntryKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1492
    .line 1493
    invoke-virtual {v8, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v5

    .line 1497
    if-nez v5, :cond_50

    .line 1498
    .line 1499
    const/4 v5, 0x0

    .line 1500
    :cond_50
    check-cast v5, Lkotlin/Unit;

    .line 1501
    .line 1502
    if-eqz v5, :cond_51

    .line 1503
    .line 1504
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTextEntryKey()V

    .line 1505
    .line 1506
    .line 1507
    :cond_51
    move/from16 v5, p1

    .line 1508
    .line 1509
    const/4 v6, -0x1

    .line 1510
    if-eq v5, v6, :cond_53

    .line 1511
    .line 1512
    iget v7, v0, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 1513
    .line 1514
    move-object/from16 v9, v35

    .line 1515
    .line 1516
    invoke-virtual {v9, v7}, Landroidx/collection/MutableIntIntMap;->getOrDefault(I)I

    .line 1517
    .line 1518
    .line 1519
    move-result v7

    .line 1520
    if-eq v7, v6, :cond_52

    .line 1521
    .line 1522
    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setDrawingOrder(I)V

    .line 1523
    .line 1524
    .line 1525
    goto :goto_29

    .line 1526
    :cond_52
    const-string v6, "AccessibilityDelegate"

    .line 1527
    .line 1528
    const-string v7, "Drawing order is not available, was AccessibilityNodeInfo requested for a child node before its parent?"

    .line 1529
    .line 1530
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    .line 1532
    .line 1533
    :cond_53
    :goto_29
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1534
    .line 1535
    invoke-virtual {v8, v6}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1536
    .line 1537
    .line 1538
    move-result v6

    .line 1539
    invoke-virtual {v10, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 1540
    .line 1541
    .line 1542
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->IsEditable:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1543
    .line 1544
    invoke-virtual {v8, v6}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v6

    .line 1548
    if-nez v6, :cond_54

    .line 1549
    .line 1550
    const/4 v6, 0x0

    .line 1551
    :cond_54
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1552
    .line 1553
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1554
    .line 1555
    .line 1556
    move-result v6

    .line 1557
    invoke-virtual {v10, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 1558
    .line 1559
    .line 1560
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->MaxTextLength:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1561
    .line 1562
    invoke-virtual {v8, v6}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v6

    .line 1566
    if-nez v6, :cond_55

    .line 1567
    .line 1568
    const/4 v6, 0x0

    .line 1569
    :cond_55
    check-cast v6, Ljava/lang/Integer;

    .line 1570
    .line 1571
    if-eqz v6, :cond_56

    .line 1572
    .line 1573
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1574
    .line 1575
    .line 1576
    move-result v6

    .line 1577
    goto :goto_2a

    .line 1578
    :cond_56
    const/4 v6, -0x1

    .line 1579
    :goto_2a
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    .line 1580
    .line 1581
    .line 1582
    invoke-static {v0}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1583
    .line 1584
    .line 1585
    move-result v6

    .line 1586
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 1587
    .line 1588
    .line 1589
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1590
    .line 1591
    invoke-virtual {v8, v6}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1592
    .line 1593
    .line 1594
    move-result v9

    .line 1595
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 1596
    .line 1597
    .line 1598
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    .line 1599
    .line 1600
    .line 1601
    move-result v9

    .line 1602
    if-eqz v9, :cond_58

    .line 1603
    .line 1604
    invoke-virtual {v4, v6}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v9

    .line 1608
    check-cast v9, Ljava/lang/Boolean;

    .line 1609
    .line 1610
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1611
    .line 1612
    .line 1613
    move-result v9

    .line 1614
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 1615
    .line 1616
    .line 1617
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    .line 1618
    .line 1619
    .line 1620
    move-result v9

    .line 1621
    if-eqz v9, :cond_57

    .line 1622
    .line 1623
    const/4 v9, 0x2

    .line 1624
    invoke-virtual {v1, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1625
    .line 1626
    .line 1627
    move-object/from16 v9, v31

    .line 1628
    .line 1629
    iput v5, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    .line 1630
    .line 1631
    :goto_2b
    const/4 v11, 0x1

    .line 1632
    goto :goto_2c

    .line 1633
    :cond_57
    move-object/from16 v9, v31

    .line 1634
    .line 1635
    const/4 v11, 0x1

    .line 1636
    invoke-virtual {v1, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1637
    .line 1638
    .line 1639
    goto :goto_2c

    .line 1640
    :cond_58
    move-object/from16 v9, v31

    .line 1641
    .line 1642
    goto :goto_2b

    .line 1643
    :goto_2c
    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->isHidden(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1644
    .line 1645
    .line 1646
    move-result v13

    .line 1647
    xor-int/2addr v13, v11

    .line 1648
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 1649
    .line 1650
    .line 1651
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->isFake$ui()Z

    .line 1652
    .line 1653
    .line 1654
    move-result v11

    .line 1655
    if-eqz v11, :cond_59

    .line 1656
    .line 1657
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v11

    .line 1661
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1662
    .line 1663
    .line 1664
    goto :goto_2d

    .line 1665
    :cond_59
    move-object v11, v0

    .line 1666
    :goto_2d
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getTouchBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v11

    .line 1670
    invoke-virtual {v11}, Landroidx/compose/ui/geometry/Rect;->isEmpty()Z

    .line 1671
    .line 1672
    .line 1673
    move-result v11

    .line 1674
    if-eqz v11, :cond_5a

    .line 1675
    .line 1676
    const/4 v13, 0x0

    .line 1677
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 1678
    .line 1679
    .line 1680
    goto :goto_2e

    .line 1681
    :cond_5a
    const/4 v13, 0x0

    .line 1682
    :goto_2e
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->LiveRegion:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1683
    .line 1684
    invoke-virtual {v8, v11}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v11

    .line 1688
    if-nez v11, :cond_5b

    .line 1689
    .line 1690
    const/4 v11, 0x0

    .line 1691
    :cond_5b
    if-nez v11, :cond_ae

    .line 1692
    .line 1693
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1694
    .line 1695
    .line 1696
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->OnClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1697
    .line 1698
    invoke-static {v4, v11}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v11

    .line 1702
    check-cast v11, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1703
    .line 1704
    if-eqz v11, :cond_62

    .line 1705
    .line 1706
    sget-object v15, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1707
    .line 1708
    invoke-static {v4, v15}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1709
    .line 1710
    .line 1711
    move-result-object v15

    .line 1712
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1713
    .line 1714
    .line 1715
    move-result v15

    .line 1716
    if-nez v12, :cond_5c

    .line 1717
    .line 1718
    goto :goto_2f

    .line 1719
    :cond_5c
    iget v13, v12, Landroidx/compose/ui/semantics/Role;->value:I

    .line 1720
    .line 1721
    const/4 v14, 0x4

    .line 1722
    if-ne v13, v14, :cond_5d

    .line 1723
    .line 1724
    goto :goto_30

    .line 1725
    :cond_5d
    :goto_2f
    if-nez v12, :cond_5e

    .line 1726
    .line 1727
    goto :goto_31

    .line 1728
    :cond_5e
    iget v12, v12, Landroidx/compose/ui/semantics/Role;->value:I

    .line 1729
    .line 1730
    const/4 v13, 0x3

    .line 1731
    if-ne v12, v13, :cond_5f

    .line 1732
    .line 1733
    :goto_30
    const/4 v12, 0x1

    .line 1734
    goto :goto_32

    .line 1735
    :cond_5f
    :goto_31
    const/4 v12, 0x0

    .line 1736
    :goto_32
    if-eqz v12, :cond_61

    .line 1737
    .line 1738
    if-eqz v12, :cond_60

    .line 1739
    .line 1740
    if-nez v15, :cond_60

    .line 1741
    .line 1742
    goto :goto_33

    .line 1743
    :cond_60
    const/4 v12, 0x0

    .line 1744
    goto :goto_34

    .line 1745
    :cond_61
    :goto_33
    const/4 v12, 0x1

    .line 1746
    :goto_34
    invoke-virtual {v2, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1747
    .line 1748
    .line 1749
    invoke-static {v0}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1750
    .line 1751
    .line 1752
    move-result v12

    .line 1753
    if-eqz v12, :cond_62

    .line 1754
    .line 1755
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    .line 1756
    .line 1757
    .line 1758
    move-result v12

    .line 1759
    if-eqz v12, :cond_62

    .line 1760
    .line 1761
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1762
    .line 1763
    iget-object v11, v11, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1764
    .line 1765
    const/16 v13, 0x10

    .line 1766
    .line 1767
    invoke-direct {v12, v13, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1768
    .line 1769
    .line 1770
    invoke-virtual {v1, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1771
    .line 1772
    .line 1773
    :cond_62
    const/4 v13, 0x0

    .line 1774
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 1775
    .line 1776
    .line 1777
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->OnLongClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1778
    .line 1779
    invoke-static {v4, v11}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v11

    .line 1783
    check-cast v11, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1784
    .line 1785
    if-eqz v11, :cond_63

    .line 1786
    .line 1787
    const/4 v12, 0x1

    .line 1788
    invoke-virtual {v2, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 1789
    .line 1790
    .line 1791
    invoke-static {v0}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1792
    .line 1793
    .line 1794
    move-result v12

    .line 1795
    if-eqz v12, :cond_63

    .line 1796
    .line 1797
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1798
    .line 1799
    const/16 v13, 0x20

    .line 1800
    .line 1801
    iget-object v11, v11, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1802
    .line 1803
    invoke-direct {v12, v13, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1804
    .line 1805
    .line 1806
    invoke-virtual {v1, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1807
    .line 1808
    .line 1809
    :cond_63
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->CopyText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1810
    .line 1811
    invoke-static {v4, v11}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v11

    .line 1815
    check-cast v11, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1816
    .line 1817
    if-eqz v11, :cond_64

    .line 1818
    .line 1819
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1820
    .line 1821
    const/16 v13, 0x4000

    .line 1822
    .line 1823
    iget-object v11, v11, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1824
    .line 1825
    invoke-direct {v12, v13, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1826
    .line 1827
    .line 1828
    invoke-virtual {v1, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1829
    .line 1830
    .line 1831
    :cond_64
    invoke-static {v0}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1832
    .line 1833
    .line 1834
    move-result v11

    .line 1835
    if-eqz v11, :cond_6a

    .line 1836
    .line 1837
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->SetText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1838
    .line 1839
    invoke-static {v4, v11}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1840
    .line 1841
    .line 1842
    move-result-object v11

    .line 1843
    check-cast v11, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1844
    .line 1845
    if-eqz v11, :cond_65

    .line 1846
    .line 1847
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1848
    .line 1849
    const/high16 v13, 0x200000

    .line 1850
    .line 1851
    iget-object v11, v11, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1852
    .line 1853
    invoke-direct {v12, v13, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1854
    .line 1855
    .line 1856
    invoke-virtual {v1, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1857
    .line 1858
    .line 1859
    :cond_65
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->OnImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1860
    .line 1861
    invoke-static {v4, v11}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1862
    .line 1863
    .line 1864
    move-result-object v11

    .line 1865
    check-cast v11, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1866
    .line 1867
    if-eqz v11, :cond_66

    .line 1868
    .line 1869
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1870
    .line 1871
    const v13, 0x1020054

    .line 1872
    .line 1873
    .line 1874
    iget-object v11, v11, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1875
    .line 1876
    invoke-direct {v12, v13, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1877
    .line 1878
    .line 1879
    invoke-virtual {v1, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1880
    .line 1881
    .line 1882
    :cond_66
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->CutText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1883
    .line 1884
    invoke-static {v4, v11}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1885
    .line 1886
    .line 1887
    move-result-object v11

    .line 1888
    check-cast v11, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1889
    .line 1890
    if-eqz v11, :cond_67

    .line 1891
    .line 1892
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1893
    .line 1894
    const/high16 v13, 0x10000

    .line 1895
    .line 1896
    iget-object v11, v11, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1897
    .line 1898
    invoke-direct {v12, v13, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1899
    .line 1900
    .line 1901
    invoke-virtual {v1, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1902
    .line 1903
    .line 1904
    :cond_67
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->PasteText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1905
    .line 1906
    invoke-static {v4, v11}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1907
    .line 1908
    .line 1909
    move-result-object v11

    .line 1910
    check-cast v11, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1911
    .line 1912
    if-eqz v11, :cond_6a

    .line 1913
    .line 1914
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    .line 1915
    .line 1916
    .line 1917
    move-result v12

    .line 1918
    if-eqz v12, :cond_6a

    .line 1919
    .line 1920
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/platform/AndroidComposeView;->getClipboardManager()Landroidx/compose/ui/platform/AndroidClipboardManager;

    .line 1921
    .line 1922
    .line 1923
    move-result-object v12

    .line 1924
    iget-object v13, v12, Landroidx/compose/ui/platform/AndroidClipboardManager;->_clipboardManager:Landroid/content/ClipboardManager;

    .line 1925
    .line 1926
    if-nez v13, :cond_68

    .line 1927
    .line 1928
    iget-object v13, v12, Landroidx/compose/ui/platform/AndroidClipboardManager;->context:Landroid/content/Context;

    .line 1929
    .line 1930
    const-string v14, "clipboard"

    .line 1931
    .line 1932
    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1933
    .line 1934
    .line 1935
    move-result-object v13

    .line 1936
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1937
    .line 1938
    .line 1939
    check-cast v13, Landroid/content/ClipboardManager;

    .line 1940
    .line 1941
    iput-object v13, v12, Landroidx/compose/ui/platform/AndroidClipboardManager;->_clipboardManager:Landroid/content/ClipboardManager;

    .line 1942
    .line 1943
    :cond_68
    invoke-virtual {v13}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    .line 1944
    .line 1945
    .line 1946
    move-result-object v12

    .line 1947
    if-eqz v12, :cond_69

    .line 1948
    .line 1949
    const-string/jumbo v13, "text/*"

    .line 1950
    .line 1951
    .line 1952
    invoke-virtual {v12, v13}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 1953
    .line 1954
    .line 1955
    move-result v12

    .line 1956
    goto :goto_35

    .line 1957
    :cond_69
    const/4 v12, 0x0

    .line 1958
    :goto_35
    if-eqz v12, :cond_6a

    .line 1959
    .line 1960
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1961
    .line 1962
    const v13, 0x8000

    .line 1963
    .line 1964
    .line 1965
    iget-object v11, v11, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1966
    .line 1967
    invoke-direct {v12, v13, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1968
    .line 1969
    .line 1970
    invoke-virtual {v1, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1971
    .line 1972
    .line 1973
    :cond_6a
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v11

    .line 1977
    if-eqz v11, :cond_74

    .line 1978
    .line 1979
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 1980
    .line 1981
    .line 1982
    move-result v11

    .line 1983
    if-nez v11, :cond_6b

    .line 1984
    .line 1985
    goto/16 :goto_3a

    .line 1986
    .line 1987
    :cond_6b
    invoke-virtual {v9, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionStart(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 1988
    .line 1989
    .line 1990
    move-result v11

    .line 1991
    invoke-virtual {v9, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionEnd(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 1992
    .line 1993
    .line 1994
    move-result v12

    .line 1995
    invoke-virtual {v10, v11, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    .line 1996
    .line 1997
    .line 1998
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->SetSelection:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1999
    .line 2000
    invoke-static {v4, v11}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2001
    .line 2002
    .line 2003
    move-result-object v11

    .line 2004
    check-cast v11, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2005
    .line 2006
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2007
    .line 2008
    if-eqz v11, :cond_6c

    .line 2009
    .line 2010
    iget-object v11, v11, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 2011
    .line 2012
    goto :goto_36

    .line 2013
    :cond_6c
    const/4 v11, 0x0

    .line 2014
    :goto_36
    const/high16 v13, 0x20000

    .line 2015
    .line 2016
    invoke-direct {v12, v13, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 2017
    .line 2018
    .line 2019
    invoke-virtual {v1, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2020
    .line 2021
    .line 2022
    const/16 v11, 0x100

    .line 2023
    .line 2024
    invoke-virtual {v1, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2025
    .line 2026
    .line 2027
    const/16 v11, 0x200

    .line 2028
    .line 2029
    invoke-virtual {v1, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2030
    .line 2031
    .line 2032
    const/16 v11, 0xb

    .line 2033
    .line 2034
    invoke-virtual {v2, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 2035
    .line 2036
    .line 2037
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2038
    .line 2039
    invoke-static {v4, v11}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2040
    .line 2041
    .line 2042
    move-result-object v11

    .line 2043
    check-cast v11, Ljava/util/List;

    .line 2044
    .line 2045
    if-eqz v11, :cond_6d

    .line 2046
    .line 2047
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 2048
    .line 2049
    .line 2050
    move-result v11

    .line 2051
    if-eqz v11, :cond_74

    .line 2052
    .line 2053
    :cond_6d
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2054
    .line 2055
    invoke-virtual {v8, v11}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2056
    .line 2057
    .line 2058
    move-result v11

    .line 2059
    if-eqz v11, :cond_74

    .line 2060
    .line 2061
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2062
    .line 2063
    invoke-virtual {v8, v11}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2064
    .line 2065
    .line 2066
    move-result v11

    .line 2067
    if-eqz v11, :cond_6e

    .line 2068
    .line 2069
    invoke-static {v4, v6}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2070
    .line 2071
    .line 2072
    move-result-object v6

    .line 2073
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2074
    .line 2075
    .line 2076
    move-result v6

    .line 2077
    if-nez v6, :cond_6e

    .line 2078
    .line 2079
    goto :goto_3a

    .line 2080
    :cond_6e
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 2081
    .line 2082
    .line 2083
    move-result-object v6

    .line 2084
    :goto_37
    if-eqz v6, :cond_70

    .line 2085
    .line 2086
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2087
    .line 2088
    .line 2089
    move-result-object v7

    .line 2090
    if-eqz v7, :cond_6f

    .line 2091
    .line 2092
    iget-boolean v11, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    .line 2093
    .line 2094
    const/4 v12, 0x1

    .line 2095
    if-ne v11, v12, :cond_6f

    .line 2096
    .line 2097
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2098
    .line 2099
    iget-object v7, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2100
    .line 2101
    invoke-virtual {v7, v11}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2102
    .line 2103
    .line 2104
    move-result v7

    .line 2105
    if-eqz v7, :cond_6f

    .line 2106
    .line 2107
    goto :goto_38

    .line 2108
    :cond_6f
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 2109
    .line 2110
    .line 2111
    move-result-object v6

    .line 2112
    goto :goto_37

    .line 2113
    :cond_70
    const/4 v6, 0x0

    .line 2114
    :goto_38
    if-eqz v6, :cond_73

    .line 2115
    .line 2116
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2117
    .line 2118
    .line 2119
    move-result-object v6

    .line 2120
    if-eqz v6, :cond_72

    .line 2121
    .line 2122
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2123
    .line 2124
    iget-object v6, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2125
    .line 2126
    invoke-virtual {v6, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2127
    .line 2128
    .line 2129
    move-result-object v6

    .line 2130
    if-nez v6, :cond_71

    .line 2131
    .line 2132
    const/4 v6, 0x0

    .line 2133
    :cond_71
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2134
    .line 2135
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2136
    .line 2137
    .line 2138
    move-result v6

    .line 2139
    goto :goto_39

    .line 2140
    :cond_72
    const/4 v6, 0x0

    .line 2141
    :goto_39
    if-nez v6, :cond_73

    .line 2142
    .line 2143
    goto :goto_3a

    .line 2144
    :cond_73
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    .line 2145
    .line 2146
    .line 2147
    move-result v6

    .line 2148
    or-int/lit8 v6, v6, 0x14

    .line 2149
    .line 2150
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 2151
    .line 2152
    .line 2153
    :cond_74
    :goto_3a
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2154
    .line 2155
    const/16 v7, 0x1a

    .line 2156
    .line 2157
    if-lt v6, v7, :cond_79

    .line 2158
    .line 2159
    new-instance v6, Ljava/util/ArrayList;

    .line 2160
    .line 2161
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2162
    .line 2163
    .line 2164
    const-string v7, "androidx.compose.ui.semantics.id"

    .line 2165
    .line 2166
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2167
    .line 2168
    .line 2169
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    .line 2170
    .line 2171
    .line 2172
    move-result-object v7

    .line 2173
    if-eqz v7, :cond_76

    .line 2174
    .line 2175
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 2176
    .line 2177
    .line 2178
    move-result v7

    .line 2179
    if-nez v7, :cond_75

    .line 2180
    .line 2181
    goto :goto_3b

    .line 2182
    :cond_75
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2183
    .line 2184
    invoke-virtual {v8, v7}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2185
    .line 2186
    .line 2187
    move-result v7

    .line 2188
    if-eqz v7, :cond_76

    .line 2189
    .line 2190
    const-string v7, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    .line 2191
    .line 2192
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2193
    .line 2194
    .line 2195
    :cond_76
    :goto_3b
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->TestTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2196
    .line 2197
    invoke-virtual {v8, v7}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2198
    .line 2199
    .line 2200
    move-result v7

    .line 2201
    if-eqz v7, :cond_77

    .line 2202
    .line 2203
    const-string v7, "androidx.compose.ui.semantics.testTag"

    .line 2204
    .line 2205
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2206
    .line 2207
    .line 2208
    :cond_77
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->Shape:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2209
    .line 2210
    invoke-virtual {v8, v7}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2211
    .line 2212
    .line 2213
    move-result v7

    .line 2214
    if-eqz v7, :cond_78

    .line 2215
    .line 2216
    const-string v7, "androidx.compose.ui.semantics.shapeType"

    .line 2217
    .line 2218
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2219
    .line 2220
    .line 2221
    const-string v7, "androidx.compose.ui.semantics.shapeRect"

    .line 2222
    .line 2223
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2224
    .line 2225
    .line 2226
    const-string v7, "androidx.compose.ui.semantics.shapeCorners"

    .line 2227
    .line 2228
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2229
    .line 2230
    .line 2231
    const-string v7, "androidx.compose.ui.semantics.shapeRegion"

    .line 2232
    .line 2233
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2234
    .line 2235
    .line 2236
    :cond_78
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAvailableExtraData(Ljava/util/ArrayList;)V

    .line 2237
    .line 2238
    .line 2239
    :cond_79
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2240
    .line 2241
    invoke-static {v4, v6}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2242
    .line 2243
    .line 2244
    move-result-object v4

    .line 2245
    check-cast v4, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 2246
    .line 2247
    if-eqz v4, :cond_7f

    .line 2248
    .line 2249
    iget-object v6, v4, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->range:Lkotlin/ranges/ClosedFloatRange;

    .line 2250
    .line 2251
    iget v7, v6, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    .line 2252
    .line 2253
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2254
    .line 2255
    invoke-virtual {v8, v11}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2256
    .line 2257
    .line 2258
    move-result v12

    .line 2259
    if-eqz v12, :cond_7a

    .line 2260
    .line 2261
    const-string v12, "android.widget.SeekBar"

    .line 2262
    .line 2263
    invoke-virtual {v1, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2264
    .line 2265
    .line 2266
    goto :goto_3c

    .line 2267
    :cond_7a
    const-string v12, "android.widget.ProgressBar"

    .line 2268
    .line 2269
    invoke-virtual {v1, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2270
    .line 2271
    .line 2272
    :goto_3c
    sget-object v12, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->Indeterminate:Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 2273
    .line 2274
    if-eq v4, v12, :cond_7b

    .line 2275
    .line 2276
    const/4 v4, 0x0

    .line 2277
    const/4 v12, 0x1

    .line 2278
    invoke-static {v12, v4, v7, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 2279
    .line 2280
    .line 2281
    move-result-object v13

    .line 2282
    invoke-virtual {v10, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 2283
    .line 2284
    .line 2285
    :cond_7b
    invoke-virtual {v8, v11}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2286
    .line 2287
    .line 2288
    move-result v4

    .line 2289
    if-eqz v4, :cond_7f

    .line 2290
    .line 2291
    invoke-static {v0}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2292
    .line 2293
    .line 2294
    move-result v4

    .line 2295
    if-eqz v4, :cond_7f

    .line 2296
    .line 2297
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->floatValue()F

    .line 2298
    .line 2299
    .line 2300
    move-result v4

    .line 2301
    cmpg-float v8, v7, v4

    .line 2302
    .line 2303
    if-gez v8, :cond_7c

    .line 2304
    .line 2305
    move v7, v4

    .line 2306
    :cond_7c
    const/16 v16, 0x0

    .line 2307
    .line 2308
    cmpg-float v4, v16, v7

    .line 2309
    .line 2310
    if-gez v4, :cond_7d

    .line 2311
    .line 2312
    sget-object v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2313
    .line 2314
    invoke-virtual {v1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2315
    .line 2316
    .line 2317
    :cond_7d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->floatValue()F

    .line 2318
    .line 2319
    .line 2320
    move-result v4

    .line 2321
    iget v6, v6, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    .line 2322
    .line 2323
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2324
    .line 2325
    .line 2326
    move-result-object v6

    .line 2327
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 2328
    .line 2329
    .line 2330
    move-result v6

    .line 2331
    cmpl-float v7, v4, v6

    .line 2332
    .line 2333
    if-lez v7, :cond_7e

    .line 2334
    .line 2335
    move v4, v6

    .line 2336
    :cond_7e
    const/16 v16, 0x0

    .line 2337
    .line 2338
    cmpl-float v4, v16, v4

    .line 2339
    .line 2340
    if-lez v4, :cond_7f

    .line 2341
    .line 2342
    sget-object v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2343
    .line 2344
    invoke-virtual {v1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2345
    .line 2346
    .line 2347
    :cond_7f
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2348
    .line 2349
    const/16 v6, 0x18

    .line 2350
    .line 2351
    if-lt v4, v6, :cond_81

    .line 2352
    .line 2353
    invoke-static {v0}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2354
    .line 2355
    .line 2356
    move-result v6

    .line 2357
    if-eqz v6, :cond_81

    .line 2358
    .line 2359
    iget-object v6, v0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2360
    .line 2361
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2362
    .line 2363
    iget-object v6, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2364
    .line 2365
    invoke-virtual {v6, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2366
    .line 2367
    .line 2368
    move-result-object v6

    .line 2369
    if-nez v6, :cond_80

    .line 2370
    .line 2371
    const/4 v6, 0x0

    .line 2372
    :cond_80
    check-cast v6, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2373
    .line 2374
    if-eqz v6, :cond_81

    .line 2375
    .line 2376
    new-instance v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2377
    .line 2378
    const v8, 0x102003d

    .line 2379
    .line 2380
    .line 2381
    iget-object v6, v6, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 2382
    .line 2383
    invoke-direct {v7, v8, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 2384
    .line 2385
    .line 2386
    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2387
    .line 2388
    .line 2389
    :cond_81
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2390
    .line 2391
    .line 2392
    move-result-object v6

    .line 2393
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2394
    .line 2395
    iget-object v6, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2396
    .line 2397
    invoke-virtual {v6, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2398
    .line 2399
    .line 2400
    move-result-object v6

    .line 2401
    if-nez v6, :cond_82

    .line 2402
    .line 2403
    const/4 v6, 0x0

    .line 2404
    :cond_82
    check-cast v6, Landroidx/compose/ui/semantics/CollectionInfo;

    .line 2405
    .line 2406
    if-eqz v6, :cond_83

    .line 2407
    .line 2408
    iget v7, v6, Landroidx/compose/ui/semantics/CollectionInfo;->rowCount:I

    .line 2409
    .line 2410
    iget v6, v6, Landroidx/compose/ui/semantics/CollectionInfo;->columnCount:I

    .line 2411
    .line 2412
    const/4 v13, 0x0

    .line 2413
    invoke-static {v7, v6, v13, v13}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 2414
    .line 2415
    .line 2416
    move-result-object v6

    .line 2417
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 2418
    .line 2419
    .line 2420
    goto :goto_41

    .line 2421
    :cond_83
    new-instance v6, Ljava/util/ArrayList;

    .line 2422
    .line 2423
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2424
    .line 2425
    .line 2426
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2427
    .line 2428
    .line 2429
    move-result-object v7

    .line 2430
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2431
    .line 2432
    iget-object v7, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2433
    .line 2434
    invoke-virtual {v7, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2435
    .line 2436
    .line 2437
    move-result-object v7

    .line 2438
    if-nez v7, :cond_84

    .line 2439
    .line 2440
    const/4 v7, 0x0

    .line 2441
    :cond_84
    if-eqz v7, :cond_86

    .line 2442
    .line 2443
    const/4 v14, 0x4

    .line 2444
    invoke-static {v14, v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 2445
    .line 2446
    .line 2447
    move-result-object v7

    .line 2448
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 2449
    .line 2450
    .line 2451
    move-result v8

    .line 2452
    const/4 v10, 0x0

    .line 2453
    :goto_3d
    if-ge v10, v8, :cond_86

    .line 2454
    .line 2455
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2456
    .line 2457
    .line 2458
    move-result-object v11

    .line 2459
    check-cast v11, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 2460
    .line 2461
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2462
    .line 2463
    .line 2464
    move-result-object v12

    .line 2465
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2466
    .line 2467
    iget-object v12, v12, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2468
    .line 2469
    invoke-virtual {v12, v13}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2470
    .line 2471
    .line 2472
    move-result v12

    .line 2473
    if-eqz v12, :cond_85

    .line 2474
    .line 2475
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2476
    .line 2477
    .line 2478
    :cond_85
    add-int/lit8 v10, v10, 0x1

    .line 2479
    .line 2480
    goto :goto_3d

    .line 2481
    :cond_86
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2482
    .line 2483
    .line 2484
    move-result v7

    .line 2485
    if-nez v7, :cond_89

    .line 2486
    .line 2487
    invoke-static {v6}, Lkotlin/io/CloseableKt;->calculateIfHorizontallyStacked(Ljava/util/ArrayList;)Z

    .line 2488
    .line 2489
    .line 2490
    move-result v7

    .line 2491
    if-eqz v7, :cond_87

    .line 2492
    .line 2493
    const/4 v8, 0x1

    .line 2494
    goto :goto_3e

    .line 2495
    :cond_87
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 2496
    .line 2497
    .line 2498
    move-result v8

    .line 2499
    :goto_3e
    if-eqz v7, :cond_88

    .line 2500
    .line 2501
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 2502
    .line 2503
    .line 2504
    move-result v6

    .line 2505
    :goto_3f
    const/4 v13, 0x0

    .line 2506
    goto :goto_40

    .line 2507
    :cond_88
    const/4 v6, 0x1

    .line 2508
    goto :goto_3f

    .line 2509
    :goto_40
    invoke-static {v8, v6, v13, v13}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 2510
    .line 2511
    .line 2512
    move-result-object v6

    .line 2513
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 2514
    .line 2515
    .line 2516
    :cond_89
    :goto_41
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->setCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2517
    .line 2518
    .line 2519
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2520
    .line 2521
    .line 2522
    move-result-object v6

    .line 2523
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2524
    .line 2525
    invoke-static {v6, v7}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2526
    .line 2527
    .line 2528
    move-result-object v6

    .line 2529
    check-cast v6, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 2530
    .line 2531
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2532
    .line 2533
    .line 2534
    move-result-object v7

    .line 2535
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2536
    .line 2537
    invoke-static {v7, v8}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2538
    .line 2539
    .line 2540
    move-result-object v7

    .line 2541
    check-cast v7, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2542
    .line 2543
    if-eqz v6, :cond_92

    .line 2544
    .line 2545
    if-eqz v7, :cond_92

    .line 2546
    .line 2547
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2548
    .line 2549
    .line 2550
    move-result-object v8

    .line 2551
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2552
    .line 2553
    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2554
    .line 2555
    invoke-virtual {v8, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2556
    .line 2557
    .line 2558
    move-result-object v8

    .line 2559
    if-nez v8, :cond_8a

    .line 2560
    .line 2561
    const/4 v8, 0x0

    .line 2562
    :cond_8a
    if-nez v8, :cond_8d

    .line 2563
    .line 2564
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2565
    .line 2566
    .line 2567
    move-result-object v8

    .line 2568
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2569
    .line 2570
    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2571
    .line 2572
    invoke-virtual {v8, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2573
    .line 2574
    .line 2575
    move-result-object v8

    .line 2576
    if-nez v8, :cond_8b

    .line 2577
    .line 2578
    const/4 v8, 0x0

    .line 2579
    :cond_8b
    if-eqz v8, :cond_8c

    .line 2580
    .line 2581
    goto :goto_42

    .line 2582
    :cond_8c
    const-string v8, "android.widget.HorizontalScrollView"

    .line 2583
    .line 2584
    invoke-virtual {v1, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2585
    .line 2586
    .line 2587
    :cond_8d
    :goto_42
    iget-object v8, v6, Landroidx/compose/ui/semantics/ScrollAxisRange;->maxValue:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1;

    .line 2588
    .line 2589
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    .line 2590
    .line 2591
    .line 2592
    move-result-object v8

    .line 2593
    check-cast v8, Ljava/lang/Number;

    .line 2594
    .line 2595
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 2596
    .line 2597
    .line 2598
    move-result v8

    .line 2599
    const/16 v16, 0x0

    .line 2600
    .line 2601
    cmpl-float v8, v8, v16

    .line 2602
    .line 2603
    if-lez v8, :cond_8e

    .line 2604
    .line 2605
    const/4 v12, 0x1

    .line 2606
    invoke-virtual {v1, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2607
    .line 2608
    .line 2609
    :cond_8e
    invoke-static {v0}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2610
    .line 2611
    .line 2612
    move-result v8

    .line 2613
    if-eqz v8, :cond_92

    .line 2614
    .line 2615
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollForward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    .line 2616
    .line 2617
    .line 2618
    move-result v8

    .line 2619
    sget-object v10, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2620
    .line 2621
    if-eqz v8, :cond_90

    .line 2622
    .line 2623
    sget-object v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2624
    .line 2625
    invoke-virtual {v1, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2626
    .line 2627
    .line 2628
    move-object/from16 v8, v23

    .line 2629
    .line 2630
    iget-object v11, v8, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2631
    .line 2632
    if-ne v11, v10, :cond_8f

    .line 2633
    .line 2634
    sget-object v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2635
    .line 2636
    goto :goto_43

    .line 2637
    :cond_8f
    sget-object v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2638
    .line 2639
    :goto_43
    invoke-virtual {v1, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2640
    .line 2641
    .line 2642
    goto :goto_44

    .line 2643
    :cond_90
    move-object/from16 v8, v23

    .line 2644
    .line 2645
    :goto_44
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollBackward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    .line 2646
    .line 2647
    .line 2648
    move-result v6

    .line 2649
    if-eqz v6, :cond_92

    .line 2650
    .line 2651
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2652
    .line 2653
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2654
    .line 2655
    .line 2656
    iget-object v6, v8, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2657
    .line 2658
    if-ne v6, v10, :cond_91

    .line 2659
    .line 2660
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2661
    .line 2662
    goto :goto_45

    .line 2663
    :cond_91
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2664
    .line 2665
    :goto_45
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2666
    .line 2667
    .line 2668
    :cond_92
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2669
    .line 2670
    .line 2671
    move-result-object v6

    .line 2672
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2673
    .line 2674
    invoke-static {v6, v8}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2675
    .line 2676
    .line 2677
    move-result-object v6

    .line 2678
    check-cast v6, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 2679
    .line 2680
    if-eqz v6, :cond_99

    .line 2681
    .line 2682
    if-eqz v7, :cond_99

    .line 2683
    .line 2684
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2685
    .line 2686
    .line 2687
    move-result-object v7

    .line 2688
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2689
    .line 2690
    iget-object v7, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2691
    .line 2692
    invoke-virtual {v7, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2693
    .line 2694
    .line 2695
    move-result-object v7

    .line 2696
    if-nez v7, :cond_93

    .line 2697
    .line 2698
    const/4 v7, 0x0

    .line 2699
    :cond_93
    if-nez v7, :cond_96

    .line 2700
    .line 2701
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2702
    .line 2703
    .line 2704
    move-result-object v7

    .line 2705
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2706
    .line 2707
    iget-object v7, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2708
    .line 2709
    invoke-virtual {v7, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2710
    .line 2711
    .line 2712
    move-result-object v7

    .line 2713
    if-nez v7, :cond_94

    .line 2714
    .line 2715
    const/4 v7, 0x0

    .line 2716
    :cond_94
    if-eqz v7, :cond_95

    .line 2717
    .line 2718
    goto :goto_46

    .line 2719
    :cond_95
    const-string v7, "android.widget.ScrollView"

    .line 2720
    .line 2721
    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2722
    .line 2723
    .line 2724
    :cond_96
    :goto_46
    iget-object v7, v6, Landroidx/compose/ui/semantics/ScrollAxisRange;->maxValue:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1;

    .line 2725
    .line 2726
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    .line 2727
    .line 2728
    .line 2729
    move-result-object v7

    .line 2730
    check-cast v7, Ljava/lang/Number;

    .line 2731
    .line 2732
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 2733
    .line 2734
    .line 2735
    move-result v7

    .line 2736
    const/16 v16, 0x0

    .line 2737
    .line 2738
    cmpl-float v7, v7, v16

    .line 2739
    .line 2740
    const/4 v12, 0x1

    .line 2741
    if-lez v7, :cond_97

    .line 2742
    .line 2743
    invoke-virtual {v1, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2744
    .line 2745
    .line 2746
    :cond_97
    invoke-static {v0}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2747
    .line 2748
    .line 2749
    move-result v7

    .line 2750
    if-eqz v7, :cond_9a

    .line 2751
    .line 2752
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollForward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    .line 2753
    .line 2754
    .line 2755
    move-result v7

    .line 2756
    if-eqz v7, :cond_98

    .line 2757
    .line 2758
    sget-object v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2759
    .line 2760
    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2761
    .line 2762
    .line 2763
    sget-object v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2764
    .line 2765
    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2766
    .line 2767
    .line 2768
    :cond_98
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollBackward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    .line 2769
    .line 2770
    .line 2771
    move-result v6

    .line 2772
    if-eqz v6, :cond_9a

    .line 2773
    .line 2774
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2775
    .line 2776
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2777
    .line 2778
    .line 2779
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2780
    .line 2781
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2782
    .line 2783
    .line 2784
    goto :goto_47

    .line 2785
    :cond_99
    const/4 v12, 0x1

    .line 2786
    :cond_9a
    :goto_47
    const/16 v6, 0x1d

    .line 2787
    .line 2788
    if-lt v4, v6, :cond_9b

    .line 2789
    .line 2790
    invoke-static {v0, v1}, Landroidx/compose/ui/platform/TestTagKt;->addPageActions(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2791
    .line 2792
    .line 2793
    :cond_9b
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2794
    .line 2795
    .line 2796
    move-result-object v4

    .line 2797
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2798
    .line 2799
    invoke-static {v4, v6}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2800
    .line 2801
    .line 2802
    move-result-object v4

    .line 2803
    check-cast v4, Ljava/lang/CharSequence;

    .line 2804
    .line 2805
    invoke-virtual {v1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPaneTitle(Ljava/lang/CharSequence;)V

    .line 2806
    .line 2807
    .line 2808
    invoke-static {v0}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2809
    .line 2810
    .line 2811
    move-result v4

    .line 2812
    if-eqz v4, :cond_a9

    .line 2813
    .line 2814
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2815
    .line 2816
    .line 2817
    move-result-object v4

    .line 2818
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->Expand:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2819
    .line 2820
    invoke-static {v4, v6}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2821
    .line 2822
    .line 2823
    move-result-object v4

    .line 2824
    check-cast v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2825
    .line 2826
    if-eqz v4, :cond_9c

    .line 2827
    .line 2828
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2829
    .line 2830
    const/high16 v7, 0x40000

    .line 2831
    .line 2832
    iget-object v4, v4, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 2833
    .line 2834
    invoke-direct {v6, v7, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 2835
    .line 2836
    .line 2837
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2838
    .line 2839
    .line 2840
    :cond_9c
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2841
    .line 2842
    .line 2843
    move-result-object v4

    .line 2844
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->Collapse:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2845
    .line 2846
    invoke-static {v4, v6}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2847
    .line 2848
    .line 2849
    move-result-object v4

    .line 2850
    check-cast v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2851
    .line 2852
    if-eqz v4, :cond_9d

    .line 2853
    .line 2854
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2855
    .line 2856
    const/high16 v7, 0x80000

    .line 2857
    .line 2858
    iget-object v4, v4, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 2859
    .line 2860
    invoke-direct {v6, v7, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 2861
    .line 2862
    .line 2863
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2864
    .line 2865
    .line 2866
    :cond_9d
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2867
    .line 2868
    .line 2869
    move-result-object v4

    .line 2870
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->Dismiss:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2871
    .line 2872
    invoke-static {v4, v6}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2873
    .line 2874
    .line 2875
    move-result-object v4

    .line 2876
    check-cast v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2877
    .line 2878
    if-eqz v4, :cond_9e

    .line 2879
    .line 2880
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2881
    .line 2882
    const/high16 v7, 0x100000

    .line 2883
    .line 2884
    iget-object v4, v4, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 2885
    .line 2886
    invoke-direct {v6, v7, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 2887
    .line 2888
    .line 2889
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2890
    .line 2891
    .line 2892
    :cond_9e
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2893
    .line 2894
    .line 2895
    move-result-object v4

    .line 2896
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->CustomActions:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2897
    .line 2898
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->CustomActions:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2899
    .line 2900
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2901
    .line 2902
    invoke-virtual {v4, v7}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2903
    .line 2904
    .line 2905
    move-result v4

    .line 2906
    if-eqz v4, :cond_a9

    .line 2907
    .line 2908
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2909
    .line 2910
    .line 2911
    move-result-object v4

    .line 2912
    invoke-virtual {v4, v6}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2913
    .line 2914
    .line 2915
    move-result-object v4

    .line 2916
    check-cast v4, Ljava/util/List;

    .line 2917
    .line 2918
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 2919
    .line 2920
    .line 2921
    move-result v6

    .line 2922
    sget-object v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->AccessibilityActionsResourceIds:Landroidx/collection/MutableIntList;

    .line 2923
    .line 2924
    iget v8, v7, Landroidx/collection/IntList;->_size:I

    .line 2925
    .line 2926
    if-ge v6, v8, :cond_a8

    .line 2927
    .line 2928
    new-instance v6, Landroidx/collection/SparseArrayCompat;

    .line 2929
    .line 2930
    const/4 v8, 0x0

    .line 2931
    invoke-direct {v6, v8}, Landroidx/collection/SparseArrayCompat;-><init>(Ljava/lang/Object;)V

    .line 2932
    .line 2933
    .line 2934
    invoke-static {}, Landroidx/collection/ObjectIntMapKt;->mutableObjectIntMapOf()Landroidx/collection/MutableObjectIntMap;

    .line 2935
    .line 2936
    .line 2937
    move-result-object v8

    .line 2938
    move-object/from16 v10, v22

    .line 2939
    .line 2940
    iget-boolean v11, v10, Landroidx/collection/SparseArrayCompat;->garbage:Z

    .line 2941
    .line 2942
    if-eqz v11, :cond_9f

    .line 2943
    .line 2944
    invoke-static {v10}, Landroidx/collection/ArraySetKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 2945
    .line 2946
    .line 2947
    :cond_9f
    iget-object v11, v10, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 2948
    .line 2949
    iget v13, v10, Landroidx/collection/SparseArrayCompat;->size:I

    .line 2950
    .line 2951
    invoke-static {v13, v5, v11}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch(II[I)I

    .line 2952
    .line 2953
    .line 2954
    move-result v11

    .line 2955
    if-ltz v11, :cond_a0

    .line 2956
    .line 2957
    move v11, v12

    .line 2958
    goto :goto_48

    .line 2959
    :cond_a0
    const/4 v11, 0x0

    .line 2960
    :goto_48
    if-eqz v11, :cond_a6

    .line 2961
    .line 2962
    invoke-virtual {v10, v5}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 2963
    .line 2964
    .line 2965
    move-result-object v11

    .line 2966
    check-cast v11, Landroidx/collection/MutableObjectIntMap;

    .line 2967
    .line 2968
    const/16 v13, 0x10

    .line 2969
    .line 2970
    new-array v12, v13, [I

    .line 2971
    .line 2972
    iget-object v13, v7, Landroidx/collection/IntList;->content:[I

    .line 2973
    .line 2974
    iget v7, v7, Landroidx/collection/IntList;->_size:I

    .line 2975
    .line 2976
    move-object v15, v12

    .line 2977
    const/4 v12, 0x0

    .line 2978
    const/4 v14, 0x0

    .line 2979
    :goto_49
    if-ge v12, v7, :cond_a2

    .line 2980
    .line 2981
    aget v16, v13, v12

    .line 2982
    .line 2983
    move/from16 v17, v7

    .line 2984
    .line 2985
    add-int/lit8 v7, v14, 0x1

    .line 2986
    .line 2987
    move-object/from16 v18, v11

    .line 2988
    .line 2989
    array-length v11, v15

    .line 2990
    if-ge v11, v7, :cond_a1

    .line 2991
    .line 2992
    array-length v11, v15

    .line 2993
    const/16 v25, 0x3

    .line 2994
    .line 2995
    mul-int/lit8 v11, v11, 0x3

    .line 2996
    .line 2997
    const/16 v20, 0x2

    .line 2998
    .line 2999
    div-int/lit8 v11, v11, 0x2

    .line 3000
    .line 3001
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    .line 3002
    .line 3003
    .line 3004
    move-result v11

    .line 3005
    invoke-static {v15, v11}, Ljava/util/Arrays;->copyOf([II)[I

    .line 3006
    .line 3007
    .line 3008
    move-result-object v11

    .line 3009
    move-object v15, v11

    .line 3010
    goto :goto_4a

    .line 3011
    :cond_a1
    const/16 v20, 0x2

    .line 3012
    .line 3013
    const/16 v25, 0x3

    .line 3014
    .line 3015
    :goto_4a
    aput v16, v15, v14

    .line 3016
    .line 3017
    add-int/lit8 v12, v12, 0x1

    .line 3018
    .line 3019
    move v14, v7

    .line 3020
    move/from16 v7, v17

    .line 3021
    .line 3022
    move-object/from16 v11, v18

    .line 3023
    .line 3024
    goto :goto_49

    .line 3025
    :cond_a2
    move-object/from16 v18, v11

    .line 3026
    .line 3027
    new-instance v7, Ljava/util/ArrayList;

    .line 3028
    .line 3029
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3030
    .line 3031
    .line 3032
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 3033
    .line 3034
    .line 3035
    move-result v11

    .line 3036
    if-gtz v11, :cond_a5

    .line 3037
    .line 3038
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 3039
    .line 3040
    .line 3041
    move-result v4

    .line 3042
    if-gtz v4, :cond_a3

    .line 3043
    .line 3044
    const/4 v11, 0x0

    .line 3045
    goto :goto_4b

    .line 3046
    :cond_a3
    const/4 v13, 0x0

    .line 3047
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3048
    .line 3049
    .line 3050
    move-result-object v0

    .line 3051
    invoke-static {v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 3052
    .line 3053
    .line 3054
    if-gtz v14, :cond_a4

    .line 3055
    .line 3056
    const-string v0, "Index must be between 0 and size"

    .line 3057
    .line 3058
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 3059
    .line 3060
    .line 3061
    goto/16 :goto_c

    .line 3062
    .line 3063
    :cond_a4
    aget v0, v15, v13

    .line 3064
    .line 3065
    const/4 v11, 0x0

    .line 3066
    throw v11

    .line 3067
    :cond_a5
    const/4 v11, 0x0

    .line 3068
    const/4 v13, 0x0

    .line 3069
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3070
    .line 3071
    .line 3072
    move-result-object v0

    .line 3073
    invoke-static {v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 3074
    .line 3075
    .line 3076
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3077
    .line 3078
    .line 3079
    throw v11

    .line 3080
    :cond_a6
    const/4 v11, 0x0

    .line 3081
    const/4 v13, 0x0

    .line 3082
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 3083
    .line 3084
    .line 3085
    move-result v12

    .line 3086
    if-gtz v12, :cond_a7

    .line 3087
    .line 3088
    :goto_4b
    iget-object v4, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->actionIdToLabel:Landroidx/collection/SparseArrayCompat;

    .line 3089
    .line 3090
    invoke-virtual {v4, v5, v6}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 3091
    .line 3092
    .line 3093
    invoke-virtual {v10, v5, v8}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 3094
    .line 3095
    .line 3096
    goto :goto_4c

    .line 3097
    :cond_a7
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3098
    .line 3099
    .line 3100
    move-result-object v0

    .line 3101
    invoke-static {v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 3102
    .line 3103
    .line 3104
    invoke-virtual {v7, v13}, Landroidx/collection/IntList;->get(I)I

    .line 3105
    .line 3106
    .line 3107
    throw v11

    .line 3108
    :cond_a8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3109
    .line 3110
    const-string v1, "Can\'t have more than "

    .line 3111
    .line 3112
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3113
    .line 3114
    .line 3115
    iget v1, v7, Landroidx/collection/IntList;->_size:I

    .line 3116
    .line 3117
    const-string v2, " custom actions for one widget"

    .line 3118
    .line 3119
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 3120
    .line 3121
    .line 3122
    move-result-object v0

    .line 3123
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 3124
    .line 3125
    .line 3126
    goto/16 :goto_c

    .line 3127
    .line 3128
    :cond_a9
    :goto_4c
    invoke-static {v0, v3}, Landroidx/compose/ui/platform/TestTagKt;->access$isScreenReaderFocusable(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Z

    .line 3129
    .line 3130
    .line 3131
    move-result v3

    .line 3132
    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScreenReaderFocusable(Z)V

    .line 3133
    .line 3134
    .line 3135
    iget-object v3, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Landroidx/collection/MutableIntIntMap;

    .line 3136
    .line 3137
    invoke-virtual {v3, v5}, Landroidx/collection/MutableIntIntMap;->getOrDefault(I)I

    .line 3138
    .line 3139
    .line 3140
    move-result v3

    .line 3141
    const/4 v4, -0x1

    .line 3142
    if-eq v3, v4, :cond_aa

    .line 3143
    .line 3144
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 3145
    .line 3146
    .line 3147
    move-result-object v6

    .line 3148
    invoke-static {v6, v3}, Landroidx/compose/ui/platform/TestTagKt;->semanticsIdToView(Landroidx/compose/ui/platform/AndroidViewsHandler;I)V

    .line 3149
    .line 3150
    .line 3151
    move-object/from16 v6, v21

    .line 3152
    .line 3153
    invoke-virtual {v2, v6, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    .line 3154
    .line 3155
    .line 3156
    iget-object v2, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalBeforeVal:Ljava/lang/String;

    .line 3157
    .line 3158
    const/4 v8, 0x0

    .line 3159
    invoke-virtual {v9, v5, v1, v2, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->addExtraDataToAccessibilityNodeInfoHelper(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3160
    .line 3161
    .line 3162
    goto :goto_4d

    .line 3163
    :cond_aa
    move-object/from16 v6, v21

    .line 3164
    .line 3165
    :goto_4d
    iget-object v2, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Landroidx/collection/MutableIntIntMap;

    .line 3166
    .line 3167
    invoke-virtual {v2, v5}, Landroidx/collection/MutableIntIntMap;->getOrDefault(I)I

    .line 3168
    .line 3169
    .line 3170
    move-result v2

    .line 3171
    if-eq v2, v4, :cond_ab

    .line 3172
    .line 3173
    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 3174
    .line 3175
    .line 3176
    move-result-object v3

    .line 3177
    invoke-static {v3, v2}, Landroidx/compose/ui/platform/TestTagKt;->semanticsIdToView(Landroidx/compose/ui/platform/AndroidViewsHandler;I)V

    .line 3178
    .line 3179
    .line 3180
    :cond_ab
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 3181
    .line 3182
    .line 3183
    move-result-object v0

    .line 3184
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->AccessibilityClassName:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 3185
    .line 3186
    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 3187
    .line 3188
    .line 3189
    move-result-object v0

    .line 3190
    check-cast v0, Ljava/lang/String;

    .line 3191
    .line 3192
    if-eqz v0, :cond_ac

    .line 3193
    .line 3194
    invoke-virtual {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 3195
    .line 3196
    .line 3197
    :cond_ac
    move-object v8, v1

    .line 3198
    :goto_4e
    iget-boolean v0, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendingFocusAffectingEvent:Z

    .line 3199
    .line 3200
    if-eqz v0, :cond_b0

    .line 3201
    .line 3202
    iget v0, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 3203
    .line 3204
    if-ne v5, v0, :cond_ad

    .line 3205
    .line 3206
    iput-object v8, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyAccessibilityFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 3207
    .line 3208
    :cond_ad
    iget v0, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    .line 3209
    .line 3210
    if-ne v5, v0, :cond_b0

    .line 3211
    .line 3212
    iput-object v8, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 3213
    .line 3214
    goto :goto_4f

    .line 3215
    :cond_ae
    const/4 v8, 0x0

    .line 3216
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2()V

    .line 3217
    .line 3218
    .line 3219
    goto :goto_4f

    .line 3220
    :cond_af
    move v5, v1

    .line 3221
    const/4 v8, 0x0

    .line 3222
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3223
    .line 3224
    const-string v1, "semanticsNode "

    .line 3225
    .line 3226
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3227
    .line 3228
    .line 3229
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3230
    .line 3231
    .line 3232
    const-string v1, " has null parent"

    .line 3233
    .line 3234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3235
    .line 3236
    .line 3237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3238
    .line 3239
    .line 3240
    move-result-object v0

    .line 3241
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    .line 3242
    .line 3243
    .line 3244
    invoke-static {}, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticBUOutline0;->m()V

    .line 3245
    .line 3246
    .line 3247
    :cond_b0
    :goto_4f
    return-object v8

    .line 3248
    :pswitch_0
    move v5, v1

    .line 3249
    check-cast v0, Landroidx/customview/widget/ExploreByTouchHelper;

    .line 3250
    .line 3251
    invoke-virtual {v0, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 3252
    .line 3253
    .line 3254
    move-result-object v0

    .line 3255
    iget-object v0, v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3256
    .line 3257
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3258
    .line 3259
    .line 3260
    move-result-object v0

    .line 3261
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 3262
    .line 3263
    invoke-direct {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3264
    .line 3265
    .line 3266
    return-object v1

    .line 3267
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
    invoke-static {p1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

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
    .locals 27

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
    const/16 v8, 0x40

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
    const/16 p0, 0x0

    .line 23
    .line 24
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object v15

    .line 28
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    .line 31
    .line 32
    .line 33
    move-result-object v11

    .line 34
    invoke-virtual {v11, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v11

    .line 38
    check-cast v11, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 39
    .line 40
    if-eqz v11, :cond_9

    .line 41
    .line 42
    iget-object v11, v11, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 43
    .line 44
    if-nez v11, :cond_0

    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_0
    iget-object v10, v11, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 49
    .line 50
    iget v6, v11, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 51
    .line 52
    iget-object v9, v11, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 53
    .line 54
    iget-object v14, v9, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 55
    .line 56
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->IsSensitiveData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 57
    .line 58
    invoke-virtual {v14, v13}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    if-nez v13, :cond_1

    .line 63
    .line 64
    const/4 v13, 0x0

    .line 65
    :cond_1
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v13

    .line 71
    if-eqz v13, :cond_3

    .line 72
    .line 73
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 74
    .line 75
    const/16 v7, 0x22

    .line 76
    .line 77
    if-lt v13, v7, :cond_2

    .line 78
    .line 79
    invoke-static {v4}, Landroidx/core/widget/TextViewCompat$Api34Impl;->isRequestFromAccessibilityTool(Landroid/view/accessibility/AccessibilityManager;)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const/4 v7, 0x1

    .line 85
    :goto_0
    if-nez v7, :cond_3

    .line 86
    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :cond_3
    const/16 v7, 0xc

    .line 90
    .line 91
    if-eq v2, v8, :cond_86

    .line 92
    .line 93
    const/16 v8, 0x80

    .line 94
    .line 95
    if-eq v2, v8, :cond_85

    .line 96
    .line 97
    const/16 v4, 0x8

    .line 98
    .line 99
    const/16 v8, 0x200

    .line 100
    .line 101
    const/16 v13, 0x100

    .line 102
    .line 103
    if-eq v2, v13, :cond_67

    .line 104
    .line 105
    if-eq v2, v8, :cond_67

    .line 106
    .line 107
    const/16 v8, 0x4000

    .line 108
    .line 109
    if-eq v2, v8, :cond_65

    .line 110
    .line 111
    const/high16 v8, 0x20000

    .line 112
    .line 113
    if-eq v2, v8, :cond_62

    .line 114
    .line 115
    invoke-static {v11}, Landroidx/compose/ui/platform/TestTagKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-nez v6, :cond_4

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    const/4 v6, 0x1

    .line 123
    if-eq v2, v6, :cond_5f

    .line 124
    .line 125
    const/4 v6, 0x2

    .line 126
    if-eq v2, v6, :cond_5d

    .line 127
    .line 128
    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 129
    .line 130
    sparse-switch v2, :sswitch_data_0

    .line 131
    .line 132
    .line 133
    packed-switch v2, :pswitch_data_1

    .line 134
    .line 135
    .line 136
    packed-switch v2, :pswitch_data_2

    .line 137
    .line 138
    .line 139
    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->actionIdToLabel:Landroidx/collection/SparseArrayCompat;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 146
    .line 147
    if-eqz v0, :cond_9

    .line 148
    .line 149
    invoke-virtual {v0, v2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Ljava/lang/CharSequence;

    .line 154
    .line 155
    if-nez v0, :cond_5

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->CustomActions:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 159
    .line 160
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    if-nez v0, :cond_6

    .line 165
    .line 166
    const/4 v12, 0x0

    .line 167
    goto :goto_1

    .line 168
    :cond_6
    move-object v12, v0

    .line 169
    :goto_1
    check-cast v12, Ljava/util/List;

    .line 170
    .line 171
    if-nez v12, :cond_7

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_7
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-gtz v0, :cond_8

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_8
    const/4 v0, 0x0

    .line 182
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2()V

    .line 190
    .line 191
    .line 192
    :cond_9
    :goto_2
    const/4 v12, 0x0

    .line 193
    goto/16 :goto_49

    .line 194
    .line 195
    :pswitch_0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 196
    .line 197
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-nez v0, :cond_a

    .line 202
    .line 203
    const/4 v12, 0x0

    .line 204
    goto :goto_3

    .line 205
    :cond_a
    move-object v12, v0

    .line 206
    :goto_3
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 207
    .line 208
    if-eqz v12, :cond_9

    .line 209
    .line 210
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 211
    .line 212
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 213
    .line 214
    if-eqz v0, :cond_9

    .line 215
    .line 216
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Ljava/lang/Boolean;

    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 223
    .line 224
    .line 225
    move-result v12

    .line 226
    goto/16 :goto_49

    .line 227
    .line 228
    :pswitch_1
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageLeft:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 229
    .line 230
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    if-nez v0, :cond_b

    .line 235
    .line 236
    const/4 v12, 0x0

    .line 237
    goto :goto_4

    .line 238
    :cond_b
    move-object v12, v0

    .line 239
    :goto_4
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 240
    .line 241
    if-eqz v12, :cond_9

    .line 242
    .line 243
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 244
    .line 245
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 246
    .line 247
    if-eqz v0, :cond_9

    .line 248
    .line 249
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    check-cast v0, Ljava/lang/Boolean;

    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 256
    .line 257
    .line 258
    move-result v12

    .line 259
    goto/16 :goto_49

    .line 260
    .line 261
    :pswitch_2
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 262
    .line 263
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    if-nez v0, :cond_c

    .line 268
    .line 269
    const/4 v12, 0x0

    .line 270
    goto :goto_5

    .line 271
    :cond_c
    move-object v12, v0

    .line 272
    :goto_5
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 273
    .line 274
    if-eqz v12, :cond_9

    .line 275
    .line 276
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 277
    .line 278
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 279
    .line 280
    if-eqz v0, :cond_9

    .line 281
    .line 282
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Ljava/lang/Boolean;

    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 289
    .line 290
    .line 291
    move-result v12

    .line 292
    goto/16 :goto_49

    .line 293
    .line 294
    :pswitch_3
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageUp:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 295
    .line 296
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    if-nez v0, :cond_d

    .line 301
    .line 302
    const/4 v12, 0x0

    .line 303
    goto :goto_6

    .line 304
    :cond_d
    move-object v12, v0

    .line 305
    :goto_6
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 306
    .line 307
    if-eqz v12, :cond_9

    .line 308
    .line 309
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 310
    .line 311
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 312
    .line 313
    if-eqz v0, :cond_9

    .line 314
    .line 315
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    check-cast v0, Ljava/lang/Boolean;

    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 322
    .line 323
    .line 324
    move-result v12

    .line 325
    goto/16 :goto_49

    .line 326
    .line 327
    :pswitch_4
    :sswitch_0
    const-wide v16, 0xffffffffL

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    const/16 v18, 0x20

    .line 333
    .line 334
    goto/16 :goto_1d

    .line 335
    .line 336
    :sswitch_1
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->OnImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 337
    .line 338
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    if-nez v0, :cond_e

    .line 343
    .line 344
    const/4 v12, 0x0

    .line 345
    goto :goto_7

    .line 346
    :cond_e
    move-object v12, v0

    .line 347
    :goto_7
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 348
    .line 349
    if-eqz v12, :cond_9

    .line 350
    .line 351
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 352
    .line 353
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 354
    .line 355
    if-eqz v0, :cond_9

    .line 356
    .line 357
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    check-cast v0, Ljava/lang/Boolean;

    .line 362
    .line 363
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 364
    .line 365
    .line 366
    move-result v12

    .line 367
    goto/16 :goto_49

    .line 368
    .line 369
    :sswitch_2
    if-eqz v3, :cond_9

    .line 370
    .line 371
    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 372
    .line 373
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    if-nez v1, :cond_f

    .line 378
    .line 379
    goto/16 :goto_2

    .line 380
    .line 381
    :cond_f
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 382
    .line 383
    invoke-virtual {v14, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    if-nez v1, :cond_10

    .line 388
    .line 389
    const/4 v12, 0x0

    .line 390
    goto :goto_8

    .line 391
    :cond_10
    move-object v12, v1

    .line 392
    :goto_8
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 393
    .line 394
    if-eqz v12, :cond_9

    .line 395
    .line 396
    iget-object v1, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 397
    .line 398
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 399
    .line 400
    if-eqz v1, :cond_9

    .line 401
    .line 402
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    check-cast v0, Ljava/lang/Boolean;

    .line 415
    .line 416
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 417
    .line 418
    .line 419
    move-result v12

    .line 420
    goto/16 :goto_49

    .line 421
    .line 422
    :sswitch_3
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    if-eqz v0, :cond_12

    .line 427
    .line 428
    iget-object v1, v0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 429
    .line 430
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 431
    .line 432
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 433
    .line 434
    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    if-nez v1, :cond_11

    .line 439
    .line 440
    const/4 v1, 0x0

    .line 441
    :cond_11
    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 442
    .line 443
    goto :goto_9

    .line 444
    :cond_12
    const/4 v1, 0x0

    .line 445
    :goto_9
    if-nez v1, :cond_14

    .line 446
    .line 447
    if-eqz v0, :cond_14

    .line 448
    .line 449
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    if-eqz v0, :cond_12

    .line 454
    .line 455
    iget-object v1, v0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 456
    .line 457
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 458
    .line 459
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 460
    .line 461
    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    if-nez v1, :cond_13

    .line 466
    .line 467
    const/4 v1, 0x0

    .line 468
    :cond_13
    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 469
    .line 470
    goto :goto_9

    .line 471
    :cond_14
    if-nez v0, :cond_15

    .line 472
    .line 473
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    new-instance v1, Landroid/graphics/Rect;

    .line 478
    .line 479
    iget v2, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 480
    .line 481
    float-to-double v2, v2

    .line 482
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 483
    .line 484
    .line 485
    move-result-wide v2

    .line 486
    double-to-float v2, v2

    .line 487
    float-to-int v2, v2

    .line 488
    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 489
    .line 490
    float-to-double v3, v3

    .line 491
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 492
    .line 493
    .line 494
    move-result-wide v3

    .line 495
    double-to-float v3, v3

    .line 496
    float-to-int v3, v3

    .line 497
    iget v4, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 498
    .line 499
    float-to-double v6, v4

    .line 500
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 501
    .line 502
    .line 503
    move-result-wide v6

    .line 504
    double-to-float v4, v6

    .line 505
    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 506
    .line 507
    .line 508
    move-result v4

    .line 509
    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 510
    .line 511
    float-to-double v6, v0

    .line 512
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 513
    .line 514
    .line 515
    move-result-wide v6

    .line 516
    double-to-float v0, v6

    .line 517
    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v5, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 525
    .line 526
    .line 527
    move-result v12

    .line 528
    goto/16 :goto_49

    .line 529
    .line 530
    :cond_15
    const-wide/16 v1, 0x0

    .line 531
    .line 532
    move-wide v12, v1

    .line 533
    const/4 v3, 0x0

    .line 534
    :goto_a
    if-eqz v0, :cond_26

    .line 535
    .line 536
    iget-object v5, v0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 537
    .line 538
    iget-object v7, v0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 539
    .line 540
    iget-object v7, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 541
    .line 542
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 543
    .line 544
    invoke-virtual {v7, v14}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v14

    .line 548
    if-nez v14, :cond_16

    .line 549
    .line 550
    const/4 v14, 0x0

    .line 551
    :cond_16
    check-cast v14, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 552
    .line 553
    if-eqz v14, :cond_25

    .line 554
    .line 555
    iget-object v15, v5, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 556
    .line 557
    iget-object v15, v15, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 558
    .line 559
    invoke-static {v15}, Landroidx/compose/ui/layout/RulerKt;->boundsInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 560
    .line 561
    .line 562
    move-result-object v15

    .line 563
    iget-object v5, v5, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 564
    .line 565
    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 566
    .line 567
    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeCoordinator;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 568
    .line 569
    .line 570
    move-result-object v5

    .line 571
    if-eqz v5, :cond_17

    .line 572
    .line 573
    check-cast v5, Landroidx/compose/ui/node/NodeCoordinator;

    .line 574
    .line 575
    invoke-virtual {v5, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    .line 576
    .line 577
    .line 578
    move-result-wide v16

    .line 579
    move-wide/from16 v8, v16

    .line 580
    .line 581
    :goto_b
    const-wide v16, 0xffffffffL

    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    goto :goto_c

    .line 587
    :cond_17
    move-wide v8, v1

    .line 588
    goto :goto_b

    .line 589
    :goto_c
    invoke-virtual {v15, v8, v9}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    .line 590
    .line 591
    .line 592
    move-result-object v5

    .line 593
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->findCoordinatorToGetBounds$ui()Landroidx/compose/ui/node/NodeCoordinator;

    .line 594
    .line 595
    .line 596
    move-result-object v8

    .line 597
    if-eqz v8, :cond_19

    .line 598
    .line 599
    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    .line 600
    .line 601
    .line 602
    move-result-object v9

    .line 603
    iget-boolean v9, v9, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 604
    .line 605
    if-eqz v9, :cond_18

    .line 606
    .line 607
    goto :goto_d

    .line 608
    :cond_18
    const/4 v8, 0x0

    .line 609
    :goto_d
    if-eqz v8, :cond_19

    .line 610
    .line 611
    invoke-virtual {v8, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    .line 612
    .line 613
    .line 614
    move-result-wide v8

    .line 615
    goto :goto_e

    .line 616
    :cond_19
    move-wide v8, v1

    .line 617
    :goto_e
    invoke-static {v8, v9, v12, v13}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 618
    .line 619
    .line 620
    move-result-wide v8

    .line 621
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->findCoordinatorToGetBounds$ui()Landroidx/compose/ui/node/NodeCoordinator;

    .line 622
    .line 623
    .line 624
    move-result-object v15

    .line 625
    move-object/from16 v19, v7

    .line 626
    .line 627
    const/16 v18, 0x20

    .line 628
    .line 629
    if-eqz v15, :cond_1a

    .line 630
    .line 631
    iget-wide v6, v15, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 632
    .line 633
    goto :goto_f

    .line 634
    :cond_1a
    move-wide v6, v1

    .line 635
    :goto_f
    invoke-static {v6, v7}, Lokhttp3/Cookie$Companion;->toSize-ozmzZPI(J)J

    .line 636
    .line 637
    .line 638
    move-result-wide v6

    .line 639
    invoke-static {v8, v9, v6, v7}, Landroidx/work/OperationKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 640
    .line 641
    .line 642
    move-result-object v6

    .line 643
    iget v7, v6, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 644
    .line 645
    iget v8, v5, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 646
    .line 647
    sub-float/2addr v7, v8

    .line 648
    iget v8, v6, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 649
    .line 650
    iget v9, v5, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 651
    .line 652
    sub-float/2addr v8, v9

    .line 653
    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    .line 654
    .line 655
    .line 656
    move-result v9

    .line 657
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    .line 658
    .line 659
    .line 660
    move-result v15

    .line 661
    cmpg-float v9, v9, v15

    .line 662
    .line 663
    if-nez v9, :cond_1c

    .line 664
    .line 665
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 666
    .line 667
    .line 668
    move-result v9

    .line 669
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 670
    .line 671
    .line 672
    move-result v15

    .line 673
    cmpg-float v9, v9, v15

    .line 674
    .line 675
    if-gez v9, :cond_1b

    .line 676
    .line 677
    goto :goto_10

    .line 678
    :cond_1b
    move v7, v8

    .line 679
    goto :goto_10

    .line 680
    :cond_1c
    move/from16 v7, p0

    .line 681
    .line 682
    :goto_10
    iget v8, v6, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 683
    .line 684
    iget v9, v5, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 685
    .line 686
    sub-float/2addr v8, v9

    .line 687
    iget v6, v6, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 688
    .line 689
    iget v5, v5, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 690
    .line 691
    sub-float/2addr v6, v5

    .line 692
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    .line 693
    .line 694
    .line 695
    move-result v5

    .line 696
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    .line 697
    .line 698
    .line 699
    move-result v9

    .line 700
    cmpg-float v5, v5, v9

    .line 701
    .line 702
    if-nez v5, :cond_1e

    .line 703
    .line 704
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 705
    .line 706
    .line 707
    move-result v5

    .line 708
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 709
    .line 710
    .line 711
    move-result v9

    .line 712
    cmpg-float v5, v5, v9

    .line 713
    .line 714
    if-gez v5, :cond_1d

    .line 715
    .line 716
    goto :goto_11

    .line 717
    :cond_1d
    move v8, v6

    .line 718
    goto :goto_11

    .line 719
    :cond_1e
    move/from16 v8, p0

    .line 720
    .line 721
    :goto_11
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 722
    .line 723
    .line 724
    move-result v5

    .line 725
    int-to-long v5, v5

    .line 726
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 727
    .line 728
    .line 729
    move-result v7

    .line 730
    int-to-long v7, v7

    .line 731
    shl-long v5, v5, v18

    .line 732
    .line 733
    and-long v7, v7, v16

    .line 734
    .line 735
    or-long/2addr v5, v7

    .line 736
    invoke-static {v5, v6, v1, v2}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 737
    .line 738
    .line 739
    move-result v7

    .line 740
    if-eqz v7, :cond_1f

    .line 741
    .line 742
    move-wide v1, v5

    .line 743
    goto :goto_12

    .line 744
    :cond_1f
    shr-long v7, v5, v18

    .line 745
    .line 746
    long-to-int v7, v7

    .line 747
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 748
    .line 749
    .line 750
    move-result v7

    .line 751
    and-long v8, v5, v16

    .line 752
    .line 753
    long-to-int v8, v8

    .line 754
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 755
    .line 756
    .line 757
    move-result v8

    .line 758
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 759
    .line 760
    move-object/from16 v15, v19

    .line 761
    .line 762
    invoke-virtual {v15, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v9

    .line 766
    if-nez v9, :cond_20

    .line 767
    .line 768
    const/4 v9, 0x0

    .line 769
    :cond_20
    check-cast v9, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 770
    .line 771
    iget-object v9, v10, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 772
    .line 773
    if-ne v9, v4, :cond_21

    .line 774
    .line 775
    neg-float v7, v7

    .line 776
    :cond_21
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 777
    .line 778
    invoke-virtual {v15, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    move-result-object v9

    .line 782
    if-nez v9, :cond_22

    .line 783
    .line 784
    const/4 v9, 0x0

    .line 785
    :cond_22
    check-cast v9, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 786
    .line 787
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 788
    .line 789
    .line 790
    move-result v7

    .line 791
    int-to-long v1, v7

    .line 792
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 793
    .line 794
    .line 795
    move-result v7

    .line 796
    int-to-long v7, v7

    .line 797
    shl-long v1, v1, v18

    .line 798
    .line 799
    and-long v7, v7, v16

    .line 800
    .line 801
    or-long/2addr v1, v7

    .line 802
    :goto_12
    iget-object v7, v14, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 803
    .line 804
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 805
    .line 806
    if-eqz v7, :cond_23

    .line 807
    .line 808
    shr-long v8, v1, v18

    .line 809
    .line 810
    long-to-int v8, v8

    .line 811
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 812
    .line 813
    .line 814
    move-result v8

    .line 815
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 816
    .line 817
    .line 818
    move-result-object v8

    .line 819
    and-long v1, v1, v16

    .line 820
    .line 821
    long-to-int v1, v1

    .line 822
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 823
    .line 824
    .line 825
    move-result v1

    .line 826
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 827
    .line 828
    .line 829
    move-result-object v1

    .line 830
    invoke-interface {v7, v8, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v1

    .line 834
    check-cast v1, Ljava/lang/Boolean;

    .line 835
    .line 836
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 837
    .line 838
    .line 839
    move-result v1

    .line 840
    const/4 v2, 0x1

    .line 841
    if-ne v1, v2, :cond_23

    .line 842
    .line 843
    goto :goto_13

    .line 844
    :cond_23
    if-eqz v3, :cond_24

    .line 845
    .line 846
    :goto_13
    const/4 v1, 0x1

    .line 847
    goto :goto_14

    .line 848
    :cond_24
    const/4 v1, 0x0

    .line 849
    :goto_14
    invoke-static {v12, v13, v5, v6}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 850
    .line 851
    .line 852
    move-result-wide v12

    .line 853
    move v3, v1

    .line 854
    goto :goto_15

    .line 855
    :cond_25
    const-wide v16, 0xffffffffL

    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    const/16 v18, 0x20

    .line 861
    .line 862
    :goto_15
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    const-wide/16 v1, 0x0

    .line 867
    .line 868
    goto/16 :goto_a

    .line 869
    .line 870
    :cond_26
    move v12, v3

    .line 871
    goto/16 :goto_49

    .line 872
    .line 873
    :sswitch_4
    if-eqz v3, :cond_27

    .line 874
    .line 875
    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    .line 876
    .line 877
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    goto :goto_16

    .line 882
    :cond_27
    const/4 v0, 0x0

    .line 883
    :goto_16
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->SetText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 884
    .line 885
    invoke-virtual {v14, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v1

    .line 889
    if-nez v1, :cond_28

    .line 890
    .line 891
    const/4 v12, 0x0

    .line 892
    goto :goto_17

    .line 893
    :cond_28
    move-object v12, v1

    .line 894
    :goto_17
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 895
    .line 896
    if-eqz v12, :cond_9

    .line 897
    .line 898
    iget-object v1, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 899
    .line 900
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 901
    .line 902
    if-eqz v1, :cond_9

    .line 903
    .line 904
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString;

    .line 905
    .line 906
    if-nez v0, :cond_29

    .line 907
    .line 908
    const-string v0, ""

    .line 909
    .line 910
    :cond_29
    invoke-direct {v2, v0}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    .line 915
    .line 916
    move-result-object v0

    .line 917
    check-cast v0, Ljava/lang/Boolean;

    .line 918
    .line 919
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 920
    .line 921
    .line 922
    move-result v12

    .line 923
    goto/16 :goto_49

    .line 924
    .line 925
    :sswitch_5
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Dismiss:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 926
    .line 927
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    if-nez v0, :cond_2a

    .line 932
    .line 933
    const/4 v12, 0x0

    .line 934
    goto :goto_18

    .line 935
    :cond_2a
    move-object v12, v0

    .line 936
    :goto_18
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 937
    .line 938
    if-eqz v12, :cond_9

    .line 939
    .line 940
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 941
    .line 942
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 943
    .line 944
    if-eqz v0, :cond_9

    .line 945
    .line 946
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 947
    .line 948
    .line 949
    move-result-object v0

    .line 950
    check-cast v0, Ljava/lang/Boolean;

    .line 951
    .line 952
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 953
    .line 954
    .line 955
    move-result v12

    .line 956
    goto/16 :goto_49

    .line 957
    .line 958
    :sswitch_6
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Collapse:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 959
    .line 960
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    .line 962
    .line 963
    move-result-object v0

    .line 964
    if-nez v0, :cond_2b

    .line 965
    .line 966
    const/4 v12, 0x0

    .line 967
    goto :goto_19

    .line 968
    :cond_2b
    move-object v12, v0

    .line 969
    :goto_19
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 970
    .line 971
    if-eqz v12, :cond_9

    .line 972
    .line 973
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 974
    .line 975
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 976
    .line 977
    if-eqz v0, :cond_9

    .line 978
    .line 979
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    check-cast v0, Ljava/lang/Boolean;

    .line 984
    .line 985
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 986
    .line 987
    .line 988
    move-result v12

    .line 989
    goto/16 :goto_49

    .line 990
    .line 991
    :sswitch_7
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Expand:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 992
    .line 993
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    .line 995
    .line 996
    move-result-object v0

    .line 997
    if-nez v0, :cond_2c

    .line 998
    .line 999
    const/4 v12, 0x0

    .line 1000
    goto :goto_1a

    .line 1001
    :cond_2c
    move-object v12, v0

    .line 1002
    :goto_1a
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1003
    .line 1004
    if-eqz v12, :cond_9

    .line 1005
    .line 1006
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1007
    .line 1008
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1009
    .line 1010
    if-eqz v0, :cond_9

    .line 1011
    .line 1012
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v0

    .line 1016
    check-cast v0, Ljava/lang/Boolean;

    .line 1017
    .line 1018
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1019
    .line 1020
    .line 1021
    move-result v12

    .line 1022
    goto/16 :goto_49

    .line 1023
    .line 1024
    :sswitch_8
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->CutText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1025
    .line 1026
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    if-nez v0, :cond_2d

    .line 1031
    .line 1032
    const/4 v12, 0x0

    .line 1033
    goto :goto_1b

    .line 1034
    :cond_2d
    move-object v12, v0

    .line 1035
    :goto_1b
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1036
    .line 1037
    if-eqz v12, :cond_9

    .line 1038
    .line 1039
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1040
    .line 1041
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1042
    .line 1043
    if-eqz v0, :cond_9

    .line 1044
    .line 1045
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v0

    .line 1049
    check-cast v0, Ljava/lang/Boolean;

    .line 1050
    .line 1051
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1052
    .line 1053
    .line 1054
    move-result v12

    .line 1055
    goto/16 :goto_49

    .line 1056
    .line 1057
    :sswitch_9
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PasteText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1058
    .line 1059
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    if-nez v0, :cond_2e

    .line 1064
    .line 1065
    const/4 v12, 0x0

    .line 1066
    goto :goto_1c

    .line 1067
    :cond_2e
    move-object v12, v0

    .line 1068
    :goto_1c
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1069
    .line 1070
    if-eqz v12, :cond_9

    .line 1071
    .line 1072
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1073
    .line 1074
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1075
    .line 1076
    if-eqz v0, :cond_9

    .line 1077
    .line 1078
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v0

    .line 1082
    check-cast v0, Ljava/lang/Boolean;

    .line 1083
    .line 1084
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1085
    .line 1086
    .line 1087
    move-result v12

    .line 1088
    goto/16 :goto_49

    .line 1089
    .line 1090
    :goto_1d
    const/16 v0, 0x1000

    .line 1091
    .line 1092
    if-ne v2, v0, :cond_2f

    .line 1093
    .line 1094
    const/4 v0, 0x1

    .line 1095
    goto :goto_1e

    .line 1096
    :cond_2f
    const/4 v0, 0x0

    .line 1097
    :goto_1e
    const/16 v1, 0x2000

    .line 1098
    .line 1099
    if-ne v2, v1, :cond_30

    .line 1100
    .line 1101
    const/4 v1, 0x1

    .line 1102
    goto :goto_1f

    .line 1103
    :cond_30
    const/4 v1, 0x0

    .line 1104
    :goto_1f
    const v3, 0x1020039

    .line 1105
    .line 1106
    .line 1107
    if-ne v2, v3, :cond_31

    .line 1108
    .line 1109
    const/4 v3, 0x1

    .line 1110
    goto :goto_20

    .line 1111
    :cond_31
    const/4 v3, 0x0

    .line 1112
    :goto_20
    const v5, 0x102003b

    .line 1113
    .line 1114
    .line 1115
    if-ne v2, v5, :cond_32

    .line 1116
    .line 1117
    const/4 v5, 0x1

    .line 1118
    goto :goto_21

    .line 1119
    :cond_32
    const/4 v5, 0x0

    .line 1120
    :goto_21
    const v6, 0x1020038

    .line 1121
    .line 1122
    .line 1123
    if-ne v2, v6, :cond_33

    .line 1124
    .line 1125
    const/4 v6, 0x1

    .line 1126
    goto :goto_22

    .line 1127
    :cond_33
    const/4 v6, 0x0

    .line 1128
    :goto_22
    const v7, 0x102003a

    .line 1129
    .line 1130
    .line 1131
    if-ne v2, v7, :cond_34

    .line 1132
    .line 1133
    const/4 v2, 0x1

    .line 1134
    goto :goto_23

    .line 1135
    :cond_34
    const/4 v2, 0x0

    .line 1136
    :goto_23
    if-nez v3, :cond_36

    .line 1137
    .line 1138
    if-nez v5, :cond_36

    .line 1139
    .line 1140
    if-nez v0, :cond_36

    .line 1141
    .line 1142
    if-eqz v1, :cond_35

    .line 1143
    .line 1144
    goto :goto_24

    .line 1145
    :cond_35
    const/4 v7, 0x0

    .line 1146
    goto :goto_25

    .line 1147
    :cond_36
    :goto_24
    const/4 v7, 0x1

    .line 1148
    :goto_25
    if-nez v6, :cond_38

    .line 1149
    .line 1150
    if-nez v2, :cond_38

    .line 1151
    .line 1152
    if-nez v0, :cond_38

    .line 1153
    .line 1154
    if-eqz v1, :cond_37

    .line 1155
    .line 1156
    goto :goto_26

    .line 1157
    :cond_37
    const/4 v12, 0x0

    .line 1158
    goto :goto_27

    .line 1159
    :cond_38
    :goto_26
    const/4 v12, 0x1

    .line 1160
    :goto_27
    if-nez v0, :cond_39

    .line 1161
    .line 1162
    if-eqz v1, :cond_3f

    .line 1163
    .line 1164
    :cond_39
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1165
    .line 1166
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v0

    .line 1170
    if-nez v0, :cond_3a

    .line 1171
    .line 1172
    const/4 v0, 0x0

    .line 1173
    :cond_3a
    check-cast v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 1174
    .line 1175
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1176
    .line 1177
    invoke-virtual {v14, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v2

    .line 1181
    if-nez v2, :cond_3b

    .line 1182
    .line 1183
    const/4 v2, 0x0

    .line 1184
    :cond_3b
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1185
    .line 1186
    if-eqz v0, :cond_3f

    .line 1187
    .line 1188
    iget-object v0, v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->range:Lkotlin/ranges/ClosedFloatRange;

    .line 1189
    .line 1190
    if-eqz v2, :cond_3f

    .line 1191
    .line 1192
    iget v0, v0, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    .line 1193
    .line 1194
    cmpg-float v3, v0, p0

    .line 1195
    .line 1196
    if-gez v3, :cond_3c

    .line 1197
    .line 1198
    move/from16 v3, p0

    .line 1199
    .line 1200
    goto :goto_28

    .line 1201
    :cond_3c
    move v3, v0

    .line 1202
    :goto_28
    cmpl-float v4, p0, v0

    .line 1203
    .line 1204
    if-lez v4, :cond_3d

    .line 1205
    .line 1206
    goto :goto_29

    .line 1207
    :cond_3d
    move/from16 v0, p0

    .line 1208
    .line 1209
    :goto_29
    sub-float/2addr v3, v0

    .line 1210
    const/high16 v0, 0x41a00000    # 20.0f

    .line 1211
    .line 1212
    div-float/2addr v3, v0

    .line 1213
    if-eqz v1, :cond_3e

    .line 1214
    .line 1215
    neg-float v3, v3

    .line 1216
    :cond_3e
    iget-object v0, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1217
    .line 1218
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 1219
    .line 1220
    if-eqz v0, :cond_9

    .line 1221
    .line 1222
    add-float v15, p0, v3

    .line 1223
    .line 1224
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v1

    .line 1228
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v0

    .line 1232
    check-cast v0, Ljava/lang/Boolean;

    .line 1233
    .line 1234
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1235
    .line 1236
    .line 1237
    move-result v12

    .line 1238
    goto/16 :goto_49

    .line 1239
    .line 1240
    :cond_3f
    iget-object v0, v10, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 1241
    .line 1242
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 1243
    .line 1244
    invoke-static {v0}, Landroidx/compose/ui/layout/RulerKt;->boundsInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v0

    .line 1248
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    .line 1249
    .line 1250
    .line 1251
    move-result-wide v8

    .line 1252
    new-instance v0, Ljava/util/ArrayList;

    .line 1253
    .line 1254
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1255
    .line 1256
    .line 1257
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->GetScrollViewportLength:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1258
    .line 1259
    invoke-virtual {v14, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v2

    .line 1263
    if-nez v2, :cond_40

    .line 1264
    .line 1265
    const/4 v2, 0x0

    .line 1266
    :cond_40
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1267
    .line 1268
    if-eqz v2, :cond_41

    .line 1269
    .line 1270
    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1271
    .line 1272
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 1273
    .line 1274
    if-eqz v2, :cond_41

    .line 1275
    .line 1276
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v2

    .line 1280
    check-cast v2, Ljava/lang/Boolean;

    .line 1281
    .line 1282
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1283
    .line 1284
    .line 1285
    move-result v2

    .line 1286
    if-eqz v2, :cond_41

    .line 1287
    .line 1288
    const/4 v2, 0x0

    .line 1289
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v0

    .line 1293
    check-cast v0, Ljava/lang/Float;

    .line 1294
    .line 1295
    goto :goto_2a

    .line 1296
    :cond_41
    const/4 v0, 0x0

    .line 1297
    :goto_2a
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1298
    .line 1299
    invoke-virtual {v14, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v2

    .line 1303
    if-nez v2, :cond_42

    .line 1304
    .line 1305
    const/4 v2, 0x0

    .line 1306
    :cond_42
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1307
    .line 1308
    if-nez v2, :cond_43

    .line 1309
    .line 1310
    goto/16 :goto_2

    .line 1311
    .line 1312
    :cond_43
    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1313
    .line 1314
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1315
    .line 1316
    invoke-virtual {v14, v11}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v11

    .line 1320
    if-nez v11, :cond_44

    .line 1321
    .line 1322
    const/4 v11, 0x0

    .line 1323
    :cond_44
    check-cast v11, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1324
    .line 1325
    if-eqz v11, :cond_4f

    .line 1326
    .line 1327
    if-eqz v7, :cond_4f

    .line 1328
    .line 1329
    if-eqz v0, :cond_45

    .line 1330
    .line 1331
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 1332
    .line 1333
    .line 1334
    move-result v7

    .line 1335
    move-object/from16 p2, v0

    .line 1336
    .line 1337
    move/from16 p1, v1

    .line 1338
    .line 1339
    goto :goto_2b

    .line 1340
    :cond_45
    move-object/from16 p2, v0

    .line 1341
    .line 1342
    move/from16 p1, v1

    .line 1343
    .line 1344
    shr-long v0, v8, v18

    .line 1345
    .line 1346
    long-to-int v0, v0

    .line 1347
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1348
    .line 1349
    .line 1350
    move-result v7

    .line 1351
    :goto_2b
    if-nez v3, :cond_46

    .line 1352
    .line 1353
    if-eqz p1, :cond_47

    .line 1354
    .line 1355
    :cond_46
    neg-float v7, v7

    .line 1356
    :cond_47
    iget-object v0, v10, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1357
    .line 1358
    if-ne v0, v4, :cond_49

    .line 1359
    .line 1360
    if-nez v3, :cond_48

    .line 1361
    .line 1362
    if-eqz v5, :cond_49

    .line 1363
    .line 1364
    :cond_48
    neg-float v7, v7

    .line 1365
    :cond_49
    invoke-static {v11, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->performActionHelper$canScroll(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z

    .line 1366
    .line 1367
    .line 1368
    move-result v0

    .line 1369
    if-eqz v0, :cond_50

    .line 1370
    .line 1371
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageLeft:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1372
    .line 1373
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1374
    .line 1375
    .line 1376
    move-result v1

    .line 1377
    if-nez v1, :cond_4b

    .line 1378
    .line 1379
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1380
    .line 1381
    invoke-virtual {v14, v1}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1382
    .line 1383
    .line 1384
    move-result v1

    .line 1385
    if-eqz v1, :cond_4a

    .line 1386
    .line 1387
    goto :goto_2c

    .line 1388
    :cond_4a
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 1389
    .line 1390
    if-eqz v2, :cond_9

    .line 1391
    .line 1392
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v0

    .line 1396
    invoke-interface {v2, v0, v15}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v0

    .line 1400
    check-cast v0, Ljava/lang/Boolean;

    .line 1401
    .line 1402
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1403
    .line 1404
    .line 1405
    move-result v12

    .line 1406
    goto/16 :goto_49

    .line 1407
    .line 1408
    :cond_4b
    :goto_2c
    cmpl-float v1, v7, p0

    .line 1409
    .line 1410
    if-lez v1, :cond_4d

    .line 1411
    .line 1412
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1413
    .line 1414
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v0

    .line 1418
    if-nez v0, :cond_4c

    .line 1419
    .line 1420
    const/4 v12, 0x0

    .line 1421
    goto :goto_2d

    .line 1422
    :cond_4c
    move-object v12, v0

    .line 1423
    :goto_2d
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1424
    .line 1425
    goto :goto_2f

    .line 1426
    :cond_4d
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v0

    .line 1430
    if-nez v0, :cond_4e

    .line 1431
    .line 1432
    const/4 v12, 0x0

    .line 1433
    goto :goto_2e

    .line 1434
    :cond_4e
    move-object v12, v0

    .line 1435
    :goto_2e
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1436
    .line 1437
    :goto_2f
    if-eqz v12, :cond_9

    .line 1438
    .line 1439
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1440
    .line 1441
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1442
    .line 1443
    if-eqz v0, :cond_9

    .line 1444
    .line 1445
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v0

    .line 1449
    check-cast v0, Ljava/lang/Boolean;

    .line 1450
    .line 1451
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1452
    .line 1453
    .line 1454
    move-result v12

    .line 1455
    goto/16 :goto_49

    .line 1456
    .line 1457
    :cond_4f
    move-object/from16 p2, v0

    .line 1458
    .line 1459
    move/from16 p1, v1

    .line 1460
    .line 1461
    :cond_50
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1462
    .line 1463
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v0

    .line 1467
    if-nez v0, :cond_51

    .line 1468
    .line 1469
    const/4 v0, 0x0

    .line 1470
    :cond_51
    check-cast v0, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1471
    .line 1472
    if-eqz v0, :cond_9

    .line 1473
    .line 1474
    if-eqz v12, :cond_9

    .line 1475
    .line 1476
    if-eqz p2, :cond_52

    .line 1477
    .line 1478
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    .line 1479
    .line 1480
    .line 1481
    move-result v1

    .line 1482
    goto :goto_30

    .line 1483
    :cond_52
    and-long v3, v8, v16

    .line 1484
    .line 1485
    long-to-int v1, v3

    .line 1486
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1487
    .line 1488
    .line 1489
    move-result v1

    .line 1490
    :goto_30
    if-nez v6, :cond_53

    .line 1491
    .line 1492
    if-eqz p1, :cond_54

    .line 1493
    .line 1494
    :cond_53
    neg-float v1, v1

    .line 1495
    :cond_54
    invoke-static {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->performActionHelper$canScroll(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z

    .line 1496
    .line 1497
    .line 1498
    move-result v0

    .line 1499
    if-eqz v0, :cond_9

    .line 1500
    .line 1501
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageUp:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1502
    .line 1503
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1504
    .line 1505
    .line 1506
    move-result v3

    .line 1507
    if-nez v3, :cond_56

    .line 1508
    .line 1509
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1510
    .line 1511
    invoke-virtual {v14, v3}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1512
    .line 1513
    .line 1514
    move-result v3

    .line 1515
    if-eqz v3, :cond_55

    .line 1516
    .line 1517
    goto :goto_31

    .line 1518
    :cond_55
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 1519
    .line 1520
    if-eqz v2, :cond_9

    .line 1521
    .line 1522
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v0

    .line 1526
    invoke-interface {v2, v15, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v0

    .line 1530
    check-cast v0, Ljava/lang/Boolean;

    .line 1531
    .line 1532
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1533
    .line 1534
    .line 1535
    move-result v12

    .line 1536
    goto/16 :goto_49

    .line 1537
    .line 1538
    :cond_56
    :goto_31
    cmpl-float v1, v1, p0

    .line 1539
    .line 1540
    if-lez v1, :cond_58

    .line 1541
    .line 1542
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1543
    .line 1544
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v0

    .line 1548
    if-nez v0, :cond_57

    .line 1549
    .line 1550
    const/4 v12, 0x0

    .line 1551
    goto :goto_32

    .line 1552
    :cond_57
    move-object v12, v0

    .line 1553
    :goto_32
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1554
    .line 1555
    goto :goto_34

    .line 1556
    :cond_58
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v0

    .line 1560
    if-nez v0, :cond_59

    .line 1561
    .line 1562
    const/4 v12, 0x0

    .line 1563
    goto :goto_33

    .line 1564
    :cond_59
    move-object v12, v0

    .line 1565
    :goto_33
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1566
    .line 1567
    :goto_34
    if-eqz v12, :cond_9

    .line 1568
    .line 1569
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1570
    .line 1571
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1572
    .line 1573
    if-eqz v0, :cond_9

    .line 1574
    .line 1575
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v0

    .line 1579
    check-cast v0, Ljava/lang/Boolean;

    .line 1580
    .line 1581
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1582
    .line 1583
    .line 1584
    move-result v12

    .line 1585
    goto/16 :goto_49

    .line 1586
    .line 1587
    :sswitch_a
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->OnLongClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1588
    .line 1589
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v0

    .line 1593
    if-nez v0, :cond_5a

    .line 1594
    .line 1595
    const/4 v12, 0x0

    .line 1596
    goto :goto_35

    .line 1597
    :cond_5a
    move-object v12, v0

    .line 1598
    :goto_35
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1599
    .line 1600
    if-eqz v12, :cond_9

    .line 1601
    .line 1602
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1603
    .line 1604
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1605
    .line 1606
    if-eqz v0, :cond_9

    .line 1607
    .line 1608
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v0

    .line 1612
    check-cast v0, Ljava/lang/Boolean;

    .line 1613
    .line 1614
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1615
    .line 1616
    .line 1617
    move-result v12

    .line 1618
    goto/16 :goto_49

    .line 1619
    .line 1620
    :sswitch_b
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->OnClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1621
    .line 1622
    invoke-virtual {v14, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v2

    .line 1626
    if-nez v2, :cond_5b

    .line 1627
    .line 1628
    const/4 v2, 0x0

    .line 1629
    :cond_5b
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1630
    .line 1631
    if-eqz v2, :cond_5c

    .line 1632
    .line 1633
    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1634
    .line 1635
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 1636
    .line 1637
    if-eqz v2, :cond_5c

    .line 1638
    .line 1639
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v2

    .line 1643
    check-cast v2, Ljava/lang/Boolean;

    .line 1644
    .line 1645
    move-object/from16 v23, v2

    .line 1646
    .line 1647
    :goto_36
    const/4 v2, 0x1

    .line 1648
    const/4 v3, 0x0

    .line 1649
    goto :goto_37

    .line 1650
    :cond_5c
    const/16 v23, 0x0

    .line 1651
    .line 1652
    goto :goto_36

    .line 1653
    :goto_37
    invoke-static {v0, v1, v2, v3, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 1654
    .line 1655
    .line 1656
    if-eqz v23, :cond_9

    .line 1657
    .line 1658
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1659
    .line 1660
    .line 1661
    move-result v12

    .line 1662
    goto/16 :goto_49

    .line 1663
    .line 1664
    :cond_5d
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1665
    .line 1666
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v0

    .line 1670
    if-nez v0, :cond_5e

    .line 1671
    .line 1672
    const/4 v0, 0x0

    .line 1673
    :cond_5e
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1674
    .line 1675
    .line 1676
    move-result v0

    .line 1677
    if-eqz v0, :cond_9

    .line 1678
    .line 1679
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v0

    .line 1683
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 1684
    .line 1685
    const/4 v1, 0x0

    .line 1686
    const/4 v2, 0x1

    .line 1687
    invoke-virtual {v0, v4, v1, v2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus-I7lrPNg(IZZ)Z

    .line 1688
    .line 1689
    .line 1690
    :goto_38
    const/4 v12, 0x1

    .line 1691
    goto/16 :goto_49

    .line 1692
    .line 1693
    :cond_5f
    invoke-virtual {v5}, Landroid/view/View;->isInTouchMode()Z

    .line 1694
    .line 1695
    .line 1696
    move-result v0

    .line 1697
    if-eqz v0, :cond_60

    .line 1698
    .line 1699
    invoke-virtual {v5}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 1700
    .line 1701
    .line 1702
    :cond_60
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->RequestFocus:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1703
    .line 1704
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v0

    .line 1708
    if-nez v0, :cond_61

    .line 1709
    .line 1710
    const/4 v12, 0x0

    .line 1711
    goto :goto_39

    .line 1712
    :cond_61
    move-object v12, v0

    .line 1713
    :goto_39
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1714
    .line 1715
    if-eqz v12, :cond_9

    .line 1716
    .line 1717
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1718
    .line 1719
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1720
    .line 1721
    if-eqz v0, :cond_9

    .line 1722
    .line 1723
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1724
    .line 1725
    .line 1726
    move-result-object v0

    .line 1727
    check-cast v0, Ljava/lang/Boolean;

    .line 1728
    .line 1729
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1730
    .line 1731
    .line 1732
    move-result v12

    .line 1733
    goto/16 :goto_49

    .line 1734
    .line 1735
    :cond_62
    if-eqz v3, :cond_63

    .line 1736
    .line 1737
    const-string v1, "ACTION_ARGUMENT_SELECTION_START_INT"

    .line 1738
    .line 1739
    const/4 v2, -0x1

    .line 1740
    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 1741
    .line 1742
    .line 1743
    move-result v20

    .line 1744
    move/from16 v1, v20

    .line 1745
    .line 1746
    goto :goto_3a

    .line 1747
    :cond_63
    const/4 v2, -0x1

    .line 1748
    move v1, v2

    .line 1749
    :goto_3a
    if-eqz v3, :cond_64

    .line 1750
    .line 1751
    const-string v4, "ACTION_ARGUMENT_SELECTION_END_INT"

    .line 1752
    .line 1753
    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 1754
    .line 1755
    .line 1756
    move-result v9

    .line 1757
    :goto_3b
    const/4 v2, 0x0

    .line 1758
    goto :goto_3c

    .line 1759
    :cond_64
    const/4 v9, -0x1

    .line 1760
    goto :goto_3b

    .line 1761
    :goto_3c
    invoke-virtual {v0, v11, v1, v9, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setAccessibilitySelection(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z

    .line 1762
    .line 1763
    .line 1764
    move-result v12

    .line 1765
    if-eqz v12, :cond_89

    .line 1766
    .line 1767
    invoke-virtual {v0, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    .line 1768
    .line 1769
    .line 1770
    move-result v1

    .line 1771
    const/4 v3, 0x0

    .line 1772
    invoke-static {v0, v1, v2, v3, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 1773
    .line 1774
    .line 1775
    goto/16 :goto_49

    .line 1776
    .line 1777
    :cond_65
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->CopyText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1778
    .line 1779
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v0

    .line 1783
    if-nez v0, :cond_66

    .line 1784
    .line 1785
    const/4 v12, 0x0

    .line 1786
    goto :goto_3d

    .line 1787
    :cond_66
    move-object v12, v0

    .line 1788
    :goto_3d
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1789
    .line 1790
    if-eqz v12, :cond_9

    .line 1791
    .line 1792
    iget-object v0, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1793
    .line 1794
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1795
    .line 1796
    if-eqz v0, :cond_9

    .line 1797
    .line 1798
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1799
    .line 1800
    .line 1801
    move-result-object v0

    .line 1802
    check-cast v0, Ljava/lang/Boolean;

    .line 1803
    .line 1804
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1805
    .line 1806
    .line 1807
    move-result v12

    .line 1808
    goto/16 :goto_49

    .line 1809
    .line 1810
    :cond_67
    if-eqz v3, :cond_9

    .line 1811
    .line 1812
    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    .line 1813
    .line 1814
    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 1815
    .line 1816
    .line 1817
    move-result v1

    .line 1818
    const-string v7, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    .line 1819
    .line 1820
    invoke-virtual {v3, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1821
    .line 1822
    .line 1823
    move-result v3

    .line 1824
    if-ne v2, v13, :cond_68

    .line 1825
    .line 1826
    const/4 v2, 0x1

    .line 1827
    goto :goto_3e

    .line 1828
    :cond_68
    const/4 v2, 0x0

    .line 1829
    :goto_3e
    iget-object v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousTraversedNode:Ljava/lang/Integer;

    .line 1830
    .line 1831
    if-nez v7, :cond_69

    .line 1832
    .line 1833
    :goto_3f
    const/4 v7, -0x1

    .line 1834
    goto :goto_40

    .line 1835
    :cond_69
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 1836
    .line 1837
    .line 1838
    move-result v7

    .line 1839
    if-eq v6, v7, :cond_6a

    .line 1840
    .line 1841
    goto :goto_3f

    .line 1842
    :goto_40
    iput v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    .line 1843
    .line 1844
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1845
    .line 1846
    .line 1847
    move-result-object v6

    .line 1848
    iput-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousTraversedNode:Ljava/lang/Integer;

    .line 1849
    .line 1850
    :cond_6a
    invoke-static {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v6

    .line 1854
    if-eqz v6, :cond_9

    .line 1855
    .line 1856
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1857
    .line 1858
    .line 1859
    move-result v7

    .line 1860
    if-nez v7, :cond_6b

    .line 1861
    .line 1862
    goto/16 :goto_2

    .line 1863
    .line 1864
    :cond_6b
    invoke-static {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v7

    .line 1868
    if-eqz v7, :cond_6d

    .line 1869
    .line 1870
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 1871
    .line 1872
    .line 1873
    move-result v10

    .line 1874
    if-nez v10, :cond_6c

    .line 1875
    .line 1876
    goto :goto_41

    .line 1877
    :cond_6c
    const/4 v10, 0x1

    .line 1878
    if-eq v1, v10, :cond_78

    .line 1879
    .line 1880
    const/4 v10, 0x2

    .line 1881
    if-eq v1, v10, :cond_76

    .line 1882
    .line 1883
    const/4 v5, 0x3

    .line 1884
    const/4 v10, 0x4

    .line 1885
    if-eq v1, v10, :cond_70

    .line 1886
    .line 1887
    if-eq v1, v4, :cond_6e

    .line 1888
    .line 1889
    const/16 v4, 0x10

    .line 1890
    .line 1891
    if-eq v1, v4, :cond_70

    .line 1892
    .line 1893
    :cond_6d
    :goto_41
    const/4 v12, 0x0

    .line 1894
    goto/16 :goto_42

    .line 1895
    .line 1896
    :cond_6e
    sget-object v4, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 1897
    .line 1898
    if-nez v4, :cond_6f

    .line 1899
    .line 1900
    new-instance v4, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 1901
    .line 1902
    invoke-direct {v4, v5}, Landroidx/core/app/NotificationCompat$Style;-><init>(I)V

    .line 1903
    .line 1904
    .line 1905
    sput-object v4, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 1906
    .line 1907
    :cond_6f
    sget-object v12, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 1908
    .line 1909
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1910
    .line 1911
    .line 1912
    iput-object v7, v12, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Ljava/lang/Object;

    .line 1913
    .line 1914
    goto/16 :goto_42

    .line 1915
    .line 1916
    :cond_70
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1917
    .line 1918
    invoke-virtual {v14, v4}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1919
    .line 1920
    .line 1921
    move-result v4

    .line 1922
    if-nez v4, :cond_71

    .line 1923
    .line 1924
    goto :goto_41

    .line 1925
    :cond_71
    invoke-static {v9}, Landroidx/compose/ui/platform/TestTagKt;->getTextLayoutResult(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/TextLayoutResult;

    .line 1926
    .line 1927
    .line 1928
    move-result-object v4

    .line 1929
    if-nez v4, :cond_72

    .line 1930
    .line 1931
    goto :goto_41

    .line 1932
    :cond_72
    if-ne v1, v10, :cond_74

    .line 1933
    .line 1934
    sget-object v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->lineInstance:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 1935
    .line 1936
    if-nez v5, :cond_73

    .line 1937
    .line 1938
    new-instance v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 1939
    .line 1940
    const/4 v10, 0x2

    .line 1941
    invoke-direct {v5, v10}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;-><init>(I)V

    .line 1942
    .line 1943
    .line 1944
    sput-object v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->lineInstance:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 1945
    .line 1946
    :cond_73
    sget-object v12, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->lineInstance:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 1947
    .line 1948
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1949
    .line 1950
    .line 1951
    iput-object v7, v12, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Ljava/lang/Object;

    .line 1952
    .line 1953
    iput-object v4, v12, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->impl:Ljava/lang/Object;

    .line 1954
    .line 1955
    goto :goto_42

    .line 1956
    :cond_74
    sget-object v9, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->pageInstance:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    .line 1957
    .line 1958
    if-nez v9, :cond_75

    .line 1959
    .line 1960
    new-instance v9, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    .line 1961
    .line 1962
    invoke-direct {v9, v5}, Landroidx/core/app/NotificationCompat$Style;-><init>(I)V

    .line 1963
    .line 1964
    .line 1965
    new-instance v5, Landroid/graphics/Rect;

    .line 1966
    .line 1967
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1968
    .line 1969
    .line 1970
    sput-object v9, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->pageInstance:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    .line 1971
    .line 1972
    :cond_75
    sget-object v12, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->pageInstance:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    .line 1973
    .line 1974
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1975
    .line 1976
    .line 1977
    iput-object v7, v12, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Ljava/lang/Object;

    .line 1978
    .line 1979
    iput-object v4, v12, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 1980
    .line 1981
    iput-object v11, v12, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->node:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1982
    .line 1983
    goto :goto_42

    .line 1984
    :cond_76
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v4

    .line 1988
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1989
    .line 1990
    .line 1991
    move-result-object v4

    .line 1992
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 1993
    .line 1994
    .line 1995
    move-result-object v4

    .line 1996
    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1997
    .line 1998
    sget-object v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 1999
    .line 2000
    if-nez v5, :cond_77

    .line 2001
    .line 2002
    new-instance v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2003
    .line 2004
    const/4 v9, 0x0

    .line 2005
    invoke-direct {v5, v9}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;-><init>(I)V

    .line 2006
    .line 2007
    .line 2008
    invoke-static {v4}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 2009
    .line 2010
    .line 2011
    move-result-object v4

    .line 2012
    iput-object v4, v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->impl:Ljava/lang/Object;

    .line 2013
    .line 2014
    sput-object v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2015
    .line 2016
    :cond_77
    sget-object v12, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2017
    .line 2018
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2019
    .line 2020
    .line 2021
    invoke-virtual {v12, v7}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->initialize(Ljava/lang/String;)V

    .line 2022
    .line 2023
    .line 2024
    goto :goto_42

    .line 2025
    :cond_78
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2026
    .line 2027
    .line 2028
    move-result-object v4

    .line 2029
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v4

    .line 2033
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v4

    .line 2037
    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2038
    .line 2039
    sget-object v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance$1:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2040
    .line 2041
    if-nez v5, :cond_79

    .line 2042
    .line 2043
    new-instance v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2044
    .line 2045
    const/4 v10, 0x1

    .line 2046
    invoke-direct {v5, v10}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;-><init>(I)V

    .line 2047
    .line 2048
    .line 2049
    invoke-static {v4}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 2050
    .line 2051
    .line 2052
    move-result-object v4

    .line 2053
    iput-object v4, v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->impl:Ljava/lang/Object;

    .line 2054
    .line 2055
    sput-object v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance$1:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2056
    .line 2057
    :cond_79
    sget-object v12, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance$1:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2058
    .line 2059
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2060
    .line 2061
    .line 2062
    invoke-virtual {v12, v7}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->initialize(Ljava/lang/String;)V

    .line 2063
    .line 2064
    .line 2065
    :goto_42
    if-nez v12, :cond_7a

    .line 2066
    .line 2067
    goto/16 :goto_2

    .line 2068
    .line 2069
    :cond_7a
    invoke-virtual {v0, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionEnd(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 2070
    .line 2071
    .line 2072
    move-result v4

    .line 2073
    const/4 v7, -0x1

    .line 2074
    if-ne v4, v7, :cond_7c

    .line 2075
    .line 2076
    if-eqz v2, :cond_7b

    .line 2077
    .line 2078
    const/4 v4, 0x0

    .line 2079
    goto :goto_43

    .line 2080
    :cond_7b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 2081
    .line 2082
    .line 2083
    move-result v4

    .line 2084
    :cond_7c
    :goto_43
    if-eqz v2, :cond_7d

    .line 2085
    .line 2086
    invoke-virtual {v12, v4}, Landroidx/core/app/NotificationCompat$Style;->following(I)[I

    .line 2087
    .line 2088
    .line 2089
    move-result-object v4

    .line 2090
    goto :goto_44

    .line 2091
    :cond_7d
    invoke-virtual {v12, v4}, Landroidx/core/app/NotificationCompat$Style;->preceding(I)[I

    .line 2092
    .line 2093
    .line 2094
    move-result-object v4

    .line 2095
    :goto_44
    if-nez v4, :cond_7e

    .line 2096
    .line 2097
    goto/16 :goto_2

    .line 2098
    .line 2099
    :cond_7e
    const/16 v21, 0x0

    .line 2100
    .line 2101
    aget v22, v4, v21

    .line 2102
    .line 2103
    const/16 v26, 0x1

    .line 2104
    .line 2105
    aget v23, v4, v26

    .line 2106
    .line 2107
    if-eqz v3, :cond_82

    .line 2108
    .line 2109
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2110
    .line 2111
    invoke-virtual {v14, v3}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2112
    .line 2113
    .line 2114
    move-result v3

    .line 2115
    if-nez v3, :cond_82

    .line 2116
    .line 2117
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2118
    .line 2119
    invoke-virtual {v14, v3}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2120
    .line 2121
    .line 2122
    move-result v3

    .line 2123
    if-eqz v3, :cond_82

    .line 2124
    .line 2125
    invoke-virtual {v0, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionStart(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 2126
    .line 2127
    .line 2128
    move-result v3

    .line 2129
    const/4 v7, -0x1

    .line 2130
    if-ne v3, v7, :cond_80

    .line 2131
    .line 2132
    if-eqz v2, :cond_7f

    .line 2133
    .line 2134
    move/from16 v3, v22

    .line 2135
    .line 2136
    goto :goto_45

    .line 2137
    :cond_7f
    move/from16 v3, v23

    .line 2138
    .line 2139
    :cond_80
    :goto_45
    if-eqz v2, :cond_81

    .line 2140
    .line 2141
    move/from16 v4, v23

    .line 2142
    .line 2143
    goto :goto_47

    .line 2144
    :cond_81
    move/from16 v4, v22

    .line 2145
    .line 2146
    goto :goto_47

    .line 2147
    :cond_82
    if-eqz v2, :cond_83

    .line 2148
    .line 2149
    move/from16 v3, v23

    .line 2150
    .line 2151
    goto :goto_46

    .line 2152
    :cond_83
    move/from16 v3, v22

    .line 2153
    .line 2154
    :goto_46
    move v4, v3

    .line 2155
    :goto_47
    if-eqz v2, :cond_84

    .line 2156
    .line 2157
    move/from16 v20, v13

    .line 2158
    .line 2159
    goto :goto_48

    .line 2160
    :cond_84
    move/from16 v20, v8

    .line 2161
    .line 2162
    :goto_48
    new-instance v18, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    .line 2163
    .line 2164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2165
    .line 2166
    .line 2167
    move-result-wide v24

    .line 2168
    move/from16 v21, v1

    .line 2169
    .line 2170
    move-object/from16 v19, v11

    .line 2171
    .line 2172
    invoke-direct/range {v18 .. v25}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;IIIIJ)V

    .line 2173
    .line 2174
    .line 2175
    move-object/from16 v2, v18

    .line 2176
    .line 2177
    move-object/from16 v1, v19

    .line 2178
    .line 2179
    iput-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    .line 2180
    .line 2181
    const/4 v2, 0x1

    .line 2182
    invoke-virtual {v0, v1, v3, v4, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setAccessibilitySelection(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z

    .line 2183
    .line 2184
    .line 2185
    goto/16 :goto_38

    .line 2186
    .line 2187
    :cond_85
    iget v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 2188
    .line 2189
    if-ne v2, v1, :cond_9

    .line 2190
    .line 2191
    const/high16 v2, -0x80000000

    .line 2192
    .line 2193
    iput v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 2194
    .line 2195
    const/4 v3, 0x0

    .line 2196
    iput-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyAccessibilityFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 2197
    .line 2198
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 2199
    .line 2200
    .line 2201
    const/high16 v2, 0x10000

    .line 2202
    .line 2203
    invoke-static {v0, v1, v2, v3, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 2204
    .line 2205
    .line 2206
    goto/16 :goto_38

    .line 2207
    .line 2208
    :cond_86
    const/high16 v2, 0x10000

    .line 2209
    .line 2210
    const/4 v3, 0x0

    .line 2211
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 2212
    .line 2213
    .line 2214
    move-result v6

    .line 2215
    if-eqz v6, :cond_9

    .line 2216
    .line 2217
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 2218
    .line 2219
    .line 2220
    move-result v4

    .line 2221
    if-eqz v4, :cond_9

    .line 2222
    .line 2223
    iget v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 2224
    .line 2225
    if-ne v4, v1, :cond_87

    .line 2226
    .line 2227
    goto/16 :goto_2

    .line 2228
    .line 2229
    :cond_87
    const/high16 v6, -0x80000000

    .line 2230
    .line 2231
    if-eq v4, v6, :cond_88

    .line 2232
    .line 2233
    invoke-static {v0, v4, v2, v3, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 2234
    .line 2235
    .line 2236
    :cond_88
    iput v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 2237
    .line 2238
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 2239
    .line 2240
    .line 2241
    const v2, 0x8000

    .line 2242
    .line 2243
    .line 2244
    invoke-static {v0, v1, v2, v3, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 2245
    .line 2246
    .line 2247
    goto/16 :goto_38

    .line 2248
    .line 2249
    :cond_89
    :goto_49
    return v12

    .line 2250
    :pswitch_5
    check-cast v0, Landroidx/customview/widget/ExploreByTouchHelper;

    .line 2251
    .line 2252
    iget-object v4, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Lcom/google/android/material/chip/Chip;

    .line 2253
    .line 2254
    const/4 v7, -0x1

    .line 2255
    if-eq v1, v7, :cond_95

    .line 2256
    .line 2257
    const/4 v10, 0x1

    .line 2258
    if-eq v2, v10, :cond_94

    .line 2259
    .line 2260
    const/4 v6, 0x2

    .line 2261
    if-eq v2, v6, :cond_93

    .line 2262
    .line 2263
    if-eq v2, v8, :cond_90

    .line 2264
    .line 2265
    const/16 v8, 0x80

    .line 2266
    .line 2267
    if-eq v2, v8, :cond_8f

    .line 2268
    .line 2269
    check-cast v0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 2270
    .line 2271
    iget-object v0, v0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 2272
    .line 2273
    const/16 v4, 0x10

    .line 2274
    .line 2275
    if-ne v2, v4, :cond_8d

    .line 2276
    .line 2277
    if-nez v1, :cond_8a

    .line 2278
    .line 2279
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 2280
    .line 2281
    .line 2282
    move-result v12

    .line 2283
    goto/16 :goto_4d

    .line 2284
    .line 2285
    :cond_8a
    if-ne v1, v10, :cond_8d

    .line 2286
    .line 2287
    const/4 v2, 0x0

    .line 2288
    invoke-virtual {v0, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 2289
    .line 2290
    .line 2291
    iget-object v1, v0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    .line 2292
    .line 2293
    if-eqz v1, :cond_8b

    .line 2294
    .line 2295
    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 2296
    .line 2297
    .line 2298
    move v14, v10

    .line 2299
    goto :goto_4a

    .line 2300
    :cond_8b
    move v14, v2

    .line 2301
    :goto_4a
    iget-boolean v1, v0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    .line 2302
    .line 2303
    if-eqz v1, :cond_8c

    .line 2304
    .line 2305
    iget-object v0, v0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 2306
    .line 2307
    invoke-virtual {v0, v10, v10}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    .line 2308
    .line 2309
    .line 2310
    :cond_8c
    move v12, v14

    .line 2311
    goto :goto_4d

    .line 2312
    :cond_8d
    const/4 v2, 0x0

    .line 2313
    :cond_8e
    :goto_4b
    move v12, v2

    .line 2314
    goto :goto_4d

    .line 2315
    :cond_8f
    const/4 v2, 0x0

    .line 2316
    iget v3, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 2317
    .line 2318
    if-ne v3, v1, :cond_8e

    .line 2319
    .line 2320
    const/high16 v6, -0x80000000

    .line 2321
    .line 2322
    iput v6, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 2323
    .line 2324
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 2325
    .line 2326
    .line 2327
    const/high16 v2, 0x10000

    .line 2328
    .line 2329
    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    .line 2330
    .line 2331
    .line 2332
    :goto_4c
    move v12, v10

    .line 2333
    goto :goto_4d

    .line 2334
    :cond_90
    const/4 v2, 0x0

    .line 2335
    iget-object v3, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2336
    .line 2337
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 2338
    .line 2339
    .line 2340
    move-result v5

    .line 2341
    if-eqz v5, :cond_8e

    .line 2342
    .line 2343
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 2344
    .line 2345
    .line 2346
    move-result v3

    .line 2347
    if-nez v3, :cond_91

    .line 2348
    .line 2349
    goto :goto_4b

    .line 2350
    :cond_91
    iget v3, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 2351
    .line 2352
    if-eq v3, v1, :cond_8e

    .line 2353
    .line 2354
    const/high16 v6, -0x80000000

    .line 2355
    .line 2356
    if-eq v3, v6, :cond_92

    .line 2357
    .line 2358
    iput v6, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 2359
    .line 2360
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 2361
    .line 2362
    .line 2363
    const/high16 v2, 0x10000

    .line 2364
    .line 2365
    invoke-virtual {v0, v3, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    .line 2366
    .line 2367
    .line 2368
    :cond_92
    iput v1, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 2369
    .line 2370
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 2371
    .line 2372
    .line 2373
    const v2, 0x8000

    .line 2374
    .line 2375
    .line 2376
    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    .line 2377
    .line 2378
    .line 2379
    goto :goto_4c

    .line 2380
    :cond_93
    invoke-virtual {v0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 2381
    .line 2382
    .line 2383
    move-result v12

    .line 2384
    goto :goto_4d

    .line 2385
    :cond_94
    invoke-virtual {v0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    .line 2386
    .line 2387
    .line 2388
    move-result v12

    .line 2389
    goto :goto_4d

    .line 2390
    :cond_95
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2391
    .line 2392
    invoke-virtual {v4, v2, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 2393
    .line 2394
    .line 2395
    move-result v12

    .line 2396
    :goto_4d
    return v12

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
