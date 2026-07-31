.class public final Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;
.super Landroidx/work/impl/constraints/trackers/ConstraintTracker;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mAllowAutoAdvance:Z

.field public final mAmLabel:Landroid/widget/RadioButton;

.field public final mAmPmLayout:Landroid/view/View;

.field public final mCommitHour:Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$5;

.field public final mCommitMinute:Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$5;

.field public mCurrentHour:I

.field public mCurrentMinute:I

.field public mHourFormatShowLeadingZero:Z

.field public mHourFormatStartsAtZero:Z

.field public final mHourView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

.field public mIs24Hour:Z

.field public mIsAmPmAtStart:Z

.field public mIsEnabled:Z

.field public mLastAnnouncedIsHour:Z

.field public mLastAnnouncedText:Ljava/lang/CharSequence;

.field public final mMinuteView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

.field public final mPmLabel:Landroid/widget/RadioButton;

.field public mRadialPickerModeEnabled:Z

.field public final mRadialTimePickerHeader:Landroid/view/View;

.field public final mRadialTimePickerModeButton:Landroid/widget/ImageButton;

.field public final mRadialTimePickerModeEnabledDescription:Ljava/lang/String;

.field public final mRadialTimePickerView:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

.field public final mSelectHours:Ljava/lang/String;

.field public final mSelectMinutes:Ljava/lang/String;

.field public final mSeparatorView:Landroid/widget/TextView;

.field public final mTextInputPickerHeader:Landroid/view/View;

.field public final mTextInputPickerModeEnabledDescription:Ljava/lang/String;

.field public final mTextInputPickerView:Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;


