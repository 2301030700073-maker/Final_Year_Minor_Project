.class public final Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;
.super Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final sTwoDigitFormatter:Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$TwoDigitFormatter;


# instance fields
.field public final mCalendarView:Lcom/takisoft/datetimepicker/widget/CalendarView;

.field public mCurrentDate:Ljava/util/Calendar;

.field public final mDateFormat:Ljava/text/SimpleDateFormat;

.field public final mDaySpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

.field public final mDaySpinnerInput:Landroid/widget/EditText;

.field public mIsEnabled:Z

.field public mMaxDate:Ljava/util/Calendar;

.field public mMinDate:Ljava/util/Calendar;

.field public final mMonthSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

.field public final mMonthSpinnerInput:Landroid/widget/EditText;

.field public mNumberOfMonths:I

.field public mShortMonths:[Ljava/lang/String;

.field public final mSpinners:Landroid/widget/LinearLayout;

.field public mTempDate:Ljava/util/Calendar;

.field public final mYearSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

.field public final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$TwoDigitFormatter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$TwoDigitFormatter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->sTwoDigitFormatter:Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$TwoDigitFormatter;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/takisoft/datetimepicker/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    invoke-direct/range {p0 .. p2}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Lcom/takisoft/datetimepicker/widget/DatePicker;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 9
    .line 10
    const-string v3, "MM/dd/yyyy"

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v2, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    iput-boolean v3, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    .line 19
    .line 20
    move-object/from16 v4, p1

    .line 21
    .line 22
    iput-object v4, v1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 23
    .line 24
    iput-object v0, v1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v1, v4}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 31
    .line 32
    .line 33
    sget-object v4, Lcom/takisoft/datetimepicker/R$styleable;->DatePicker:[I

    .line 34
    .line 35
    move-object/from16 v5, p3

    .line 36
    .line 37
    move/from16 v6, p4

    .line 38
    .line 39
    move/from16 v7, p5

    .line 40
    .line 41
    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/16 v5, 0xb

    .line 46
    .line 47
    invoke-virtual {v4, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    invoke-virtual {v4, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    const/16 v8, 0xa

    .line 56
    .line 57
    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    const/16 v9, 0x9

    .line 62
    .line 63
    invoke-virtual {v4, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    const/4 v10, 0x6

    .line 68
    const v11, 0x7f0c0157

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    .line 77
    .line 78
    const-string v4, "layout_inflater"

    .line 79
    .line 80
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/view/LayoutInflater;

    .line 85
    .line 86
    iget-object v4, v1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 87
    .line 88
    invoke-virtual {v0, v10, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    new-instance v0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$1;

    .line 92
    .line 93
    invoke-direct {v0, v1}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$1;-><init>(Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;)V

    .line 94
    .line 95
    .line 96
    iget-object v4, v1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 97
    .line 98
    const v10, 0x7f09033b

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Landroid/widget/LinearLayout;

    .line 106
    .line 107
    iput-object v4, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    .line 108
    .line 109
    iget-object v10, v1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 110
    .line 111
    const v11, 0x7f0900c0

    .line 112
    .line 113
    .line 114
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    check-cast v10, Lcom/takisoft/datetimepicker/widget/CalendarView;

    .line 119
    .line 120
    iput-object v10, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCalendarView:Lcom/takisoft/datetimepicker/widget/CalendarView;

    .line 121
    .line 122
    new-instance v11, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$1;

    .line 123
    .line 124
    invoke-direct {v11, v1}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$1;-><init>(Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v10, v11}, Lcom/takisoft/datetimepicker/widget/CalendarView;->setOnDateChangeListener(Lcom/takisoft/datetimepicker/widget/CalendarView$OnDateChangeListener;)V

    .line 128
    .line 129
    .line 130
    iget-object v10, v1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 131
    .line 132
    const v11, 0x7f090183

    .line 133
    .line 134
    .line 135
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    check-cast v10, Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 140
    .line 141
    iput-object v10, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 142
    .line 143
    sget-object v11, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->sTwoDigitFormatter:Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$TwoDigitFormatter;

    .line 144
    .line 145
    invoke-virtual {v10, v11}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setFormatter(Lcom/takisoft/datetimepicker/widget/NumberPicker$Formatter;)V

    .line 146
    .line 147
    .line 148
    const-wide/16 v11, 0x64

    .line 149
    .line 150
    invoke-virtual {v10, v11, v12}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v10, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setOnValueChangedListener(Lcom/takisoft/datetimepicker/widget/NumberPicker$OnValueChangeListener;)V

    .line 154
    .line 155
    .line 156
    const v13, 0x7f090305

    .line 157
    .line 158
    .line 159
    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v14

    .line 163
    check-cast v14, Landroid/widget/EditText;

    .line 164
    .line 165
    iput-object v14, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 166
    .line 167
    iget-object v14, v1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 168
    .line 169
    const v15, 0x7f0902bb

    .line 170
    .line 171
    .line 172
    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v14

    .line 176
    check-cast v14, Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 177
    .line 178
    iput-object v14, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 179
    .line 180
    const/4 v15, 0x0

    .line 181
    invoke-virtual {v14, v15}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMinValue(I)V

    .line 182
    .line 183
    .line 184
    iget v5, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    .line 185
    .line 186
    sub-int/2addr v5, v3

    .line 187
    invoke-virtual {v14, v5}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMaxValue(I)V

    .line 188
    .line 189
    .line 190
    iget-object v5, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v14, v5}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    move-object/from16 p2, v4

    .line 196
    .line 197
    const-wide/16 v3, 0xc8

    .line 198
    .line 199
    invoke-virtual {v14, v3, v4}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v14, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setOnValueChangedListener(Lcom/takisoft/datetimepicker/widget/NumberPicker$OnValueChangeListener;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v14, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    check-cast v3, Landroid/widget/EditText;

    .line 210
    .line 211
    iput-object v3, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 212
    .line 213
    iget-object v3, v1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 214
    .line 215
    const v4, 0x7f09048f

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    check-cast v3, Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 223
    .line 224
    iput-object v3, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 225
    .line 226
    invoke-virtual {v3, v11, v12}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setOnValueChangedListener(Lcom/takisoft/datetimepicker/widget/NumberPicker$OnValueChangeListener;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Landroid/widget/EditText;

    .line 237
    .line 238
    iput-object v0, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 239
    .line 240
    if-nez v6, :cond_0

    .line 241
    .line 242
    if-nez v7, :cond_0

    .line 243
    .line 244
    const/4 v5, 0x1

    .line 245
    invoke-virtual {v1, v5}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    .line 246
    .line 247
    .line 248
    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {v1, v6}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v7}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->setCalendarViewShown(Z)V

    .line 253
    .line 254
    .line 255
    :goto_0
    iget-object v0, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 258
    .line 259
    .line 260
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    iget-object v4, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 265
    .line 266
    const/16 v6, 0x76c

    .line 267
    .line 268
    if-nez v0, :cond_1

    .line 269
    .line 270
    :try_start_0
    invoke-virtual {v2, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .line 276
    .line 277
    goto :goto_1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 280
    .line 281
    .line 282
    iget-object v0, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 283
    .line 284
    const/4 v5, 0x1

    .line 285
    invoke-virtual {v0, v6, v15, v5}, Ljava/util/Calendar;->set(III)V

    .line 286
    .line 287
    .line 288
    goto :goto_1

    .line 289
    :cond_1
    const/4 v5, 0x1

    .line 290
    invoke-virtual {v4, v6, v15, v5}, Ljava/util/Calendar;->set(III)V

    .line 291
    .line 292
    .line 293
    :goto_1
    iget-object v0, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 296
    .line 297
    .line 298
    move-result-wide v6

    .line 299
    invoke-virtual {v1, v6, v7}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->setMinDate(J)V

    .line 300
    .line 301
    .line 302
    iget-object v0, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 305
    .line 306
    .line 307
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    iget-object v2, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 312
    .line 313
    const/16 v4, 0x1f

    .line 314
    .line 315
    const/16 v6, 0x834

    .line 316
    .line 317
    if-nez v0, :cond_2

    .line 318
    .line 319
    :try_start_1
    iget-object v0, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 320
    .line 321
    invoke-virtual {v0, v9}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 326
    .line 327
    .line 328
    goto :goto_2

    .line 329
    :catch_1
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 331
    .line 332
    .line 333
    iget-object v0, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 334
    .line 335
    const/16 v7, 0xb

    .line 336
    .line 337
    invoke-virtual {v0, v6, v7, v4}, Ljava/util/Calendar;->set(III)V

    .line 338
    .line 339
    .line 340
    goto :goto_2

    .line 341
    :cond_2
    const/16 v7, 0xb

    .line 342
    .line 343
    invoke-virtual {v2, v6, v7, v4}, Ljava/util/Calendar;->set(III)V

    .line 344
    .line 345
    .line 346
    :goto_2
    iget-object v0, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 349
    .line 350
    .line 351
    move-result-wide v6

    .line 352
    invoke-virtual {v1, v6, v7}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->setMaxDate(J)V

    .line 353
    .line 354
    .line 355
    iget-object v0, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 356
    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 358
    .line 359
    .line 360
    move-result-wide v6

    .line 361
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 362
    .line 363
    .line 364
    iget-object v0, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 365
    .line 366
    const/4 v5, 0x1

    .line 367
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    iget-object v2, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 372
    .line 373
    const/4 v4, 0x2

    .line 374
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    iget-object v4, v1, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 379
    .line 380
    const/4 v6, 0x5

    .line 381
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    const/4 v6, 0x0

    .line 386
    invoke-virtual {v1, v0, v2, v4, v6}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->init(IIILcom/takisoft/datetimepicker/DatePickerDialog;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 390
    .line 391
    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 397
    .line 398
    .line 399
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    array-length v2, v0

    .line 404
    :goto_3
    if-ge v15, v2, :cond_6

    .line 405
    .line 406
    aget-char v4, v0, v15

    .line 407
    .line 408
    const/16 v7, 0x4d

    .line 409
    .line 410
    if-eq v4, v7, :cond_5

    .line 411
    .line 412
    const/16 v7, 0x64

    .line 413
    .line 414
    if-eq v4, v7, :cond_4

    .line 415
    .line 416
    const/16 v7, 0x79

    .line 417
    .line 418
    if-ne v4, v7, :cond_3

    .line 419
    .line 420
    move-object/from16 v4, p2

    .line 421
    .line 422
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 423
    .line 424
    .line 425
    invoke-static {v3, v2, v15}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->setImeOptions(Lcom/takisoft/datetimepicker/widget/NumberPicker;II)V

    .line 426
    .line 427
    .line 428
    goto :goto_4

    .line 429
    :cond_3
    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    throw v6

    .line 437
    :cond_4
    move-object/from16 v4, p2

    .line 438
    .line 439
    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 440
    .line 441
    .line 442
    invoke-static {v10, v2, v15}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->setImeOptions(Lcom/takisoft/datetimepicker/widget/NumberPicker;II)V

    .line 443
    .line 444
    .line 445
    goto :goto_4

    .line 446
    :cond_5
    move-object/from16 v4, p2

    .line 447
    .line 448
    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 449
    .line 450
    .line 451
    invoke-static {v14, v2, v15}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->setImeOptions(Lcom/takisoft/datetimepicker/widget/NumberPicker;II)V

    .line 452
    .line 453
    .line 454
    :goto_4
    add-int/lit8 v15, v15, 0x1

    .line 455
    .line 456
    move-object/from16 p2, v4

    .line 457
    .line 458
    goto :goto_3

    .line 459
    :cond_6
    iget-object v0, v1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 460
    .line 461
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-nez v0, :cond_7

    .line 466
    .line 467
    iget-object v0, v1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 468
    .line 469
    const/4 v5, 0x1

    .line 470
    invoke-virtual {v0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 471
    .line 472
    .line 473
    :cond_7
    return-void
.end method

.method public static getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public static setImeOptions(Lcom/takisoft/datetimepicker/widget/NumberPicker;II)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    if-ge p2, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x5

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x6

    .line 8
    :goto_0
    const p2, 0x7f090305

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getCalendarView()Lcom/takisoft/datetimepicker/widget/CalendarView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCalendarView:Lcom/takisoft/datetimepicker/widget/CalendarView;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCalendarViewShown()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCalendarView:Lcom/takisoft/datetimepicker/widget/CalendarView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final getDayOfMonth()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final getFirstDayOfWeek()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCalendarView:Lcom/takisoft/datetimepicker/widget/CalendarView;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/CalendarView;->getFirstDayOfWeek()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getMaxDate()Ljava/util/Calendar;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCalendarView:Lcom/takisoft/datetimepicker/widget/CalendarView;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/CalendarView;->getMaxDate()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final getMinDate()Ljava/util/Calendar;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCalendarView:Lcom/takisoft/datetimepicker/widget/CalendarView;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/CalendarView;->getMinDate()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final getMonth()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final getSpinnersShown()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getYear()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final init(IIILcom/takisoft/datetimepicker/DatePickerDialog;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->setDate(III)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 8
    .line 9
    .line 10
    iput-object p4, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Lcom/takisoft/datetimepicker/DatePickerDialog;

    .line 11
    .line 12
    return-void
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/view/View$BaseSavedState;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 6
    .line 7
    iget v0, p1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    .line 8
    .line 9
    iget v1, p1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    .line 10
    .line 11
    iget p1, p1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1, p1}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->setDate(III)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Parcelable;)Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    .locals 12

    .line 1
    new-instance v0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->getYear()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->getMonth()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->getMinDate()Ljava/util/Calendar;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->getMaxDate()Ljava/util/Calendar;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v7

    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    move-object v1, p1

    .line 35
    invoke-direct/range {v0 .. v11}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public final setCalendarViewShown(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/16 p1, 0x8

    .line 6
    .line 7
    :goto_0
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCalendarView:Lcom/takisoft/datetimepicker/widget/CalendarView;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setCurrentLocale(Ljava/util/Locale;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/4 v0, 0x1

    .line 44
    add-int/2addr p1, v0

    .line 45
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    .line 46
    .line 47
    new-instance p1, Ljava/text/DateFormatSymbols;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    aget-object p1, p1, v1

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_0

    .line 70
    .line 71
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    .line 72
    .line 73
    new-array p1, p1, [Ljava/lang/String;

    .line 74
    .line 75
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 76
    .line 77
    move p1, v1

    .line 78
    :goto_0
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    .line 79
    .line 80
    if-ge p1, v2, :cond_0

    .line 81
    .line 82
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 83
    .line 84
    add-int/lit8 v3, p1, 0x1

    .line 85
    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    new-array v5, v0, [Ljava/lang/Object;

    .line 91
    .line 92
    aput-object v4, v5, v1

    .line 93
    .line 94
    const-string v4, "%d"

    .line 95
    .line 96
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    aput-object v4, v2, p1

    .line 101
    .line 102
    move p1, v3

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method public final setDate(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide p2

    .line 44
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setEnabled(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCalendarView:Lcom/takisoft/datetimepicker/widget/CalendarView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    .line 22
    .line 23
    return-void
.end method

.method public final setFirstDayOfWeek(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCalendarView:Lcom/takisoft/datetimepicker/widget/CalendarView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/CalendarView;->setFirstDayOfWeek(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setMaxDate(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 22
    .line 23
    const/4 v1, 0x6

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 38
    .line 39
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCalendarView:Lcom/takisoft/datetimepicker/widget/CalendarView;

    .line 43
    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/takisoft/datetimepicker/widget/CalendarView;->setMaxDate(J)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 48
    .line 49
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 58
    .line 59
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final setMinDate(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 22
    .line 23
    const/4 v1, 0x6

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    .line 38
    .line 39
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCalendarView:Lcom/takisoft/datetimepicker/widget/CalendarView;

    .line 43
    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/takisoft/datetimepicker/widget/CalendarView;->setMinDate(J)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 48
    .line 49
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 58
    .line 59
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final setSpinnersShown(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/16 p1, 0x8

    .line 6
    .line 7
    :goto_0
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final updateCalendarView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCalendarView:Lcom/takisoft/datetimepicker/widget/CalendarView;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->setDate(JZZ)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final updateSpinners()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x5

    .line 15
    const/4 v6, 0x1

    .line 16
    iget-object v7, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 17
    .line 18
    iget-object v8, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {v7, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMinValue(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 30
    .line 31
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {v7, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMaxValue(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7, v4}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8, v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {v8, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMinValue(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {v8, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMaxValue(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, v4}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 75
    .line 76
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMinimum(I)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual {v7, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMinValue(I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 84
    .line 85
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {v7, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMaxValue(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v4}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8, v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMinimum(I)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    invoke-virtual {v8, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMinValue(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-virtual {v8, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMaxValue(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v4}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v7, v6}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMinValue(I)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 124
    .line 125
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-virtual {v7, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMaxValue(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7, v6}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8, v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8, v4}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMinValue(I)V

    .line 139
    .line 140
    .line 141
    const/16 v0, 0xb

    .line 142
    .line 143
    invoke-virtual {v8, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMaxValue(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8, v6}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 147
    .line 148
    .line 149
    :goto_0
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v8}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getMinValue()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-virtual {v8}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getMaxValue()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    add-int/2addr v2, v6

    .line 160
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, [Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v8, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    .line 170
    .line 171
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 176
    .line 177
    invoke-virtual {v1, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMinValue(I)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 181
    .line 182
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    invoke-virtual {v1, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setMaxValue(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v4}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 193
    .line 194
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    invoke-virtual {v1, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setValue(I)V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 202
    .line 203
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    invoke-virtual {v8, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setValue(I)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 211
    .line 212
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    invoke-virtual {v7, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setValue(I)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 220
    .line 221
    aget-object v0, v0, v4

    .line 222
    .line 223
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_2

    .line 232
    .line 233
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 234
    .line 235
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 236
    .line 237
    .line 238
    :cond_2
    return-void
.end method
