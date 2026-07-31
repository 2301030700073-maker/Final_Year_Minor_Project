.class public Lcom/takisoft/datetimepicker/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

.field public mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/takisoft/datetimepicker/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04062d

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/takisoft/datetimepicker/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/work/Data$Companion;->isLightTheme(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const v0, 0x7f1304ec

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const v0, 0x7f1304ee

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/takisoft/datetimepicker/widget/TimePicker;->attrHandler(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/takisoft/datetimepicker/widget/TimePicker;->attrHandler(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 10
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v1, 0x18

    .line 14
    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    .line 17
    invoke-static {p0}, Landroid/icu/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p0}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :goto_0
    const/4 v0, 0x0

    .line 35
    aget-object v1, p0, v0

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x4

    .line 42
    const/4 v3, 0x1

    .line 43
    if-le v1, v2, :cond_1

    .line 44
    .line 45
    aget-object v1, p0, v0

    .line 46
    .line 47
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    aget-object v1, p0, v0

    .line 53
    .line 54
    :goto_1
    aget-object v4, p0, v3

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-le v4, v2, :cond_2

    .line 61
    .line 62
    aget-object p0, p0, v3

    .line 63
    .line 64
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    aget-object p0, p0, v3

    .line 70
    .line 71
    :goto_2
    filled-new-array {v1, p0}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method private getAmView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->getAmView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private getHourView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->getHourView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private getMinuteView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->getMinuteView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private getPmView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->getPmView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final attrHandler(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getImportantForAutofill()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setImportantForAutofill(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/takisoft/datetimepicker/R$styleable;->TimePicker:[I

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v3, 0x9

    .line 29
    .line 30
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    if-ne v2, v0, :cond_1

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const v2, 0x7f0a0051

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput v1, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mMode:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iput v2, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mMode:I

    .line 57
    .line 58
    :goto_0
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mMode:I

    .line 59
    .line 60
    if-eq v1, v0, :cond_2

    .line 61
    .line 62
    new-instance v2, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;

    .line 63
    .line 64
    move-object v3, p0

    .line 65
    move-object v4, p1

    .line 66
    move-object v5, p2

    .line 67
    move v6, p3

    .line 68
    move v7, p4

    .line 69
    invoke-direct/range {v2 .. v7}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;-><init>(Lcom/takisoft/datetimepicker/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    .line 71
    .line 72
    iput-object v2, v3, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move-object v4, p0

    .line 76
    move-object p0, p1

    .line 77
    move-object v5, p2

    .line 78
    move v6, p3

    .line 79
    move v7, p4

    .line 80
    new-instance v3, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;

    .line 81
    .line 82
    move v8, v7

    .line 83
    move v7, v6

    .line 84
    move-object v6, v5

    .line 85
    move-object v5, p0

    .line 86
    invoke-direct/range {v3 .. v8}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;-><init>(Lcom/takisoft/datetimepicker/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    .line 88
    .line 89
    move-object p0, v3

    .line 90
    move-object v3, v4

    .line 91
    move-object v4, v5

    .line 92
    iput-object p0, v3, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 93
    .line 94
    :goto_1
    iget-object p0, v3, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 95
    .line 96
    new-instance p1, Lcom/takisoft/datetimepicker/widget/TimePicker$1;

    .line 97
    .line 98
    invoke-direct {p1, v3, v4}, Lcom/takisoft/datetimepicker/widget/TimePicker$1;-><init>(Lcom/takisoft/datetimepicker/widget/TimePicker;Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/lang/Object;

    .line 102
    .line 103
    return-void
.end method

.method public final autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, " could not be autofilled into "

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "TimePicker"

    .line 37
    .line 38
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Ljava/util/Locale;

    .line 51
    .line 52
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 57
    .line 58
    .line 59
    const/16 v0, 0xb

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {p0, v0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setHour(I)V

    .line 66
    .line 67
    .line 68
    const/16 v0, 0xc

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setMinute(I)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAutofillId()Landroid/view/autofill/AutofillId;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    const-class p0, Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getAutofillType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x4

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/util/Locale;

    .line 14
    .line 15
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/16 v1, 0xb

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->getHour()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 26
    .line 27
    .line 28
    const/16 v1, 0xc

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->getMinute()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_0
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method public getBaseline()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->getBaseline()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePicker;->getHour()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePicker;->getMinute()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getHour()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->getHour()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getMinute()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->getMinute()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mMode:I

    .line 2
    .line 3
    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View$BaseSavedState;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->onRestoreInstanceState(Landroid/view/View$BaseSavedState;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->onSaveInstanceState(Landroid/os/Parcelable;)Lcom/takisoft/datetimepicker/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/TimePicker;->setHour(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/TimePicker;->setMinute(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setHour(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x17

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lorg/jsoup/helper/Validate;->clamp(III)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setHour(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setIs24Hour(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setMinute(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x3b

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lorg/jsoup/helper/Validate;->clamp(III)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setMinute(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/takisoft/datetimepicker/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method