# direct methods
.method public constructor <init>(Lcom/takisoft/datetimepicker/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    move/from16 v4, p5

    .line 10
    .line 11
    invoke-direct/range {p0 .. p2}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;-><init>(Lcom/takisoft/datetimepicker/widget/TimePicker;Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    iput-boolean v5, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    .line 16
    .line 17
    iput-boolean v5, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIsEnabled:Z

    .line 18
    .line 19
    new-instance v6, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;

    .line 20
    .line 21
    invoke-direct {v6, v0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;-><init>(Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;)V

    .line 22
    .line 23
    .line 24
    new-instance v7, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;

    .line 25
    .line 26
    invoke-direct {v7, v0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;-><init>(Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;)V

    .line 27
    .line 28
    .line 29
    new-instance v8, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;

    .line 30
    .line 31
    invoke-direct {v8, v0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;-><init>(Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;)V

    .line 32
    .line 33
    .line 34
    new-instance v9, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$5;

    .line 35
    .line 36
    const/4 v10, 0x0

    .line 37
    invoke-direct {v9, v0, v10}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$5;-><init>(Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;I)V

    .line 38
    .line 39
    .line 40
    iput-object v9, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCommitHour:Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$5;

    .line 41
    .line 42
    new-instance v9, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$5;

    .line 43
    .line 44
    invoke-direct {v9, v0, v5}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$5;-><init>(Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;I)V

    .line 45
    .line 46
    .line 47
    iput-object v9, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCommitMinute:Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$5;

    .line 48
    .line 49
    new-instance v9, Landroidx/appcompat/widget/SearchView$3;

    .line 50
    .line 51
    const/4 v11, 0x2

    .line 52
    invoke-direct {v9, v11, v0}, Landroidx/appcompat/widget/SearchView$3;-><init>(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    new-instance v12, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$1;

    .line 56
    .line 57
    invoke-direct {v12, v0, v5}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$1;-><init>(Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;I)V

    .line 58
    .line 59
    .line 60
    sget-object v13, Lcom/takisoft/datetimepicker/R$styleable;->TimePicker:[I

    .line 61
    .line 62
    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 63
    .line 64
    .line 65
    move-result-object v13

    .line 66
    const-string v14, "layout_inflater"

    .line 67
    .line 68
    invoke-virtual {v1, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v14

    .line 72
    check-cast v14, Landroid/view/LayoutInflater;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v15

    .line 78
    move/from16 v16, v5

    .line 79
    .line 80
    const v5, 0x7f120581

    .line 81
    .line 82
    .line 83
    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    iput-object v10, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    .line 88
    .line 89
    const v10, 0x7f120582

    .line 90
    .line 91
    .line 92
    invoke-virtual {v15, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v15

    .line 96
    iput-object v15, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    .line 97
    .line 98
    const v15, 0x7f0c0580

    .line 99
    .line 100
    .line 101
    invoke-virtual {v13, v11, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    move-object/from16 v15, p1

    .line 106
    .line 107
    invoke-virtual {v14, v11, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    const/4 v14, 0x0

    .line 112
    invoke-virtual {v11, v14}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 113
    .line 114
    .line 115
    const v14, 0x7f090437

    .line 116
    .line 117
    .line 118
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v14

    .line 122
    iput-object v14, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    .line 123
    .line 124
    new-instance v15, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 125
    .line 126
    invoke-direct {v15}, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v14, v15}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    .line 131
    .line 132
    const v15, 0x7f090228

    .line 133
    .line 134
    .line 135
    invoke-virtual {v11, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v15

    .line 139
    check-cast v15, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 140
    .line 141
    iput-object v15, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mHourView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 142
    .line 143
    invoke-virtual {v15, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v15, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v15, v8}, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->setOnDigitEnteredListener(Lcom/takisoft/datetimepicker/widget/internal/NumericTextView$OnValueChangedListener;)V

    .line 150
    .line 151
    .line 152
    new-instance v10, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$ClickActionDelegate;

    .line 153
    .line 154
    invoke-direct {v10, v1, v5}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v15, v10}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 158
    .line 159
    .line 160
    const v5, 0x7f0903a9

    .line 161
    .line 162
    .line 163
    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    check-cast v5, Landroid/widget/TextView;

    .line 168
    .line 169
    iput-object v5, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    .line 170
    .line 171
    const v10, 0x7f0902ba

    .line 172
    .line 173
    .line 174
    invoke-virtual {v11, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    check-cast v10, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 179
    .line 180
    iput-object v10, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mMinuteView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 181
    .line 182
    invoke-virtual {v10, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v10, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v10, v8}, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->setOnDigitEnteredListener(Lcom/takisoft/datetimepicker/widget/internal/NumericTextView$OnValueChangedListener;)V

    .line 189
    .line 190
    .line 191
    new-instance v8, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$ClickActionDelegate;

    .line 192
    .line 193
    const v9, 0x7f120582

    .line 194
    .line 195
    .line 196
    invoke-direct {v8, v1, v9}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v10, v8}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 200
    .line 201
    .line 202
    const/16 v8, 0x3b

    .line 203
    .line 204
    const/4 v9, 0x0

    .line 205
    invoke-virtual {v10, v9, v8}, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->setRange(II)V

    .line 206
    .line 207
    .line 208
    const v8, 0x7f090076

    .line 209
    .line 210
    .line 211
    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    iput-object v8, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    .line 216
    .line 217
    new-instance v9, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 218
    .line 219
    invoke-direct {v9}, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v1}, Lcom/takisoft/datetimepicker/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    move-object/from16 p1, v9

    .line 230
    .line 231
    const v9, 0x7f090074

    .line 232
    .line 233
    .line 234
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    check-cast v9, Landroid/widget/RadioButton;

    .line 239
    .line 240
    iput-object v9, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    .line 241
    .line 242
    const/4 v1, 0x0

    .line 243
    aget-object v17, p1, v1

    .line 244
    .line 245
    invoke-static/range {v17 .. v17}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v9, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    .line 254
    .line 255
    const/4 v1, 0x0

    .line 256
    invoke-virtual {v9, v1, v1}, Landroid/view/View;->measure(II)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v9, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 267
    .line 268
    .line 269
    const v1, 0x7f09033d

    .line 270
    .line 271
    .line 272
    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    check-cast v1, Landroid/widget/RadioButton;

    .line 277
    .line 278
    iput-object v1, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    .line 279
    .line 280
    aget-object v8, p1, v16

    .line 281
    .line 282
    invoke-static {v8}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    .line 291
    .line 292
    const/4 v8, 0x0

    .line 293
    invoke-virtual {v1, v8, v8}, Landroid/view/View;->measure(II)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v8}, Landroid/view/View;->setMinimumWidth(I)V

    .line 304
    .line 305
    .line 306
    move/from16 v8, v16

    .line 307
    .line 308
    invoke-virtual {v13, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 309
    .line 310
    .line 311
    move-result-object v12

    .line 312
    const v8, 0x7f09023e

    .line 313
    .line 314
    .line 315
    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 316
    .line 317
    .line 318
    move-result-object v8

    .line 319
    iput-object v8, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    .line 320
    .line 321
    if-eqz v12, :cond_0

    .line 322
    .line 323
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 336
    .line 337
    .line 338
    :cond_0
    const/4 v1, 0x4

    .line 339
    invoke-virtual {v13, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    if-eqz v5, :cond_1

    .line 344
    .line 345
    invoke-virtual {v13, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    invoke-virtual {v14, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v13, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v8, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 357
    .line 358
    .line 359
    :cond_1
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 360
    .line 361
    .line 362
    const v1, 0x7f09035a

    .line 363
    .line 364
    .line 365
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    check-cast v1, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 370
    .line 371
    iput-object v1, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 372
    .line 373
    invoke-virtual {v1, v2, v3, v4}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v6}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->setOnValueSelectedListener(Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$OnValueSelectedListener;)V

    .line 377
    .line 378
    .line 379
    const v1, 0x7f090241

    .line 380
    .line 381
    .line 382
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    check-cast v1, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;

    .line 387
    .line 388
    iput-object v1, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;

    .line 389
    .line 390
    invoke-virtual {v1, v7}, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->setListener(Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$OnValueTypedListener;)V

    .line 391
    .line 392
    .line 393
    const v1, 0x7f090442

    .line 394
    .line 395
    .line 396
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    check-cast v1, Landroid/widget/ImageButton;

    .line 401
    .line 402
    iput-object v1, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    .line 403
    .line 404
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    const v3, 0x7f040121

    .line 409
    .line 410
    .line 411
    filled-new-array {v3}, [I

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    move-object/from16 v4, p2

    .line 416
    .line 417
    invoke-virtual {v4, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    const/4 v14, 0x0

    .line 422
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 427
    .line 428
    .line 429
    if-eqz v5, :cond_2

    .line 430
    .line 431
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 432
    .line 433
    .line 434
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 435
    .line 436
    .line 437
    new-instance v2, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$1;

    .line 438
    .line 439
    invoke-direct {v2, v0, v14}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$1;-><init>(Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    const v2, 0x7f120649

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    iput-object v1, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerModeEnabledDescription:Ljava/lang/String;

    .line 457
    .line 458
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    const v2, 0x7f12064a

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    iput-object v1, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mTextInputPickerModeEnabledDescription:Ljava/lang/String;

    .line 470
    .line 471
    const/4 v8, 0x1

    .line 472
    iput-boolean v8, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    .line 473
    .line 474
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->updateHourFormat()V

    .line 475
    .line 476
    .line 477
    iget-object v1, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    .line 478
    .line 479
    check-cast v1, Ljava/util/Locale;

    .line 480
    .line 481
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    const/16 v2, 0xb

    .line 486
    .line 487
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    const/16 v3, 0xc

    .line 492
    .line 493
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    iget-boolean v3, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 498
    .line 499
    iput v2, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 500
    .line 501
    iput v1, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 502
    .line 503
    iput-boolean v3, v0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 504
    .line 505
    const/4 v14, 0x0

    .line 506
    invoke-virtual {v0, v14}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->updateUI(I)V

    .line 507
    .line 508
    .line 509
    return-void
.end method

.method public static access$800(Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    move v4, v3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v4, v2

    .line 12
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setActivated(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 16
    .line 17
    .line 18
    if-ne p1, v3, :cond_1

    .line 19
    .line 20
    move v2, v3

    .line 21
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 28
    .line 29
    iget v1, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mAmOrPm:I

    .line 30
    .line 31
    if-eq v1, p1, :cond_3

    .line 32
    .line 33
    iget-boolean v1, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iput p1, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mAmOrPm:I

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 41
    .line 42
    .line 43
    iget-object p1, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTouchHelper:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->getHour()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Lcom/takisoft/datetimepicker/widget/TimePicker$OnTimeChangedListener;

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->getHour()I

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Lcom/takisoft/datetimepicker/widget/TimePicker$OnTimeChangedListener;->onTimeChanged()V

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_1
    return-void
.end method

.method public static final obtainVerbatim(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 3

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/text/style/TtsSpan$Builder;->build()Landroid/text/style/TtsSpan;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method


# virtual methods
.method public final getAmView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBaseline()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final getHour()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentHour()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-boolean p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getAmOrPm()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p0, v0, :cond_1

    .line 18
    .line 19
    rem-int/lit8 v1, v1, 0xc

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0xc

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    rem-int/lit8 v1, v1, 0xc

    .line 25
    .line 26
    return v1
.end method

.method public final getHourView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mHourView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLocalizedHour(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    rem-int/lit8 p1, p1, 0xc

    .line 6
    .line 7
    :cond_0
    iget-boolean p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    .line 8
    .line 9
    if-nez p0, :cond_2

    .line 10
    .line 11
    if-nez p1, :cond_2

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/16 p0, 0x18

    .line 16
    .line 17
    return p0

    .line 18
    :cond_1
    const/16 p0, 0xc

    .line 19
    .line 20
    return p0

    .line 21
    :cond_2
    return p1
.end method

.method public final getMinute()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getMinuteView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mMinuteView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPmView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    .line 2
    .line 3
    return-object p0
.end method

.method public final is24Hour()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIsEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final onRestoreInstanceState(Landroid/view/View$BaseSavedState;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/takisoft/datetimepicker/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/takisoft/datetimepicker/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    .line 6
    .line 7
    iget v0, p1, Lcom/takisoft/datetimepicker/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mHour:I

    .line 8
    .line 9
    iget v1, p1, Lcom/takisoft/datetimepicker/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mMinute:I

    .line 10
    .line 11
    iget-boolean v2, p1, Lcom/takisoft/datetimepicker/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mIs24HourMode:Z

    .line 12
    .line 13
    iget p1, p1, Lcom/takisoft/datetimepicker/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mCurrentItemShowing:I

    .line 14
    .line 15
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 16
    .line 17
    iput v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 18
    .line 19
    iput-boolean v2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->updateUI(I)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Parcelable;)Lcom/takisoft/datetimepicker/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    .locals 6

    .line 1
    new-instance v0, Lcom/takisoft/datetimepicker/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->getHour()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-boolean v4, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentItemShowing()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    move-object v1, p1

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/takisoft/datetimepicker/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final onTimeChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->taskExecutor:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lcom/takisoft/datetimepicker/widget/TimePicker$OnTimeChangedListener;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->getHour()I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Lcom/takisoft/datetimepicker/widget/TimePicker$OnTimeChangedListener;->onTimeChanged()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/takisoft/datetimepicker/widget/TimePicker$1;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->getHour()I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/TimePicker$1;->onTimeChanged()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final setCurrentItemShowing(IZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->taskExecutor:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    if-eq p1, v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "ClockView does not support showing item "

    .line 19
    .line 20
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const-string v2, "RadialTimePickerView"

    .line 31
    .line 32
    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v2, v1, p2}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->showPicker(ZZ)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v2, v3, p2}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->showPicker(ZZ)V

    .line 41
    .line 42
    .line 43
    :goto_0
    if-nez p1, :cond_2

    .line 44
    .line 45
    if-eqz p3, :cond_3

    .line 46
    .line 47
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, p2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    if-eqz p3, :cond_3

    .line 54
    .line 55
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, p2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 61
    .line 62
    move p2, v3

    .line 63
    goto :goto_2

    .line 64
    :cond_4
    move p2, v1

    .line 65
    :goto_2
    iget-object p3, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mHourView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 66
    .line 67
    invoke-virtual {p3, p2}, Landroid/view/View;->setActivated(Z)V

    .line 68
    .line 69
    .line 70
    if-ne p1, v3, :cond_5

    .line 71
    .line 72
    move v1, v3

    .line 73
    :cond_5
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mMinuteView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mHourView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mMinuteView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 24
    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIsEnabled:Z

    .line 27
    .line 28
    return-void
.end method

.method public final setHour(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->setHourInternal(IIZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setHourInternal(IIZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->taskExecutor:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 4
    .line 5
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 6
    .line 7
    if-ne v1, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mHourView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->setValue(I)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    iget-boolean v2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    .line 29
    .line 30
    if-ne v2, v1, :cond_1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    .line 33
    .line 34
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0, p3}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iput-object p3, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    .line 46
    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    .line 48
    .line 49
    .line 50
    if-eq p2, v1, :cond_5

    .line 51
    .line 52
    iget-object p3, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 53
    .line 54
    invoke-virtual {p3, p1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 55
    .line 56
    .line 57
    const/16 v2, 0xc

    .line 58
    .line 59
    if-ge p1, v2, :cond_3

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    :cond_3
    iget p1, p3, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mAmOrPm:I

    .line 63
    .line 64
    if-eq p1, v1, :cond_5

    .line 65
    .line 66
    iget-boolean p1, p3, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    iput v1, p3, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mAmOrPm:I

    .line 72
    .line 73
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p3, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTouchHelper:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 79
    .line 80
    .line 81
    :cond_5
    :goto_0
    const/4 p1, 0x2

    .line 82
    if-eq p2, p1, :cond_6

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 85
    .line 86
    .line 87
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->onTimeChanged()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final setIs24Hour(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->getHour()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->updateHourFormat()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentItemShowing()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->updateUI(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final setMinute(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->setMinuteInternal(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final setMinuteInternal(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->taskExecutor:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 4
    .line 5
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 6
    .line 7
    if-ne v1, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 11
    .line 12
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mMinuteView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->setValue(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-boolean v2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    .line 40
    .line 41
    :cond_2
    const/4 v1, 0x1

    .line 42
    if-eq p2, v1, :cond_3

    .line 43
    .line 44
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 47
    .line 48
    .line 49
    :cond_3
    const/4 p1, 0x2

    .line 50
    if-eq p2, p1, :cond_4

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 53
    .line 54
    .line 55
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->onTimeChanged()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final updateHeaderAmPm()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x8

    .line 8
    .line 9
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/util/Locale;

    .line 16
    .line 17
    const-string v2, "hm"

    .line 18
    .line 19
    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "a"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-boolean v2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eq v2, v0, :cond_4

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    aget v6, v5, v4

    .line 48
    .line 49
    if-nez v6, :cond_1

    .line 50
    .line 51
    aget v5, v5, v3

    .line 52
    .line 53
    if-eqz v5, :cond_3

    .line 54
    .line 55
    :cond_1
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mHourView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mMinuteView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 86
    .line 87
    const/16 v1, 0xc

    .line 88
    .line 89
    if-ge v0, v1, :cond_5

    .line 90
    .line 91
    move v0, v3

    .line 92
    goto :goto_1

    .line 93
    :cond_5
    move v0, v4

    .line 94
    :goto_1
    xor-int/lit8 v1, v0, 0x1

    .line 95
    .line 96
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    .line 97
    .line 98
    invoke-virtual {v2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 102
    .line 103
    .line 104
    if-ne v0, v4, :cond_6

    .line 105
    .line 106
    move v3, v4

    .line 107
    :cond_6
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    .line 108
    .line 109
    invoke-virtual {p0, v3}, Landroid/view/View;->setActivated(Z)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final updateHourFormat()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Locale;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "Hm"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v1, "hm"

    .line 13
    .line 14
    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    :goto_1
    const/16 v5, 0x4b

    .line 25
    .line 26
    const/16 v6, 0x48

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    if-ge v4, v2, :cond_4

    .line 30
    .line 31
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    if-eq v8, v6, :cond_2

    .line 36
    .line 37
    const/16 v9, 0x68

    .line 38
    .line 39
    if-eq v8, v9, :cond_2

    .line 40
    .line 41
    if-eq v8, v5, :cond_2

    .line 42
    .line 43
    const/16 v9, 0x6b

    .line 44
    .line 45
    if-ne v8, v9, :cond_1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_2
    add-int/2addr v4, v7

    .line 52
    if-ge v4, v2, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-ne v8, v1, :cond_3

    .line 59
    .line 60
    move v1, v7

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    move v1, v3

    .line 63
    goto :goto_3

    .line 64
    :cond_4
    move v1, v3

    .line 65
    move v8, v1

    .line 66
    :goto_3
    iput-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    .line 67
    .line 68
    if-eq v8, v5, :cond_6

    .line 69
    .line 70
    if-ne v8, v6, :cond_5

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_5
    move v1, v3

    .line 74
    goto :goto_5

    .line 75
    :cond_6
    :goto_4
    move v1, v7

    .line 76
    :goto_5
    iput-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    .line 77
    .line 78
    xor-int/2addr v1, v7

    .line 79
    iget-boolean v2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 80
    .line 81
    if-eqz v2, :cond_7

    .line 82
    .line 83
    const/16 v2, 0x17

    .line 84
    .line 85
    goto :goto_6

    .line 86
    :cond_7
    const/16 v2, 0xb

    .line 87
    .line 88
    :goto_6
    add-int/2addr v2, v1

    .line 89
    iget-object v4, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mHourView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 90
    .line 91
    invoke-virtual {v4, v1, v2}, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->setRange(II)V

    .line 92
    .line 93
    .line 94
    iget-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    .line 95
    .line 96
    invoke-virtual {v4, v1}, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->setShowLeadingZeroes(Z)V

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0, v3}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 104
    .line 105
    .line 106
    move v1, v3

    .line 107
    :goto_7
    const/16 v2, 0xa

    .line 108
    .line 109
    if-ge v3, v2, :cond_8

    .line 110
    .line 111
    int-to-long v4, v3

    .line 112
    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    add-int/lit8 v3, v3, 0x1

    .line 125
    .line 126
    goto :goto_7

    .line 127
    :cond_8
    mul-int/lit8 v1, v1, 0x2

    .line 128
    .line 129
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->setHourFormat(I)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final updateTextInputPicker()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 8
    .line 9
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 10
    .line 11
    const/16 v3, 0xc

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    if-ge v2, v3, :cond_0

    .line 16
    .line 17
    move v2, v5

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v4

    .line 20
    :goto_0
    iget-boolean v3, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 21
    .line 22
    iget-boolean v6, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    .line 23
    .line 24
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;

    .line 25
    .line 26
    iput-boolean v3, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mIs24Hour:Z

    .line 27
    .line 28
    iput-boolean v6, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    .line 29
    .line 30
    iget-object v6, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v3, v5

    .line 37
    :goto_1
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    .line 41
    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {v3, v5}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 49
    .line 50
    .line 51
    :goto_2
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-array v3, v4, [Ljava/lang/Object;

    .line 58
    .line 59
    aput-object v0, v3, v5

    .line 60
    .line 61
    const-string v0, "%d"

    .line 62
    .line 63
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    new-array v3, v4, [Ljava/lang/Object;

    .line 77
    .line 78
    aput-object v1, v3, v5

    .line 79
    .line 80
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mErrorShowing:Z

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->validateInput()Z

    .line 92
    .line 93
    .line 94
    :cond_3
    return-void
.end method

.method public final updateUI(I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mHourView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->setValue(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/util/Locale;

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string v1, "Hm"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v1, "hm"

    .line 27
    .line 28
    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x4

    .line 33
    new-array v2, v1, [C

    .line 34
    .line 35
    fill-array-data v2, :array_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x1

    .line 43
    sub-int/2addr v3, v4

    .line 44
    :goto_1
    const/4 v5, 0x0

    .line 45
    const/4 v6, -0x1

    .line 46
    if-ltz v3, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    move v8, v5

    .line 53
    :goto_2
    if-ge v8, v1, :cond_2

    .line 54
    .line 55
    aget-char v9, v2, v8

    .line 56
    .line 57
    if-ne v7, v9, :cond_1

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move v3, v6

    .line 67
    :goto_3
    if-ne v3, v6, :cond_4

    .line 68
    .line 69
    const-string v0, ":"

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_4
    add-int/2addr v3, v4

    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :goto_4
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mInputSeparatorView:Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 94
    .line 95
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mMinuteView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->setValue(I)V

    .line 98
    .line 99
    .line 100
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 101
    .line 102
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 103
    .line 104
    iget-boolean v2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 105
    .line 106
    iget-object v3, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 107
    .line 108
    iget-boolean v6, v3, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 109
    .line 110
    if-eq v6, v2, :cond_5

    .line 111
    .line 112
    iput-boolean v2, v3, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->initData()V

    .line 115
    .line 116
    .line 117
    :cond_5
    invoke-virtual {v3, v0, v5}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->setCurrentHourInternal(IZ)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v1, v5}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1, v5, v4}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 127
    .line 128
    .line 129
    iget-object p0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->taskExecutor:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p0, Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
    .end array-data
.end method

.method public final validateInput()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->validateInput()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
