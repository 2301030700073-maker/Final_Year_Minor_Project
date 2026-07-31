.class public final Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;
.super Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mAnimator:Landroid/widget/ViewAnimator;

.field public final mContainer:Landroid/view/ViewGroup;

.field public final mCurrentDate:Ljava/util/Calendar;

.field public mCurrentView:I

.field public mDateChangedListener:Lcom/takisoft/datetimepicker/DatePickerDialog;

.field public final mDayPickerView:Lcom/takisoft/datetimepicker/widget/DayPickerView;

.field public mFirstDayOfWeek:I

.field public final mHeaderMonthDay:Landroid/widget/TextView;

.field public final mHeaderYear:Landroid/widget/TextView;

.field public final mMaxDate:Ljava/util/Calendar;

.field public final mMinDate:Ljava/util/Calendar;

.field public mMonthDayFormat:Ljava/text/Format;

.field public final mSelectDay:Ljava/lang/String;

.field public final mSelectYear:Ljava/lang/String;

.field public final mTempDate:Ljava/util/Calendar;

.field public mYearFormat:Ljava/text/Format;

.field public final mYearPickerView:Lcom/takisoft/datetimepicker/widget/YearPickerView;


# direct methods
.method public constructor <init>(Lcom/takisoft/datetimepicker/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Lcom/takisoft/datetimepicker/widget/DatePicker;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 9
    .line 10
    new-instance v0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate$1;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate$1;-><init>(Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate$1;-><init>(Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Landroidx/preference/Preference$1;

    .line 21
    .line 22
    const/4 v3, 0x7

    .line 23
    invoke-direct {v2, v3, p0}, Landroidx/preference/Preference$1;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 27
    .line 28
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iput-object v4, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 33
    .line 34
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iput-object v5, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    .line 39
    .line 40
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    iput-object v5, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    .line 45
    .line 46
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iput-object v3, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 51
    .line 52
    const/16 v6, 0x76c

    .line 53
    .line 54
    const/4 v7, 0x1

    .line 55
    invoke-virtual {v5, v6, p1, v7}, Ljava/util/Calendar;->set(III)V

    .line 56
    .line 57
    .line 58
    const/16 v6, 0xb

    .line 59
    .line 60
    const/16 v8, 0x1f

    .line 61
    .line 62
    const/16 v9, 0x834

    .line 63
    .line 64
    invoke-virtual {v3, v9, v6, v8}, Ljava/util/Calendar;->set(III)V

    .line 65
    .line 66
    .line 67
    iget-object v6, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 68
    .line 69
    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    iget-object v8, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    sget-object v9, Lcom/takisoft/datetimepicker/R$styleable;->DatePicker:[I

    .line 76
    .line 77
    invoke-virtual {v8, p3, v9, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    const/4 p4, 0x5

    .line 86
    const p5, 0x7f0c0158

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, p4, p5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 90
    .line 91
    .line 92
    move-result p4

    .line 93
    iget-object p5, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 94
    .line 95
    invoke-virtual {p2, p4, p5, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Landroid/view/ViewGroup;

    .line 100
    .line 101
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    .line 102
    .line 103
    iget-object p4, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 104
    .line 105
    invoke-virtual {p4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    const p4, 0x7f09017f

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p4

    .line 115
    check-cast p4, Landroid/view/ViewGroup;

    .line 116
    .line 117
    const p5, 0x7f090181

    .line 118
    .line 119
    .line 120
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p5

    .line 124
    check-cast p5, Landroid/widget/TextView;

    .line 125
    .line 126
    iput-object p5, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 127
    .line 128
    invoke-virtual {p5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    const v8, 0x7f090180

    .line 132
    .line 133
    .line 134
    invoke-virtual {p4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    check-cast v8, Landroid/widget/TextView;

    .line 139
    .line 140
    iput-object v8, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 141
    .line 142
    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    .line 144
    .line 145
    const/4 v2, 0x4

    .line 146
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    if-eqz v2, :cond_0

    .line 151
    .line 152
    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 156
    .line 157
    .line 158
    :cond_0
    const/16 p5, 0x8

    .line 159
    .line 160
    invoke-virtual {p3, p5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 161
    .line 162
    .line 163
    move-result-object p5

    .line 164
    if-eqz p5, :cond_1

    .line 165
    .line 166
    invoke-virtual {p4, p5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 167
    .line 168
    .line 169
    :cond_1
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    .line 171
    .line 172
    const p3, 0x7f09007c

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    check-cast p2, Landroid/widget/ViewAnimator;

    .line 180
    .line 181
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    .line 182
    .line 183
    const p3, 0x7f09017e

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object p3

    .line 190
    check-cast p3, Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 191
    .line 192
    iput-object p3, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 193
    .line 194
    iget p4, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 195
    .line 196
    invoke-virtual {p3, p4}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 200
    .line 201
    .line 202
    move-result-wide p4

    .line 203
    iget-object v2, p3, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    .line 204
    .line 205
    invoke-virtual {v2, p4, p5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p3}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->onRangeChanged()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 212
    .line 213
    .line 214
    move-result-wide p4

    .line 215
    iget-object v2, p3, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    .line 216
    .line 217
    invoke-virtual {v2, p4, p5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p3}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->onRangeChanged()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 224
    .line 225
    .line 226
    move-result-wide p4

    .line 227
    invoke-virtual {p3, p4, p5, p1, v7}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->setDate(JZZ)V

    .line 228
    .line 229
    .line 230
    iput-object v0, p3, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mOnDaySelectedListener:Lcom/takisoft/datetimepicker/widget/DayPickerView$OnDaySelectedListener;

    .line 231
    .line 232
    const p3, 0x7f090182

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    check-cast p2, Lcom/takisoft/datetimepicker/widget/YearPickerView;

    .line 240
    .line 241
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/takisoft/datetimepicker/widget/YearPickerView;

    .line 242
    .line 243
    invoke-virtual {p2, v5, v3}, Lcom/takisoft/datetimepicker/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    .line 247
    .line 248
    .line 249
    move-result p3

    .line 250
    iget-object p4, p2, Lcom/takisoft/datetimepicker/widget/YearPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;

    .line 251
    .line 252
    iget p5, p4, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    .line 253
    .line 254
    if-eq p5, p3, :cond_2

    .line 255
    .line 256
    iput p3, p4, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    .line 257
    .line 258
    invoke-virtual {p4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 259
    .line 260
    .line 261
    :cond_2
    new-instance p4, Landroidx/core/provider/CallbackWrapper$2;

    .line 262
    .line 263
    const/4 p5, 0x3

    .line 264
    invoke-direct {p4, p3, p5, p2}, Landroidx/core/provider/CallbackWrapper$2;-><init>(IILjava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p2, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 268
    .line 269
    .line 270
    iput-object v1, p2, Lcom/takisoft/datetimepicker/widget/YearPickerView;->mOnYearSelectedListener:Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate$1;

    .line 271
    .line 272
    const p2, 0x7f120580

    .line 273
    .line 274
    .line 275
    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    .line 280
    .line 281
    const p2, 0x7f120583

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    .line 289
    .line 290
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 291
    .line 292
    invoke-virtual {p0, p2}, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 296
    .line 297
    .line 298
    return-void
.end method


# virtual methods
.method public final getCalendarView()Lcom/takisoft/datetimepicker/widget/CalendarView;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Not supported by calendar-mode DatePicker"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final getCalendarViewShown()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getDayOfMonth()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

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
    .locals 1

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final getMaxDate()Ljava/util/Calendar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMinDate()Ljava/util/Calendar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMonth()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

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
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getYear()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

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
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 3
    .line 4
    invoke-virtual {v1, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x5

    .line 12
    invoke-virtual {v1, p1, p3}, Ljava/util/Calendar;->set(II)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1, p1}, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 17
    .line 18
    .line 19
    iput-object p4, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mDateChangedListener:Lcom/takisoft/datetimepicker/DatePickerDialog;

    .line 20
    .line 21
    return-void
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onCurrentDateChanged(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/Format;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v1, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/Format;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const/16 v2, 0x14

    .line 45
    .line 46
    invoke-static {p1, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method public final onDateChanged(ZZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mDateChangedListener:Lcom/takisoft/datetimepicker/DatePickerDialog;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const/4 p2, 0x2

    .line 15
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const/4 v3, 0x5

    .line 20
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget-object v4, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mDateChangedListener:Lcom/takisoft/datetimepicker/DatePickerDialog;

    .line 25
    .line 26
    iget-object v5, v4, Lcom/takisoft/datetimepicker/DatePickerDialog;->mDatePicker:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 27
    .line 28
    invoke-virtual {v5, v2, p2, v3, v4}, Lcom/takisoft/datetimepicker/widget/DatePicker;->init(IIILcom/takisoft/datetimepicker/DatePickerDialog;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    const/4 p2, 0x0

    .line 36
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 37
    .line 38
    invoke-virtual {v0, v3, v4, p2, v1}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->setDate(JZZ)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/takisoft/datetimepicker/widget/YearPickerView;

    .line 42
    .line 43
    iget-object v0, p2, Lcom/takisoft/datetimepicker/widget/YearPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;

    .line 44
    .line 45
    iget v1, v0, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    .line 46
    .line 47
    if-eq v1, v2, :cond_1

    .line 48
    .line 49
    iput v2, v0, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 52
    .line 53
    .line 54
    :cond_1
    new-instance v0, Landroidx/core/provider/CallbackWrapper$2;

    .line 55
    .line 56
    const/4 v1, 0x3

    .line 57
    invoke-direct {v0, v2, v1, p2}, Landroidx/core/provider/CallbackWrapper$2;-><init>(IILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final onLocaleChanged(Ljava/util/Locale;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "EMMMd"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v2, 0x18

    .line 15
    .line 16
    const-string/jumbo v3, "y"

    .line 17
    .line 18
    .line 19
    if-lt v1, v2, :cond_1

    .line 20
    .line 21
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    .line 22
    .line 23
    invoke-direct {v1, v0, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/Format;

    .line 27
    .line 28
    invoke-static {}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m()Landroid/icu/text/DisplayContext;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    .line 36
    .line 37
    invoke-direct {v0, v3, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/Format;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 44
    .line 45
    invoke-direct {v1, v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/Format;

    .line 49
    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 51
    .line 52
    invoke-direct {v0, v3, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/Format;

    .line 56
    .line 57
    :goto_0
    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/view/View$BaseSavedState;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 2
    .line 3
    if-eqz v0, :cond_1

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
    iget v2, p1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    .line 12
    .line 13
    iget-object v3, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 14
    .line 15
    invoke-virtual {v3, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    .line 19
    .line 20
    iget-wide v1, p1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 26
    .line 27
    iget-wide v1, p1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 34
    .line 35
    .line 36
    iget v1, p1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 39
    .line 40
    .line 41
    iget v2, p1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    .line 42
    .line 43
    const/4 v3, -0x1

    .line 44
    if-eq v2, v3, :cond_1

    .line 45
    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 51
    .line 52
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 53
    .line 54
    invoke-virtual {p0, v2, v0, v0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x1

    .line 59
    if-ne v1, v0, :cond_1

    .line 60
    .line 61
    iget p1, p1, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    .line 62
    .line 63
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/takisoft/datetimepicker/widget/YearPickerView;

    .line 64
    .line 65
    invoke-virtual {p0, v2, p1}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Parcelable;)Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 5
    .line 6
    .line 7
    move-result v4

    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    const/4 v2, 0x5

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    move v12, v0

    .line 32
    move v13, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/takisoft/datetimepicker/widget/YearPickerView;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    move v0, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    :goto_0
    move v13, v0

    .line 56
    move v12, v2

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move v12, v2

    .line 59
    move v13, v12

    .line 60
    :goto_1
    new-instance v2, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v7

    .line 68
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v9

    .line 74
    iget v11, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 75
    .line 76
    move-object v3, p1

    .line 77
    invoke-direct/range {v2 .. v13}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    .line 78
    .line 79
    .line 80
    return-object v2
.end method

.method public final setCalendarViewShown(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setCurrentView(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    if-eq p1, v5, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object v6, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/takisoft/datetimepicker/widget/YearPickerView;

    .line 21
    .line 22
    iget-object v7, v6, Lcom/takisoft/datetimepicker/widget/YearPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;

    .line 23
    .line 24
    iget v8, v7, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    .line 25
    .line 26
    if-eq v8, v2, :cond_1

    .line 27
    .line 28
    iput v2, v7, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    .line 29
    .line 30
    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 31
    .line 32
    .line 33
    :cond_1
    new-instance v7, Landroidx/core/provider/CallbackWrapper$2;

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v7, v2, v8, v6}, Landroidx/core/provider/CallbackWrapper$2;-><init>(IILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/fsck/k9/controller/MessagingController$1;

    .line 43
    .line 44
    const/4 v7, 0x5

    .line 45
    invoke-direct {v2, v7, p0}, Lcom/fsck/k9/controller/MessagingController$1;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 52
    .line 53
    if-eq v2, p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v5}, Landroid/view/View;->setActivated(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v5}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 62
    .line 63
    .line 64
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 65
    .line 66
    :cond_2
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v4, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    iget-object v6, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v7

    .line 78
    invoke-virtual {v6, v7, v8, v3, v5}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->setDate(JZZ)V

    .line 79
    .line 80
    .line 81
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 82
    .line 83
    if-eq v2, p1, :cond_4

    .line 84
    .line 85
    invoke-virtual {v1, v5}, Landroid/view/View;->setActivated(Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v3}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 92
    .line 93
    .line 94
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 95
    .line 96
    :cond_4
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v4, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/takisoft/datetimepicker/widget/YearPickerView;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final setFirstDayOfWeek(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setMaxDate(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 12
    .line 13
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ne v2, v4, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x6

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ne v4, v2, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 50
    .line 51
    iget-object v1, v0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    .line 52
    .line 53
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->onRangeChanged()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/takisoft/datetimepicker/widget/YearPickerView;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    .line 62
    .line 63
    invoke-virtual {p1, p0, v3}, Lcom/takisoft/datetimepicker/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final setMinDate(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    .line 12
    .line 13
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ne v2, v4, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x6

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ne v4, v2, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 50
    .line 51
    iget-object v1, v0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    .line 52
    .line 53
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->onRangeChanged()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/takisoft/datetimepicker/widget/YearPickerView;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 62
    .line 63
    invoke-virtual {p1, v3, p0}, Lcom/takisoft/datetimepicker/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final setSpinnersShown(Z)V
    .locals 0

    .line 1
    return-void
.end method
