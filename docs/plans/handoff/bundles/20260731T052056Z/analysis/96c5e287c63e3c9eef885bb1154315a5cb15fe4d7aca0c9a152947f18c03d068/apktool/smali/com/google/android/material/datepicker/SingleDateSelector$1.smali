.class public final Lcom/google/android/material/datepicker/SingleDateSelector$1;
.super Lcom/google/android/material/internal/TextWatcherAdapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final constraints:Lcom/google/android/material/datepicker/CalendarConstraints;

.field public final dateFormat:Ljava/text/SimpleDateFormat;

.field public final formatHint:Ljava/lang/String;

.field public lastLength:I

.field public final outOfRange:Ljava/lang/String;

.field public final setErrorCallback:Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

.field public setRangeErrorCallback:Lcom/google/android/material/datepicker/DateFormatTextWatcher$$ExternalSyntheticLambda1;

.field public final textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final synthetic this$0:Lcom/google/android/material/datepicker/SingleDateSelector;

.field public final synthetic val$dateTextInput:Lcom/google/android/material/textfield/TextInputLayout;

.field public final synthetic val$listener:Lcom/google/android/material/datepicker/MaterialDatePicker$2;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/SingleDateSelector;Ljava/lang/String;Ljava/text/SimpleDateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/MaterialDatePicker$2;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->this$0:Lcom/google/android/material/datepicker/SingleDateSelector;

    .line 5
    .line 6
    iput-object p6, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->val$listener:Lcom/google/android/material/datepicker/MaterialDatePicker$2;

    .line 7
    .line 8
    iput-object p7, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->val$dateTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->lastLength:I

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->formatHint:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->constraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 20
    .line 21
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const p3, 0x7f120436

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->outOfRange:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 35
    .line 36
    const/16 p3, 0xc

    .line 37
    .line 38
    invoke-direct {p1, p3, p0, p2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->setErrorCallback:Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->formatHint:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ge v0, v2, :cond_2

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget p0, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->lastLength:I

    .line 45
    .line 46
    if-ge v0, p0, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    invoke-interface {p1, p0}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->lastLength:I

    .line 6
    .line 7
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8

    .line 1
    iget-object p2, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->constraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 2
    .line 3
    iget-object p3, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    .line 5
    iget-object p4, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->setErrorCallback:Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    invoke-virtual {p3, p4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->setRangeErrorCallback:Lcom/google/android/material/datepicker/DateFormatTextWatcher$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    invoke-virtual {p3, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p3, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->this$0:Lcom/google/android/material/datepicker/SingleDateSelector;

    .line 20
    .line 21
    iput-object v0, v1, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v2, v1, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->val$listener:Lcom/google/android/material/datepicker/MaterialDatePicker$2;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Lcom/google/android/material/datepicker/MaterialDatePicker$2;->onSelectionChanged(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget-object v4, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->formatHint:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-ge v2, v4, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p3, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    iget-object v0, p2, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 70
    .line 71
    invoke-interface {v0, v4, v5}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->isValid(J)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    iget-object v0, p2, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/4 v2, 0x5

    .line 86
    const/4 v6, 0x1

    .line 87
    invoke-virtual {v0, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v6

    .line 94
    cmp-long v0, v6, v4

    .line 95
    .line 96
    if-gtz v0, :cond_1

    .line 97
    .line 98
    iget-object p2, p2, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    .line 99
    .line 100
    iget v0, p2, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    .line 101
    .line 102
    iget-object p2, p2, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    .line 103
    .line 104
    invoke-static {p2}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p2, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 112
    .line 113
    .line 114
    move-result-wide v6

    .line 115
    cmp-long p2, v4, v6

    .line 116
    .line 117
    if-gtz p2, :cond_1

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 120
    .line 121
    .line 122
    move-result-wide p0

    .line 123
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    iput-object p0, v1, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    iget-object p0, v1, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    .line 133
    .line 134
    invoke-virtual {v3, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$2;->onSelectionChanged(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_1
    new-instance p1, Lcom/google/android/material/datepicker/DateFormatTextWatcher$$ExternalSyntheticLambda1;

    .line 139
    .line 140
    invoke-direct {p1, p0, v4, v5}, Lcom/google/android/material/datepicker/DateFormatTextWatcher$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/datepicker/SingleDateSelector$1;J)V

    .line 141
    .line 142
    .line 143
    iput-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->setRangeErrorCallback:Lcom/google/android/material/datepicker/DateFormatTextWatcher$$ExternalSyntheticLambda1;

    .line 144
    .line 145
    invoke-virtual {p3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :catch_0
    invoke-virtual {p3, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 150
    .line 151
    .line 152
    :cond_2
    :goto_0
    return-void
.end method
