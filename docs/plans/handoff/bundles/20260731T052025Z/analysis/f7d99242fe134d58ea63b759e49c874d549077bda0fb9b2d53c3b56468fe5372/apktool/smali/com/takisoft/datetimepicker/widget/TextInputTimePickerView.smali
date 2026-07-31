.class public Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;
.super Landroid/widget/RelativeLayout;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAmPmSpinner:Landroid/widget/Spinner;

.field public mErrorLabel:Landroid/widget/TextView;

.field public mErrorShowing:Z

.field public mHourEditText:Landroid/widget/EditText;

.field public mHourFormatStartsAtZero:Z

.field public mHourLabel:Landroid/widget/TextView;

.field public mInputSeparatorView:Landroid/widget/TextView;

.field public mIs24Hour:Z

.field public mListener:Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$OnValueTypedListener;

.field public mMinuteEditText:Landroid/widget/EditText;

.field public mMinuteLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->attrHandler(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->attrHandler(Landroid/content/Context;)V

    return-void
.end method

.method private setError(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mErrorShowing:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mErrorLabel:Landroid/widget/TextView;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    move v3, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v1

    .line 12
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    move v3, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v3, v2

    .line 22
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move v1, v2

    .line 31
    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final attrHandler(Landroid/content/Context;)V
    .locals 5

    .line 1
    const v0, 0x7f0c0581

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    const v0, 0x7f09023f

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/EditText;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    .line 17
    .line 18
    const v0, 0x7f090240

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/EditText;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    .line 28
    .line 29
    const v0, 0x7f090242

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mInputSeparatorView:Landroid/widget/TextView;

    .line 39
    .line 40
    const v0, 0x7f09024d

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mErrorLabel:Landroid/widget/TextView;

    .line 50
    .line 51
    const v0, 0x7f09024e

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    .line 61
    .line 62
    const v0, 0x7f09024f

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    .line 74
    .line 75
    new-instance v1, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$1;

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    invoke-direct {v1, p0, v2}, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$1;-><init>(Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    .line 85
    .line 86
    new-instance v1, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$1;

    .line 87
    .line 88
    const/4 v3, 0x1

    .line 89
    invoke-direct {v1, p0, v3}, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$1;-><init>(Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    .line 94
    .line 95
    const v0, 0x7f090075

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/widget/Spinner;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/takisoft/datetimepicker/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 111
    .line 112
    const v4, 0x1090009

    .line 113
    .line 114
    .line 115
    invoke-direct {v1, p1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 116
    .line 117
    .line 118
    aget-object p1, v0, v2

    .line 119
    .line 120
    invoke-static {p1}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    aget-object p1, v0, v3

    .line 128
    .line 129
    invoke-static {p1}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    .line 137
    .line 138
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    .line 142
    .line 143
    new-instance v0, Landroidx/appcompat/widget/SearchView$9;

    .line 144
    .line 145
    const/4 v1, 0x4

    .line 146
    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/SearchView$9;-><init>(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final getHourOfDayFromLocalizedHour(I)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mIs24Hour:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/16 p0, 0x18

    .line 11
    .line 12
    if-ne p1, p0, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    return p1

    .line 16
    :cond_1
    const/16 v0, 0xc

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    .line 22
    move p1, v2

    .line 23
    :cond_2
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne p0, v1, :cond_3

    .line 31
    .line 32
    add-int/2addr p1, v0

    .line 33
    :cond_3
    return p1
.end method

.method public final parseAndSetHourInternal(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iget-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    .line 7
    .line 8
    xor-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    iget-boolean v3, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mIs24Hour:Z

    .line 11
    .line 12
    const/16 v4, 0x17

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    move v5, v4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v5, 0xb

    .line 19
    .line 20
    :goto_0
    add-int/2addr v5, v2

    .line 21
    const/4 v6, 0x1

    .line 22
    if-lt p1, v2, :cond_1

    .line 23
    .line 24
    if-gt p1, v5, :cond_1

    .line 25
    .line 26
    move v2, v6

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v2, v0

    .line 29
    :goto_1
    if-nez v2, :cond_3

    .line 30
    .line 31
    xor-int/2addr v1, v6

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    add-int/lit8 v4, v1, 0xb

    .line 36
    .line 37
    :goto_2
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mListener:Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 38
    .line 39
    invoke-static {p1, v1, v4}, Lorg/jsoup/helper/Validate;->clamp(III)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->getHourOfDayFromLocalizedHour(I)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    check-cast v2, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;

    .line 48
    .line 49
    invoke-virtual {v2, v0, p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;->onValueChanged(II)V

    .line 50
    .line 51
    .line 52
    return v0

    .line 53
    :cond_3
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mListener:Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->getHourOfDayFromLocalizedHour(I)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    check-cast v1, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;

    .line 60
    .line 61
    invoke-virtual {v1, v0, p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;->onValueChanged(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    return v6

    .line 65
    :catch_0
    return v0
.end method

.method public final parseAndSetMinuteInternal(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    const/16 v1, 0x3b

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ltz p1, :cond_1

    .line 10
    .line 11
    if-le p1, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mListener:Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 15
    .line 16
    check-cast p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;

    .line 17
    .line 18
    invoke-virtual {p0, v2, p1}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;->onValueChanged(II)V

    .line 19
    .line 20
    .line 21
    return v2

    .line 22
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mListener:Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 23
    .line 24
    invoke-static {p1, v0, v1}, Lorg/jsoup/helper/Validate;->clamp(III)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    check-cast p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;

    .line 29
    .line 30
    invoke-virtual {p0, v2, p1}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;->onValueChanged(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    return v0
.end method

.method public setHourFormat(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    .line 2
    .line 3
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v3, v2, [Landroid/text/InputFilter;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    aput-object v1, v3, v4

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    .line 18
    .line 19
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-array p1, v2, [Landroid/text/InputFilter;

    .line 25
    .line 26
    aput-object v0, p1, v4

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setListener(Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$OnValueTypedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mListener:Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 2
    .line 3
    return-void
.end method

.method public final validateInput()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->parseAndSetHourInternal(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->parseAndSetMinuteInternal(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    xor-int/lit8 v1, v0, 0x1

    .line 37
    .line 38
    invoke-direct {p0, v1}, Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;->setError(Z)V

    .line 39
    .line 40
    .line 41
    return v0
.end method
