.class public Lcom/android/contacts/datepicker/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/datepicker/DatePicker$SavedState;,
        Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field public static NO_YEAR:I

.field private static final sTwoDigitFormatter:Lcom/android/contacts/datepicker/TwoDigitFormatter;


# instance fields
.field private mDay:I

.field private final mDayPicker:Landroid/widget/NumberPicker;

.field private mHasYear:Z

.field private mMonth:I

.field private final mMonthPicker:Landroid/widget/NumberPicker;

.field private mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

.field private final mPickerContainer:Landroid/widget/LinearLayout;

.field private mYear:I

.field private mYearOptional:Z

.field private final mYearPicker:Landroid/widget/NumberPicker;

.field private final mYearToggle:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/android/contacts/datepicker/TwoDigitFormatter;

    invoke-direct {v0}, Lcom/android/contacts/datepicker/TwoDigitFormatter;-><init>()V

    sput-object v0, Lcom/android/contacts/datepicker/DatePicker;->sTwoDigitFormatter:Lcom/android/contacts/datepicker/TwoDigitFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "layout_inflater"

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0c0034

    const/4 p3, 0x1

    .line 107
    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f090168

    .line 109
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    const p1, 0x7f09009c

    .line 110
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/NumberPicker;

    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    .line 111
    sget-object p2, Lcom/android/contacts/datepicker/DatePicker;->sTwoDigitFormatter:Lcom/android/contacts/datepicker/TwoDigitFormatter;

    invoke-virtual {p1, p2}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 112
    iget-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 113
    iget-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    new-instance p2, Lcom/android/contacts/datepicker/DatePicker$1;

    invoke-direct {p2, p0}, Lcom/android/contacts/datepicker/DatePicker$1;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {p1, p2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    const p1, 0x7f090144

    .line 120
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/NumberPicker;

    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    .line 121
    sget-object p2, Lcom/android/contacts/datepicker/DatePicker;->sTwoDigitFormatter:Lcom/android/contacts/datepicker/TwoDigitFormatter;

    invoke-virtual {p1, p2}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 122
    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 123
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 130
    aget-object v2, p1, p2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0xc

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 131
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    .line 132
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v2

    move v2, v4

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {p1, p3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 135
    iget-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {p1, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_1

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, p3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 138
    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 139
    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, p1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 142
    :goto_1
    iget-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v2, v3}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 143
    iget-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    new-instance v2, Lcom/android/contacts/datepicker/DatePicker$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/datepicker/DatePicker$2;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    const p1, 0x7f090209

    .line 157
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/NumberPicker;

    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 159
    iget-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    new-instance v0, Lcom/android/contacts/datepicker/DatePicker$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/datepicker/DatePicker$3;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 169
    iget-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const/16 v0, 0x76c

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 170
    iget-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const/16 v0, 0x834

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    const p1, 0x7f09020a

    .line 172
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    .line 173
    new-instance v0, Lcom/android/contacts/datepicker/DatePicker$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/datepicker/DatePicker$4;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 184
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 185
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v0, p1, v1}, Lcom/android/contacts/datepicker/DatePicker;->init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 188
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->reorderPickers()V

    .line 190
    iget-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    new-instance p3, Landroid/animation/LayoutTransition;

    invoke-direct {p3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 191
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 192
    invoke-virtual {p0, p2}, Lcom/android/contacts/datepicker/DatePicker;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/datepicker/DatePicker;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/contacts/datepicker/DatePicker;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->adjustMaxDay()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateDaySpinner()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/contacts/datepicker/DatePicker;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/contacts/datepicker/DatePicker;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    return-void
.end method

.method private adjustMaxDay()V
    .locals 3

    .line 422
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 424
    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d0

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    .line 425
    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    .line 426
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 427
    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    if-le v1, v0, :cond_1

    .line 428
    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    :cond_1
    return-void
.end method

.method private getCurrentYear()I
    .locals 2

    .line 241
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private notifyDateChanged()V
    .locals 4

    .line 433
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1

    .line 434
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v0, :cond_0

    sget v0, Lcom/android/contacts/datepicker/DatePicker;->NO_YEAR:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    .line 435
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-interface {v1, p0, v0, v2, v3}, Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/android/contacts/datepicker/DatePicker;III)V

    :cond_1
    return-void
.end method

.method private reorderPickers()V
    .locals 5

    .line 207
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v0, :cond_0

    const-string v0, "yyyyMMMdd"

    goto :goto_0

    :cond_0
    const-string v0, "MMMdd"

    .line 208
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Lcom/android/contacts/datepicker/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 215
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-char v3, v0, v2

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    .line 217
    iget-object v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_1
    const/16 v4, 0x4d

    if-ne v3, v4, :cond_2

    .line 219
    iget-object v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 224
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mPickerContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateDaySpinner()V
    .locals 4

    .line 396
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 398
    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d0

    :goto_0
    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    const/4 v1, 0x5

    .line 399
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 400
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 401
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 402
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    return-void
.end method

.method private updateSpinners()V
    .locals 4

    .line 383
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateDaySpinner()V

    .line 384
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 385
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 387
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 329
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 414
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 406
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v0, :cond_0

    sget v0, Lcom/android/contacts/datepicker/DatePicker;->NO_YEAR:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    :goto_0
    return v0
.end method

.method public init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 360
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/datepicker/DatePicker;->init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V
    .locals 1

    if-eqz p4, :cond_0

    .line 373
    sget v0, Lcom/android/contacts/datepicker/DatePicker;->NO_YEAR:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->getCurrentYear()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    .line 374
    iput p2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    .line 375
    iput p3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 376
    iput-boolean p4, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    const/4 p2, 0x1

    if-eqz p4, :cond_2

    .line 377
    sget p3, Lcom/android/contacts/datepicker/DatePicker;->NO_YEAR:I

    if-eq p1, p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_1
    iput-boolean p2, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    .line 378
    iput-object p5, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    .line 379
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    return-void
.end method

.method public isYearOptional()Z
    .locals 1

    .line 410
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 341
    check-cast p1, Lcom/android/contacts/datepicker/DatePicker$SavedState;

    .line 342
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 343
    invoke-virtual {p1}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getYear()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    .line 344
    invoke-virtual {p1}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    .line 345
    invoke-virtual {p1}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getDay()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 346
    invoke-virtual {p1}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->hasYear()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    .line 347
    invoke-virtual {p1}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->isYearOptional()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    .line 348
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .line 334
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 336
    new-instance v8, Lcom/android/contacts/datepicker/DatePicker$SavedState;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    iget v4, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    iget-boolean v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    iget-boolean v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZZLcom/android/contacts/datepicker/DatePicker$1;)V

    return-object v8
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 198
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    return-void
.end method
