.class public Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final LOG_RADIX:D


# instance fields
.field public mCount:I

.field public mListener:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView$OnValueChangedListener;

.field public mMaxCount:I

.field public mMaxValue:I

.field public mMinValue:I

.field public mPreviousValue:I

.field public mShowLeadingZeroes:Z

.field public mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sput-wide v0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->LOG_RADIX:D

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMinValue:I

    .line 6
    .line 7
    const/16 p2, 0x63

    .line 8
    .line 9
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMaxValue:I

    .line 10
    .line 11
    const/4 p2, 0x2

    .line 12
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMaxCount:I

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mShowLeadingZeroes:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1}, Lcom/takisoft/datetimepicker/util/StateSet;->get(I)[I

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static isKeyCodeNumeric(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x9

    .line 9
    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0xa

    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0xb

    .line 17
    .line 18
    if-eq p0, v0, :cond_1

    .line 19
    .line 20
    const/16 v0, 0xc

    .line 21
    .line 22
    if-eq p0, v0, :cond_1

    .line 23
    .line 24
    const/16 v0, 0xd

    .line 25
    .line 26
    if-eq p0, v0, :cond_1

    .line 27
    .line 28
    const/16 v0, 0xe

    .line 29
    .line 30
    if-eq p0, v0, :cond_1

    .line 31
    .line 32
    const/16 v0, 0xf

    .line 33
    .line 34
    if-eq p0, v0, :cond_1

    .line 35
    .line 36
    const/16 v0, 0x10

    .line 37
    .line 38
    if-ne p0, v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    return p0

    .line 43
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 44
    return p0
.end method


# virtual methods
.method public final getOnDigitEnteredListener()Lcom/takisoft/datetimepicker/widget/internal/NumericTextView$OnValueChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mListener:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView$OnValueChangedListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRangeMaximum()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMaxValue:I

    .line 2
    .line 3
    return p0
.end method

.method public final getRangeMinimum()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMinValue:I

    .line 2
    .line 3
    return p0
.end method

.method public final getShowLeadingZeroes()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mShowLeadingZeroes:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mValue:I

    .line 2
    .line 3
    return p0
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    const-string p2, ""

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mValue:I

    .line 9
    .line 10
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mPreviousValue:I

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mValue:I

    .line 14
    .line 15
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mCount:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mCount:I

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mPreviousValue:I

    .line 33
    .line 34
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mValue:I

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mValue:I

    .line 47
    .line 48
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMinValue:I

    .line 49
    .line 50
    if-ge p1, p2, :cond_2

    .line 51
    .line 52
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mValue:I

    .line 53
    .line 54
    :cond_2
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mValue:I

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->setValue(I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mListener:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView$OnValueChangedListener;

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    check-cast p1, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;

    .line 64
    .line 65
    const/4 p2, 0x1

    .line 66
    invoke-virtual {p1, p0, p2, p2}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;->onValueChanged(Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;ZZ)V

    .line 67
    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->isKeyCodeNumeric(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x43

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public final onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->isKeyCodeNumeric(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x43

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    const/16 v0, 0x43

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mCount:I

    .line 8
    .line 9
    if-lez p1, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mValue:I

    .line 12
    .line 13
    div-int/lit8 p2, p2, 0xa

    .line 14
    .line 15
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mValue:I

    .line 16
    .line 17
    sub-int/2addr p1, v2

    .line 18
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mCount:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p1}, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->isKeyCodeNumeric(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_6

    .line 26
    .line 27
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mCount:I

    .line 28
    .line 29
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMaxCount:I

    .line 30
    .line 31
    if-ge p2, v0, :cond_1

    .line 32
    .line 33
    add-int/lit8 p1, p1, -0x7

    .line 34
    .line 35
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mValue:I

    .line 36
    .line 37
    mul-int/lit8 v0, v0, 0xa

    .line 38
    .line 39
    add-int/2addr v0, p1

    .line 40
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMaxValue:I

    .line 41
    .line 42
    if-gt v0, p1, :cond_1

    .line 43
    .line 44
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mValue:I

    .line 45
    .line 46
    add-int/2addr p2, v2

    .line 47
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mCount:I

    .line 48
    .line 49
    :cond_1
    :goto_0
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mCount:I

    .line 50
    .line 51
    if-lez p1, :cond_2

    .line 52
    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string p2, "%0"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mCount:I

    .line 61
    .line 62
    const-string v0, "d"

    .line 63
    .line 64
    invoke-static {p1, p2, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mValue:I

    .line 69
    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    new-array v0, v2, [Ljava/lang/Object;

    .line 75
    .line 76
    aput-object p2, v0, v1

    .line 77
    .line 78
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    const-string p1, ""

    .line 84
    .line 85
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mListener:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView$OnValueChangedListener;

    .line 89
    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mValue:I

    .line 93
    .line 94
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMinValue:I

    .line 95
    .line 96
    if-lt p2, v0, :cond_3

    .line 97
    .line 98
    move v0, v2

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    move v0, v1

    .line 101
    :goto_2
    iget v3, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mCount:I

    .line 102
    .line 103
    iget v4, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMaxCount:I

    .line 104
    .line 105
    if-ge v3, v4, :cond_4

    .line 106
    .line 107
    mul-int/lit8 p2, p2, 0xa

    .line 108
    .line 109
    iget v3, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMaxValue:I

    .line 110
    .line 111
    if-le p2, v3, :cond_5

    .line 112
    .line 113
    :cond_4
    move v1, v2

    .line 114
    :cond_5
    check-cast p1, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;

    .line 115
    .line 116
    invoke-virtual {p1, p0, v0, v1}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;->onValueChanged(Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;ZZ)V

    .line 117
    .line 118
    .line 119
    return v2

    .line 120
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-eqz p0, :cond_8

    .line 125
    .line 126
    :cond_7
    return v2

    .line 127
    :cond_8
    return v1
.end method

.method public final setOnDigitEnteredListener(Lcom/takisoft/datetimepicker/widget/internal/NumericTextView$OnValueChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mListener:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView$OnValueChangedListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setRange(II)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMinValue:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMinValue:I

    .line 6
    .line 7
    :cond_0
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMaxValue:I

    .line 8
    .line 9
    if-eq p1, p2, :cond_3

    .line 10
    .line 11
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMaxValue:I

    .line 12
    .line 13
    int-to-double p1, p2

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    sget-wide v0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->LOG_RADIX:D

    .line 19
    .line 20
    div-double/2addr p1, v0

    .line 21
    double-to-int p1, p1

    .line 22
    const/4 p2, 0x1

    .line 23
    add-int/2addr p1, p2

    .line 24
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMaxCount:I

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .line 31
    move v1, v0

    .line 32
    move v2, v1

    .line 33
    :goto_0
    iget v3, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMaxValue:I

    .line 34
    .line 35
    if-ge v1, v3, :cond_2

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v4, "%0"

    .line 40
    .line 41
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget v4, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMaxCount:I

    .line 45
    .line 46
    const-string v5, "d"

    .line 47
    .line 48
    invoke-static {v3, v4, v5}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    new-array v5, p2, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object v4, v5, v0

    .line 59
    .line 60
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-le v3, v2, :cond_1

    .line 75
    .line 76
    move v2, v3

    .line 77
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->updateDisplayedValue()V

    .line 90
    .line 91
    .line 92
    :cond_3
    return-void
.end method

.method public final setShowLeadingZeroes(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mShowLeadingZeroes:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mShowLeadingZeroes:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->updateDisplayedValue()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final setValue(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mValue:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mValue:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->updateDisplayedValue()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final updateDisplayedValue()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mShowLeadingZeroes:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "%0"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mMaxCount:I

    .line 13
    .line 14
    const-string v2, "d"

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "%d"

    .line 22
    .line 23
    :goto_0
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->mValue:I

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x1

    .line 30
    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    aput-object v1, v2, v3

    .line 34
    .line 35
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
