.class public Lcom/takisoft/datetimepicker/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

.field public mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/takisoft/datetimepicker/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0401b7

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/takisoft/datetimepicker/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    const v0, 0x7f1304ea

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const v0, 0x7f1304e7

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/takisoft/datetimepicker/widget/DatePicker;->attrHandler(Landroid/content/Context;Landroid/util/AttributeSet;II)V

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
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/takisoft/datetimepicker/widget/DatePicker;->attrHandler(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final attrHandler(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    .line 1
    sget-object v0, Lcom/takisoft/datetimepicker/R$styleable;->DatePicker:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v6, 0x3

    .line 8
    const/4 v7, 0x0

    .line 9
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 10
    .line 11
    .line 12
    move-result v6

    .line 13
    const/4 v8, 0x1

    .line 14
    const/4 v9, 0x2

    .line 15
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 16
    .line 17
    .line 18
    move-result v8

    .line 19
    const/4 v10, 0x7

    .line 20
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    .line 26
    .line 27
    if-ne v8, v9, :cond_0

    .line 28
    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const v6, 0x7f0a0008

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mMode:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iput v8, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mMode:I

    .line 46
    .line 47
    :goto_0
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mMode:I

    .line 48
    .line 49
    if-eq v0, v9, :cond_1

    .line 50
    .line 51
    new-instance v0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;

    .line 52
    .line 53
    move-object v1, p0

    .line 54
    move-object v2, p1

    .line 55
    move-object v3, p2

    .line 56
    move v4, p3

    .line 57
    move v5, p4

    .line 58
    invoke-direct/range {v0 .. v5}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;-><init>(Lcom/takisoft/datetimepicker/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    new-instance v0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;

    .line 65
    .line 66
    move-object v1, p0

    .line 67
    move-object v2, p1

    .line 68
    move-object v3, p2

    .line 69
    move v4, p3

    .line 70
    move v5, p4

    .line 71
    invoke-direct/range {v0 .. v5}, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;-><init>(Lcom/takisoft/datetimepicker/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 75
    .line 76
    :goto_1
    if-eqz v7, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0, v7}, Lcom/takisoft/datetimepicker/widget/DatePicker;->setFirstDayOfWeek(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    const-class p0, Lcom/takisoft/datetimepicker/widget/DatePicker;

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

.method public getCalendarView()Lcom/takisoft/datetimepicker/widget/CalendarView;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->getCalendarView()Lcom/takisoft/datetimepicker/widget/CalendarView;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getCalendarViewShown()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->getCalendarViewShown()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getDayOfMonth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->getDayOfMonth()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getFirstDayOfWeek()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->getFirstDayOfWeek()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getMaxDate()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->getMaxDate()Ljava/util/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->getMinDate()Ljava/util/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public getMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mMode:I

    .line 2
    .line 3
    return p0
.end method

.method public getMonth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->getMonth()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getSpinnersShown()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->getSpinnersShown()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getYear()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->getYear()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final init(IIILcom/takisoft/datetimepicker/DatePickerDialog;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->init(IIILcom/takisoft/datetimepicker/DatePickerDialog;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->isEnabled()Z

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
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    return-void
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
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->onRestoreInstanceState(Landroid/view/View$BaseSavedState;)V

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
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public setCalendarViewShown(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->setCalendarViewShown(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->setEnabled(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->setFirstDayOfWeek(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string p0, "firstDayOfWeek must be between 1 and 7"

    .line 14
    .line 15
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setMaxDate(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->setMaxDate(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMinDate(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->setMinDate(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->setSpinnersShown(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setValidationCallback(Lcom/takisoft/datetimepicker/widget/DatePicker$ValidationCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker;->mDelegate:Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method
