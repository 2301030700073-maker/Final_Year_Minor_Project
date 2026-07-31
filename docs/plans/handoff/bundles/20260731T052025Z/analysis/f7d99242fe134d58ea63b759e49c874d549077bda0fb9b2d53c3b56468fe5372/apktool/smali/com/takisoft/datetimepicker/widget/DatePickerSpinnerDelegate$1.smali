.class public final Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/takisoft/datetimepicker/widget/NumberPicker$OnValueChangeListener;
.implements Lcom/takisoft/datetimepicker/widget/CalendarView$OnDateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/takisoft/datetimepicker/widget/NumberPicker;II)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v4, "input_method"

    .line 12
    .line 13
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 18
    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x0

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v3, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

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
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v3, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v3, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v1

    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mDaySpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 90
    .line 91
    const/4 v1, -0x1

    .line 92
    const/4 v2, 0x2

    .line 93
    const/4 v3, 0x5

    .line 94
    const/4 v4, 0x1

    .line 95
    if-ne p1, v0, :cond_5

    .line 96
    .line 97
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 98
    .line 99
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-ne p2, p1, :cond_3

    .line 104
    .line 105
    if-ne p3, v4, :cond_3

    .line 106
    .line 107
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 108
    .line 109
    invoke-virtual {p1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    if-ne p2, v4, :cond_4

    .line 114
    .line 115
    if-ne p3, p1, :cond_4

    .line 116
    .line 117
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 118
    .line 119
    invoke-virtual {p1, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 124
    .line 125
    sub-int/2addr p3, p2

    .line 126
    invoke-virtual {p1, v3, p3}, Ljava/util/Calendar;->add(II)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 131
    .line 132
    if-ne p1, v0, :cond_8

    .line 133
    .line 134
    const/16 p1, 0xb

    .line 135
    .line 136
    if-ne p2, p1, :cond_6

    .line 137
    .line 138
    if-nez p3, :cond_6

    .line 139
    .line 140
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 141
    .line 142
    invoke-virtual {p1, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    if-nez p2, :cond_7

    .line 147
    .line 148
    if-ne p3, p1, :cond_7

    .line 149
    .line 150
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 151
    .line 152
    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_7
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 157
    .line 158
    sub-int/2addr p3, p2

    .line 159
    invoke-virtual {p1, v2, p3}, Ljava/util/Calendar;->add(II)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_8
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mYearSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 164
    .line 165
    if-ne p1, p2, :cond_a

    .line 166
    .line 167
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 168
    .line 169
    invoke-virtual {p1, v4, p3}, Ljava/util/Calendar;->set(II)V

    .line 170
    .line 171
    .line 172
    :goto_1
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 173
    .line 174
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 179
    .line 180
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    iget-object p3, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 185
    .line 186
    invoke-virtual {p3, v3}, Ljava/util/Calendar;->get(I)I

    .line 187
    .line 188
    .line 189
    move-result p3

    .line 190
    invoke-virtual {p0, p1, p2, p3}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->setDate(III)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 200
    .line 201
    const/4 p2, 0x4

    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Lcom/takisoft/datetimepicker/DatePickerDialog;

    .line 206
    .line 207
    if-eqz p1, :cond_9

    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->getYear()I

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->getMonth()I

    .line 214
    .line 215
    .line 216
    move-result p3

    .line 217
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    iget-object v0, p1, Lcom/takisoft/datetimepicker/DatePickerDialog;->mDatePicker:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 222
    .line 223
    invoke-virtual {v0, p2, p3, p0, p1}, Lcom/takisoft/datetimepicker/widget/DatePicker;->init(IIILcom/takisoft/datetimepicker/DatePickerDialog;)V

    .line 224
    .line 225
    .line 226
    :cond_9
    return-void

    .line 227
    :cond_a
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 228
    .line 229
    .line 230
    return-void
.end method
