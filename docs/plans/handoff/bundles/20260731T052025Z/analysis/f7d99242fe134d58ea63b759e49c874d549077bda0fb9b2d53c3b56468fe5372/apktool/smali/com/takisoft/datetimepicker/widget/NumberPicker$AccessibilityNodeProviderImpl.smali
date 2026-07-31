.class public final Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAccessibilityFocusedView:I

.field public final mTempArray:[I

.field public final mTempRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lcom/takisoft/datetimepicker/widget/NumberPicker;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [I

    .line 15
    .line 16
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 17
    .line 18
    const/high16 v0, -0x80000000

    .line 19
    .line 20
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "accessibility"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    move v7, v3

    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    move v8, v4

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    iget-object v9, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 34
    .line 35
    iget-object v10, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 36
    .line 37
    const/16 v12, 0x40

    .line 38
    .line 39
    const/4 v14, 0x3

    .line 40
    const/4 v15, 0x2

    .line 41
    const/4 v13, 0x1

    .line 42
    const/4 v11, -0x1

    .line 43
    if-eq v1, v11, :cond_5

    .line 44
    .line 45
    if-eq v1, v13, :cond_4

    .line 46
    .line 47
    if-eq v1, v15, :cond_1

    .line 48
    .line 49
    if-eq v1, v14, :cond_0

    .line 50
    .line 51
    invoke-super/range {p0 .. p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0

    .line 56
    :cond_0
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sub-int v5, v8, v7

    .line 61
    .line 62
    add-int/2addr v5, v3

    .line 63
    iget v6, v2, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 64
    .line 65
    iget v2, v2, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 66
    .line 67
    add-int/2addr v6, v2

    .line 68
    move-object v2, v1

    .line 69
    const/4 v1, 0x3

    .line 70
    invoke-virtual/range {v0 .. v6}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0

    .line 75
    :cond_1
    iget v1, v2, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 76
    .line 77
    iget v4, v2, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 78
    .line 79
    add-int/2addr v1, v4

    .line 80
    sub-int v5, v8, v7

    .line 81
    .line 82
    add-int/2addr v5, v3

    .line 83
    iget v6, v2, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 84
    .line 85
    sub-int/2addr v6, v4

    .line 86
    iget-object v4, v2, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 87
    .line 88
    invoke-virtual {v4}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v4, v2, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 93
    .line 94
    .line 95
    iget v7, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 96
    .line 97
    if-eq v7, v15, :cond_2

    .line 98
    .line 99
    invoke-virtual {v4, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget v0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 103
    .line 104
    if-ne v0, v15, :cond_3

    .line 105
    .line 106
    const/16 v0, 0x80

    .line 107
    .line 108
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 109
    .line 110
    .line 111
    :cond_3
    invoke-virtual {v10, v3, v1, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 112
    .line 113
    .line 114
    const/4 v0, 0x0

    .line 115
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 122
    .line 123
    .line 124
    aget v0, v9, v0

    .line 125
    .line 126
    aget v1, v9, v13

    .line 127
    .line 128
    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 132
    .line 133
    .line 134
    return-object v4

    .line 135
    :cond_4
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    iget v9, v2, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 140
    .line 141
    iget v2, v2, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 142
    .line 143
    sub-int/2addr v9, v2

    .line 144
    sub-int v2, v8, v7

    .line 145
    .line 146
    add-int/2addr v2, v3

    .line 147
    sub-int/2addr v6, v5

    .line 148
    add-int/2addr v6, v4

    .line 149
    move v5, v2

    .line 150
    move-object v2, v1

    .line 151
    const/4 v1, 0x1

    .line 152
    move v4, v9

    .line 153
    invoke-virtual/range {v0 .. v6}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    return-object v0

    .line 158
    :cond_5
    sub-int v1, v8, v7

    .line 159
    .line 160
    add-int/2addr v1, v3

    .line 161
    sub-int/2addr v6, v5

    .line 162
    add-int/2addr v6, v4

    .line 163
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    iget-object v7, v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 168
    .line 169
    const-class v8, Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 170
    .line 171
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    invoke-virtual {v5, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    invoke-virtual {v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    iput v11, v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mVirtualDescendantId:I

    .line 190
    .line 191
    invoke-virtual {v7, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getWrapSelectorWheel()Z

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-nez v8, :cond_6

    .line 199
    .line 200
    invoke-virtual {v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    invoke-virtual {v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getMinValue()I

    .line 205
    .line 206
    .line 207
    move-result v12

    .line 208
    if-le v8, v12, :cond_7

    .line 209
    .line 210
    :cond_6
    invoke-virtual {v7, v2, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 211
    .line 212
    .line 213
    :cond_7
    invoke-virtual {v7, v2, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getWrapSelectorWheel()Z

    .line 217
    .line 218
    .line 219
    move-result v8

    .line 220
    if-nez v8, :cond_8

    .line 221
    .line 222
    invoke-virtual {v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    invoke-virtual {v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getMaxValue()I

    .line 227
    .line 228
    .line 229
    move-result v12

    .line 230
    if-ge v8, v12, :cond_9

    .line 231
    .line 232
    :cond_8
    invoke-virtual {v7, v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 233
    .line 234
    .line 235
    :cond_9
    sget-object v8, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 236
    .line 237
    invoke-virtual {v2}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    check-cast v8, Landroid/view/View;

    .line 242
    .line 243
    iput v11, v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 244
    .line 245
    invoke-virtual {v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    invoke-virtual {v5, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v10, v3, v4, v1, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 262
    .line 263
    .line 264
    const/4 v1, 0x0

    .line 265
    invoke-virtual {v5, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 269
    .line 270
    .line 271
    aget v1, v9, v1

    .line 272
    .line 273
    aget v3, v9, v13

    .line 274
    .line 275
    invoke-virtual {v10, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 279
    .line 280
    .line 281
    iget v1, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 282
    .line 283
    if-eq v1, v11, :cond_a

    .line 284
    .line 285
    const/16 v1, 0x40

    .line 286
    .line 287
    invoke-virtual {v5, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 288
    .line 289
    .line 290
    :cond_a
    iget v0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 291
    .line 292
    if-ne v0, v11, :cond_b

    .line 293
    .line 294
    const/16 v0, 0x80

    .line 295
    .line 296
    invoke-virtual {v5, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 297
    .line 298
    .line 299
    :cond_b
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-eqz v0, :cond_f

    .line 304
    .line 305
    invoke-virtual {v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getWrapSelectorWheel()Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-nez v0, :cond_c

    .line 310
    .line 311
    invoke-virtual {v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    invoke-virtual {v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getMaxValue()I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-ge v0, v1, :cond_d

    .line 320
    .line 321
    :cond_c
    const/16 v0, 0x1000

    .line 322
    .line 323
    invoke-virtual {v5, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 324
    .line 325
    .line 326
    :cond_d
    invoke-virtual {v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getWrapSelectorWheel()Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-nez v0, :cond_e

    .line 331
    .line 332
    invoke-virtual {v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    invoke-virtual {v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getMinValue()I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-le v0, v1, :cond_f

    .line 341
    .line 342
    :cond_e
    const/16 v0, 0x2000

    .line 343
    .line 344
    invoke-virtual {v5, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 345
    .line 346
    .line 347
    :cond_f
    return-object v7
.end method

.method public final createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    .line 1
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Landroid/widget/Button;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    iput p1, v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mVirtualDescendantId:I

    .line 30
    .line 31
    invoke-virtual {v3, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 32
    .line 33
    .line 34
    const/4 v2, -0x1

    .line 35
    iput v2, v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    invoke-virtual {v3, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 58
    .line 59
    invoke-virtual {v2, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    .line 61
    .line 62
    sget-object p3, Lcom/takisoft/datetimepicker/widget/NumberPicker;->sTwoDigitFormatter:Lcom/takisoft/datetimepicker/widget/NumberPicker$TwoDigitFormatter;

    .line 63
    .line 64
    const/4 p3, 0x0

    .line 65
    invoke-virtual {v0, p3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 69
    .line 70
    .line 71
    iget-object p4, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 72
    .line 73
    invoke-virtual {v1, p4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 74
    .line 75
    .line 76
    aget p3, p4, p3

    .line 77
    .line 78
    aget p2, p4, p2

    .line 79
    .line 80
    invoke-virtual {v2, p3, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 84
    .line 85
    .line 86
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 87
    .line 88
    if-eq p2, p1, :cond_0

    .line 89
    .line 90
    const/16 p2, 0x40

    .line 91
    .line 92
    invoke-virtual {v0, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 93
    .line 94
    .line 95
    :cond_0
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 96
    .line 97
    if-ne p0, p1, :cond_1

    .line 98
    .line 99
    const/16 p0, 0x80

    .line 100
    .line 101
    invoke-virtual {v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 102
    .line 103
    .line 104
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-eqz p0, :cond_2

    .line 109
    .line 110
    const/16 p0, 0x10

    .line 111
    .line 112
    invoke-virtual {v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 113
    .line 114
    .line 115
    :cond_2
    return-object v3
.end method

.method public final findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    const/4 v3, 0x3

    .line 21
    const/4 v4, 0x2

    .line 22
    const/4 v5, 0x1

    .line 23
    if-eq p2, v2, :cond_2

    .line 24
    .line 25
    if-eq p2, v5, :cond_1

    .line 26
    .line 27
    if-eq p2, v4, :cond_1

    .line 28
    .line 29
    if-eq p2, v3, :cond_1

    .line 30
    .line 31
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    invoke-virtual {p0, v0, p2, v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_2
    invoke-virtual {p0, v0, v3, v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, v4, v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0, v5, v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 47
    .line 48
    .line 49
    return-object v1
.end method

.method public final findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p2, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p2, v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_4

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 45
    .line 46
    iget-object v1, p2, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    iget-object p2, p2, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 81
    .line 82
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_4

    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_4

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    :cond_4
    :goto_0
    return-void
.end method

.method public final getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 2
    .line 3
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mValue:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :cond_0
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 16
    .line 17
    if-lt v0, v1, :cond_2

    .line 18
    .line 19
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1
    sub-int/2addr v0, v1

    .line 29
    aget-object p0, v2, v0

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public final getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 2
    .line 3
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mValue:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :cond_0
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxValue:I

    .line 16
    .line 17
    if-gt v0, v1, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 29
    .line 30
    sub-int/2addr v0, p0

    .line 31
    aget-object p0, v1, v0

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, -0x1

    .line 12
    const/high16 v4, -0x80000000

    .line 13
    .line 14
    const/16 v5, 0x80

    .line 15
    .line 16
    const/16 v6, 0x40

    .line 17
    .line 18
    const/4 v7, 0x1

    .line 19
    const/4 v8, 0x0

    .line 20
    if-eq p1, v3, :cond_10

    .line 21
    .line 22
    const v3, 0x8000

    .line 23
    .line 24
    .line 25
    const/high16 v9, 0x10000

    .line 26
    .line 27
    const/16 v10, 0x10

    .line 28
    .line 29
    if-eq p1, v7, :cond_c

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    if-eq p1, v2, :cond_5

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    if-eq p1, v2, :cond_0

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_0
    if-eq p2, v10, :cond_3

    .line 40
    .line 41
    if-eq p2, v6, :cond_2

    .line 42
    .line 43
    if-eq p2, v5, :cond_1

    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_1
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 48
    .line 49
    if-ne p2, p1, :cond_17

    .line 50
    .line 51
    iput v4, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 52
    .line 53
    invoke-virtual {p0, p1, v9}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 54
    .line 55
    .line 56
    iget p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 57
    .line 58
    invoke-virtual {v0, v8, v8, v1, p0}, Landroid/view/View;->invalidate(IIII)V

    .line 59
    .line 60
    .line 61
    return v7

    .line 62
    :cond_2
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 63
    .line 64
    if-eq p2, p1, :cond_17

    .line 65
    .line 66
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 67
    .line 68
    invoke-virtual {p0, p1, v3}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 69
    .line 70
    .line 71
    iget p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 72
    .line 73
    invoke-virtual {v0, v8, v8, v1, p0}, Landroid/view/View;->invalidate(IIII)V

    .line 74
    .line 75
    .line 76
    return v7

    .line 77
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_17

    .line 82
    .line 83
    if-ne p1, v7, :cond_4

    .line 84
    .line 85
    move v8, v7

    .line 86
    :cond_4
    sget-object p2, Lcom/takisoft/datetimepicker/widget/NumberPicker;->sTwoDigitFormatter:Lcom/takisoft/datetimepicker/widget/NumberPicker$TwoDigitFormatter;

    .line 87
    .line 88
    invoke-virtual {v0, v8}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->changeValueByOne(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1, v7}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 92
    .line 93
    .line 94
    return v7

    .line 95
    :cond_5
    if-eq p2, v7, :cond_b

    .line 96
    .line 97
    if-eq p2, v2, :cond_a

    .line 98
    .line 99
    if-eq p2, v10, :cond_9

    .line 100
    .line 101
    const/16 v1, 0x20

    .line 102
    .line 103
    if-eq p2, v1, :cond_8

    .line 104
    .line 105
    if-eq p2, v6, :cond_7

    .line 106
    .line 107
    if-eq p2, v5, :cond_6

    .line 108
    .line 109
    iget-object p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 110
    .line 111
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 112
    .line 113
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    return p0

    .line 118
    :cond_6
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 119
    .line 120
    if-ne p2, p1, :cond_17

    .line 121
    .line 122
    iput v4, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 123
    .line 124
    invoke-virtual {p0, p1, v9}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 125
    .line 126
    .line 127
    iget-object p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 130
    .line 131
    .line 132
    return v7

    .line 133
    :cond_7
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 134
    .line 135
    if-eq p2, p1, :cond_17

    .line 136
    .line 137
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 138
    .line 139
    invoke-virtual {p0, p1, v3}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 140
    .line 141
    .line 142
    iget-object p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 145
    .line 146
    .line 147
    return v7

    .line 148
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-eqz p0, :cond_17

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->performLongClick()Z

    .line 155
    .line 156
    .line 157
    return v7

    .line 158
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    if-eqz p0, :cond_17

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->performClick()Z

    .line 165
    .line 166
    .line 167
    return v7

    .line 168
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    if-eqz p0, :cond_17

    .line 173
    .line 174
    iget-object p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    if-eqz p0, :cond_17

    .line 181
    .line 182
    iget-object p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 185
    .line 186
    .line 187
    return v7

    .line 188
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    if-eqz p0, :cond_17

    .line 193
    .line 194
    iget-object p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    if-nez p0, :cond_17

    .line 201
    .line 202
    iget-object p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 203
    .line 204
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    return p0

    .line 209
    :cond_c
    if-eq p2, v10, :cond_f

    .line 210
    .line 211
    if-eq p2, v6, :cond_e

    .line 212
    .line 213
    if-eq p2, v5, :cond_d

    .line 214
    .line 215
    goto/16 :goto_1

    .line 216
    .line 217
    :cond_d
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 218
    .line 219
    if-ne p2, p1, :cond_17

    .line 220
    .line 221
    iput v4, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 222
    .line 223
    invoke-virtual {p0, p1, v9}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 224
    .line 225
    .line 226
    iget p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 227
    .line 228
    invoke-virtual {v0, v8, p0, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    .line 229
    .line 230
    .line 231
    return v7

    .line 232
    :cond_e
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 233
    .line 234
    if-eq p2, p1, :cond_17

    .line 235
    .line 236
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 237
    .line 238
    invoke-virtual {p0, p1, v3}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 239
    .line 240
    .line 241
    iget p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 242
    .line 243
    invoke-virtual {v0, v8, p0, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    .line 244
    .line 245
    .line 246
    return v7

    .line 247
    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    if-eqz p2, :cond_17

    .line 252
    .line 253
    sget-object p2, Lcom/takisoft/datetimepicker/widget/NumberPicker;->sTwoDigitFormatter:Lcom/takisoft/datetimepicker/widget/NumberPicker$TwoDigitFormatter;

    .line 254
    .line 255
    invoke-virtual {v0, v7}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->changeValueByOne(Z)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, p1, v7}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 259
    .line 260
    .line 261
    return v7

    .line 262
    :cond_10
    if-eq p2, v6, :cond_16

    .line 263
    .line 264
    if-eq p2, v5, :cond_15

    .line 265
    .line 266
    const/16 v1, 0x1000

    .line 267
    .line 268
    if-eq p2, v1, :cond_13

    .line 269
    .line 270
    const/16 v1, 0x2000

    .line 271
    .line 272
    if-eq p2, v1, :cond_11

    .line 273
    .line 274
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 275
    .line 276
    .line 277
    move-result p0

    .line 278
    return p0

    .line 279
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    if-eqz p0, :cond_17

    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getWrapSelectorWheel()Z

    .line 286
    .line 287
    .line 288
    move-result p0

    .line 289
    if-nez p0, :cond_12

    .line 290
    .line 291
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

    .line 292
    .line 293
    .line 294
    move-result p0

    .line 295
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getMinValue()I

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    if-le p0, p1, :cond_17

    .line 300
    .line 301
    :cond_12
    invoke-virtual {v0, v8}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->changeValueByOne(Z)V

    .line 302
    .line 303
    .line 304
    return v7

    .line 305
    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 306
    .line 307
    .line 308
    move-result p0

    .line 309
    if-eqz p0, :cond_17

    .line 310
    .line 311
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getWrapSelectorWheel()Z

    .line 312
    .line 313
    .line 314
    move-result p0

    .line 315
    if-nez p0, :cond_14

    .line 316
    .line 317
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

    .line 318
    .line 319
    .line 320
    move-result p0

    .line 321
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getMaxValue()I

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    if-ge p0, p1, :cond_17

    .line 326
    .line 327
    :cond_14
    invoke-virtual {v0, v7}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->changeValueByOne(Z)V

    .line 328
    .line 329
    .line 330
    return v7

    .line 331
    :cond_15
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 332
    .line 333
    if-ne p2, p1, :cond_17

    .line 334
    .line 335
    iput v4, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 336
    .line 337
    sget-object p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->sTwoDigitFormatter:Lcom/takisoft/datetimepicker/widget/NumberPicker$TwoDigitFormatter;

    .line 338
    .line 339
    return v7

    .line 340
    :cond_16
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 341
    .line 342
    if-eq p2, p1, :cond_17

    .line 343
    .line 344
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 345
    .line 346
    sget-object p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->sTwoDigitFormatter:Lcom/takisoft/datetimepicker/widget/NumberPicker$TwoDigitFormatter;

    .line 347
    .line 348
    return v7

    .line 349
    :cond_17
    :goto_1
    return v8
.end method

.method public final sendAccessibilityEventForVirtualButton(ILjava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    const-class v0, Landroid/widget/Button;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p0, p3}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method public final sendAccessibilityEventForVirtualView(II)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 3
    .line 4
    if-eq p1, v0, :cond_5

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getWrapSelectorWheel()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getMinValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-le v0, v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void

    .line 31
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, p1, v0, p2}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(ILjava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 40
    .line 41
    if-eqz p0, :cond_4

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_4

    .line 48
    .line 49
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    iget-object p1, v1, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, v1, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 59
    .line 60
    invoke-virtual {p1, p0}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v1, p0}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_1
    return-void

    .line 70
    :cond_5
    invoke-virtual {v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getWrapSelectorWheel()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_7

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual {v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getMaxValue()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-ge v0, v1, :cond_6

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_6
    return-void

    .line 88
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p0, p1, v0, p2}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(ILjava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
