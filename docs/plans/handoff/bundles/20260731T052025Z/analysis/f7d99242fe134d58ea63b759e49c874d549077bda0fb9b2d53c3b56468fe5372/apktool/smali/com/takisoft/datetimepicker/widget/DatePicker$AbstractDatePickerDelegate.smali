.class public abstract Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mCurrentLocale:Ljava/util/Locale;

.field public mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

.field public mOnDateChangedListener:Lcom/takisoft/datetimepicker/DatePickerDialog;


# direct methods
.method public constructor <init>(Lcom/takisoft/datetimepicker/widget/DatePicker;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getCalendarView()Lcom/takisoft/datetimepicker/widget/CalendarView;
.end method

.method public abstract getCalendarViewShown()Z
.end method

.method public abstract getDayOfMonth()I
.end method

.method public abstract getFirstDayOfWeek()I
.end method

.method public abstract getMaxDate()Ljava/util/Calendar;
.end method

.method public abstract getMinDate()Ljava/util/Calendar;
.end method

.method public abstract getMonth()I
.end method

.method public abstract getSpinnersShown()Z
.end method

.method public abstract getYear()I
.end method

.method public abstract init(IIILcom/takisoft/datetimepicker/DatePickerDialog;)V
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public onLocaleChanged(Ljava/util/Locale;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract onRestoreInstanceState(Landroid/view/View$BaseSavedState;)V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Parcelable;)Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
.end method

.method public abstract setCalendarViewShown(Z)V
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setFirstDayOfWeek(I)V
.end method

.method public abstract setMaxDate(J)V
.end method

.method public abstract setMinDate(J)V
.end method

.method public abstract setSpinnersShown(Z)V
.end method
