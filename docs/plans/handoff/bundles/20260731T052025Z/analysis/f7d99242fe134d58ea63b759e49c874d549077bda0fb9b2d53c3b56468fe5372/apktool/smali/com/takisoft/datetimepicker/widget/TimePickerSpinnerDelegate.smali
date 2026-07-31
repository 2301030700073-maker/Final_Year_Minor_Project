.class public final Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;
.super Landroidx/work/impl/constraints/trackers/ConstraintTracker;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mAmPmButton:Landroid/widget/Button;

.field public final mAmPmSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

.field public final mAmPmSpinnerInput:Landroid/widget/EditText;

.field public final mAmPmStrings:[Ljava/lang/String;

.field public final mDivider:Landroid/widget/TextView;

.field public mHourFormat:C

.field public final mHourSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

.field public final mHourSpinnerInput:Landroid/widget/EditText;

.field public mHourWithTwoDigit:Z

.field public mIs24HourView:Z

.field public mIsAm:Z

.field public mIsEnabled:Z

.field public final mMinuteSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

.field public final mMinuteSpinnerInput:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/takisoft/datetimepicker/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;-><init>(Lcom/takisoft/datetimepicker/widget/TimePicker;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 6
    .line 7
    sget-object v1, Lcom/takisoft/datetimepicker/R$styleable;->TimePicker:[I

    .line 8
    .line 9
    invoke-virtual {p2, p3, v1, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    const/4 p4, 0x3

    .line 14
    const p5, 0x7f0c057f

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, p4, p5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {p3, p4, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    const/4 p4, 0x0

    .line 33
    invoke-virtual {p3, p4}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 34
    .line 35
    .line 36
    const p3, 0x7f090227

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    check-cast p3, Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 44
    .line 45
    iput-object p3, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 46
    .line 47
    new-instance p5, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate$1;

    .line 48
    .line 49
    invoke-direct {p5, p0, p4}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate$1;-><init>(Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, p5}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setOnValueChangedListener(Lcom/takisoft/datetimepicker/widget/NumberPicker$OnValueChangeListener;)V

    .line 53
    .line 54
    .line 55
    const p5, 0x7f090305

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/widget/EditText;

    .line 63
    .line 64
    iput-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 65
    .line 66
    const/4 v2, 0x5

    .line 67
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 68
    .line 69
    .line 70
    const v1, 0x7f0901ac

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    .line 80
    .line 81
    const-string v3, "hm"

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    iget-boolean v4, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 86
    .line 87
    if-eqz v4, :cond_0

    .line 88
    .line 89
    const-string v4, "Hm"

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    move-object v4, v3

    .line 93
    :goto_0
    iget-object v5, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v5, Ljava/util/Locale;

    .line 96
    .line 97
    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const/16 v5, 0x48

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    const/4 v6, -0x1

    .line 108
    if-ne v5, v6, :cond_1

    .line 109
    .line 110
    const/16 v5, 0x68

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    :cond_1
    if-ne v5, v6, :cond_2

    .line 117
    .line 118
    const-string v4, ":"

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    add-int/2addr v5, v0

    .line 122
    const/16 v7, 0x6d

    .line 123
    .line 124
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->indexOf(II)I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-ne v7, v6, :cond_3

    .line 129
    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    :cond_4
    const v1, 0x7f0902b9

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 154
    .line 155
    iput-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 156
    .line 157
    invoke-virtual {v1, p4}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMinValue(I)V

    .line 158
    .line 159
    .line 160
    const/16 v4, 0x3b

    .line 161
    .line 162
    invoke-virtual {v1, v4}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMaxValue(I)V

    .line 163
    .line 164
    .line 165
    const-wide/16 v4, 0x64

    .line 166
    .line 167
    invoke-virtual {v1, v4, v5}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 168
    .line 169
    .line 170
    invoke-static {}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getTwoDigitFormatter()Lcom/takisoft/datetimepicker/widget/NumberPicker$Formatter;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v1, v4}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setFormatter(Lcom/takisoft/datetimepicker/widget/NumberPicker$Formatter;)V

    .line 175
    .line 176
    .line 177
    new-instance v4, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate$1;

    .line 178
    .line 179
    invoke-direct {v4, p0, v0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate$1;-><init>(Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v4}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setOnValueChangedListener(Lcom/takisoft/datetimepicker/widget/NumberPicker$OnValueChangeListener;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    check-cast v4, Landroid/widget/EditText;

    .line 190
    .line 191
    iput-object v4, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 192
    .line 193
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 194
    .line 195
    .line 196
    invoke-static {p2}, Lcom/takisoft/datetimepicker/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    .line 201
    .line 202
    const v5, 0x7f090073

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    instance-of v6, v5, Landroid/widget/Button;

    .line 210
    .line 211
    const/4 v7, 0x6

    .line 212
    const/4 v8, 0x0

    .line 213
    if-eqz v6, :cond_5

    .line 214
    .line 215
    iput-object v8, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 216
    .line 217
    iput-object v8, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 218
    .line 219
    move-object p2, v5

    .line 220
    check-cast p2, Landroid/widget/Button;

    .line 221
    .line 222
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    .line 223
    .line 224
    new-instance p5, Landroidx/preference/Preference$1;

    .line 225
    .line 226
    const/16 v6, 0xa

    .line 227
    .line 228
    invoke-direct {p5, v6, p0}, Landroidx/preference/Preference$1;-><init>(ILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_5
    iput-object v8, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    .line 236
    .line 237
    move-object v6, v5

    .line 238
    check-cast v6, Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 239
    .line 240
    iput-object v6, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 241
    .line 242
    invoke-virtual {v6, p4}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMinValue(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v6, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMaxValue(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v6, p2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    new-instance p2, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate$1;

    .line 252
    .line 253
    const/4 v8, 0x2

    .line 254
    invoke-direct {p2, p0, v8}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate$1;-><init>(Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6, p2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setOnValueChangedListener(Lcom/takisoft/datetimepicker/widget/NumberPicker$OnValueChangeListener;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    check-cast p2, Landroid/widget/EditText;

    .line 265
    .line 266
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 267
    .line 268
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 269
    .line 270
    .line 271
    :goto_2
    iget-object p2, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast p2, Ljava/util/Locale;

    .line 274
    .line 275
    invoke-static {p2, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    const-string p5, "a"

    .line 280
    .line 281
    invoke-virtual {p2, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    if-eqz p2, :cond_6

    .line 286
    .line 287
    const p2, 0x7f090436

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object p2

    .line 294
    check-cast p2, Landroid/view/ViewGroup;

    .line 295
    .line 296
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p2, v5, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 307
    .line 308
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 309
    .line 310
    .line 311
    move-result p5

    .line 312
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-eq p5, v3, :cond_6

    .line 317
    .line 318
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p2, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 322
    .line 323
    .line 324
    :cond_6
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    .line 328
    .line 329
    .line 330
    iget-boolean p2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 331
    .line 332
    if-eqz p2, :cond_7

    .line 333
    .line 334
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 335
    .line 336
    .line 337
    goto :goto_3

    .line 338
    :cond_7
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 339
    .line 340
    .line 341
    :goto_3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 342
    .line 343
    .line 344
    iget-object p2, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    .line 345
    .line 346
    check-cast p2, Ljava/util/Locale;

    .line 347
    .line 348
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    const/16 p5, 0xb

    .line 353
    .line 354
    invoke-virtual {p2, p5}, Ljava/util/Calendar;->get(I)I

    .line 355
    .line 356
    .line 357
    move-result p5

    .line 358
    invoke-virtual {p0, p5, v0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 359
    .line 360
    .line 361
    const/16 p5, 0xc

    .line 362
    .line 363
    invoke-virtual {p2, p5}, Ljava/util/Calendar;->get(I)I

    .line 364
    .line 365
    .line 366
    move-result p2

    .line 367
    invoke-virtual {p0, p2}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->setMinute(I)V

    .line 368
    .line 369
    .line 370
    iget-boolean p2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 371
    .line 372
    if-nez p2, :cond_8

    .line 373
    .line 374
    invoke-virtual {p0, p4}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->setEnabled(Z)V

    .line 375
    .line 376
    .line 377
    :cond_8
    const p2, 0x7f120644

    .line 378
    .line 379
    .line 380
    const p4, 0x7f090239

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0, v1, p4, p2}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 384
    .line 385
    .line 386
    const p2, 0x7f12063f

    .line 387
    .line 388
    .line 389
    const p5, 0x7f09018c

    .line 390
    .line 391
    .line 392
    invoke-virtual {p0, v1, p5, p2}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 393
    .line 394
    .line 395
    const p2, 0x7f120643

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0, p3, p4, p2}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 399
    .line 400
    .line 401
    const p2, 0x7f12063e

    .line 402
    .line 403
    .line 404
    invoke-virtual {p0, p3, p5, p2}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 405
    .line 406
    .line 407
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 408
    .line 409
    if-eqz p2, :cond_9

    .line 410
    .line 411
    const p3, 0x7f120645

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0, p2, p4, p3}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 415
    .line 416
    .line 417
    const p3, 0x7f120640

    .line 418
    .line 419
    .line 420
    invoke-virtual {p0, p2, p5, p3}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 421
    .line 422
    .line 423
    :cond_9
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 424
    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    .line 426
    .line 427
    .line 428
    move-result p0

    .line 429
    if-nez p0, :cond_a

    .line 430
    .line 431
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 432
    .line 433
    .line 434
    :cond_a
    return-void
.end method

.method public static access$000(Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->taskExecutor:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->appContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v4, "input_method"

    .line 14
    .line 15
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 20
    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p0, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method


# virtual methods
.method public final getAmView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBaseline()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getBaseline()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getHour()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    iget-boolean p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    rem-int/lit8 v0, v0, 0xc

    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    rem-int/lit8 v0, v0, 0xc

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0xc

    .line 22
    .line 23
    return v0
.end method

.method public final getHourFormatData()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Locale;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

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
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    iput-boolean v2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    .line 24
    .line 25
    :goto_1
    if-ge v2, v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/16 v4, 0x48

    .line 32
    .line 33
    if-eq v3, v4, :cond_2

    .line 34
    .line 35
    const/16 v4, 0x68

    .line 36
    .line 37
    if-eq v3, v4, :cond_2

    .line 38
    .line 39
    const/16 v4, 0x4b

    .line 40
    .line 41
    if-eq v3, v4, :cond_2

    .line 42
    .line 43
    const/16 v4, 0x6b

    .line 44
    .line 45
    if-ne v3, v4, :cond_1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_2
    iput-char v3, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    add-int/2addr v2, v4

    .line 55
    if-ge v2, v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-ne v3, v0, :cond_3

    .line 62
    .line 63
    iput-boolean v4, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    .line 64
    .line 65
    :cond_3
    return-void
.end method

.method public final getHourView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMinute()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

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
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPmView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object p0
.end method

.method public final is24Hour()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final onRestoreInstanceState(Landroid/view/View$BaseSavedState;)V
    .locals 2

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
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 11
    .line 12
    .line 13
    iget p1, p1, Lcom/takisoft/datetimepicker/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mMinute:I

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->setMinute(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Parcelable;)Lcom/takisoft/datetimepicker/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    .locals 6

    .line 1
    new-instance v0, Lcom/takisoft/datetimepicker/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->getHour()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-boolean v4, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v1, p1

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/takisoft/datetimepicker/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final onTimeChanged$1()V
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
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->getHour()I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

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
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->getHour()I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

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

.method public final setCurrentHour(IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->getHour()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    const/16 v0, 0xc

    .line 13
    .line 14
    if-lt p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 18
    .line 19
    if-le p1, v0, :cond_2

    .line 20
    .line 21
    add-int/lit8 p1, p1, -0xc

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    move p1, v0

    .line 30
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 31
    .line 32
    .line 33
    :cond_3
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setValue(I)V

    .line 36
    .line 37
    .line 38
    if-eqz p2, :cond_4

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->onTimeChanged$1()V

    .line 41
    .line 42
    .line 43
    :cond_4
    :goto_1
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setEnabled(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setEnabled(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setEnabled(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iput-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 32
    .line 33
    return-void
.end method

.method public final setHour(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final setIs24Hour(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->getHour()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 20
    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 23
    .line 24
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x6

    .line 29
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x5

    .line 34
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final setMinute(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setValue(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->onTimeChanged$1()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final trySetContentDescription(Landroid/view/View;II)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->appContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final updateAmPmControl()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 22
    .line 23
    xor-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setValue(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    .line 36
    .line 37
    aget-object v0, v2, v0

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object p0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->taskExecutor:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 48
    .line 49
    const/4 v0, 0x4

    .line 50
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final updateHourControl()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 2
    .line 3
    iget-char v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x6b

    .line 12
    .line 13
    if-ne v1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v4, v3}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMinValue(I)V

    .line 16
    .line 17
    .line 18
    const/16 v0, 0x18

    .line 19
    .line 20
    invoke-virtual {v4, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMaxValue(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v4, v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMinValue(I)V

    .line 25
    .line 26
    .line 27
    const/16 v0, 0x17

    .line 28
    .line 29
    invoke-virtual {v4, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMaxValue(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/16 v0, 0x4b

    .line 34
    .line 35
    if-ne v1, v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v4, v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMinValue(I)V

    .line 38
    .line 39
    .line 40
    const/16 v0, 0xb

    .line 41
    .line 42
    invoke-virtual {v4, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMaxValue(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v4, v3}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMinValue(I)V

    .line 47
    .line 48
    .line 49
    const/16 v0, 0xc

    .line 50
    .line 51
    invoke-virtual {v4, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMaxValue(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-boolean p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    .line 55
    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    invoke-static {}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getTwoDigitFormatter()Lcom/takisoft/datetimepicker/widget/NumberPicker$Formatter;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    const/4 p0, 0x0

    .line 64
    :goto_1
    invoke-virtual {v4, p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setFormatter(Lcom/takisoft/datetimepicker/widget/NumberPicker$Formatter;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final validateInput()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
