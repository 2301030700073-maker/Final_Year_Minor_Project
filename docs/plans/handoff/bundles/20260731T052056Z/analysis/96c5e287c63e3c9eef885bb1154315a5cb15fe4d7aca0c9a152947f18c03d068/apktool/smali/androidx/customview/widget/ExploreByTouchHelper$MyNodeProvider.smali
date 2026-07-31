.class public final Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
.super Landroidx/paging/HintHandler;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


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
    const/16 p1, 0x11

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/paging/HintHandler;-><init>(I)V

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
    .locals 45

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
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 15
    .line 16
    iget-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-object v4, v4, Landroidx/compose/ui/platform/ComposeViewContext;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 23
    .line 24
    invoke-interface {v4}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-object v4, v4, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 29
    .line 30
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 31
    .line 32
    if-ne v4, v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 45
    .line 46
    invoke-direct {v6, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v6, 0x0

    .line 51
    :goto_0
    move-object v9, v0

    .line 52
    move v5, v1

    .line 53
    goto/16 :goto_4f

    .line 54
    .line 55
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 64
    .line 65
    if-nez v4, :cond_2

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_0

    .line 72
    .line 73
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 78
    .line 79
    invoke-direct {v6, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object v5, v4, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 84
    .line 85
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    iget-object v8, v5, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 90
    .line 91
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->IsSensitiveData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 92
    .line 93
    iget-object v7, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 94
    .line 95
    invoke-virtual {v7, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    if-nez v7, :cond_3

    .line 100
    .line 101
    const/4 v7, 0x0

    .line 102
    :cond_3
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    const/16 v10, 0x22

    .line 109
    .line 110
    if-eqz v7, :cond_5

    .line 111
    .line 112
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 113
    .line 114
    if-lt v11, v10, :cond_4

    .line 115
    .line 116
    invoke-static {v2}, Landroidx/core/util/TypedValueCompat$Api34Impl;->isRequestFromAccessibilityTool(Landroid/view/accessibility/AccessibilityManager;)Z

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    goto :goto_1

    .line 121
    :cond_4
    const/4 v11, 0x1

    .line 122
    :goto_1
    if-nez v11, :cond_5

    .line 123
    .line 124
    move-object v9, v0

    .line 125
    move v5, v1

    .line 126
    const/4 v6, 0x0

    .line 127
    goto/16 :goto_4f

    .line 128
    .line 129
    :cond_5
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    new-instance v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 134
    .line 135
    invoke-direct {v12, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 136
    .line 137
    .line 138
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 139
    .line 140
    if-lt v13, v10, :cond_6

    .line 141
    .line 142
    invoke-static {v11, v7}, Landroidx/core/util/TypedValueCompat$Api34Impl;->setAccessibilityDataSensitive(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_6
    const/16 v14, 0x40

    .line 147
    .line 148
    invoke-virtual {v12, v14, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBooleanProperty(IZ)V

    .line 149
    .line 150
    .line 151
    :goto_2
    const/4 v7, -0x1

    .line 152
    if-ne v1, v7, :cond_8

    .line 153
    .line 154
    invoke-virtual {v3}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    .line 155
    .line 156
    .line 157
    move-result-object v14

    .line 158
    instance-of v15, v14, Landroid/view/View;

    .line 159
    .line 160
    if-eqz v15, :cond_7

    .line 161
    .line 162
    check-cast v14, Landroid/view/View;

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_7
    const/4 v14, 0x0

    .line 166
    :goto_3
    iput v7, v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 167
    .line 168
    invoke-virtual {v11, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 169
    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_8
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 173
    .line 174
    .line 175
    move-result-object v14

    .line 176
    if-eqz v14, :cond_9

    .line 177
    .line 178
    iget v14, v14, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 179
    .line 180
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    goto :goto_4

    .line 185
    :cond_9
    const/4 v14, 0x0

    .line 186
    :goto_4
    if-eqz v14, :cond_ae

    .line 187
    .line 188
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    .line 189
    .line 190
    .line 191
    move-result v14

    .line 192
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 193
    .line 194
    .line 195
    move-result-object v15

    .line 196
    invoke-virtual {v15}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 197
    .line 198
    .line 199
    move-result-object v15

    .line 200
    iget v15, v15, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 201
    .line 202
    if-ne v14, v15, :cond_a

    .line 203
    .line 204
    move v14, v7

    .line 205
    :cond_a
    iput v14, v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 206
    .line 207
    invoke-virtual {v11, v3, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 208
    .line 209
    .line 210
    :goto_5
    iput v1, v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mVirtualDescendantId:I

    .line 211
    .line 212
    invoke-virtual {v11, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsInScreen(Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-virtual {v12, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 220
    .line 221
    .line 222
    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->drawingOrder:Landroidx/collection/MutableIntIntMap;

    .line 223
    .line 224
    iget-object v14, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->labelToActionId:Landroidx/collection/SparseArrayCompat;

    .line 225
    .line 226
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 227
    .line 228
    .line 229
    move-result-object v15

    .line 230
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 231
    .line 232
    .line 233
    move-result-object v15

    .line 234
    const/16 p0, 0x0

    .line 235
    .line 236
    const-string v6, "android.view.View"

    .line 237
    .line 238
    invoke-virtual {v12, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    iget-object v6, v5, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 242
    .line 243
    iget-object v9, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 244
    .line 245
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 246
    .line 247
    invoke-virtual {v9, v7}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    if-eqz v7, :cond_b

    .line 252
    .line 253
    const-string v7, "android.widget.EditText"

    .line 254
    .line 255
    invoke-virtual {v12, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    :cond_b
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 259
    .line 260
    invoke-virtual {v9, v7}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    if-eqz v7, :cond_c

    .line 265
    .line 266
    const-string v7, "android.widget.TextView"

    .line 267
    .line 268
    invoke-virtual {v12, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 269
    .line 270
    .line 271
    :cond_c
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 272
    .line 273
    invoke-virtual {v9, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    if-nez v7, :cond_d

    .line 278
    .line 279
    move-object/from16 v7, p0

    .line 280
    .line 281
    :cond_d
    check-cast v7, Landroidx/compose/ui/semantics/Role;

    .line 282
    .line 283
    if-eqz v7, :cond_12

    .line 284
    .line 285
    iget v10, v7, Landroidx/compose/ui/semantics/Role;->value:I

    .line 286
    .line 287
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->isFake$ui()Z

    .line 288
    .line 289
    .line 290
    move-result v19

    .line 291
    if-nez v19, :cond_e

    .line 292
    .line 293
    move-object/from16 v19, v2

    .line 294
    .line 295
    const/4 v2, 0x4

    .line 296
    invoke-static {v2, v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v17

    .line 300
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    .line 301
    .line 302
    .line 303
    move-result v17

    .line 304
    move-object/from16 v20, v14

    .line 305
    .line 306
    if-eqz v17, :cond_13

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_e
    move-object/from16 v19, v2

    .line 310
    .line 311
    const/4 v2, 0x4

    .line 312
    move-object/from16 v20, v14

    .line 313
    .line 314
    :goto_6
    const-string v14, "AccessibilityNodeInfo.roleDescription"

    .line 315
    .line 316
    if-ne v10, v2, :cond_f

    .line 317
    .line 318
    const v2, 0x7f12092d

    .line 319
    .line 320
    .line 321
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 326
    .line 327
    .line 328
    move-result-object v10

    .line 329
    invoke-virtual {v10, v14, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 330
    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_f
    const/4 v2, 0x2

    .line 334
    if-ne v10, v2, :cond_10

    .line 335
    .line 336
    const v2, 0x7f12092c

    .line 337
    .line 338
    .line 339
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 344
    .line 345
    .line 346
    move-result-object v10

    .line 347
    invoke-virtual {v10, v14, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 348
    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_10
    invoke-static {v10}, Landroidx/compose/ui/platform/TestTagKt;->toLegacyClassName-V4PA4sw(I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    const/4 v14, 0x5

    .line 356
    if-ne v10, v14, :cond_11

    .line 357
    .line 358
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->isUnmergedLeafNode$ui()Z

    .line 359
    .line 360
    .line 361
    move-result v10

    .line 362
    if-nez v10, :cond_11

    .line 363
    .line 364
    iget-boolean v10, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    .line 365
    .line 366
    if-eqz v10, :cond_13

    .line 367
    .line 368
    :cond_11
    invoke-virtual {v12, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 369
    .line 370
    .line 371
    goto :goto_7

    .line 372
    :cond_12
    move-object/from16 v19, v2

    .line 373
    .line 374
    move-object/from16 v20, v14

    .line 375
    .line 376
    :cond_13
    :goto_7
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    invoke-virtual {v11, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 385
    .line 386
    .line 387
    invoke-static {v5}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->isImportantForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    invoke-virtual {v12, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setImportantForAccessibility(Z)V

    .line 392
    .line 393
    .line 394
    const/16 v2, 0x22

    .line 395
    .line 396
    if-lt v13, v2, :cond_14

    .line 397
    .line 398
    invoke-static/range {v19 .. v19}, Landroidx/core/util/TypedValueCompat$Api34Impl;->isRequestFromAccessibilityTool(Landroid/view/accessibility/AccessibilityManager;)Z

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    :goto_8
    const/4 v10, 0x4

    .line 403
    goto :goto_9

    .line 404
    :cond_14
    const/4 v2, 0x1

    .line 405
    goto :goto_8

    .line 406
    :goto_9
    invoke-static {v10, v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 407
    .line 408
    .line 409
    move-result-object v13

    .line 410
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 411
    .line 412
    .line 413
    move-result v10

    .line 414
    move/from16 v19, v2

    .line 415
    .line 416
    move-object/from16 v21, v8

    .line 417
    .line 418
    const/4 v2, 0x0

    .line 419
    const/4 v14, 0x0

    .line 420
    :goto_a
    iget-object v8, v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 421
    .line 422
    if-ge v14, v10, :cond_1c

    .line 423
    .line 424
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v22

    .line 428
    move/from16 v23, v10

    .line 429
    .line 430
    move-object/from16 v10, v22

    .line 431
    .line 432
    check-cast v10, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 433
    .line 434
    move-object/from16 v22, v13

    .line 435
    .line 436
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    .line 437
    .line 438
    .line 439
    move-result-object v13

    .line 440
    move/from16 v24, v14

    .line 441
    .line 442
    iget v14, v10, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 443
    .line 444
    invoke-virtual {v13, v14}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    .line 445
    .line 446
    .line 447
    move-result v13

    .line 448
    if-eqz v13, :cond_1b

    .line 449
    .line 450
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 451
    .line 452
    .line 453
    move-result-object v13

    .line 454
    invoke-virtual {v13}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    .line 455
    .line 456
    .line 457
    move-result-object v13

    .line 458
    iget-object v10, v10, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 459
    .line 460
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v10

    .line 464
    check-cast v10, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 465
    .line 466
    const/4 v13, -0x1

    .line 467
    if-ne v14, v13, :cond_15

    .line 468
    .line 469
    goto :goto_d

    .line 470
    :cond_15
    if-eqz v10, :cond_16

    .line 471
    .line 472
    invoke-virtual {v8, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 473
    .line 474
    .line 475
    goto :goto_c

    .line 476
    :cond_16
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    .line 477
    .line 478
    .line 479
    move-result-object v10

    .line 480
    invoke-virtual {v10, v14}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v10

    .line 484
    check-cast v10, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 485
    .line 486
    if-eqz v10, :cond_18

    .line 487
    .line 488
    iget-object v10, v10, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 489
    .line 490
    if-eqz v10, :cond_18

    .line 491
    .line 492
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 493
    .line 494
    .line 495
    move-result-object v10

    .line 496
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->IsSensitiveData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 497
    .line 498
    iget-object v10, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 499
    .line 500
    invoke-virtual {v10, v13}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v10

    .line 504
    if-nez v10, :cond_17

    .line 505
    .line 506
    move-object/from16 v10, p0

    .line 507
    .line 508
    :cond_17
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 509
    .line 510
    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v10

    .line 514
    goto :goto_b

    .line 515
    :cond_18
    const/4 v10, 0x0

    .line 516
    :goto_b
    if-nez v19, :cond_19

    .line 517
    .line 518
    if-nez v10, :cond_1a

    .line 519
    .line 520
    :cond_19
    invoke-virtual {v8, v3, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 521
    .line 522
    .line 523
    :cond_1a
    :goto_c
    invoke-virtual {v4, v14, v2}, Landroidx/collection/MutableIntIntMap;->set(II)V

    .line 524
    .line 525
    .line 526
    add-int/lit8 v2, v2, 0x1

    .line 527
    .line 528
    :cond_1b
    :goto_d
    add-int/lit8 v14, v24, 0x1

    .line 529
    .line 530
    move-object/from16 v13, v22

    .line 531
    .line 532
    move/from16 v10, v23

    .line 533
    .line 534
    goto :goto_a

    .line 535
    :cond_1c
    iget v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 536
    .line 537
    if-ne v1, v2, :cond_1d

    .line 538
    .line 539
    const/4 v2, 0x1

    .line 540
    invoke-virtual {v8, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 541
    .line 542
    .line 543
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 544
    .line 545
    invoke-virtual {v12, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 546
    .line 547
    .line 548
    goto :goto_e

    .line 549
    :cond_1d
    const/4 v2, 0x0

    .line 550
    invoke-virtual {v8, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 551
    .line 552
    .line 553
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 554
    .line 555
    invoke-virtual {v12, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 556
    .line 557
    .line 558
    :goto_e
    invoke-static {v5}, Landroidx/compose/ui/platform/TestTagKt;->getInfoText(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/text/AnnotatedString;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    if-eqz v2, :cond_38

    .line 563
    .line 564
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 568
    .line 569
    .line 570
    move-result-object v25

    .line 571
    iget-object v10, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->urlSpanCache:Lcom/caverock/androidsvg/SVG;

    .line 572
    .line 573
    new-instance v13, Landroid/text/SpannableString;

    .line 574
    .line 575
    iget-object v14, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 576
    .line 577
    move-object/from16 v19, v3

    .line 578
    .line 579
    iget-object v3, v2, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    .line 580
    .line 581
    invoke-direct {v13, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 582
    .line 583
    .line 584
    move-object/from16 v28, v14

    .line 585
    .line 586
    iget-object v14, v2, Landroidx/compose/ui/text/AnnotatedString;->spanStylesOrNull:Ljava/util/ArrayList;

    .line 587
    .line 588
    move-object/from16 v29, v0

    .line 589
    .line 590
    if-eqz v14, :cond_29

    .line 591
    .line 592
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    move-object/from16 v30, v4

    .line 597
    .line 598
    const/4 v4, 0x0

    .line 599
    :goto_f
    if-ge v4, v0, :cond_28

    .line 600
    .line 601
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v22

    .line 605
    move/from16 v31, v0

    .line 606
    .line 607
    move-object/from16 v0, v22

    .line 608
    .line 609
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 610
    .line 611
    move/from16 v32, v4

    .line 612
    .line 613
    iget-object v4, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 614
    .line 615
    check-cast v4, Landroidx/compose/ui/text/SpanStyle;

    .line 616
    .line 617
    move-object/from16 v33, v14

    .line 618
    .line 619
    iget v14, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 620
    .line 621
    iget v0, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 622
    .line 623
    iget-object v1, v4, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 624
    .line 625
    move-object/from16 v34, v6

    .line 626
    .line 627
    move-object/from16 v35, v7

    .line 628
    .line 629
    invoke-interface {v1}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 630
    .line 631
    .line 632
    move-result-wide v6

    .line 633
    move-object/from16 v36, v8

    .line 634
    .line 635
    move-object v1, v9

    .line 636
    iget-wide v8, v4, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    .line 637
    .line 638
    move-object/from16 v37, v1

    .line 639
    .line 640
    iget-object v1, v4, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 641
    .line 642
    move-object/from16 v38, v1

    .line 643
    .line 644
    iget-object v1, v4, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 645
    .line 646
    move-wide/from16 v23, v8

    .line 647
    .line 648
    iget-object v8, v4, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 649
    .line 650
    iget-object v9, v4, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    .line 651
    .line 652
    move-object/from16 v39, v11

    .line 653
    .line 654
    move-object/from16 v40, v12

    .line 655
    .line 656
    iget-wide v11, v4, Landroidx/compose/ui/text/SpanStyle;->background:J

    .line 657
    .line 658
    move-wide/from16 v41, v11

    .line 659
    .line 660
    iget-object v11, v4, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 661
    .line 662
    iget-object v4, v4, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 663
    .line 664
    move-object/from16 v22, v4

    .line 665
    .line 666
    move-object v12, v5

    .line 667
    invoke-interface/range {v22 .. v22}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 668
    .line 669
    .line 670
    move-result-wide v4

    .line 671
    sget v26, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 672
    .line 673
    invoke-static {v6, v7, v4, v5}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 674
    .line 675
    .line 676
    move-result v4

    .line 677
    const-wide/16 v43, 0x10

    .line 678
    .line 679
    if-eqz v4, :cond_1e

    .line 680
    .line 681
    move-object/from16 v4, v22

    .line 682
    .line 683
    goto :goto_10

    .line 684
    :cond_1e
    cmp-long v4, v6, v43

    .line 685
    .line 686
    if-eqz v4, :cond_1f

    .line 687
    .line 688
    new-instance v4, Landroidx/compose/ui/text/style/ColorStyle;

    .line 689
    .line 690
    invoke-direct {v4, v6, v7}, Landroidx/compose/ui/text/style/ColorStyle;-><init>(J)V

    .line 691
    .line 692
    .line 693
    goto :goto_10

    .line 694
    :cond_1f
    sget-object v4, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    .line 695
    .line 696
    :goto_10
    invoke-interface {v4}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 697
    .line 698
    .line 699
    move-result-wide v4

    .line 700
    invoke-static {v13, v4, v5, v14, v0}, Lkotlin/UnsignedKt;->setColor-RPmYEkk(Landroid/text/Spannable;JII)V

    .line 701
    .line 702
    .line 703
    move/from16 v27, v0

    .line 704
    .line 705
    move-object/from16 v22, v13

    .line 706
    .line 707
    move/from16 v26, v14

    .line 708
    .line 709
    invoke-static/range {v22 .. v27}, Lkotlin/UnsignedKt;->setFontSize-KmRG4DE(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V

    .line 710
    .line 711
    .line 712
    move-object/from16 v0, v22

    .line 713
    .line 714
    move/from16 v4, v26

    .line 715
    .line 716
    move/from16 v5, v27

    .line 717
    .line 718
    if-nez v38, :cond_21

    .line 719
    .line 720
    if-eqz v1, :cond_20

    .line 721
    .line 722
    goto :goto_11

    .line 723
    :cond_20
    const/16 v1, 0x21

    .line 724
    .line 725
    goto :goto_14

    .line 726
    :cond_21
    :goto_11
    if-nez v38, :cond_22

    .line 727
    .line 728
    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    .line 729
    .line 730
    goto :goto_12

    .line 731
    :cond_22
    move-object/from16 v6, v38

    .line 732
    .line 733
    :goto_12
    if-eqz v1, :cond_23

    .line 734
    .line 735
    iget v1, v1, Landroidx/compose/ui/text/font/FontStyle;->value:I

    .line 736
    .line 737
    goto :goto_13

    .line 738
    :cond_23
    const/4 v1, 0x0

    .line 739
    :goto_13
    new-instance v7, Landroid/text/style/StyleSpan;

    .line 740
    .line 741
    invoke-static {v6, v1}, Landroidx/compose/ui/unit/DpKt;->getAndroidTypefaceStyle-FO1MlWM(Landroidx/compose/ui/text/font/FontWeight;I)I

    .line 742
    .line 743
    .line 744
    move-result v1

    .line 745
    invoke-direct {v7, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 746
    .line 747
    .line 748
    const/16 v1, 0x21

    .line 749
    .line 750
    invoke-virtual {v0, v7, v4, v5, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 751
    .line 752
    .line 753
    :goto_14
    if-eqz v11, :cond_25

    .line 754
    .line 755
    iget v6, v11, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 756
    .line 757
    or-int/lit8 v7, v6, 0x1

    .line 758
    .line 759
    if-ne v7, v6, :cond_24

    .line 760
    .line 761
    new-instance v7, Landroid/text/style/UnderlineSpan;

    .line 762
    .line 763
    invoke-direct {v7}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v0, v7, v4, v5, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 767
    .line 768
    .line 769
    :cond_24
    or-int/lit8 v7, v6, 0x2

    .line 770
    .line 771
    if-ne v7, v6, :cond_25

    .line 772
    .line 773
    new-instance v6, Landroid/text/style/StrikethroughSpan;

    .line 774
    .line 775
    invoke-direct {v6}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v0, v6, v4, v5, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 779
    .line 780
    .line 781
    :cond_25
    if-eqz v8, :cond_26

    .line 782
    .line 783
    new-instance v6, Landroid/text/style/ScaleXSpan;

    .line 784
    .line 785
    iget v7, v8, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    .line 786
    .line 787
    invoke-direct {v6, v7}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v0, v6, v4, v5, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 791
    .line 792
    .line 793
    :cond_26
    invoke-static {v0, v9, v4, v5}, Lkotlin/UnsignedKt;->setLocaleList(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V

    .line 794
    .line 795
    .line 796
    cmp-long v6, v41, v43

    .line 797
    .line 798
    if-eqz v6, :cond_27

    .line 799
    .line 800
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    .line 801
    .line 802
    invoke-static/range {v41 .. v42}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 803
    .line 804
    .line 805
    move-result v7

    .line 806
    invoke-direct {v6, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v0, v6, v4, v5, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 810
    .line 811
    .line 812
    :cond_27
    add-int/lit8 v4, v32, 0x1

    .line 813
    .line 814
    move/from16 v1, p1

    .line 815
    .line 816
    move-object v13, v0

    .line 817
    move-object v5, v12

    .line 818
    move/from16 v0, v31

    .line 819
    .line 820
    move-object/from16 v14, v33

    .line 821
    .line 822
    move-object/from16 v6, v34

    .line 823
    .line 824
    move-object/from16 v7, v35

    .line 825
    .line 826
    move-object/from16 v8, v36

    .line 827
    .line 828
    move-object/from16 v9, v37

    .line 829
    .line 830
    move-object/from16 v11, v39

    .line 831
    .line 832
    move-object/from16 v12, v40

    .line 833
    .line 834
    goto/16 :goto_f

    .line 835
    .line 836
    :cond_28
    :goto_15
    move-object/from16 v34, v6

    .line 837
    .line 838
    move-object/from16 v35, v7

    .line 839
    .line 840
    move-object/from16 v36, v8

    .line 841
    .line 842
    move-object/from16 v37, v9

    .line 843
    .line 844
    move-object/from16 v39, v11

    .line 845
    .line 846
    move-object/from16 v40, v12

    .line 847
    .line 848
    move-object v0, v13

    .line 849
    move-object v12, v5

    .line 850
    goto :goto_16

    .line 851
    :cond_29
    move-object/from16 v30, v4

    .line 852
    .line 853
    goto :goto_15

    .line 854
    :goto_16
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    .line 855
    .line 856
    .line 857
    move-result v1

    .line 858
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 859
    .line 860
    if-eqz v3, :cond_2b

    .line 861
    .line 862
    new-instance v5, Ljava/util/ArrayList;

    .line 863
    .line 864
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 865
    .line 866
    .line 867
    move-result v6

    .line 868
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 869
    .line 870
    .line 871
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 872
    .line 873
    .line 874
    move-result v6

    .line 875
    const/4 v7, 0x0

    .line 876
    :goto_17
    if-ge v7, v6, :cond_2c

    .line 877
    .line 878
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v8

    .line 882
    move-object v9, v8

    .line 883
    check-cast v9, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 884
    .line 885
    iget-object v11, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 886
    .line 887
    instance-of v11, v11, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 888
    .line 889
    if-eqz v11, :cond_2a

    .line 890
    .line 891
    iget v11, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 892
    .line 893
    iget v9, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 894
    .line 895
    const/4 v13, 0x0

    .line 896
    invoke-static {v13, v1, v11, v9}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    .line 897
    .line 898
    .line 899
    move-result v9

    .line 900
    if-eqz v9, :cond_2a

    .line 901
    .line 902
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    .line 904
    .line 905
    :cond_2a
    add-int/lit8 v7, v7, 0x1

    .line 906
    .line 907
    goto :goto_17

    .line 908
    :cond_2b
    move-object v5, v4

    .line 909
    :cond_2c
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 910
    .line 911
    .line 912
    move-result v1

    .line 913
    const/4 v6, 0x0

    .line 914
    :goto_18
    if-ge v6, v1, :cond_2e

    .line 915
    .line 916
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    move-result-object v7

    .line 920
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 921
    .line 922
    iget-object v8, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 923
    .line 924
    check-cast v8, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 925
    .line 926
    iget v9, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 927
    .line 928
    iget v7, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 929
    .line 930
    instance-of v11, v8, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 931
    .line 932
    if-eqz v11, :cond_2d

    .line 933
    .line 934
    new-instance v11, Landroid/text/style/TtsSpan$VerbatimBuilder;

    .line 935
    .line 936
    iget-object v8, v8, Landroidx/compose/ui/text/VerbatimTtsAnnotation;->verbatim:Ljava/lang/String;

    .line 937
    .line 938
    invoke-direct {v11, v8}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 939
    .line 940
    .line 941
    invoke-virtual {v11}, Landroid/text/style/TtsSpan$Builder;->build()Landroid/text/style/TtsSpan;

    .line 942
    .line 943
    .line 944
    move-result-object v8

    .line 945
    const/16 v11, 0x21

    .line 946
    .line 947
    invoke-virtual {v0, v8, v9, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 948
    .line 949
    .line 950
    add-int/lit8 v6, v6, 0x1

    .line 951
    .line 952
    goto :goto_18

    .line 953
    :cond_2d
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 954
    .line 955
    .line 956
    :goto_19
    move-object/from16 v6, p0

    .line 957
    .line 958
    goto/16 :goto_50

    .line 959
    .line 960
    :cond_2e
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    .line 961
    .line 962
    .line 963
    move-result v1

    .line 964
    if-eqz v3, :cond_30

    .line 965
    .line 966
    new-instance v4, Ljava/util/ArrayList;

    .line 967
    .line 968
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 969
    .line 970
    .line 971
    move-result v5

    .line 972
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 973
    .line 974
    .line 975
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 976
    .line 977
    .line 978
    move-result v5

    .line 979
    const/4 v6, 0x0

    .line 980
    :goto_1a
    if-ge v6, v5, :cond_30

    .line 981
    .line 982
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 983
    .line 984
    .line 985
    move-result-object v7

    .line 986
    move-object v8, v7

    .line 987
    check-cast v8, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 988
    .line 989
    iget-object v9, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 990
    .line 991
    instance-of v9, v9, Landroidx/compose/ui/text/UrlAnnotation;

    .line 992
    .line 993
    if-eqz v9, :cond_2f

    .line 994
    .line 995
    iget v9, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 996
    .line 997
    iget v8, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 998
    .line 999
    const/4 v13, 0x0

    .line 1000
    invoke-static {v13, v1, v9, v8}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    .line 1001
    .line 1002
    .line 1003
    move-result v8

    .line 1004
    if-eqz v8, :cond_2f

    .line 1005
    .line 1006
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    .line 1008
    .line 1009
    :cond_2f
    add-int/lit8 v6, v6, 0x1

    .line 1010
    .line 1011
    goto :goto_1a

    .line 1012
    :cond_30
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 1013
    .line 1014
    .line 1015
    move-result v1

    .line 1016
    const/4 v3, 0x0

    .line 1017
    :goto_1b
    if-ge v3, v1, :cond_32

    .line 1018
    .line 1019
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v5

    .line 1023
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1024
    .line 1025
    iget-object v6, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 1026
    .line 1027
    check-cast v6, Landroidx/compose/ui/text/UrlAnnotation;

    .line 1028
    .line 1029
    iget v7, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 1030
    .line 1031
    iget v5, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 1032
    .line 1033
    iget-object v8, v10, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 1034
    .line 1035
    check-cast v8, Ljava/util/WeakHashMap;

    .line 1036
    .line 1037
    invoke-virtual {v8, v6}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v9

    .line 1041
    if-nez v9, :cond_31

    .line 1042
    .line 1043
    new-instance v9, Landroid/text/style/URLSpan;

    .line 1044
    .line 1045
    iget-object v11, v6, Landroidx/compose/ui/text/UrlAnnotation;->url:Ljava/lang/String;

    .line 1046
    .line 1047
    invoke-direct {v9, v11}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v8, v6, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    .line 1052
    .line 1053
    :cond_31
    check-cast v9, Landroid/text/style/URLSpan;

    .line 1054
    .line 1055
    const/16 v11, 0x21

    .line 1056
    .line 1057
    invoke-virtual {v0, v9, v7, v5, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1058
    .line 1059
    .line 1060
    add-int/lit8 v3, v3, 0x1

    .line 1061
    .line 1062
    goto :goto_1b

    .line 1063
    :cond_32
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    .line 1064
    .line 1065
    .line 1066
    move-result v1

    .line 1067
    const/4 v13, 0x0

    .line 1068
    invoke-virtual {v2, v13, v1}, Landroidx/compose/ui/text/AnnotatedString;->getLinkAnnotations(II)Ljava/util/List;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v1

    .line 1072
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 1073
    .line 1074
    .line 1075
    move-result v2

    .line 1076
    const/4 v3, 0x0

    .line 1077
    :goto_1c
    if-ge v3, v2, :cond_37

    .line 1078
    .line 1079
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v4

    .line 1083
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1084
    .line 1085
    iget v5, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 1086
    .line 1087
    iget-object v6, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 1088
    .line 1089
    iget v7, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 1090
    .line 1091
    if-eq v5, v7, :cond_36

    .line 1092
    .line 1093
    move-object v8, v6

    .line 1094
    check-cast v8, Landroidx/compose/ui/text/LinkAnnotation;

    .line 1095
    .line 1096
    instance-of v9, v8, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 1097
    .line 1098
    if-eqz v9, :cond_34

    .line 1099
    .line 1100
    move-object v9, v8

    .line 1101
    check-cast v9, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 1102
    .line 1103
    iget-object v9, v9, Landroidx/compose/ui/text/LinkAnnotation$Url;->linkInteractionListener:Landroidx/compose/ui/text/LinkInteractionListener;

    .line 1104
    .line 1105
    if-nez v9, :cond_34

    .line 1106
    .line 1107
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1108
    .line 1109
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1110
    .line 1111
    .line 1112
    check-cast v6, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 1113
    .line 1114
    invoke-direct {v4, v5, v7, v6}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 1115
    .line 1116
    .line 1117
    iget-object v8, v10, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 1118
    .line 1119
    check-cast v8, Ljava/util/WeakHashMap;

    .line 1120
    .line 1121
    invoke-virtual {v8, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v9

    .line 1125
    if-nez v9, :cond_33

    .line 1126
    .line 1127
    new-instance v9, Landroid/text/style/URLSpan;

    .line 1128
    .line 1129
    iget-object v6, v6, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    .line 1130
    .line 1131
    invoke-direct {v9, v6}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v8, v4, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    .line 1136
    .line 1137
    :cond_33
    check-cast v9, Landroid/text/style/URLSpan;

    .line 1138
    .line 1139
    const/16 v11, 0x21

    .line 1140
    .line 1141
    invoke-virtual {v0, v9, v5, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1142
    .line 1143
    .line 1144
    goto :goto_1d

    .line 1145
    :cond_34
    iget-object v6, v10, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 1146
    .line 1147
    check-cast v6, Ljava/util/WeakHashMap;

    .line 1148
    .line 1149
    invoke-virtual {v6, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v9

    .line 1153
    if-nez v9, :cond_35

    .line 1154
    .line 1155
    new-instance v9, Landroidx/compose/ui/text/platform/ComposeClickableSpan;

    .line 1156
    .line 1157
    invoke-direct {v9, v8}, Landroidx/compose/ui/text/platform/ComposeClickableSpan;-><init>(Landroidx/compose/ui/text/LinkAnnotation;)V

    .line 1158
    .line 1159
    .line 1160
    invoke-virtual {v6, v4, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    .line 1162
    .line 1163
    :cond_35
    check-cast v9, Landroid/text/style/ClickableSpan;

    .line 1164
    .line 1165
    const/16 v11, 0x21

    .line 1166
    .line 1167
    invoke-virtual {v0, v9, v5, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1168
    .line 1169
    .line 1170
    goto :goto_1d

    .line 1171
    :cond_36
    const/16 v11, 0x21

    .line 1172
    .line 1173
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    .line 1174
    .line 1175
    goto :goto_1c

    .line 1176
    :cond_37
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->trimToSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v0

    .line 1180
    check-cast v0, Landroid/text/SpannableString;

    .line 1181
    .line 1182
    :goto_1e
    move-object/from16 v1, v40

    .line 1183
    .line 1184
    goto :goto_1f

    .line 1185
    :cond_38
    move-object/from16 v29, v0

    .line 1186
    .line 1187
    move-object/from16 v19, v3

    .line 1188
    .line 1189
    move-object/from16 v30, v4

    .line 1190
    .line 1191
    move-object/from16 v34, v6

    .line 1192
    .line 1193
    move-object/from16 v35, v7

    .line 1194
    .line 1195
    move-object/from16 v36, v8

    .line 1196
    .line 1197
    move-object/from16 v37, v9

    .line 1198
    .line 1199
    move-object/from16 v39, v11

    .line 1200
    .line 1201
    move-object/from16 v40, v12

    .line 1202
    .line 1203
    move-object v12, v5

    .line 1204
    move-object/from16 v0, p0

    .line 1205
    .line 1206
    goto :goto_1e

    .line 1207
    :goto_1f
    invoke-virtual {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    .line 1209
    .line 1210
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Error:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1211
    .line 1212
    move-object/from16 v2, v37

    .line 1213
    .line 1214
    invoke-virtual {v2, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1215
    .line 1216
    .line 1217
    move-result v3

    .line 1218
    if-eqz v3, :cond_3a

    .line 1219
    .line 1220
    move-object/from16 v3, v39

    .line 1221
    .line 1222
    const/4 v4, 0x1

    .line 1223
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v2, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v0

    .line 1230
    if-nez v0, :cond_39

    .line 1231
    .line 1232
    move-object/from16 v0, p0

    .line 1233
    .line 1234
    :cond_39
    check-cast v0, Ljava/lang/CharSequence;

    .line 1235
    .line 1236
    move-object/from16 v4, v36

    .line 1237
    .line 1238
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    .line 1239
    .line 1240
    .line 1241
    goto :goto_20

    .line 1242
    :cond_3a
    move-object/from16 v4, v36

    .line 1243
    .line 1244
    move-object/from16 v3, v39

    .line 1245
    .line 1246
    :goto_20
    invoke-static {v12, v15}, Landroidx/compose/ui/platform/TestTagKt;->getInfoStateDescriptionOrNull(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v0

    .line 1250
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1251
    .line 1252
    const/16 v6, 0x1e

    .line 1253
    .line 1254
    if-lt v5, v6, :cond_3b

    .line 1255
    .line 1256
    invoke-static {v4, v0}, Lorg/wikipedia/util/GeoUtil;->setStateDescription(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 1257
    .line 1258
    .line 1259
    goto :goto_21

    .line 1260
    :cond_3b
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v5

    .line 1264
    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    .line 1265
    .line 1266
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1267
    .line 1268
    .line 1269
    :goto_21
    invoke-static {v12}, Landroidx/compose/ui/platform/TestTagKt;->getInfoIsCheckable(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1270
    .line 1271
    .line 1272
    move-result v0

    .line 1273
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 1274
    .line 1275
    .line 1276
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1277
    .line 1278
    invoke-virtual {v2, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v0

    .line 1282
    if-nez v0, :cond_3c

    .line 1283
    .line 1284
    move-object/from16 v0, p0

    .line 1285
    .line 1286
    :cond_3c
    check-cast v0, Landroidx/compose/ui/state/ToggleableState;

    .line 1287
    .line 1288
    if-eqz v0, :cond_3e

    .line 1289
    .line 1290
    sget-object v5, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    .line 1291
    .line 1292
    if-ne v0, v5, :cond_3d

    .line 1293
    .line 1294
    const/4 v5, 0x1

    .line 1295
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 1296
    .line 1297
    .line 1298
    goto :goto_22

    .line 1299
    :cond_3d
    sget-object v5, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    .line 1300
    .line 1301
    if-ne v0, v5, :cond_3e

    .line 1302
    .line 1303
    const/4 v13, 0x0

    .line 1304
    invoke-virtual {v4, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 1305
    .line 1306
    .line 1307
    :cond_3e
    :goto_22
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1308
    .line 1309
    invoke-virtual {v2, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v0

    .line 1313
    if-nez v0, :cond_3f

    .line 1314
    .line 1315
    move-object/from16 v0, p0

    .line 1316
    .line 1317
    :cond_3f
    check-cast v0, Ljava/lang/Boolean;

    .line 1318
    .line 1319
    if-eqz v0, :cond_42

    .line 1320
    .line 1321
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1322
    .line 1323
    .line 1324
    move-result v0

    .line 1325
    if-nez v35, :cond_40

    .line 1326
    .line 1327
    move-object/from16 v7, v35

    .line 1328
    .line 1329
    const/4 v10, 0x4

    .line 1330
    goto :goto_23

    .line 1331
    :cond_40
    move-object/from16 v7, v35

    .line 1332
    .line 1333
    iget v5, v7, Landroidx/compose/ui/semantics/Role;->value:I

    .line 1334
    .line 1335
    const/4 v10, 0x4

    .line 1336
    if-ne v5, v10, :cond_41

    .line 1337
    .line 1338
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 1339
    .line 1340
    .line 1341
    goto :goto_24

    .line 1342
    :cond_41
    :goto_23
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 1343
    .line 1344
    .line 1345
    :goto_24
    move-object/from16 v0, v34

    .line 1346
    .line 1347
    goto :goto_25

    .line 1348
    :cond_42
    move-object/from16 v7, v35

    .line 1349
    .line 1350
    const/4 v10, 0x4

    .line 1351
    goto :goto_24

    .line 1352
    :goto_25
    iget-boolean v5, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    .line 1353
    .line 1354
    if-eqz v5, :cond_43

    .line 1355
    .line 1356
    invoke-static {v10, v12}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v5

    .line 1360
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 1361
    .line 1362
    .line 1363
    move-result v5

    .line 1364
    if-eqz v5, :cond_46

    .line 1365
    .line 1366
    :cond_43
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1367
    .line 1368
    invoke-virtual {v2, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v5

    .line 1372
    if-nez v5, :cond_44

    .line 1373
    .line 1374
    move-object/from16 v5, p0

    .line 1375
    .line 1376
    :cond_44
    check-cast v5, Ljava/util/List;

    .line 1377
    .line 1378
    if-eqz v5, :cond_45

    .line 1379
    .line 1380
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v5

    .line 1384
    check-cast v5, Ljava/lang/String;

    .line 1385
    .line 1386
    goto :goto_26

    .line 1387
    :cond_45
    move-object/from16 v5, p0

    .line 1388
    .line 1389
    :goto_26
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1390
    .line 1391
    .line 1392
    :cond_46
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->TestTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1393
    .line 1394
    invoke-virtual {v2, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v5

    .line 1398
    if-nez v5, :cond_47

    .line 1399
    .line 1400
    move-object/from16 v5, p0

    .line 1401
    .line 1402
    :cond_47
    check-cast v5, Ljava/lang/String;

    .line 1403
    .line 1404
    if-eqz v5, :cond_4a

    .line 1405
    .line 1406
    move-object v6, v12

    .line 1407
    :goto_27
    if-eqz v6, :cond_49

    .line 1408
    .line 1409
    iget-object v8, v6, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1410
    .line 1411
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->TestTagsAsResourceId:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1412
    .line 1413
    iget-object v10, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 1414
    .line 1415
    invoke-virtual {v10, v9}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1416
    .line 1417
    .line 1418
    move-result v10

    .line 1419
    if-eqz v10, :cond_48

    .line 1420
    .line 1421
    invoke-virtual {v8, v9}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v6

    .line 1425
    check-cast v6, Ljava/lang/Boolean;

    .line 1426
    .line 1427
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1428
    .line 1429
    .line 1430
    move-result v6

    .line 1431
    goto :goto_28

    .line 1432
    :cond_48
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v6

    .line 1436
    goto :goto_27

    .line 1437
    :cond_49
    const/4 v6, 0x0

    .line 1438
    :goto_28
    if-eqz v6, :cond_4a

    .line 1439
    .line 1440
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    .line 1441
    .line 1442
    .line 1443
    :cond_4a
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->Heading:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1444
    .line 1445
    invoke-virtual {v2, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v5

    .line 1449
    if-nez v5, :cond_4b

    .line 1450
    .line 1451
    move-object/from16 v5, p0

    .line 1452
    .line 1453
    :cond_4b
    check-cast v5, Lkotlin/Unit;

    .line 1454
    .line 1455
    if-eqz v5, :cond_4c

    .line 1456
    .line 1457
    const/4 v5, 0x1

    .line 1458
    invoke-virtual {v1, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHeading(Z)V

    .line 1459
    .line 1460
    .line 1461
    :cond_4c
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->TextEntryKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1462
    .line 1463
    invoke-virtual {v2, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v5

    .line 1467
    if-nez v5, :cond_4d

    .line 1468
    .line 1469
    move-object/from16 v5, p0

    .line 1470
    .line 1471
    :cond_4d
    check-cast v5, Lkotlin/Unit;

    .line 1472
    .line 1473
    if-eqz v5, :cond_4e

    .line 1474
    .line 1475
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTextEntryKey()V

    .line 1476
    .line 1477
    .line 1478
    :cond_4e
    move/from16 v5, p1

    .line 1479
    .line 1480
    const/4 v13, -0x1

    .line 1481
    if-eq v5, v13, :cond_50

    .line 1482
    .line 1483
    iget v6, v12, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 1484
    .line 1485
    move-object/from16 v8, v30

    .line 1486
    .line 1487
    invoke-virtual {v8, v6}, Landroidx/collection/MutableIntIntMap;->getOrDefault(I)I

    .line 1488
    .line 1489
    .line 1490
    move-result v6

    .line 1491
    if-eq v6, v13, :cond_4f

    .line 1492
    .line 1493
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setDrawingOrder(I)V

    .line 1494
    .line 1495
    .line 1496
    goto :goto_29

    .line 1497
    :cond_4f
    const-string v6, "AccessibilityDelegate"

    .line 1498
    .line 1499
    const-string v8, "Drawing order is not available, was AccessibilityNodeInfo requested for a child node before its parent?"

    .line 1500
    .line 1501
    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    .line 1503
    .line 1504
    :cond_50
    :goto_29
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1505
    .line 1506
    invoke-virtual {v2, v6}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1507
    .line 1508
    .line 1509
    move-result v6

    .line 1510
    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 1511
    .line 1512
    .line 1513
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->IsEditable:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1514
    .line 1515
    invoke-virtual {v2, v6}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v6

    .line 1519
    if-nez v6, :cond_51

    .line 1520
    .line 1521
    move-object/from16 v6, p0

    .line 1522
    .line 1523
    :cond_51
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1524
    .line 1525
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1526
    .line 1527
    .line 1528
    move-result v6

    .line 1529
    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 1530
    .line 1531
    .line 1532
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->MaxTextLength:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1533
    .line 1534
    invoke-virtual {v2, v6}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v6

    .line 1538
    if-nez v6, :cond_52

    .line 1539
    .line 1540
    move-object/from16 v6, p0

    .line 1541
    .line 1542
    :cond_52
    check-cast v6, Ljava/lang/Integer;

    .line 1543
    .line 1544
    if-eqz v6, :cond_53

    .line 1545
    .line 1546
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1547
    .line 1548
    .line 1549
    move-result v6

    .line 1550
    goto :goto_2a

    .line 1551
    :cond_53
    const/4 v6, -0x1

    .line 1552
    :goto_2a
    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    .line 1553
    .line 1554
    .line 1555
    invoke-static {v12}, Landroidx/compose/ui/platform/TestTagKt;->enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1556
    .line 1557
    .line 1558
    move-result v6

    .line 1559
    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 1560
    .line 1561
    .line 1562
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1563
    .line 1564
    invoke-virtual {v2, v6}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1565
    .line 1566
    .line 1567
    move-result v9

    .line 1568
    invoke-virtual {v4, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    .line 1572
    .line 1573
    .line 1574
    move-result v9

    .line 1575
    if-eqz v9, :cond_55

    .line 1576
    .line 1577
    invoke-virtual {v0, v6}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v9

    .line 1581
    check-cast v9, Ljava/lang/Boolean;

    .line 1582
    .line 1583
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1584
    .line 1585
    .line 1586
    move-result v9

    .line 1587
    invoke-virtual {v4, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 1588
    .line 1589
    .line 1590
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    .line 1591
    .line 1592
    .line 1593
    move-result v9

    .line 1594
    if-eqz v9, :cond_54

    .line 1595
    .line 1596
    const/4 v9, 0x2

    .line 1597
    invoke-virtual {v1, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1598
    .line 1599
    .line 1600
    move-object/from16 v9, v29

    .line 1601
    .line 1602
    iput v5, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    .line 1603
    .line 1604
    :goto_2b
    const/4 v10, 0x1

    .line 1605
    goto :goto_2c

    .line 1606
    :cond_54
    move-object/from16 v9, v29

    .line 1607
    .line 1608
    const/4 v10, 0x1

    .line 1609
    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1610
    .line 1611
    .line 1612
    goto :goto_2c

    .line 1613
    :cond_55
    move-object/from16 v9, v29

    .line 1614
    .line 1615
    goto :goto_2b

    .line 1616
    :goto_2c
    invoke-static {v12}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->isHidden(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1617
    .line 1618
    .line 1619
    move-result v11

    .line 1620
    xor-int/2addr v11, v10

    .line 1621
    invoke-virtual {v4, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 1622
    .line 1623
    .line 1624
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->isFake$ui()Z

    .line 1625
    .line 1626
    .line 1627
    move-result v10

    .line 1628
    if-eqz v10, :cond_56

    .line 1629
    .line 1630
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v10

    .line 1634
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1635
    .line 1636
    .line 1637
    goto :goto_2d

    .line 1638
    :cond_56
    move-object v10, v12

    .line 1639
    :goto_2d
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getTouchBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v10

    .line 1643
    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->isEmpty()Z

    .line 1644
    .line 1645
    .line 1646
    move-result v10

    .line 1647
    if-eqz v10, :cond_57

    .line 1648
    .line 1649
    const/4 v13, 0x0

    .line 1650
    invoke-virtual {v4, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 1651
    .line 1652
    .line 1653
    :cond_57
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->LiveRegion:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1654
    .line 1655
    invoke-virtual {v2, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v10

    .line 1659
    if-nez v10, :cond_58

    .line 1660
    .line 1661
    move-object/from16 v10, p0

    .line 1662
    .line 1663
    :cond_58
    check-cast v10, Landroidx/compose/ui/semantics/LiveRegionMode;

    .line 1664
    .line 1665
    if-eqz v10, :cond_5b

    .line 1666
    .line 1667
    iget v10, v10, Landroidx/compose/ui/semantics/LiveRegionMode;->value:I

    .line 1668
    .line 1669
    if-nez v10, :cond_5a

    .line 1670
    .line 1671
    :cond_59
    const/4 v10, 0x1

    .line 1672
    goto :goto_2e

    .line 1673
    :cond_5a
    const/4 v11, 0x1

    .line 1674
    if-ne v10, v11, :cond_59

    .line 1675
    .line 1676
    const/4 v10, 0x2

    .line 1677
    :goto_2e
    invoke-virtual {v3, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    .line 1678
    .line 1679
    .line 1680
    :cond_5b
    const/4 v13, 0x0

    .line 1681
    invoke-virtual {v4, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1682
    .line 1683
    .line 1684
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsActions;->OnClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1685
    .line 1686
    invoke-virtual {v2, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v10

    .line 1690
    if-nez v10, :cond_5c

    .line 1691
    .line 1692
    move-object/from16 v10, p0

    .line 1693
    .line 1694
    :cond_5c
    check-cast v10, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1695
    .line 1696
    if-eqz v10, :cond_64

    .line 1697
    .line 1698
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1699
    .line 1700
    invoke-virtual {v2, v14}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v14

    .line 1704
    if-nez v14, :cond_5d

    .line 1705
    .line 1706
    move-object/from16 v14, p0

    .line 1707
    .line 1708
    :cond_5d
    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1709
    .line 1710
    .line 1711
    move-result v14

    .line 1712
    if-nez v7, :cond_5e

    .line 1713
    .line 1714
    goto :goto_2f

    .line 1715
    :cond_5e
    iget v11, v7, Landroidx/compose/ui/semantics/Role;->value:I

    .line 1716
    .line 1717
    const/4 v13, 0x4

    .line 1718
    if-ne v11, v13, :cond_5f

    .line 1719
    .line 1720
    goto :goto_30

    .line 1721
    :cond_5f
    :goto_2f
    if-nez v7, :cond_60

    .line 1722
    .line 1723
    goto :goto_31

    .line 1724
    :cond_60
    iget v7, v7, Landroidx/compose/ui/semantics/Role;->value:I

    .line 1725
    .line 1726
    const/4 v11, 0x3

    .line 1727
    if-ne v7, v11, :cond_61

    .line 1728
    .line 1729
    :goto_30
    const/4 v7, 0x1

    .line 1730
    goto :goto_32

    .line 1731
    :cond_61
    :goto_31
    const/4 v7, 0x0

    .line 1732
    :goto_32
    if-eqz v7, :cond_63

    .line 1733
    .line 1734
    if-eqz v7, :cond_62

    .line 1735
    .line 1736
    if-nez v14, :cond_62

    .line 1737
    .line 1738
    goto :goto_33

    .line 1739
    :cond_62
    const/4 v7, 0x0

    .line 1740
    goto :goto_34

    .line 1741
    :cond_63
    :goto_33
    const/4 v7, 0x1

    .line 1742
    :goto_34
    invoke-virtual {v4, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1743
    .line 1744
    .line 1745
    invoke-static {v12}, Landroidx/compose/ui/platform/TestTagKt;->enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1746
    .line 1747
    .line 1748
    move-result v7

    .line 1749
    if-eqz v7, :cond_64

    .line 1750
    .line 1751
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    .line 1752
    .line 1753
    .line 1754
    move-result v7

    .line 1755
    if-eqz v7, :cond_64

    .line 1756
    .line 1757
    new-instance v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1758
    .line 1759
    iget-object v10, v10, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1760
    .line 1761
    const/16 v11, 0x10

    .line 1762
    .line 1763
    invoke-direct {v7, v11, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1764
    .line 1765
    .line 1766
    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1767
    .line 1768
    .line 1769
    :cond_64
    const/4 v13, 0x0

    .line 1770
    invoke-virtual {v4, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 1771
    .line 1772
    .line 1773
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->OnLongClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1774
    .line 1775
    invoke-virtual {v2, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v7

    .line 1779
    if-nez v7, :cond_65

    .line 1780
    .line 1781
    move-object/from16 v7, p0

    .line 1782
    .line 1783
    :cond_65
    check-cast v7, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1784
    .line 1785
    if-eqz v7, :cond_66

    .line 1786
    .line 1787
    const/4 v10, 0x1

    .line 1788
    invoke-virtual {v4, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 1789
    .line 1790
    .line 1791
    invoke-static {v12}, Landroidx/compose/ui/platform/TestTagKt;->enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1792
    .line 1793
    .line 1794
    move-result v10

    .line 1795
    if-eqz v10, :cond_66

    .line 1796
    .line 1797
    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1798
    .line 1799
    const/16 v11, 0x20

    .line 1800
    .line 1801
    iget-object v7, v7, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1802
    .line 1803
    invoke-direct {v10, v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1804
    .line 1805
    .line 1806
    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1807
    .line 1808
    .line 1809
    :cond_66
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->CopyText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1810
    .line 1811
    invoke-static {v0, v7}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v7

    .line 1815
    check-cast v7, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1816
    .line 1817
    if-eqz v7, :cond_67

    .line 1818
    .line 1819
    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1820
    .line 1821
    const/16 v11, 0x4000

    .line 1822
    .line 1823
    iget-object v7, v7, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1824
    .line 1825
    invoke-direct {v10, v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1826
    .line 1827
    .line 1828
    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1829
    .line 1830
    .line 1831
    :cond_67
    invoke-static {v12}, Landroidx/compose/ui/platform/TestTagKt;->enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1832
    .line 1833
    .line 1834
    move-result v7

    .line 1835
    if-eqz v7, :cond_6c

    .line 1836
    .line 1837
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->SetText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1838
    .line 1839
    invoke-static {v0, v7}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1840
    .line 1841
    .line 1842
    move-result-object v7

    .line 1843
    check-cast v7, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1844
    .line 1845
    if-eqz v7, :cond_68

    .line 1846
    .line 1847
    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1848
    .line 1849
    const/high16 v11, 0x200000

    .line 1850
    .line 1851
    iget-object v7, v7, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1852
    .line 1853
    invoke-direct {v10, v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1854
    .line 1855
    .line 1856
    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1857
    .line 1858
    .line 1859
    :cond_68
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->OnImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1860
    .line 1861
    invoke-static {v0, v7}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1862
    .line 1863
    .line 1864
    move-result-object v7

    .line 1865
    check-cast v7, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1866
    .line 1867
    if-eqz v7, :cond_69

    .line 1868
    .line 1869
    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1870
    .line 1871
    const v11, 0x1020054

    .line 1872
    .line 1873
    .line 1874
    iget-object v7, v7, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1875
    .line 1876
    invoke-direct {v10, v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1877
    .line 1878
    .line 1879
    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1880
    .line 1881
    .line 1882
    :cond_69
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->CutText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1883
    .line 1884
    invoke-static {v0, v7}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1885
    .line 1886
    .line 1887
    move-result-object v7

    .line 1888
    check-cast v7, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1889
    .line 1890
    if-eqz v7, :cond_6a

    .line 1891
    .line 1892
    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1893
    .line 1894
    const/high16 v11, 0x10000

    .line 1895
    .line 1896
    iget-object v7, v7, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1897
    .line 1898
    invoke-direct {v10, v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1899
    .line 1900
    .line 1901
    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1902
    .line 1903
    .line 1904
    :cond_6a
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->PasteText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1905
    .line 1906
    invoke-static {v0, v7}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1907
    .line 1908
    .line 1909
    move-result-object v7

    .line 1910
    check-cast v7, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1911
    .line 1912
    if-eqz v7, :cond_6c

    .line 1913
    .line 1914
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    .line 1915
    .line 1916
    .line 1917
    move-result v10

    .line 1918
    if-eqz v10, :cond_6c

    .line 1919
    .line 1920
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/platform/AndroidComposeView;->getClipboardManager()Landroidx/compose/ui/platform/AndroidClipboardManager;

    .line 1921
    .line 1922
    .line 1923
    move-result-object v10

    .line 1924
    invoke-virtual {v10}, Landroidx/compose/ui/platform/AndroidClipboardManager;->getClipboardManager()Landroid/content/ClipboardManager;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v10

    .line 1928
    invoke-virtual {v10}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    .line 1929
    .line 1930
    .line 1931
    move-result-object v10

    .line 1932
    if-eqz v10, :cond_6b

    .line 1933
    .line 1934
    const-string v11, "text/*"

    .line 1935
    .line 1936
    invoke-virtual {v10, v11}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 1937
    .line 1938
    .line 1939
    move-result v10

    .line 1940
    goto :goto_35

    .line 1941
    :cond_6b
    const/4 v10, 0x0

    .line 1942
    :goto_35
    if-eqz v10, :cond_6c

    .line 1943
    .line 1944
    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1945
    .line 1946
    const v11, 0x8000

    .line 1947
    .line 1948
    .line 1949
    iget-object v7, v7, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1950
    .line 1951
    invoke-direct {v10, v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1952
    .line 1953
    .line 1954
    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1955
    .line 1956
    .line 1957
    :cond_6c
    invoke-static {v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 1958
    .line 1959
    .line 1960
    move-result-object v7

    .line 1961
    if-eqz v7, :cond_76

    .line 1962
    .line 1963
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 1964
    .line 1965
    .line 1966
    move-result v7

    .line 1967
    if-nez v7, :cond_6d

    .line 1968
    .line 1969
    goto/16 :goto_3a

    .line 1970
    .line 1971
    :cond_6d
    invoke-virtual {v9, v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionStart(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 1972
    .line 1973
    .line 1974
    move-result v7

    .line 1975
    invoke-virtual {v9, v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionEnd(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 1976
    .line 1977
    .line 1978
    move-result v10

    .line 1979
    invoke-virtual {v3, v7, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    .line 1980
    .line 1981
    .line 1982
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->SetSelection:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1983
    .line 1984
    invoke-static {v0, v7}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v7

    .line 1988
    check-cast v7, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1989
    .line 1990
    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1991
    .line 1992
    if-eqz v7, :cond_6e

    .line 1993
    .line 1994
    iget-object v7, v7, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 1995
    .line 1996
    goto :goto_36

    .line 1997
    :cond_6e
    move-object/from16 v7, p0

    .line 1998
    .line 1999
    :goto_36
    const/high16 v11, 0x20000

    .line 2000
    .line 2001
    invoke-direct {v10, v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 2002
    .line 2003
    .line 2004
    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2005
    .line 2006
    .line 2007
    const/16 v7, 0x100

    .line 2008
    .line 2009
    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2010
    .line 2011
    .line 2012
    const/16 v7, 0x200

    .line 2013
    .line 2014
    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2015
    .line 2016
    .line 2017
    const/16 v7, 0xb

    .line 2018
    .line 2019
    invoke-virtual {v4, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 2020
    .line 2021
    .line 2022
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2023
    .line 2024
    invoke-static {v0, v7}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2025
    .line 2026
    .line 2027
    move-result-object v7

    .line 2028
    check-cast v7, Ljava/util/List;

    .line 2029
    .line 2030
    if-eqz v7, :cond_6f

    .line 2031
    .line 2032
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 2033
    .line 2034
    .line 2035
    move-result v7

    .line 2036
    if-eqz v7, :cond_76

    .line 2037
    .line 2038
    :cond_6f
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2039
    .line 2040
    invoke-virtual {v2, v7}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2041
    .line 2042
    .line 2043
    move-result v7

    .line 2044
    if-eqz v7, :cond_76

    .line 2045
    .line 2046
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2047
    .line 2048
    invoke-virtual {v2, v7}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2049
    .line 2050
    .line 2051
    move-result v7

    .line 2052
    if-eqz v7, :cond_70

    .line 2053
    .line 2054
    invoke-static {v0, v6}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2055
    .line 2056
    .line 2057
    move-result-object v7

    .line 2058
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2059
    .line 2060
    .line 2061
    move-result v7

    .line 2062
    if-nez v7, :cond_70

    .line 2063
    .line 2064
    goto :goto_3a

    .line 2065
    :cond_70
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 2066
    .line 2067
    .line 2068
    move-result-object v7

    .line 2069
    :goto_37
    if-eqz v7, :cond_72

    .line 2070
    .line 2071
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2072
    .line 2073
    .line 2074
    move-result-object v10

    .line 2075
    if-eqz v10, :cond_71

    .line 2076
    .line 2077
    iget-boolean v11, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    .line 2078
    .line 2079
    const/4 v13, 0x1

    .line 2080
    if-ne v11, v13, :cond_71

    .line 2081
    .line 2082
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2083
    .line 2084
    iget-object v10, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2085
    .line 2086
    invoke-virtual {v10, v11}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2087
    .line 2088
    .line 2089
    move-result v10

    .line 2090
    if-eqz v10, :cond_71

    .line 2091
    .line 2092
    goto :goto_38

    .line 2093
    :cond_71
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 2094
    .line 2095
    .line 2096
    move-result-object v7

    .line 2097
    goto :goto_37

    .line 2098
    :cond_72
    move-object/from16 v7, p0

    .line 2099
    .line 2100
    :goto_38
    if-eqz v7, :cond_75

    .line 2101
    .line 2102
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2103
    .line 2104
    .line 2105
    move-result-object v7

    .line 2106
    if-eqz v7, :cond_74

    .line 2107
    .line 2108
    iget-object v7, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2109
    .line 2110
    invoke-virtual {v7, v6}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    .line 2112
    .line 2113
    move-result-object v6

    .line 2114
    if-nez v6, :cond_73

    .line 2115
    .line 2116
    move-object/from16 v6, p0

    .line 2117
    .line 2118
    :cond_73
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2119
    .line 2120
    .line 2121
    move-result v6

    .line 2122
    goto :goto_39

    .line 2123
    :cond_74
    const/4 v6, 0x0

    .line 2124
    :goto_39
    if-nez v6, :cond_75

    .line 2125
    .line 2126
    goto :goto_3a

    .line 2127
    :cond_75
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    .line 2128
    .line 2129
    .line 2130
    move-result v6

    .line 2131
    or-int/lit8 v6, v6, 0x14

    .line 2132
    .line 2133
    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 2134
    .line 2135
    .line 2136
    :cond_76
    :goto_3a
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2137
    .line 2138
    const/16 v7, 0x1a

    .line 2139
    .line 2140
    if-lt v6, v7, :cond_7b

    .line 2141
    .line 2142
    new-instance v6, Ljava/util/ArrayList;

    .line 2143
    .line 2144
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2145
    .line 2146
    .line 2147
    const-string v7, "androidx.compose.ui.semantics.id"

    .line 2148
    .line 2149
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2150
    .line 2151
    .line 2152
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    .line 2153
    .line 2154
    .line 2155
    move-result-object v7

    .line 2156
    if-eqz v7, :cond_78

    .line 2157
    .line 2158
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 2159
    .line 2160
    .line 2161
    move-result v7

    .line 2162
    if-nez v7, :cond_77

    .line 2163
    .line 2164
    goto :goto_3b

    .line 2165
    :cond_77
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2166
    .line 2167
    invoke-virtual {v2, v7}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2168
    .line 2169
    .line 2170
    move-result v7

    .line 2171
    if-eqz v7, :cond_78

    .line 2172
    .line 2173
    const-string v7, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    .line 2174
    .line 2175
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2176
    .line 2177
    .line 2178
    :cond_78
    :goto_3b
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->TestTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2179
    .line 2180
    invoke-virtual {v2, v7}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2181
    .line 2182
    .line 2183
    move-result v7

    .line 2184
    if-eqz v7, :cond_79

    .line 2185
    .line 2186
    const-string v7, "androidx.compose.ui.semantics.testTag"

    .line 2187
    .line 2188
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2189
    .line 2190
    .line 2191
    :cond_79
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->Shape:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2192
    .line 2193
    invoke-virtual {v2, v7}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2194
    .line 2195
    .line 2196
    move-result v7

    .line 2197
    if-eqz v7, :cond_7a

    .line 2198
    .line 2199
    const-string v7, "androidx.compose.ui.semantics.shapeType"

    .line 2200
    .line 2201
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2202
    .line 2203
    .line 2204
    const-string v7, "androidx.compose.ui.semantics.shapeRect"

    .line 2205
    .line 2206
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2207
    .line 2208
    .line 2209
    const-string v7, "androidx.compose.ui.semantics.shapeCorners"

    .line 2210
    .line 2211
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2212
    .line 2213
    .line 2214
    const-string v7, "androidx.compose.ui.semantics.shapeRegion"

    .line 2215
    .line 2216
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2217
    .line 2218
    .line 2219
    :cond_7a
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAvailableExtraData(Ljava/util/ArrayList;)V

    .line 2220
    .line 2221
    .line 2222
    :cond_7b
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2223
    .line 2224
    invoke-static {v0, v6}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2225
    .line 2226
    .line 2227
    move-result-object v6

    .line 2228
    check-cast v6, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 2229
    .line 2230
    const/4 v7, 0x0

    .line 2231
    if-eqz v6, :cond_81

    .line 2232
    .line 2233
    iget v8, v6, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->current:F

    .line 2234
    .line 2235
    iget-object v10, v6, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->range:Lkotlin/ranges/ClosedFloatRange;

    .line 2236
    .line 2237
    iget v10, v10, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    .line 2238
    .line 2239
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2240
    .line 2241
    invoke-virtual {v2, v11}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2242
    .line 2243
    .line 2244
    move-result v13

    .line 2245
    if-eqz v13, :cond_7c

    .line 2246
    .line 2247
    const-string v13, "android.widget.SeekBar"

    .line 2248
    .line 2249
    invoke-virtual {v1, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2250
    .line 2251
    .line 2252
    goto :goto_3c

    .line 2253
    :cond_7c
    const-string v13, "android.widget.ProgressBar"

    .line 2254
    .line 2255
    invoke-virtual {v1, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2256
    .line 2257
    .line 2258
    :goto_3c
    sget-object v13, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->Indeterminate:Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 2259
    .line 2260
    if-eq v6, v13, :cond_7d

    .line 2261
    .line 2262
    const/4 v13, 0x1

    .line 2263
    invoke-static {v13, v7, v10, v8}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 2264
    .line 2265
    .line 2266
    move-result-object v6

    .line 2267
    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 2268
    .line 2269
    .line 2270
    :cond_7d
    invoke-virtual {v2, v11}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2271
    .line 2272
    .line 2273
    move-result v3

    .line 2274
    if-eqz v3, :cond_81

    .line 2275
    .line 2276
    invoke-static {v12}, Landroidx/compose/ui/platform/TestTagKt;->enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2277
    .line 2278
    .line 2279
    move-result v3

    .line 2280
    if-eqz v3, :cond_81

    .line 2281
    .line 2282
    cmpg-float v3, v10, v7

    .line 2283
    .line 2284
    if-gez v3, :cond_7e

    .line 2285
    .line 2286
    move v3, v7

    .line 2287
    goto :goto_3d

    .line 2288
    :cond_7e
    move v3, v10

    .line 2289
    :goto_3d
    cmpg-float v3, v8, v3

    .line 2290
    .line 2291
    if-gez v3, :cond_7f

    .line 2292
    .line 2293
    sget-object v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2294
    .line 2295
    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2296
    .line 2297
    .line 2298
    :cond_7f
    cmpl-float v3, v7, v10

    .line 2299
    .line 2300
    if-lez v3, :cond_80

    .line 2301
    .line 2302
    goto :goto_3e

    .line 2303
    :cond_80
    move v10, v7

    .line 2304
    :goto_3e
    cmpl-float v3, v8, v10

    .line 2305
    .line 2306
    if-lez v3, :cond_81

    .line 2307
    .line 2308
    sget-object v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2309
    .line 2310
    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2311
    .line 2312
    .line 2313
    :cond_81
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2314
    .line 2315
    const/16 v6, 0x18

    .line 2316
    .line 2317
    if-lt v3, v6, :cond_82

    .line 2318
    .line 2319
    invoke-static {v12}, Landroidx/compose/ui/platform/TestTagKt;->enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2320
    .line 2321
    .line 2322
    move-result v6

    .line 2323
    if-eqz v6, :cond_82

    .line 2324
    .line 2325
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2326
    .line 2327
    invoke-static {v0, v6}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2328
    .line 2329
    .line 2330
    move-result-object v6

    .line 2331
    check-cast v6, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2332
    .line 2333
    if-eqz v6, :cond_82

    .line 2334
    .line 2335
    new-instance v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2336
    .line 2337
    const v10, 0x102003d

    .line 2338
    .line 2339
    .line 2340
    iget-object v6, v6, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 2341
    .line 2342
    invoke-direct {v8, v10, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 2343
    .line 2344
    .line 2345
    invoke-virtual {v1, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2346
    .line 2347
    .line 2348
    :cond_82
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2349
    .line 2350
    .line 2351
    move-result-object v6

    .line 2352
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2353
    .line 2354
    iget-object v6, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2355
    .line 2356
    invoke-virtual {v6, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2357
    .line 2358
    .line 2359
    move-result-object v6

    .line 2360
    if-nez v6, :cond_83

    .line 2361
    .line 2362
    move-object/from16 v6, p0

    .line 2363
    .line 2364
    :cond_83
    check-cast v6, Landroidx/compose/ui/semantics/CollectionInfo;

    .line 2365
    .line 2366
    if-eqz v6, :cond_84

    .line 2367
    .line 2368
    iget v8, v6, Landroidx/compose/ui/semantics/CollectionInfo;->rowCount:I

    .line 2369
    .line 2370
    iget v6, v6, Landroidx/compose/ui/semantics/CollectionInfo;->columnCount:I

    .line 2371
    .line 2372
    const/4 v13, 0x0

    .line 2373
    invoke-static {v8, v6, v13}, Lcoil3/Extras$Key;->obtain(III)Lcoil3/Extras$Key;

    .line 2374
    .line 2375
    .line 2376
    move-result-object v6

    .line 2377
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Lcoil3/Extras$Key;)V

    .line 2378
    .line 2379
    .line 2380
    move/from16 v17, v7

    .line 2381
    .line 2382
    goto :goto_43

    .line 2383
    :cond_84
    new-instance v6, Ljava/util/ArrayList;

    .line 2384
    .line 2385
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2386
    .line 2387
    .line 2388
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2389
    .line 2390
    .line 2391
    move-result-object v8

    .line 2392
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2393
    .line 2394
    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2395
    .line 2396
    invoke-virtual {v8, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2397
    .line 2398
    .line 2399
    move-result-object v8

    .line 2400
    if-nez v8, :cond_85

    .line 2401
    .line 2402
    move-object/from16 v8, p0

    .line 2403
    .line 2404
    :cond_85
    if-eqz v8, :cond_87

    .line 2405
    .line 2406
    const/4 v10, 0x4

    .line 2407
    invoke-static {v10, v12}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 2408
    .line 2409
    .line 2410
    move-result-object v8

    .line 2411
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 2412
    .line 2413
    .line 2414
    move-result v10

    .line 2415
    const/4 v11, 0x0

    .line 2416
    :goto_3f
    if-ge v11, v10, :cond_87

    .line 2417
    .line 2418
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2419
    .line 2420
    .line 2421
    move-result-object v13

    .line 2422
    check-cast v13, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 2423
    .line 2424
    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2425
    .line 2426
    .line 2427
    move-result-object v14

    .line 2428
    move/from16 v17, v7

    .line 2429
    .line 2430
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2431
    .line 2432
    iget-object v14, v14, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2433
    .line 2434
    invoke-virtual {v14, v7}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2435
    .line 2436
    .line 2437
    move-result v7

    .line 2438
    if-eqz v7, :cond_86

    .line 2439
    .line 2440
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2441
    .line 2442
    .line 2443
    :cond_86
    add-int/lit8 v11, v11, 0x1

    .line 2444
    .line 2445
    move/from16 v7, v17

    .line 2446
    .line 2447
    goto :goto_3f

    .line 2448
    :cond_87
    move/from16 v17, v7

    .line 2449
    .line 2450
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2451
    .line 2452
    .line 2453
    move-result v7

    .line 2454
    if-nez v7, :cond_8a

    .line 2455
    .line 2456
    invoke-static {v6}, Lkotlin/ExceptionsKt;->calculateIfHorizontallyStacked(Ljava/util/ArrayList;)Z

    .line 2457
    .line 2458
    .line 2459
    move-result v7

    .line 2460
    if-eqz v7, :cond_88

    .line 2461
    .line 2462
    const/4 v8, 0x1

    .line 2463
    goto :goto_40

    .line 2464
    :cond_88
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 2465
    .line 2466
    .line 2467
    move-result v8

    .line 2468
    :goto_40
    if-eqz v7, :cond_89

    .line 2469
    .line 2470
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 2471
    .line 2472
    .line 2473
    move-result v6

    .line 2474
    :goto_41
    const/4 v13, 0x0

    .line 2475
    goto :goto_42

    .line 2476
    :cond_89
    const/4 v6, 0x1

    .line 2477
    goto :goto_41

    .line 2478
    :goto_42
    invoke-static {v8, v6, v13}, Lcoil3/Extras$Key;->obtain(III)Lcoil3/Extras$Key;

    .line 2479
    .line 2480
    .line 2481
    move-result-object v6

    .line 2482
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Lcoil3/Extras$Key;)V

    .line 2483
    .line 2484
    .line 2485
    :cond_8a
    :goto_43
    invoke-static {v12, v1}, Lkotlin/ExceptionsKt;->setCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2486
    .line 2487
    .line 2488
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2489
    .line 2490
    invoke-static {v0, v6}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2491
    .line 2492
    .line 2493
    move-result-object v6

    .line 2494
    check-cast v6, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 2495
    .line 2496
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2497
    .line 2498
    invoke-static {v0, v7}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2499
    .line 2500
    .line 2501
    move-result-object v7

    .line 2502
    check-cast v7, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2503
    .line 2504
    if-eqz v6, :cond_93

    .line 2505
    .line 2506
    if-eqz v7, :cond_93

    .line 2507
    .line 2508
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2509
    .line 2510
    .line 2511
    move-result-object v8

    .line 2512
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2513
    .line 2514
    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2515
    .line 2516
    invoke-virtual {v8, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2517
    .line 2518
    .line 2519
    move-result-object v8

    .line 2520
    if-nez v8, :cond_8b

    .line 2521
    .line 2522
    move-object/from16 v8, p0

    .line 2523
    .line 2524
    :cond_8b
    if-nez v8, :cond_8e

    .line 2525
    .line 2526
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2527
    .line 2528
    .line 2529
    move-result-object v8

    .line 2530
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2531
    .line 2532
    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2533
    .line 2534
    invoke-virtual {v8, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2535
    .line 2536
    .line 2537
    move-result-object v8

    .line 2538
    if-nez v8, :cond_8c

    .line 2539
    .line 2540
    move-object/from16 v8, p0

    .line 2541
    .line 2542
    :cond_8c
    if-eqz v8, :cond_8d

    .line 2543
    .line 2544
    goto :goto_44

    .line 2545
    :cond_8d
    const-string v8, "android.widget.HorizontalScrollView"

    .line 2546
    .line 2547
    invoke-virtual {v1, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2548
    .line 2549
    .line 2550
    :cond_8e
    :goto_44
    iget-object v8, v6, Landroidx/compose/ui/semantics/ScrollAxisRange;->maxValue:Lkotlin/jvm/functions/Function0;

    .line 2551
    .line 2552
    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2553
    .line 2554
    .line 2555
    move-result-object v8

    .line 2556
    check-cast v8, Ljava/lang/Number;

    .line 2557
    .line 2558
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 2559
    .line 2560
    .line 2561
    move-result v8

    .line 2562
    cmpl-float v8, v8, v17

    .line 2563
    .line 2564
    if-lez v8, :cond_8f

    .line 2565
    .line 2566
    const/4 v10, 0x1

    .line 2567
    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2568
    .line 2569
    .line 2570
    :cond_8f
    invoke-static {v12}, Landroidx/compose/ui/platform/TestTagKt;->enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2571
    .line 2572
    .line 2573
    move-result v8

    .line 2574
    if-eqz v8, :cond_93

    .line 2575
    .line 2576
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollForward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    .line 2577
    .line 2578
    .line 2579
    move-result v8

    .line 2580
    if-eqz v8, :cond_91

    .line 2581
    .line 2582
    sget-object v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2583
    .line 2584
    invoke-virtual {v1, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2585
    .line 2586
    .line 2587
    move-object/from16 v8, v21

    .line 2588
    .line 2589
    iget-object v10, v8, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2590
    .line 2591
    sget-object v11, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2592
    .line 2593
    if-ne v10, v11, :cond_90

    .line 2594
    .line 2595
    sget-object v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2596
    .line 2597
    goto :goto_45

    .line 2598
    :cond_90
    sget-object v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2599
    .line 2600
    :goto_45
    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2601
    .line 2602
    .line 2603
    goto :goto_46

    .line 2604
    :cond_91
    move-object/from16 v8, v21

    .line 2605
    .line 2606
    :goto_46
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollBackward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    .line 2607
    .line 2608
    .line 2609
    move-result v6

    .line 2610
    if-eqz v6, :cond_93

    .line 2611
    .line 2612
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2613
    .line 2614
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2615
    .line 2616
    .line 2617
    iget-object v6, v8, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2618
    .line 2619
    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2620
    .line 2621
    if-ne v6, v8, :cond_92

    .line 2622
    .line 2623
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2624
    .line 2625
    goto :goto_47

    .line 2626
    :cond_92
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2627
    .line 2628
    :goto_47
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2629
    .line 2630
    .line 2631
    :cond_93
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2632
    .line 2633
    invoke-static {v0, v6}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2634
    .line 2635
    .line 2636
    move-result-object v6

    .line 2637
    check-cast v6, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 2638
    .line 2639
    if-eqz v6, :cond_9a

    .line 2640
    .line 2641
    if-eqz v7, :cond_9a

    .line 2642
    .line 2643
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2644
    .line 2645
    .line 2646
    move-result-object v7

    .line 2647
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2648
    .line 2649
    iget-object v7, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2650
    .line 2651
    invoke-virtual {v7, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2652
    .line 2653
    .line 2654
    move-result-object v7

    .line 2655
    if-nez v7, :cond_94

    .line 2656
    .line 2657
    move-object/from16 v7, p0

    .line 2658
    .line 2659
    :cond_94
    if-nez v7, :cond_97

    .line 2660
    .line 2661
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2662
    .line 2663
    .line 2664
    move-result-object v7

    .line 2665
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2666
    .line 2667
    iget-object v7, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 2668
    .line 2669
    invoke-virtual {v7, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2670
    .line 2671
    .line 2672
    move-result-object v7

    .line 2673
    if-nez v7, :cond_95

    .line 2674
    .line 2675
    move-object/from16 v7, p0

    .line 2676
    .line 2677
    :cond_95
    if-eqz v7, :cond_96

    .line 2678
    .line 2679
    goto :goto_48

    .line 2680
    :cond_96
    const-string v7, "android.widget.ScrollView"

    .line 2681
    .line 2682
    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2683
    .line 2684
    .line 2685
    :cond_97
    :goto_48
    iget-object v7, v6, Landroidx/compose/ui/semantics/ScrollAxisRange;->maxValue:Lkotlin/jvm/functions/Function0;

    .line 2686
    .line 2687
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2688
    .line 2689
    .line 2690
    move-result-object v7

    .line 2691
    check-cast v7, Ljava/lang/Number;

    .line 2692
    .line 2693
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 2694
    .line 2695
    .line 2696
    move-result v7

    .line 2697
    cmpl-float v7, v7, v17

    .line 2698
    .line 2699
    if-lez v7, :cond_98

    .line 2700
    .line 2701
    const/4 v10, 0x1

    .line 2702
    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2703
    .line 2704
    .line 2705
    :cond_98
    invoke-static {v12}, Landroidx/compose/ui/platform/TestTagKt;->enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2706
    .line 2707
    .line 2708
    move-result v7

    .line 2709
    if-eqz v7, :cond_9a

    .line 2710
    .line 2711
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollForward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    .line 2712
    .line 2713
    .line 2714
    move-result v7

    .line 2715
    if-eqz v7, :cond_99

    .line 2716
    .line 2717
    sget-object v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2718
    .line 2719
    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2720
    .line 2721
    .line 2722
    sget-object v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2723
    .line 2724
    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2725
    .line 2726
    .line 2727
    :cond_99
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollBackward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    .line 2728
    .line 2729
    .line 2730
    move-result v6

    .line 2731
    if-eqz v6, :cond_9a

    .line 2732
    .line 2733
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2734
    .line 2735
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2736
    .line 2737
    .line 2738
    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2739
    .line 2740
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2741
    .line 2742
    .line 2743
    :cond_9a
    const/16 v6, 0x1d

    .line 2744
    .line 2745
    if-lt v3, v6, :cond_9b

    .line 2746
    .line 2747
    invoke-static {v12, v1}, Landroidx/compose/ui/platform/TestTagKt;->addPageActions(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2748
    .line 2749
    .line 2750
    :cond_9b
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2751
    .line 2752
    invoke-static {v0, v3}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2753
    .line 2754
    .line 2755
    move-result-object v3

    .line 2756
    check-cast v3, Ljava/lang/CharSequence;

    .line 2757
    .line 2758
    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPaneTitle(Ljava/lang/CharSequence;)V

    .line 2759
    .line 2760
    .line 2761
    invoke-static {v12}, Landroidx/compose/ui/platform/TestTagKt;->enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2762
    .line 2763
    .line 2764
    move-result v3

    .line 2765
    if-eqz v3, :cond_a8

    .line 2766
    .line 2767
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->Expand:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2768
    .line 2769
    invoke-static {v0, v3}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2770
    .line 2771
    .line 2772
    move-result-object v3

    .line 2773
    check-cast v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2774
    .line 2775
    if-eqz v3, :cond_9c

    .line 2776
    .line 2777
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2778
    .line 2779
    const/high16 v7, 0x40000

    .line 2780
    .line 2781
    iget-object v3, v3, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 2782
    .line 2783
    invoke-direct {v6, v7, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 2784
    .line 2785
    .line 2786
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2787
    .line 2788
    .line 2789
    :cond_9c
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->Collapse:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2790
    .line 2791
    invoke-static {v0, v3}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2792
    .line 2793
    .line 2794
    move-result-object v3

    .line 2795
    check-cast v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2796
    .line 2797
    if-eqz v3, :cond_9d

    .line 2798
    .line 2799
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2800
    .line 2801
    const/high16 v7, 0x80000

    .line 2802
    .line 2803
    iget-object v3, v3, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 2804
    .line 2805
    invoke-direct {v6, v7, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 2806
    .line 2807
    .line 2808
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2809
    .line 2810
    .line 2811
    :cond_9d
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->Dismiss:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2812
    .line 2813
    invoke-static {v0, v3}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2814
    .line 2815
    .line 2816
    move-result-object v3

    .line 2817
    check-cast v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2818
    .line 2819
    if-eqz v3, :cond_9e

    .line 2820
    .line 2821
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2822
    .line 2823
    const/high16 v7, 0x100000

    .line 2824
    .line 2825
    iget-object v3, v3, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 2826
    .line 2827
    invoke-direct {v6, v7, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 2828
    .line 2829
    .line 2830
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2831
    .line 2832
    .line 2833
    :cond_9e
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->CustomActions:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2834
    .line 2835
    invoke-virtual {v2, v3}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2836
    .line 2837
    .line 2838
    move-result v2

    .line 2839
    if-eqz v2, :cond_a8

    .line 2840
    .line 2841
    invoke-virtual {v0, v3}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2842
    .line 2843
    .line 2844
    move-result-object v2

    .line 2845
    check-cast v2, Ljava/util/List;

    .line 2846
    .line 2847
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 2848
    .line 2849
    .line 2850
    move-result v3

    .line 2851
    sget-object v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->AccessibilityActionsResourceIds:Landroidx/collection/MutableIntList;

    .line 2852
    .line 2853
    iget v7, v6, Landroidx/collection/MutableIntList;->_size:I

    .line 2854
    .line 2855
    if-ge v3, v7, :cond_a7

    .line 2856
    .line 2857
    new-instance v3, Landroidx/collection/SparseArrayCompat;

    .line 2858
    .line 2859
    const/4 v13, 0x0

    .line 2860
    invoke-direct {v3, v13}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    .line 2861
    .line 2862
    .line 2863
    invoke-static {}, Landroidx/collection/ObjectIntMapKt;->mutableObjectIntMapOf()Landroidx/collection/MutableObjectIntMap;

    .line 2864
    .line 2865
    .line 2866
    move-result-object v7

    .line 2867
    move-object/from16 v8, v20

    .line 2868
    .line 2869
    iget-boolean v10, v8, Landroidx/collection/SparseArrayCompat;->garbage:Z

    .line 2870
    .line 2871
    if-eqz v10, :cond_9f

    .line 2872
    .line 2873
    invoke-static {v8}, Landroidx/collection/ArraySetKt;->gc(Landroidx/collection/SparseArrayCompat;)V

    .line 2874
    .line 2875
    .line 2876
    :cond_9f
    iget-object v10, v8, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 2877
    .line 2878
    iget v11, v8, Landroidx/collection/SparseArrayCompat;->size:I

    .line 2879
    .line 2880
    invoke-static {v11, v5, v10}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch(II[I)I

    .line 2881
    .line 2882
    .line 2883
    move-result v10

    .line 2884
    if-ltz v10, :cond_a5

    .line 2885
    .line 2886
    invoke-static {v8, v5}, Landroidx/collection/ArraySetKt;->commonGet(Landroidx/collection/SparseArrayCompat;I)Ljava/lang/Object;

    .line 2887
    .line 2888
    .line 2889
    move-result-object v10

    .line 2890
    check-cast v10, Landroidx/collection/MutableObjectIntMap;

    .line 2891
    .line 2892
    const/16 v11, 0x10

    .line 2893
    .line 2894
    new-array v11, v11, [I

    .line 2895
    .line 2896
    iget-object v13, v6, Landroidx/collection/MutableIntList;->content:[I

    .line 2897
    .line 2898
    iget v6, v6, Landroidx/collection/MutableIntList;->_size:I

    .line 2899
    .line 2900
    move-object/from16 v16, v10

    .line 2901
    .line 2902
    move-object v10, v11

    .line 2903
    const/4 v11, 0x0

    .line 2904
    const/4 v14, 0x0

    .line 2905
    :goto_49
    if-ge v11, v6, :cond_a1

    .line 2906
    .line 2907
    aget v17, v13, v11

    .line 2908
    .line 2909
    move/from16 v20, v6

    .line 2910
    .line 2911
    add-int/lit8 v6, v14, 0x1

    .line 2912
    .line 2913
    move/from16 v21, v11

    .line 2914
    .line 2915
    array-length v11, v10

    .line 2916
    if-ge v11, v6, :cond_a0

    .line 2917
    .line 2918
    array-length v11, v10

    .line 2919
    const/16 v23, 0x3

    .line 2920
    .line 2921
    mul-int/lit8 v11, v11, 0x3

    .line 2922
    .line 2923
    const/16 v18, 0x2

    .line 2924
    .line 2925
    div-int/lit8 v11, v11, 0x2

    .line 2926
    .line 2927
    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    .line 2928
    .line 2929
    .line 2930
    move-result v11

    .line 2931
    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([II)[I

    .line 2932
    .line 2933
    .line 2934
    move-result-object v10

    .line 2935
    goto :goto_4a

    .line 2936
    :cond_a0
    const/16 v18, 0x2

    .line 2937
    .line 2938
    const/16 v23, 0x3

    .line 2939
    .line 2940
    :goto_4a
    aput v17, v10, v14

    .line 2941
    .line 2942
    add-int/lit8 v11, v21, 0x1

    .line 2943
    .line 2944
    move v14, v6

    .line 2945
    move/from16 v6, v20

    .line 2946
    .line 2947
    goto :goto_49

    .line 2948
    :cond_a1
    new-instance v6, Ljava/util/ArrayList;

    .line 2949
    .line 2950
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2951
    .line 2952
    .line 2953
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 2954
    .line 2955
    .line 2956
    move-result v11

    .line 2957
    if-gtz v11, :cond_a4

    .line 2958
    .line 2959
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 2960
    .line 2961
    .line 2962
    move-result v2

    .line 2963
    if-gtz v2, :cond_a2

    .line 2964
    .line 2965
    goto :goto_4b

    .line 2966
    :cond_a2
    const/4 v13, 0x0

    .line 2967
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2968
    .line 2969
    .line 2970
    move-result-object v0

    .line 2971
    invoke-static {v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 2972
    .line 2973
    .line 2974
    if-gtz v14, :cond_a3

    .line 2975
    .line 2976
    const-string v0, "Index must be between 0 and size"

    .line 2977
    .line 2978
    invoke-static {v0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/String;)V

    .line 2979
    .line 2980
    .line 2981
    goto/16 :goto_19

    .line 2982
    .line 2983
    :cond_a3
    aget v0, v10, v13

    .line 2984
    .line 2985
    throw p0

    .line 2986
    :cond_a4
    const/4 v13, 0x0

    .line 2987
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2988
    .line 2989
    .line 2990
    move-result-object v0

    .line 2991
    invoke-static {v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 2992
    .line 2993
    .line 2994
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2995
    .line 2996
    .line 2997
    throw p0

    .line 2998
    :cond_a5
    const/4 v13, 0x0

    .line 2999
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 3000
    .line 3001
    .line 3002
    move-result v10

    .line 3003
    if-gtz v10, :cond_a6

    .line 3004
    .line 3005
    :goto_4b
    iget-object v2, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->actionIdToLabel:Landroidx/collection/SparseArrayCompat;

    .line 3006
    .line 3007
    invoke-virtual {v2, v5, v3}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 3008
    .line 3009
    .line 3010
    invoke-virtual {v8, v5, v7}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 3011
    .line 3012
    .line 3013
    goto :goto_4c

    .line 3014
    :cond_a6
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3015
    .line 3016
    .line 3017
    move-result-object v0

    .line 3018
    invoke-static {v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 3019
    .line 3020
    .line 3021
    invoke-virtual {v6, v13}, Landroidx/collection/MutableIntList;->get(I)I

    .line 3022
    .line 3023
    .line 3024
    throw p0

    .line 3025
    :cond_a7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3026
    .line 3027
    const-string v1, "Can\'t have more than "

    .line 3028
    .line 3029
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3030
    .line 3031
    .line 3032
    iget v1, v6, Landroidx/collection/MutableIntList;->_size:I

    .line 3033
    .line 3034
    const-string v2, " custom actions for one widget"

    .line 3035
    .line 3036
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 3037
    .line 3038
    .line 3039
    move-result-object v0

    .line 3040
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 3041
    .line 3042
    .line 3043
    goto/16 :goto_19

    .line 3044
    .line 3045
    :cond_a8
    :goto_4c
    invoke-static {v12, v15}, Landroidx/compose/ui/platform/TestTagKt;->isScreenReaderFocusable(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Z

    .line 3046
    .line 3047
    .line 3048
    move-result v2

    .line 3049
    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScreenReaderFocusable(Z)V

    .line 3050
    .line 3051
    .line 3052
    iget-object v2, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Landroidx/collection/MutableIntIntMap;

    .line 3053
    .line 3054
    invoke-virtual {v2, v5}, Landroidx/collection/MutableIntIntMap;->getOrDefault(I)I

    .line 3055
    .line 3056
    .line 3057
    move-result v2

    .line 3058
    const/4 v13, -0x1

    .line 3059
    if-eq v2, v13, :cond_aa

    .line 3060
    .line 3061
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 3062
    .line 3063
    .line 3064
    move-result-object v3

    .line 3065
    invoke-static {v3, v2}, Landroidx/compose/ui/platform/TestTagKt;->semanticsIdToView(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 3066
    .line 3067
    .line 3068
    move-result-object v3

    .line 3069
    if-eqz v3, :cond_a9

    .line 3070
    .line 3071
    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;)V

    .line 3072
    .line 3073
    .line 3074
    move-object/from16 v3, v19

    .line 3075
    .line 3076
    goto :goto_4d

    .line 3077
    :cond_a9
    move-object/from16 v3, v19

    .line 3078
    .line 3079
    invoke-virtual {v4, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    .line 3080
    .line 3081
    .line 3082
    :goto_4d
    iget-object v2, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalBeforeVal:Ljava/lang/String;

    .line 3083
    .line 3084
    move-object/from16 v6, p0

    .line 3085
    .line 3086
    invoke-virtual {v9, v5, v1, v2, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->addExtraDataToAccessibilityNodeInfoHelper(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3087
    .line 3088
    .line 3089
    goto :goto_4e

    .line 3090
    :cond_aa
    move-object/from16 v6, p0

    .line 3091
    .line 3092
    move-object/from16 v3, v19

    .line 3093
    .line 3094
    :goto_4e
    iget-object v2, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Landroidx/collection/MutableIntIntMap;

    .line 3095
    .line 3096
    invoke-virtual {v2, v5}, Landroidx/collection/MutableIntIntMap;->getOrDefault(I)I

    .line 3097
    .line 3098
    .line 3099
    move-result v2

    .line 3100
    const/4 v13, -0x1

    .line 3101
    if-eq v2, v13, :cond_ab

    .line 3102
    .line 3103
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 3104
    .line 3105
    .line 3106
    move-result-object v3

    .line 3107
    invoke-static {v3, v2}, Landroidx/compose/ui/platform/TestTagKt;->semanticsIdToView(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 3108
    .line 3109
    .line 3110
    move-result-object v2

    .line 3111
    if-eqz v2, :cond_ab

    .line 3112
    .line 3113
    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    .line 3114
    .line 3115
    .line 3116
    iget-object v2, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalAfterVal:Ljava/lang/String;

    .line 3117
    .line 3118
    invoke-virtual {v9, v5, v1, v2, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->addExtraDataToAccessibilityNodeInfoHelper(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3119
    .line 3120
    .line 3121
    :cond_ab
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->AccessibilityClassName:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 3122
    .line 3123
    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 3124
    .line 3125
    .line 3126
    move-result-object v0

    .line 3127
    check-cast v0, Ljava/lang/String;

    .line 3128
    .line 3129
    if-eqz v0, :cond_ac

    .line 3130
    .line 3131
    invoke-virtual {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 3132
    .line 3133
    .line 3134
    :cond_ac
    move-object v6, v1

    .line 3135
    :goto_4f
    iget-boolean v0, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendingFocusAffectingEvent:Z

    .line 3136
    .line 3137
    if-eqz v0, :cond_af

    .line 3138
    .line 3139
    iget v0, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 3140
    .line 3141
    if-ne v5, v0, :cond_ad

    .line 3142
    .line 3143
    iput-object v6, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyAccessibilityFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 3144
    .line 3145
    :cond_ad
    iget v0, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    .line 3146
    .line 3147
    if-ne v5, v0, :cond_af

    .line 3148
    .line 3149
    iput-object v6, v9, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 3150
    .line 3151
    goto :goto_50

    .line 3152
    :cond_ae
    move v5, v1

    .line 3153
    const/4 v6, 0x0

    .line 3154
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3155
    .line 3156
    const-string v1, "semanticsNode "

    .line 3157
    .line 3158
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3159
    .line 3160
    .line 3161
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3162
    .line 3163
    .line 3164
    const-string v1, " has null parent"

    .line 3165
    .line 3166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3167
    .line 3168
    .line 3169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3170
    .line 3171
    .line 3172
    move-result-object v0

    .line 3173
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    .line 3174
    .line 3175
    .line 3176
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 3177
    .line 3178
    .line 3179
    :cond_af
    :goto_50
    return-object v6

    .line 3180
    :pswitch_0
    move v5, v1

    .line 3181
    check-cast v0, Landroidx/customview/widget/ExploreByTouchHelper;

    .line 3182
    .line 3183
    invoke-virtual {v0, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 3184
    .line 3185
    .line 3186
    move-result-object v0

    .line 3187
    iget-object v0, v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3188
    .line 3189
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3190
    .line 3191
    .line 3192
    move-result-object v0

    .line 3193
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 3194
    .line 3195
    invoke-direct {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3196
    .line 3197
    .line 3198
    return-object v1

    .line 3199
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
    invoke-static {p1, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

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
    move-result-object v12

    .line 34
    invoke-virtual {v12, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    check-cast v12, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 39
    .line 40
    if-eqz v12, :cond_9

    .line 41
    .line 42
    iget-object v12, v12, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 43
    .line 44
    if-nez v12, :cond_0

    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_0
    iget-object v11, v12, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 49
    .line 50
    iget v6, v12, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 51
    .line 52
    iget-object v9, v12, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 53
    .line 54
    iget-object v14, v9, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 55
    .line 56
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->IsSensitiveData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 57
    .line 58
    invoke-virtual {v14, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    if-nez v10, :cond_1

    .line 63
    .line 64
    const/4 v10, 0x0

    .line 65
    :cond_1
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-eqz v10, :cond_3

    .line 72
    .line 73
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 74
    .line 75
    const/16 v7, 0x22

    .line 76
    .line 77
    if-lt v10, v7, :cond_2

    .line 78
    .line 79
    invoke-static {v4}, Landroidx/core/util/TypedValueCompat$Api34Impl;->isRequestFromAccessibilityTool(Landroid/view/accessibility/AccessibilityManager;)Z

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
    const/16 v10, 0x100

    .line 102
    .line 103
    if-eq v2, v10, :cond_67

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
    invoke-static {v12}, Landroidx/compose/ui/platform/TestTagKt;->enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

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
    const/16 v4, 0x20

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
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-static {v0, v1}, Landroidx/collection/ArraySetKt;->commonGet(Landroidx/collection/SparseArrayCompat;I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 149
    .line 150
    if-eqz v0, :cond_9

    .line 151
    .line 152
    invoke-static {v0, v2}, Landroidx/collection/ArraySetKt;->commonGet(Landroidx/collection/SparseArrayCompat;I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Ljava/lang/CharSequence;

    .line 157
    .line 158
    if-nez v0, :cond_5

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_5
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->CustomActions:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 162
    .line 163
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    if-nez v0, :cond_6

    .line 168
    .line 169
    const/4 v13, 0x0

    .line 170
    goto :goto_1

    .line 171
    :cond_6
    move-object v13, v0

    .line 172
    :goto_1
    check-cast v13, Ljava/util/List;

    .line 173
    .line 174
    if-nez v13, :cond_7

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_7
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-gtz v0, :cond_8

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_8
    const/4 v0, 0x0

    .line 185
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 193
    .line 194
    .line 195
    :cond_9
    :goto_2
    const/4 v13, 0x0

    .line 196
    goto/16 :goto_49

    .line 197
    .line 198
    :pswitch_0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 199
    .line 200
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    if-nez v0, :cond_a

    .line 205
    .line 206
    const/4 v13, 0x0

    .line 207
    goto :goto_3

    .line 208
    :cond_a
    move-object v13, v0

    .line 209
    :goto_3
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 210
    .line 211
    if-eqz v13, :cond_9

    .line 212
    .line 213
    iget-object v0, v13, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 214
    .line 215
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 216
    .line 217
    if-eqz v0, :cond_9

    .line 218
    .line 219
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Ljava/lang/Boolean;

    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 226
    .line 227
    .line 228
    move-result v13

    .line 229
    goto/16 :goto_49

    .line 230
    .line 231
    :pswitch_1
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageLeft:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 232
    .line 233
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    if-nez v0, :cond_b

    .line 238
    .line 239
    const/4 v13, 0x0

    .line 240
    goto :goto_4

    .line 241
    :cond_b
    move-object v13, v0

    .line 242
    :goto_4
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 243
    .line 244
    if-eqz v13, :cond_9

    .line 245
    .line 246
    iget-object v0, v13, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 247
    .line 248
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 249
    .line 250
    if-eqz v0, :cond_9

    .line 251
    .line 252
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Ljava/lang/Boolean;

    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 259
    .line 260
    .line 261
    move-result v13

    .line 262
    goto/16 :goto_49

    .line 263
    .line 264
    :pswitch_2
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 265
    .line 266
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    if-nez v0, :cond_c

    .line 271
    .line 272
    const/4 v13, 0x0

    .line 273
    goto :goto_5

    .line 274
    :cond_c
    move-object v13, v0

    .line 275
    :goto_5
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 276
    .line 277
    if-eqz v13, :cond_9

    .line 278
    .line 279
    iget-object v0, v13, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 280
    .line 281
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 282
    .line 283
    if-eqz v0, :cond_9

    .line 284
    .line 285
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    check-cast v0, Ljava/lang/Boolean;

    .line 290
    .line 291
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 292
    .line 293
    .line 294
    move-result v13

    .line 295
    goto/16 :goto_49

    .line 296
    .line 297
    :pswitch_3
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageUp:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 298
    .line 299
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    if-nez v0, :cond_d

    .line 304
    .line 305
    const/4 v13, 0x0

    .line 306
    goto :goto_6

    .line 307
    :cond_d
    move-object v13, v0

    .line 308
    :goto_6
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 309
    .line 310
    if-eqz v13, :cond_9

    .line 311
    .line 312
    iget-object v0, v13, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 313
    .line 314
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 315
    .line 316
    if-eqz v0, :cond_9

    .line 317
    .line 318
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    check-cast v0, Ljava/lang/Boolean;

    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 325
    .line 326
    .line 327
    move-result v13

    .line 328
    goto/16 :goto_49

    .line 329
    .line 330
    :pswitch_4
    :sswitch_0
    const-wide v16, 0xffffffffL

    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    goto/16 :goto_1d

    .line 336
    .line 337
    :sswitch_1
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->OnImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 338
    .line 339
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    if-nez v0, :cond_e

    .line 344
    .line 345
    const/4 v13, 0x0

    .line 346
    goto :goto_7

    .line 347
    :cond_e
    move-object v13, v0

    .line 348
    :goto_7
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 349
    .line 350
    if-eqz v13, :cond_9

    .line 351
    .line 352
    iget-object v0, v13, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 353
    .line 354
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 355
    .line 356
    if-eqz v0, :cond_9

    .line 357
    .line 358
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    check-cast v0, Ljava/lang/Boolean;

    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 365
    .line 366
    .line 367
    move-result v13

    .line 368
    goto/16 :goto_49

    .line 369
    .line 370
    :sswitch_2
    if-eqz v3, :cond_9

    .line 371
    .line 372
    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 373
    .line 374
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-nez v1, :cond_f

    .line 379
    .line 380
    goto/16 :goto_2

    .line 381
    .line 382
    :cond_f
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 383
    .line 384
    invoke-virtual {v14, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    if-nez v1, :cond_10

    .line 389
    .line 390
    const/4 v13, 0x0

    .line 391
    goto :goto_8

    .line 392
    :cond_10
    move-object v13, v1

    .line 393
    :goto_8
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 394
    .line 395
    if-eqz v13, :cond_9

    .line 396
    .line 397
    iget-object v1, v13, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 398
    .line 399
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 400
    .line 401
    if-eqz v1, :cond_9

    .line 402
    .line 403
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    check-cast v0, Ljava/lang/Boolean;

    .line 416
    .line 417
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 418
    .line 419
    .line 420
    move-result v13

    .line 421
    goto/16 :goto_49

    .line 422
    .line 423
    :sswitch_3
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    if-eqz v0, :cond_12

    .line 428
    .line 429
    iget-object v1, v0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 430
    .line 431
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 432
    .line 433
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 434
    .line 435
    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    if-nez v1, :cond_11

    .line 440
    .line 441
    const/4 v1, 0x0

    .line 442
    :cond_11
    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 443
    .line 444
    goto :goto_9

    .line 445
    :cond_12
    const/4 v1, 0x0

    .line 446
    :goto_9
    if-nez v1, :cond_14

    .line 447
    .line 448
    if-eqz v0, :cond_14

    .line 449
    .line 450
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    if-eqz v0, :cond_12

    .line 455
    .line 456
    iget-object v1, v0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 457
    .line 458
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 459
    .line 460
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 461
    .line 462
    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    if-nez v1, :cond_13

    .line 467
    .line 468
    const/4 v1, 0x0

    .line 469
    :cond_13
    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 470
    .line 471
    goto :goto_9

    .line 472
    :cond_14
    if-nez v0, :cond_15

    .line 473
    .line 474
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    new-instance v1, Landroid/graphics/Rect;

    .line 479
    .line 480
    iget v2, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 481
    .line 482
    float-to-double v2, v2

    .line 483
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 484
    .line 485
    .line 486
    move-result-wide v2

    .line 487
    double-to-float v2, v2

    .line 488
    float-to-int v2, v2

    .line 489
    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 490
    .line 491
    float-to-double v3, v3

    .line 492
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 493
    .line 494
    .line 495
    move-result-wide v3

    .line 496
    double-to-float v3, v3

    .line 497
    float-to-int v3, v3

    .line 498
    iget v4, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 499
    .line 500
    float-to-double v6, v4

    .line 501
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 502
    .line 503
    .line 504
    move-result-wide v6

    .line 505
    double-to-float v4, v6

    .line 506
    invoke-static {v4}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 507
    .line 508
    .line 509
    move-result v4

    .line 510
    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 511
    .line 512
    float-to-double v6, v0

    .line 513
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 514
    .line 515
    .line 516
    move-result-wide v6

    .line 517
    double-to-float v0, v6

    .line 518
    invoke-static {v0}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 519
    .line 520
    .line 521
    move-result v0

    .line 522
    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v5, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 526
    .line 527
    .line 528
    move-result v13

    .line 529
    goto/16 :goto_49

    .line 530
    .line 531
    :cond_15
    const-wide/16 v1, 0x0

    .line 532
    .line 533
    move-wide v5, v1

    .line 534
    const/4 v3, 0x0

    .line 535
    :goto_a
    if-eqz v0, :cond_26

    .line 536
    .line 537
    iget-object v7, v0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 538
    .line 539
    iget-object v10, v0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 540
    .line 541
    iget-object v10, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 542
    .line 543
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 544
    .line 545
    invoke-virtual {v10, v13}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v13

    .line 549
    if-nez v13, :cond_16

    .line 550
    .line 551
    const/4 v13, 0x0

    .line 552
    :cond_16
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 553
    .line 554
    if-eqz v13, :cond_25

    .line 555
    .line 556
    iget-object v14, v7, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 557
    .line 558
    iget-object v14, v14, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 559
    .line 560
    check-cast v14, Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 561
    .line 562
    invoke-static {v14}, Landroidx/compose/ui/layout/RulerKt;->boundsInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 563
    .line 564
    .line 565
    move-result-object v14

    .line 566
    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 567
    .line 568
    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 569
    .line 570
    check-cast v7, Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 571
    .line 572
    invoke-virtual {v7}, Landroidx/compose/ui/node/NodeCoordinator;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 573
    .line 574
    .line 575
    move-result-object v7

    .line 576
    if-eqz v7, :cond_17

    .line 577
    .line 578
    check-cast v7, Landroidx/compose/ui/node/NodeCoordinator;

    .line 579
    .line 580
    invoke-virtual {v7, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    .line 581
    .line 582
    .line 583
    move-result-wide v15

    .line 584
    move-wide v8, v15

    .line 585
    :goto_b
    const-wide v16, 0xffffffffL

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    goto :goto_c

    .line 591
    :cond_17
    move-wide v8, v1

    .line 592
    goto :goto_b

    .line 593
    :goto_c
    invoke-virtual {v14, v8, v9}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    .line 594
    .line 595
    .line 596
    move-result-object v7

    .line 597
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->findCoordinatorToGetBounds$ui()Landroidx/compose/ui/node/NodeCoordinator;

    .line 598
    .line 599
    .line 600
    move-result-object v8

    .line 601
    if-eqz v8, :cond_19

    .line 602
    .line 603
    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    .line 604
    .line 605
    .line 606
    move-result-object v9

    .line 607
    iget-boolean v9, v9, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 608
    .line 609
    if-eqz v9, :cond_18

    .line 610
    .line 611
    goto :goto_d

    .line 612
    :cond_18
    const/4 v8, 0x0

    .line 613
    :goto_d
    if-eqz v8, :cond_19

    .line 614
    .line 615
    invoke-virtual {v8, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    .line 616
    .line 617
    .line 618
    move-result-wide v8

    .line 619
    goto :goto_e

    .line 620
    :cond_19
    move-wide v8, v1

    .line 621
    :goto_e
    invoke-static {v8, v9, v5, v6}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 622
    .line 623
    .line 624
    move-result-wide v8

    .line 625
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->findCoordinatorToGetBounds$ui()Landroidx/compose/ui/node/NodeCoordinator;

    .line 626
    .line 627
    .line 628
    move-result-object v14

    .line 629
    if-eqz v14, :cond_1a

    .line 630
    .line 631
    iget-wide v14, v14, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 632
    .line 633
    goto :goto_f

    .line 634
    :cond_1a
    move-wide v14, v1

    .line 635
    :goto_f
    invoke-static {v14, v15}, Lkotlin/ExceptionsKt;->toSize-ozmzZPI(J)J

    .line 636
    .line 637
    .line 638
    move-result-wide v14

    .line 639
    invoke-static {v8, v9, v14, v15}, Lcoil3/util/UtilsKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 640
    .line 641
    .line 642
    move-result-object v8

    .line 643
    iget v9, v8, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 644
    .line 645
    iget v14, v7, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 646
    .line 647
    sub-float/2addr v9, v14

    .line 648
    iget v14, v8, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 649
    .line 650
    iget v15, v7, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 651
    .line 652
    sub-float/2addr v14, v15

    .line 653
    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    .line 654
    .line 655
    .line 656
    move-result v15

    .line 657
    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    .line 658
    .line 659
    .line 660
    move-result v18

    .line 661
    cmpg-float v15, v15, v18

    .line 662
    .line 663
    if-nez v15, :cond_1c

    .line 664
    .line 665
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 666
    .line 667
    .line 668
    move-result v15

    .line 669
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    .line 670
    .line 671
    .line 672
    move-result v18

    .line 673
    cmpg-float v15, v15, v18

    .line 674
    .line 675
    if-gez v15, :cond_1b

    .line 676
    .line 677
    goto :goto_10

    .line 678
    :cond_1b
    move v9, v14

    .line 679
    goto :goto_10

    .line 680
    :cond_1c
    move/from16 v9, p0

    .line 681
    .line 682
    :goto_10
    iget v14, v8, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 683
    .line 684
    iget v15, v7, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 685
    .line 686
    sub-float/2addr v14, v15

    .line 687
    iget v8, v8, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 688
    .line 689
    iget v7, v7, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 690
    .line 691
    sub-float/2addr v8, v7

    .line 692
    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    .line 693
    .line 694
    .line 695
    move-result v7

    .line 696
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    .line 697
    .line 698
    .line 699
    move-result v15

    .line 700
    cmpg-float v7, v7, v15

    .line 701
    .line 702
    if-nez v7, :cond_1e

    .line 703
    .line 704
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    .line 705
    .line 706
    .line 707
    move-result v7

    .line 708
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 709
    .line 710
    .line 711
    move-result v15

    .line 712
    cmpg-float v7, v7, v15

    .line 713
    .line 714
    if-gez v7, :cond_1d

    .line 715
    .line 716
    goto :goto_11

    .line 717
    :cond_1d
    move v14, v8

    .line 718
    goto :goto_11

    .line 719
    :cond_1e
    move/from16 v14, p0

    .line 720
    .line 721
    :goto_11
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 722
    .line 723
    .line 724
    move-result v7

    .line 725
    int-to-long v7, v7

    .line 726
    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 727
    .line 728
    .line 729
    move-result v9

    .line 730
    int-to-long v14, v9

    .line 731
    shl-long/2addr v7, v4

    .line 732
    and-long v14, v14, v16

    .line 733
    .line 734
    or-long/2addr v7, v14

    .line 735
    invoke-static {v7, v8, v1, v2}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 736
    .line 737
    .line 738
    move-result v9

    .line 739
    if-eqz v9, :cond_1f

    .line 740
    .line 741
    move-wide v1, v7

    .line 742
    goto :goto_12

    .line 743
    :cond_1f
    shr-long v14, v7, v4

    .line 744
    .line 745
    long-to-int v9, v14

    .line 746
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 747
    .line 748
    .line 749
    move-result v9

    .line 750
    and-long v14, v7, v16

    .line 751
    .line 752
    long-to-int v14, v14

    .line 753
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 754
    .line 755
    .line 756
    move-result v14

    .line 757
    sget-object v15, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 758
    .line 759
    invoke-virtual {v10, v15}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v15

    .line 763
    if-nez v15, :cond_20

    .line 764
    .line 765
    const/4 v15, 0x0

    .line 766
    :cond_20
    check-cast v15, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 767
    .line 768
    iget-object v15, v11, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 769
    .line 770
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 771
    .line 772
    if-ne v15, v1, :cond_21

    .line 773
    .line 774
    neg-float v9, v9

    .line 775
    :cond_21
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 776
    .line 777
    invoke-virtual {v10, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    if-nez v1, :cond_22

    .line 782
    .line 783
    const/4 v1, 0x0

    .line 784
    :cond_22
    check-cast v1, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 785
    .line 786
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 787
    .line 788
    .line 789
    move-result v1

    .line 790
    int-to-long v1, v1

    .line 791
    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 792
    .line 793
    .line 794
    move-result v9

    .line 795
    int-to-long v9, v9

    .line 796
    shl-long/2addr v1, v4

    .line 797
    and-long v9, v9, v16

    .line 798
    .line 799
    or-long/2addr v1, v9

    .line 800
    :goto_12
    iget-object v9, v13, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 801
    .line 802
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 803
    .line 804
    if-eqz v9, :cond_23

    .line 805
    .line 806
    shr-long v13, v1, v4

    .line 807
    .line 808
    long-to-int v10, v13

    .line 809
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 810
    .line 811
    .line 812
    move-result v10

    .line 813
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 814
    .line 815
    .line 816
    move-result-object v10

    .line 817
    and-long v1, v1, v16

    .line 818
    .line 819
    long-to-int v1, v1

    .line 820
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 821
    .line 822
    .line 823
    move-result v1

    .line 824
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 825
    .line 826
    .line 827
    move-result-object v1

    .line 828
    invoke-interface {v9, v10, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v1

    .line 832
    check-cast v1, Ljava/lang/Boolean;

    .line 833
    .line 834
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 835
    .line 836
    .line 837
    move-result v1

    .line 838
    const/4 v2, 0x1

    .line 839
    if-ne v1, v2, :cond_23

    .line 840
    .line 841
    goto :goto_13

    .line 842
    :cond_23
    if-eqz v3, :cond_24

    .line 843
    .line 844
    :goto_13
    const/4 v1, 0x1

    .line 845
    goto :goto_14

    .line 846
    :cond_24
    const/4 v1, 0x0

    .line 847
    :goto_14
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 848
    .line 849
    .line 850
    move-result-wide v5

    .line 851
    move v3, v1

    .line 852
    goto :goto_15

    .line 853
    :cond_25
    const-wide v16, 0xffffffffL

    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    :goto_15
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    const-wide/16 v1, 0x0

    .line 863
    .line 864
    goto/16 :goto_a

    .line 865
    .line 866
    :cond_26
    move v13, v3

    .line 867
    goto/16 :goto_49

    .line 868
    .line 869
    :sswitch_4
    if-eqz v3, :cond_27

    .line 870
    .line 871
    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    .line 872
    .line 873
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    goto :goto_16

    .line 878
    :cond_27
    const/4 v0, 0x0

    .line 879
    :goto_16
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->SetText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 880
    .line 881
    invoke-virtual {v14, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    if-nez v1, :cond_28

    .line 886
    .line 887
    const/4 v13, 0x0

    .line 888
    goto :goto_17

    .line 889
    :cond_28
    move-object v13, v1

    .line 890
    :goto_17
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 891
    .line 892
    if-eqz v13, :cond_9

    .line 893
    .line 894
    iget-object v1, v13, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 895
    .line 896
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 897
    .line 898
    if-eqz v1, :cond_9

    .line 899
    .line 900
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString;

    .line 901
    .line 902
    if-nez v0, :cond_29

    .line 903
    .line 904
    const-string v0, ""

    .line 905
    .line 906
    :cond_29
    invoke-direct {v2, v0}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 907
    .line 908
    .line 909
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v0

    .line 913
    check-cast v0, Ljava/lang/Boolean;

    .line 914
    .line 915
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 916
    .line 917
    .line 918
    move-result v13

    .line 919
    goto/16 :goto_49

    .line 920
    .line 921
    :sswitch_5
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Dismiss:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 922
    .line 923
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    if-nez v0, :cond_2a

    .line 928
    .line 929
    const/4 v13, 0x0

    .line 930
    goto :goto_18

    .line 931
    :cond_2a
    move-object v13, v0

    .line 932
    :goto_18
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 933
    .line 934
    if-eqz v13, :cond_9

    .line 935
    .line 936
    iget-object v0, v13, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 937
    .line 938
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 939
    .line 940
    if-eqz v0, :cond_9

    .line 941
    .line 942
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 943
    .line 944
    .line 945
    move-result-object v0

    .line 946
    check-cast v0, Ljava/lang/Boolean;

    .line 947
    .line 948
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 949
    .line 950
    .line 951
    move-result v13

    .line 952
    goto/16 :goto_49

    .line 953
    .line 954
    :sswitch_6
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Collapse:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 955
    .line 956
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    if-nez v0, :cond_2b

    .line 961
    .line 962
    const/4 v13, 0x0

    .line 963
    goto :goto_19

    .line 964
    :cond_2b
    move-object v13, v0

    .line 965
    :goto_19
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 966
    .line 967
    if-eqz v13, :cond_9

    .line 968
    .line 969
    iget-object v0, v13, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 970
    .line 971
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 972
    .line 973
    if-eqz v0, :cond_9

    .line 974
    .line 975
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    move-result-object v0

    .line 979
    check-cast v0, Ljava/lang/Boolean;

    .line 980
    .line 981
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 982
    .line 983
    .line 984
    move-result v13

    .line 985
    goto/16 :goto_49

    .line 986
    .line 987
    :sswitch_7
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Expand:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 988
    .line 989
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    .line 991
    .line 992
    move-result-object v0

    .line 993
    if-nez v0, :cond_2c

    .line 994
    .line 995
    const/4 v13, 0x0

    .line 996
    goto :goto_1a

    .line 997
    :cond_2c
    move-object v13, v0

    .line 998
    :goto_1a
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 999
    .line 1000
    if-eqz v13, :cond_9

    .line 1001
    .line 1002
    iget-object v0, v13, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1003
    .line 1004
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1005
    .line 1006
    if-eqz v0, :cond_9

    .line 1007
    .line 1008
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    check-cast v0, Ljava/lang/Boolean;

    .line 1013
    .line 1014
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1015
    .line 1016
    .line 1017
    move-result v13

    .line 1018
    goto/16 :goto_49

    .line 1019
    .line 1020
    :sswitch_8
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->CutText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1021
    .line 1022
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v0

    .line 1026
    if-nez v0, :cond_2d

    .line 1027
    .line 1028
    const/4 v13, 0x0

    .line 1029
    goto :goto_1b

    .line 1030
    :cond_2d
    move-object v13, v0

    .line 1031
    :goto_1b
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1032
    .line 1033
    if-eqz v13, :cond_9

    .line 1034
    .line 1035
    iget-object v0, v13, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1036
    .line 1037
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1038
    .line 1039
    if-eqz v0, :cond_9

    .line 1040
    .line 1041
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v0

    .line 1045
    check-cast v0, Ljava/lang/Boolean;

    .line 1046
    .line 1047
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1048
    .line 1049
    .line 1050
    move-result v13

    .line 1051
    goto/16 :goto_49

    .line 1052
    .line 1053
    :sswitch_9
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PasteText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1054
    .line 1055
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    if-nez v0, :cond_2e

    .line 1060
    .line 1061
    const/4 v13, 0x0

    .line 1062
    goto :goto_1c

    .line 1063
    :cond_2e
    move-object v13, v0

    .line 1064
    :goto_1c
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1065
    .line 1066
    if-eqz v13, :cond_9

    .line 1067
    .line 1068
    iget-object v0, v13, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1069
    .line 1070
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1071
    .line 1072
    if-eqz v0, :cond_9

    .line 1073
    .line 1074
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v0

    .line 1078
    check-cast v0, Ljava/lang/Boolean;

    .line 1079
    .line 1080
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1081
    .line 1082
    .line 1083
    move-result v13

    .line 1084
    goto/16 :goto_49

    .line 1085
    .line 1086
    :goto_1d
    const/16 v0, 0x1000

    .line 1087
    .line 1088
    if-ne v2, v0, :cond_2f

    .line 1089
    .line 1090
    const/4 v0, 0x1

    .line 1091
    goto :goto_1e

    .line 1092
    :cond_2f
    const/4 v0, 0x0

    .line 1093
    :goto_1e
    const/16 v1, 0x2000

    .line 1094
    .line 1095
    if-ne v2, v1, :cond_30

    .line 1096
    .line 1097
    const/4 v1, 0x1

    .line 1098
    goto :goto_1f

    .line 1099
    :cond_30
    const/4 v1, 0x0

    .line 1100
    :goto_1f
    const v3, 0x1020039

    .line 1101
    .line 1102
    .line 1103
    if-ne v2, v3, :cond_31

    .line 1104
    .line 1105
    const/4 v3, 0x1

    .line 1106
    goto :goto_20

    .line 1107
    :cond_31
    const/4 v3, 0x0

    .line 1108
    :goto_20
    const v5, 0x102003b

    .line 1109
    .line 1110
    .line 1111
    if-ne v2, v5, :cond_32

    .line 1112
    .line 1113
    const/4 v5, 0x1

    .line 1114
    goto :goto_21

    .line 1115
    :cond_32
    const/4 v5, 0x0

    .line 1116
    :goto_21
    const v6, 0x1020038

    .line 1117
    .line 1118
    .line 1119
    if-ne v2, v6, :cond_33

    .line 1120
    .line 1121
    const/4 v6, 0x1

    .line 1122
    goto :goto_22

    .line 1123
    :cond_33
    const/4 v6, 0x0

    .line 1124
    :goto_22
    const v7, 0x102003a

    .line 1125
    .line 1126
    .line 1127
    if-ne v2, v7, :cond_34

    .line 1128
    .line 1129
    const/4 v2, 0x1

    .line 1130
    goto :goto_23

    .line 1131
    :cond_34
    const/4 v2, 0x0

    .line 1132
    :goto_23
    if-nez v3, :cond_36

    .line 1133
    .line 1134
    if-nez v5, :cond_36

    .line 1135
    .line 1136
    if-nez v0, :cond_36

    .line 1137
    .line 1138
    if-eqz v1, :cond_35

    .line 1139
    .line 1140
    goto :goto_24

    .line 1141
    :cond_35
    const/4 v7, 0x0

    .line 1142
    goto :goto_25

    .line 1143
    :cond_36
    :goto_24
    const/4 v7, 0x1

    .line 1144
    :goto_25
    if-nez v6, :cond_38

    .line 1145
    .line 1146
    if-nez v2, :cond_38

    .line 1147
    .line 1148
    if-nez v0, :cond_38

    .line 1149
    .line 1150
    if-eqz v1, :cond_37

    .line 1151
    .line 1152
    goto :goto_26

    .line 1153
    :cond_37
    const/4 v13, 0x0

    .line 1154
    goto :goto_27

    .line 1155
    :cond_38
    :goto_26
    const/4 v13, 0x1

    .line 1156
    :goto_27
    if-nez v0, :cond_39

    .line 1157
    .line 1158
    if-eqz v1, :cond_3f

    .line 1159
    .line 1160
    :cond_39
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1161
    .line 1162
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v0

    .line 1166
    if-nez v0, :cond_3a

    .line 1167
    .line 1168
    const/4 v0, 0x0

    .line 1169
    :cond_3a
    check-cast v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 1170
    .line 1171
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1172
    .line 1173
    invoke-virtual {v14, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v2

    .line 1177
    if-nez v2, :cond_3b

    .line 1178
    .line 1179
    const/4 v2, 0x0

    .line 1180
    :cond_3b
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1181
    .line 1182
    if-eqz v0, :cond_3f

    .line 1183
    .line 1184
    iget-object v8, v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->range:Lkotlin/ranges/ClosedFloatRange;

    .line 1185
    .line 1186
    if-eqz v2, :cond_3f

    .line 1187
    .line 1188
    iget v3, v8, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    .line 1189
    .line 1190
    cmpg-float v4, v3, p0

    .line 1191
    .line 1192
    if-gez v4, :cond_3c

    .line 1193
    .line 1194
    move/from16 v4, p0

    .line 1195
    .line 1196
    goto :goto_28

    .line 1197
    :cond_3c
    move v4, v3

    .line 1198
    :goto_28
    cmpl-float v5, p0, v3

    .line 1199
    .line 1200
    if-lez v5, :cond_3d

    .line 1201
    .line 1202
    move v15, v3

    .line 1203
    goto :goto_29

    .line 1204
    :cond_3d
    move/from16 v15, p0

    .line 1205
    .line 1206
    :goto_29
    sub-float/2addr v4, v15

    .line 1207
    const/high16 v3, 0x41a00000    # 20.0f

    .line 1208
    .line 1209
    div-float/2addr v4, v3

    .line 1210
    if-eqz v1, :cond_3e

    .line 1211
    .line 1212
    neg-float v4, v4

    .line 1213
    :cond_3e
    iget-object v1, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1214
    .line 1215
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1216
    .line 1217
    if-eqz v1, :cond_9

    .line 1218
    .line 1219
    iget v0, v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->current:F

    .line 1220
    .line 1221
    add-float/2addr v0, v4

    .line 1222
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v0

    .line 1226
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v0

    .line 1230
    check-cast v0, Ljava/lang/Boolean;

    .line 1231
    .line 1232
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1233
    .line 1234
    .line 1235
    move-result v13

    .line 1236
    goto/16 :goto_49

    .line 1237
    .line 1238
    :cond_3f
    iget-object v0, v11, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 1239
    .line 1240
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 1241
    .line 1242
    check-cast v0, Landroidx/compose/ui/node/InnerNodeCoordinator;

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
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1315
    .line 1316
    invoke-virtual {v14, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v10

    .line 1320
    if-nez v10, :cond_44

    .line 1321
    .line 1322
    const/4 v10, 0x0

    .line 1323
    :cond_44
    check-cast v10, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1324
    .line 1325
    if-eqz v10, :cond_4f

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
    move-result v4

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
    shr-long v0, v8, v4

    .line 1345
    .line 1346
    long-to-int v0, v0

    .line 1347
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1348
    .line 1349
    .line 1350
    move-result v4

    .line 1351
    :goto_2b
    if-nez v3, :cond_46

    .line 1352
    .line 1353
    if-eqz p1, :cond_47

    .line 1354
    .line 1355
    :cond_46
    neg-float v4, v4

    .line 1356
    :cond_47
    iget-object v0, v11, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1357
    .line 1358
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1359
    .line 1360
    if-ne v0, v1, :cond_49

    .line 1361
    .line 1362
    if-nez v3, :cond_48

    .line 1363
    .line 1364
    if-eqz v5, :cond_49

    .line 1365
    .line 1366
    :cond_48
    neg-float v4, v4

    .line 1367
    :cond_49
    invoke-static {v10, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->performActionHelper$canScroll(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z

    .line 1368
    .line 1369
    .line 1370
    move-result v0

    .line 1371
    if-eqz v0, :cond_50

    .line 1372
    .line 1373
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageLeft:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1374
    .line 1375
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1376
    .line 1377
    .line 1378
    move-result v1

    .line 1379
    if-nez v1, :cond_4b

    .line 1380
    .line 1381
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1382
    .line 1383
    invoke-virtual {v14, v1}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1384
    .line 1385
    .line 1386
    move-result v1

    .line 1387
    if-eqz v1, :cond_4a

    .line 1388
    .line 1389
    goto :goto_2c

    .line 1390
    :cond_4a
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 1391
    .line 1392
    if-eqz v2, :cond_9

    .line 1393
    .line 1394
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v0

    .line 1398
    invoke-interface {v2, v0, v15}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v0

    .line 1402
    check-cast v0, Ljava/lang/Boolean;

    .line 1403
    .line 1404
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1405
    .line 1406
    .line 1407
    move-result v13

    .line 1408
    goto/16 :goto_49

    .line 1409
    .line 1410
    :cond_4b
    :goto_2c
    cmpl-float v1, v4, p0

    .line 1411
    .line 1412
    if-lez v1, :cond_4d

    .line 1413
    .line 1414
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1415
    .line 1416
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v0

    .line 1420
    if-nez v0, :cond_4c

    .line 1421
    .line 1422
    const/4 v13, 0x0

    .line 1423
    goto :goto_2d

    .line 1424
    :cond_4c
    move-object v13, v0

    .line 1425
    :goto_2d
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1426
    .line 1427
    goto :goto_2f

    .line 1428
    :cond_4d
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v0

    .line 1432
    if-nez v0, :cond_4e

    .line 1433
    .line 1434
    const/4 v13, 0x0

    .line 1435
    goto :goto_2e

    .line 1436
    :cond_4e
    move-object v13, v0

    .line 1437
    :goto_2e
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1438
    .line 1439
    :goto_2f
    if-eqz v13, :cond_9

    .line 1440
    .line 1441
    iget-object v0, v13, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1442
    .line 1443
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1444
    .line 1445
    if-eqz v0, :cond_9

    .line 1446
    .line 1447
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v0

    .line 1451
    check-cast v0, Ljava/lang/Boolean;

    .line 1452
    .line 1453
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1454
    .line 1455
    .line 1456
    move-result v13

    .line 1457
    goto/16 :goto_49

    .line 1458
    .line 1459
    :cond_4f
    move-object/from16 p2, v0

    .line 1460
    .line 1461
    move/from16 p1, v1

    .line 1462
    .line 1463
    :cond_50
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1464
    .line 1465
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v0

    .line 1469
    if-nez v0, :cond_51

    .line 1470
    .line 1471
    const/4 v0, 0x0

    .line 1472
    :cond_51
    check-cast v0, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1473
    .line 1474
    if-eqz v0, :cond_9

    .line 1475
    .line 1476
    if-eqz v13, :cond_9

    .line 1477
    .line 1478
    if-eqz p2, :cond_52

    .line 1479
    .line 1480
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    .line 1481
    .line 1482
    .line 1483
    move-result v1

    .line 1484
    goto :goto_30

    .line 1485
    :cond_52
    and-long v3, v8, v16

    .line 1486
    .line 1487
    long-to-int v1, v3

    .line 1488
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1489
    .line 1490
    .line 1491
    move-result v1

    .line 1492
    :goto_30
    if-nez v6, :cond_53

    .line 1493
    .line 1494
    if-eqz p1, :cond_54

    .line 1495
    .line 1496
    :cond_53
    neg-float v1, v1

    .line 1497
    :cond_54
    invoke-static {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->performActionHelper$canScroll(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z

    .line 1498
    .line 1499
    .line 1500
    move-result v0

    .line 1501
    if-eqz v0, :cond_9

    .line 1502
    .line 1503
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageUp:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1504
    .line 1505
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1506
    .line 1507
    .line 1508
    move-result v3

    .line 1509
    if-nez v3, :cond_56

    .line 1510
    .line 1511
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1512
    .line 1513
    invoke-virtual {v14, v3}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1514
    .line 1515
    .line 1516
    move-result v3

    .line 1517
    if-eqz v3, :cond_55

    .line 1518
    .line 1519
    goto :goto_31

    .line 1520
    :cond_55
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 1521
    .line 1522
    if-eqz v2, :cond_9

    .line 1523
    .line 1524
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v0

    .line 1528
    invoke-interface {v2, v15, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    .line 1530
    .line 1531
    move-result-object v0

    .line 1532
    check-cast v0, Ljava/lang/Boolean;

    .line 1533
    .line 1534
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1535
    .line 1536
    .line 1537
    move-result v13

    .line 1538
    goto/16 :goto_49

    .line 1539
    .line 1540
    :cond_56
    :goto_31
    cmpl-float v1, v1, p0

    .line 1541
    .line 1542
    if-lez v1, :cond_58

    .line 1543
    .line 1544
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1545
    .line 1546
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v0

    .line 1550
    if-nez v0, :cond_57

    .line 1551
    .line 1552
    const/4 v13, 0x0

    .line 1553
    goto :goto_32

    .line 1554
    :cond_57
    move-object v13, v0

    .line 1555
    :goto_32
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1556
    .line 1557
    goto :goto_34

    .line 1558
    :cond_58
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    .line 1560
    .line 1561
    move-result-object v0

    .line 1562
    if-nez v0, :cond_59

    .line 1563
    .line 1564
    const/4 v13, 0x0

    .line 1565
    goto :goto_33

    .line 1566
    :cond_59
    move-object v13, v0

    .line 1567
    :goto_33
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1568
    .line 1569
    :goto_34
    if-eqz v13, :cond_9

    .line 1570
    .line 1571
    iget-object v0, v13, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1572
    .line 1573
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1574
    .line 1575
    if-eqz v0, :cond_9

    .line 1576
    .line 1577
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v0

    .line 1581
    check-cast v0, Ljava/lang/Boolean;

    .line 1582
    .line 1583
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1584
    .line 1585
    .line 1586
    move-result v13

    .line 1587
    goto/16 :goto_49

    .line 1588
    .line 1589
    :sswitch_a
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->OnLongClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1590
    .line 1591
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v0

    .line 1595
    if-nez v0, :cond_5a

    .line 1596
    .line 1597
    const/4 v13, 0x0

    .line 1598
    goto :goto_35

    .line 1599
    :cond_5a
    move-object v13, v0

    .line 1600
    :goto_35
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1601
    .line 1602
    if-eqz v13, :cond_9

    .line 1603
    .line 1604
    iget-object v0, v13, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1605
    .line 1606
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1607
    .line 1608
    if-eqz v0, :cond_9

    .line 1609
    .line 1610
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v0

    .line 1614
    check-cast v0, Ljava/lang/Boolean;

    .line 1615
    .line 1616
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1617
    .line 1618
    .line 1619
    move-result v13

    .line 1620
    goto/16 :goto_49

    .line 1621
    .line 1622
    :sswitch_b
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->OnClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1623
    .line 1624
    invoke-virtual {v14, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    .line 1626
    .line 1627
    move-result-object v2

    .line 1628
    if-nez v2, :cond_5b

    .line 1629
    .line 1630
    const/4 v2, 0x0

    .line 1631
    :cond_5b
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1632
    .line 1633
    if-eqz v2, :cond_5c

    .line 1634
    .line 1635
    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1636
    .line 1637
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 1638
    .line 1639
    if-eqz v2, :cond_5c

    .line 1640
    .line 1641
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v2

    .line 1645
    check-cast v2, Ljava/lang/Boolean;

    .line 1646
    .line 1647
    move-object/from16 v23, v2

    .line 1648
    .line 1649
    :goto_36
    const/4 v2, 0x1

    .line 1650
    const/4 v3, 0x0

    .line 1651
    goto :goto_37

    .line 1652
    :cond_5c
    const/16 v23, 0x0

    .line 1653
    .line 1654
    goto :goto_36

    .line 1655
    :goto_37
    invoke-static {v0, v1, v2, v3, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 1656
    .line 1657
    .line 1658
    if-eqz v23, :cond_9

    .line 1659
    .line 1660
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1661
    .line 1662
    .line 1663
    move-result v13

    .line 1664
    goto/16 :goto_49

    .line 1665
    .line 1666
    :cond_5d
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1667
    .line 1668
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v0

    .line 1672
    if-nez v0, :cond_5e

    .line 1673
    .line 1674
    const/4 v0, 0x0

    .line 1675
    :cond_5e
    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1676
    .line 1677
    .line 1678
    move-result v0

    .line 1679
    if-eqz v0, :cond_9

    .line 1680
    .line 1681
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 1682
    .line 1683
    .line 1684
    move-result-object v0

    .line 1685
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 1686
    .line 1687
    const/4 v1, 0x0

    .line 1688
    const/4 v2, 0x1

    .line 1689
    invoke-virtual {v0, v4, v1, v2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus-I7lrPNg(IZZ)Z

    .line 1690
    .line 1691
    .line 1692
    :goto_38
    const/4 v13, 0x1

    .line 1693
    goto/16 :goto_49

    .line 1694
    .line 1695
    :cond_5f
    invoke-virtual {v5}, Landroid/view/View;->isInTouchMode()Z

    .line 1696
    .line 1697
    .line 1698
    move-result v0

    .line 1699
    if-eqz v0, :cond_60

    .line 1700
    .line 1701
    invoke-virtual {v5}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 1702
    .line 1703
    .line 1704
    :cond_60
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->RequestFocus:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1705
    .line 1706
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    .line 1708
    .line 1709
    move-result-object v0

    .line 1710
    if-nez v0, :cond_61

    .line 1711
    .line 1712
    const/4 v13, 0x0

    .line 1713
    goto :goto_39

    .line 1714
    :cond_61
    move-object v13, v0

    .line 1715
    :goto_39
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1716
    .line 1717
    if-eqz v13, :cond_9

    .line 1718
    .line 1719
    iget-object v0, v13, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1720
    .line 1721
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1722
    .line 1723
    if-eqz v0, :cond_9

    .line 1724
    .line 1725
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v0

    .line 1729
    check-cast v0, Ljava/lang/Boolean;

    .line 1730
    .line 1731
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1732
    .line 1733
    .line 1734
    move-result v13

    .line 1735
    goto/16 :goto_49

    .line 1736
    .line 1737
    :cond_62
    if-eqz v3, :cond_63

    .line 1738
    .line 1739
    const-string v1, "ACTION_ARGUMENT_SELECTION_START_INT"

    .line 1740
    .line 1741
    const/4 v2, -0x1

    .line 1742
    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 1743
    .line 1744
    .line 1745
    move-result v20

    .line 1746
    move/from16 v1, v20

    .line 1747
    .line 1748
    goto :goto_3a

    .line 1749
    :cond_63
    const/4 v2, -0x1

    .line 1750
    move v1, v2

    .line 1751
    :goto_3a
    if-eqz v3, :cond_64

    .line 1752
    .line 1753
    const-string v4, "ACTION_ARGUMENT_SELECTION_END_INT"

    .line 1754
    .line 1755
    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 1756
    .line 1757
    .line 1758
    move-result v9

    .line 1759
    :goto_3b
    const/4 v2, 0x0

    .line 1760
    goto :goto_3c

    .line 1761
    :cond_64
    const/4 v9, -0x1

    .line 1762
    goto :goto_3b

    .line 1763
    :goto_3c
    invoke-virtual {v0, v12, v1, v9, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setAccessibilitySelection(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z

    .line 1764
    .line 1765
    .line 1766
    move-result v13

    .line 1767
    if-eqz v13, :cond_89

    .line 1768
    .line 1769
    invoke-virtual {v0, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    .line 1770
    .line 1771
    .line 1772
    move-result v1

    .line 1773
    const/4 v3, 0x0

    .line 1774
    invoke-static {v0, v1, v2, v3, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 1775
    .line 1776
    .line 1777
    goto/16 :goto_49

    .line 1778
    .line 1779
    :cond_65
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->CopyText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1780
    .line 1781
    invoke-virtual {v14, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v0

    .line 1785
    if-nez v0, :cond_66

    .line 1786
    .line 1787
    const/4 v13, 0x0

    .line 1788
    goto :goto_3d

    .line 1789
    :cond_66
    move-object v13, v0

    .line 1790
    :goto_3d
    check-cast v13, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1791
    .line 1792
    if-eqz v13, :cond_9

    .line 1793
    .line 1794
    iget-object v0, v13, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 1795
    .line 1796
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1797
    .line 1798
    if-eqz v0, :cond_9

    .line 1799
    .line 1800
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1801
    .line 1802
    .line 1803
    move-result-object v0

    .line 1804
    check-cast v0, Ljava/lang/Boolean;

    .line 1805
    .line 1806
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1807
    .line 1808
    .line 1809
    move-result v13

    .line 1810
    goto/16 :goto_49

    .line 1811
    .line 1812
    :cond_67
    if-eqz v3, :cond_9

    .line 1813
    .line 1814
    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    .line 1815
    .line 1816
    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 1817
    .line 1818
    .line 1819
    move-result v1

    .line 1820
    const-string v7, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    .line 1821
    .line 1822
    invoke-virtual {v3, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1823
    .line 1824
    .line 1825
    move-result v3

    .line 1826
    if-ne v2, v10, :cond_68

    .line 1827
    .line 1828
    const/4 v2, 0x1

    .line 1829
    goto :goto_3e

    .line 1830
    :cond_68
    const/4 v2, 0x0

    .line 1831
    :goto_3e
    iget-object v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousTraversedNode:Ljava/lang/Integer;

    .line 1832
    .line 1833
    if-nez v7, :cond_69

    .line 1834
    .line 1835
    :goto_3f
    const/4 v7, -0x1

    .line 1836
    goto :goto_40

    .line 1837
    :cond_69
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 1838
    .line 1839
    .line 1840
    move-result v7

    .line 1841
    if-eq v6, v7, :cond_6a

    .line 1842
    .line 1843
    goto :goto_3f

    .line 1844
    :goto_40
    iput v7, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    .line 1845
    .line 1846
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1847
    .line 1848
    .line 1849
    move-result-object v6

    .line 1850
    iput-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousTraversedNode:Ljava/lang/Integer;

    .line 1851
    .line 1852
    :cond_6a
    invoke-static {v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v6

    .line 1856
    if-eqz v6, :cond_9

    .line 1857
    .line 1858
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1859
    .line 1860
    .line 1861
    move-result v7

    .line 1862
    if-nez v7, :cond_6b

    .line 1863
    .line 1864
    goto/16 :goto_2

    .line 1865
    .line 1866
    :cond_6b
    invoke-static {v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v7

    .line 1870
    if-eqz v7, :cond_6d

    .line 1871
    .line 1872
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 1873
    .line 1874
    .line 1875
    move-result v11

    .line 1876
    if-nez v11, :cond_6c

    .line 1877
    .line 1878
    goto :goto_41

    .line 1879
    :cond_6c
    const/4 v11, 0x1

    .line 1880
    if-eq v1, v11, :cond_78

    .line 1881
    .line 1882
    const/4 v11, 0x2

    .line 1883
    if-eq v1, v11, :cond_76

    .line 1884
    .line 1885
    const/4 v5, 0x4

    .line 1886
    if-eq v1, v5, :cond_70

    .line 1887
    .line 1888
    if-eq v1, v4, :cond_6e

    .line 1889
    .line 1890
    const/16 v4, 0x10

    .line 1891
    .line 1892
    if-eq v1, v4, :cond_70

    .line 1893
    .line 1894
    :cond_6d
    :goto_41
    const/4 v13, 0x0

    .line 1895
    goto/16 :goto_42

    .line 1896
    .line 1897
    :cond_6e
    sget-object v4, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 1898
    .line 1899
    if-nez v4, :cond_6f

    .line 1900
    .line 1901
    new-instance v4, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 1902
    .line 1903
    invoke-direct {v4}, Landroidx/appcompat/view/menu/BaseMenuWrapper;-><init>()V

    .line 1904
    .line 1905
    .line 1906
    sput-object v4, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 1907
    .line 1908
    :cond_6f
    move-object v13, v4

    .line 1909
    iput-object v7, v13, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Ljava/lang/Object;

    .line 1910
    .line 1911
    goto/16 :goto_42

    .line 1912
    .line 1913
    :cond_70
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1914
    .line 1915
    invoke-virtual {v14, v4}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 1916
    .line 1917
    .line 1918
    move-result v4

    .line 1919
    if-nez v4, :cond_71

    .line 1920
    .line 1921
    goto :goto_41

    .line 1922
    :cond_71
    invoke-static {v9}, Landroidx/compose/ui/platform/TestTagKt;->getTextLayoutResult(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/TextLayoutResult;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v4

    .line 1926
    if-nez v4, :cond_72

    .line 1927
    .line 1928
    goto :goto_41

    .line 1929
    :cond_72
    if-ne v1, v5, :cond_74

    .line 1930
    .line 1931
    sget-object v5, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->lineInstance:Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;

    .line 1932
    .line 1933
    if-nez v5, :cond_73

    .line 1934
    .line 1935
    new-instance v5, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;

    .line 1936
    .line 1937
    invoke-direct {v5}, Landroidx/appcompat/view/menu/BaseMenuWrapper;-><init>()V

    .line 1938
    .line 1939
    .line 1940
    sput-object v5, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->lineInstance:Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;

    .line 1941
    .line 1942
    :cond_73
    move-object v13, v5

    .line 1943
    iput-object v7, v13, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Ljava/lang/Object;

    .line 1944
    .line 1945
    iput-object v4, v13, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 1946
    .line 1947
    goto :goto_42

    .line 1948
    :cond_74
    sget-object v5, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->pageInstance:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    .line 1949
    .line 1950
    if-nez v5, :cond_75

    .line 1951
    .line 1952
    new-instance v5, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    .line 1953
    .line 1954
    invoke-direct {v5}, Landroidx/appcompat/view/menu/BaseMenuWrapper;-><init>()V

    .line 1955
    .line 1956
    .line 1957
    new-instance v9, Landroid/graphics/Rect;

    .line 1958
    .line 1959
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1960
    .line 1961
    .line 1962
    sput-object v5, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->pageInstance:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    .line 1963
    .line 1964
    :cond_75
    move-object v13, v5

    .line 1965
    iput-object v7, v13, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Ljava/lang/Object;

    .line 1966
    .line 1967
    iput-object v4, v13, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 1968
    .line 1969
    iput-object v12, v13, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->node:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1970
    .line 1971
    goto :goto_42

    .line 1972
    :cond_76
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1973
    .line 1974
    .line 1975
    move-result-object v4

    .line 1976
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1977
    .line 1978
    .line 1979
    move-result-object v4

    .line 1980
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 1981
    .line 1982
    .line 1983
    move-result-object v4

    .line 1984
    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1985
    .line 1986
    sget-object v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 1987
    .line 1988
    if-nez v5, :cond_77

    .line 1989
    .line 1990
    new-instance v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 1991
    .line 1992
    const/4 v9, 0x0

    .line 1993
    invoke-direct {v5, v9}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;-><init>(I)V

    .line 1994
    .line 1995
    .line 1996
    invoke-static {v4}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 1997
    .line 1998
    .line 1999
    move-result-object v4

    .line 2000
    iput-object v4, v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    .line 2001
    .line 2002
    sput-object v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2003
    .line 2004
    :cond_77
    move-object v13, v5

    .line 2005
    invoke-virtual {v13, v7}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->initialize(Ljava/lang/String;)V

    .line 2006
    .line 2007
    .line 2008
    goto :goto_42

    .line 2009
    :cond_78
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2010
    .line 2011
    .line 2012
    move-result-object v4

    .line 2013
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2014
    .line 2015
    .line 2016
    move-result-object v4

    .line 2017
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 2018
    .line 2019
    .line 2020
    move-result-object v4

    .line 2021
    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2022
    .line 2023
    sget-object v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance$1:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2024
    .line 2025
    if-nez v5, :cond_79

    .line 2026
    .line 2027
    new-instance v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2028
    .line 2029
    const/4 v11, 0x1

    .line 2030
    invoke-direct {v5, v11}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;-><init>(I)V

    .line 2031
    .line 2032
    .line 2033
    invoke-static {v4}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v4

    .line 2037
    iput-object v4, v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    .line 2038
    .line 2039
    sput-object v5, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance$1:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 2040
    .line 2041
    :cond_79
    move-object v13, v5

    .line 2042
    invoke-virtual {v13, v7}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->initialize(Ljava/lang/String;)V

    .line 2043
    .line 2044
    .line 2045
    :goto_42
    if-nez v13, :cond_7a

    .line 2046
    .line 2047
    goto/16 :goto_2

    .line 2048
    .line 2049
    :cond_7a
    invoke-virtual {v0, v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionEnd(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 2050
    .line 2051
    .line 2052
    move-result v4

    .line 2053
    const/4 v7, -0x1

    .line 2054
    if-ne v4, v7, :cond_7c

    .line 2055
    .line 2056
    if-eqz v2, :cond_7b

    .line 2057
    .line 2058
    const/4 v4, 0x0

    .line 2059
    goto :goto_43

    .line 2060
    :cond_7b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 2061
    .line 2062
    .line 2063
    move-result v4

    .line 2064
    :cond_7c
    :goto_43
    if-eqz v2, :cond_7d

    .line 2065
    .line 2066
    invoke-virtual {v13, v4}, Landroidx/appcompat/view/menu/BaseMenuWrapper;->following(I)[I

    .line 2067
    .line 2068
    .line 2069
    move-result-object v4

    .line 2070
    goto :goto_44

    .line 2071
    :cond_7d
    invoke-virtual {v13, v4}, Landroidx/appcompat/view/menu/BaseMenuWrapper;->preceding(I)[I

    .line 2072
    .line 2073
    .line 2074
    move-result-object v4

    .line 2075
    :goto_44
    if-nez v4, :cond_7e

    .line 2076
    .line 2077
    goto/16 :goto_2

    .line 2078
    .line 2079
    :cond_7e
    const/16 v21, 0x0

    .line 2080
    .line 2081
    aget v22, v4, v21

    .line 2082
    .line 2083
    const/16 v26, 0x1

    .line 2084
    .line 2085
    aget v23, v4, v26

    .line 2086
    .line 2087
    if-eqz v3, :cond_82

    .line 2088
    .line 2089
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2090
    .line 2091
    invoke-virtual {v14, v3}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2092
    .line 2093
    .line 2094
    move-result v3

    .line 2095
    if-nez v3, :cond_82

    .line 2096
    .line 2097
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2098
    .line 2099
    invoke-virtual {v14, v3}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2100
    .line 2101
    .line 2102
    move-result v3

    .line 2103
    if-eqz v3, :cond_82

    .line 2104
    .line 2105
    invoke-virtual {v0, v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionStart(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 2106
    .line 2107
    .line 2108
    move-result v3

    .line 2109
    const/4 v7, -0x1

    .line 2110
    if-ne v3, v7, :cond_80

    .line 2111
    .line 2112
    if-eqz v2, :cond_7f

    .line 2113
    .line 2114
    move/from16 v3, v22

    .line 2115
    .line 2116
    goto :goto_45

    .line 2117
    :cond_7f
    move/from16 v3, v23

    .line 2118
    .line 2119
    :cond_80
    :goto_45
    if-eqz v2, :cond_81

    .line 2120
    .line 2121
    move/from16 v4, v23

    .line 2122
    .line 2123
    goto :goto_47

    .line 2124
    :cond_81
    move/from16 v4, v22

    .line 2125
    .line 2126
    goto :goto_47

    .line 2127
    :cond_82
    if-eqz v2, :cond_83

    .line 2128
    .line 2129
    move/from16 v3, v23

    .line 2130
    .line 2131
    goto :goto_46

    .line 2132
    :cond_83
    move/from16 v3, v22

    .line 2133
    .line 2134
    :goto_46
    move v4, v3

    .line 2135
    :goto_47
    if-eqz v2, :cond_84

    .line 2136
    .line 2137
    move/from16 v20, v10

    .line 2138
    .line 2139
    goto :goto_48

    .line 2140
    :cond_84
    move/from16 v20, v8

    .line 2141
    .line 2142
    :goto_48
    new-instance v18, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    .line 2143
    .line 2144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2145
    .line 2146
    .line 2147
    move-result-wide v24

    .line 2148
    move/from16 v21, v1

    .line 2149
    .line 2150
    move-object/from16 v19, v12

    .line 2151
    .line 2152
    invoke-direct/range {v18 .. v25}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;IIIIJ)V

    .line 2153
    .line 2154
    .line 2155
    move-object/from16 v2, v18

    .line 2156
    .line 2157
    move-object/from16 v1, v19

    .line 2158
    .line 2159
    iput-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    .line 2160
    .line 2161
    const/4 v2, 0x1

    .line 2162
    invoke-virtual {v0, v1, v3, v4, v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setAccessibilitySelection(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z

    .line 2163
    .line 2164
    .line 2165
    goto/16 :goto_38

    .line 2166
    .line 2167
    :cond_85
    iget v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 2168
    .line 2169
    if-ne v2, v1, :cond_9

    .line 2170
    .line 2171
    const/high16 v2, -0x80000000

    .line 2172
    .line 2173
    iput v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 2174
    .line 2175
    const/4 v3, 0x0

    .line 2176
    iput-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyAccessibilityFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 2177
    .line 2178
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 2179
    .line 2180
    .line 2181
    const/high16 v2, 0x10000

    .line 2182
    .line 2183
    invoke-static {v0, v1, v2, v3, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 2184
    .line 2185
    .line 2186
    goto/16 :goto_38

    .line 2187
    .line 2188
    :cond_86
    const/high16 v2, 0x10000

    .line 2189
    .line 2190
    const/4 v3, 0x0

    .line 2191
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 2192
    .line 2193
    .line 2194
    move-result v6

    .line 2195
    if-eqz v6, :cond_9

    .line 2196
    .line 2197
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 2198
    .line 2199
    .line 2200
    move-result v4

    .line 2201
    if-eqz v4, :cond_9

    .line 2202
    .line 2203
    iget v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 2204
    .line 2205
    if-ne v4, v1, :cond_87

    .line 2206
    .line 2207
    goto/16 :goto_2

    .line 2208
    .line 2209
    :cond_87
    const/high16 v6, -0x80000000

    .line 2210
    .line 2211
    if-eq v4, v6, :cond_88

    .line 2212
    .line 2213
    invoke-static {v0, v4, v2, v3, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 2214
    .line 2215
    .line 2216
    :cond_88
    iput v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    .line 2217
    .line 2218
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 2219
    .line 2220
    .line 2221
    const v2, 0x8000

    .line 2222
    .line 2223
    .line 2224
    invoke-static {v0, v1, v2, v3, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 2225
    .line 2226
    .line 2227
    goto/16 :goto_38

    .line 2228
    .line 2229
    :cond_89
    :goto_49
    return v13

    .line 2230
    :pswitch_5
    check-cast v0, Landroidx/customview/widget/ExploreByTouchHelper;

    .line 2231
    .line 2232
    iget-object v4, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Lcom/google/android/material/chip/Chip;

    .line 2233
    .line 2234
    const/4 v7, -0x1

    .line 2235
    if-eq v1, v7, :cond_95

    .line 2236
    .line 2237
    const/4 v11, 0x1

    .line 2238
    if-eq v2, v11, :cond_94

    .line 2239
    .line 2240
    const/4 v6, 0x2

    .line 2241
    if-eq v2, v6, :cond_93

    .line 2242
    .line 2243
    if-eq v2, v8, :cond_90

    .line 2244
    .line 2245
    const/16 v8, 0x80

    .line 2246
    .line 2247
    if-eq v2, v8, :cond_8f

    .line 2248
    .line 2249
    check-cast v0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 2250
    .line 2251
    iget-object v0, v0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 2252
    .line 2253
    const/16 v4, 0x10

    .line 2254
    .line 2255
    if-ne v2, v4, :cond_8d

    .line 2256
    .line 2257
    if-nez v1, :cond_8a

    .line 2258
    .line 2259
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 2260
    .line 2261
    .line 2262
    move-result v13

    .line 2263
    goto/16 :goto_4d

    .line 2264
    .line 2265
    :cond_8a
    if-ne v1, v11, :cond_8d

    .line 2266
    .line 2267
    const/4 v2, 0x0

    .line 2268
    invoke-virtual {v0, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 2269
    .line 2270
    .line 2271
    iget-object v1, v0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    .line 2272
    .line 2273
    if-eqz v1, :cond_8b

    .line 2274
    .line 2275
    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 2276
    .line 2277
    .line 2278
    move v14, v11

    .line 2279
    goto :goto_4a

    .line 2280
    :cond_8b
    move v14, v2

    .line 2281
    :goto_4a
    iget-boolean v1, v0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    .line 2282
    .line 2283
    if-eqz v1, :cond_8c

    .line 2284
    .line 2285
    iget-object v0, v0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 2286
    .line 2287
    invoke-virtual {v0, v11, v11}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    .line 2288
    .line 2289
    .line 2290
    :cond_8c
    move v13, v14

    .line 2291
    goto :goto_4d

    .line 2292
    :cond_8d
    const/4 v2, 0x0

    .line 2293
    :cond_8e
    :goto_4b
    move v13, v2

    .line 2294
    goto :goto_4d

    .line 2295
    :cond_8f
    const/4 v2, 0x0

    .line 2296
    iget v3, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 2297
    .line 2298
    if-ne v3, v1, :cond_8e

    .line 2299
    .line 2300
    const/high16 v6, -0x80000000

    .line 2301
    .line 2302
    iput v6, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 2303
    .line 2304
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 2305
    .line 2306
    .line 2307
    const/high16 v2, 0x10000

    .line 2308
    .line 2309
    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    .line 2310
    .line 2311
    .line 2312
    :goto_4c
    move v13, v11

    .line 2313
    goto :goto_4d

    .line 2314
    :cond_90
    const/4 v2, 0x0

    .line 2315
    iget-object v3, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2316
    .line 2317
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 2318
    .line 2319
    .line 2320
    move-result v5

    .line 2321
    if-eqz v5, :cond_8e

    .line 2322
    .line 2323
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 2324
    .line 2325
    .line 2326
    move-result v3

    .line 2327
    if-nez v3, :cond_91

    .line 2328
    .line 2329
    goto :goto_4b

    .line 2330
    :cond_91
    iget v3, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 2331
    .line 2332
    if-eq v3, v1, :cond_8e

    .line 2333
    .line 2334
    const/high16 v6, -0x80000000

    .line 2335
    .line 2336
    if-eq v3, v6, :cond_92

    .line 2337
    .line 2338
    iput v6, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 2339
    .line 2340
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 2341
    .line 2342
    .line 2343
    const/high16 v2, 0x10000

    .line 2344
    .line 2345
    invoke-virtual {v0, v3, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    .line 2346
    .line 2347
    .line 2348
    :cond_92
    iput v1, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 2349
    .line 2350
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 2351
    .line 2352
    .line 2353
    const v2, 0x8000

    .line 2354
    .line 2355
    .line 2356
    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    .line 2357
    .line 2358
    .line 2359
    goto :goto_4c

    .line 2360
    :cond_93
    invoke-virtual {v0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 2361
    .line 2362
    .line 2363
    move-result v13

    .line 2364
    goto :goto_4d

    .line 2365
    :cond_94
    invoke-virtual {v0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    .line 2366
    .line 2367
    .line 2368
    move-result v13

    .line 2369
    goto :goto_4d

    .line 2370
    :cond_95
    invoke-virtual {v4, v2, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 2371
    .line 2372
    .line 2373
    move-result v13

    .line 2374
    :goto_4d
    return v13

    .line 2375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    .line 2376
    .line 2377
    .line 2378
    .line 2379
    .line 2380
    .line 2381
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

    .line 2382
    .line 2383
    .line 2384
    .line 2385
    .line 2386
    .line 2387
    .line 2388
    .line 2389
    .line 2390
    .line 2391
    .line 2392
    .line 2393
    .line 2394
    .line 2395
    .line 2396
    .line 2397
    .line 2398
    .line 2399
    .line 2400
    .line 2401
    .line 2402
    .line 2403
    .line 2404
    .line 2405
    .line 2406
    .line 2407
    .line 2408
    .line 2409
    .line 2410
    .line 2411
    .line 2412
    .line 2413
    .line 2414
    .line 2415
    .line 2416
    .line 2417
    .line 2418
    .line 2419
    .line 2420
    .line 2421
    .line 2422
    .line 2423
    .line 2424
    .line 2425
    .line 2426
    .line 2427
    .line 2428
    .line 2429
    .line 2430
    .line 2431
    .line 2432
    .line 2433
    .line 2434
    .line 2435
    :pswitch_data_1
    .packed-switch 0x1020038
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 2436
    .line 2437
    .line 2438
    .line 2439
    .line 2440
    .line 2441
    .line 2442
    .line 2443
    .line 2444
    .line 2445
    .line 2446
    .line 2447
    :pswitch_data_2
    .packed-switch 0x1020046
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
