.class public Lcom/takisoft/datetimepicker/widget/CalendarView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DATE_FORMATTER:Ljava/text/SimpleDateFormat;


# instance fields
.field public final mDelegate:Lorg/slf4j/event/EventRecodingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "MM/dd/yyyy"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/takisoft/datetimepicker/widget/CalendarView;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/takisoft/datetimepicker/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0400b4

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/takisoft/datetimepicker/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

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
    const v0, 0x7f1304e9

    .line 11
    .line 12
    .line 13
    :goto_0
    move v6, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const v0, 0x7f1304e3

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :goto_1
    sget-object v0, Lcom/takisoft/datetimepicker/R$styleable;->CalendarView:[I

    .line 20
    .line 21
    invoke-virtual {p1, p2, v0, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lorg/slf4j/event/EventRecodingLogger;

    .line 29
    .line 30
    move-object v2, p0

    .line 31
    move-object v3, p1

    .line 32
    move-object v4, p2

    .line 33
    move v5, p3

    .line 34
    invoke-direct/range {v1 .. v6}, Lorg/slf4j/event/EventRecodingLogger;-><init>(Lcom/takisoft/datetimepicker/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    .line 36
    .line 37
    iput-object v1, v2, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    sget-object v0, Lcom/takisoft/datetimepicker/R$styleable;->CalendarView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    new-instance v1, Lorg/slf4j/event/EventRecodingLogger;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/slf4j/event/EventRecodingLogger;-><init>(Lcom/takisoft/datetimepicker/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, v2, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    return-void
.end method

.method public static parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v1, Lcom/takisoft/datetimepicker/widget/CalendarView;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "Date: "

    .line 25
    .line 26
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, " not in format: MM/dd/yyyy"

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "CalendarView"

    .line 42
    .line 43
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    const-class p0, Lcom/takisoft/datetimepicker/widget/CalendarView;

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

.method public getDate()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public getDateTextAppearance()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 8
    .line 9
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    .line 10
    .line 11
    return p0
.end method

.method public getFirstDayOfWeek()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 8
    .line 9
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    .line 10
    .line 11
    return p0
.end method

.method public getFocusedMonthDateColor()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public getMaxDate()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public getSelectedWeekBackgroundColor()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public getShowWeekNumber()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public getShownWeekCount()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public getUnfocusedMonthDateColor()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public getWeekDayTextAppearance()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 8
    .line 9
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    .line 10
    .line 11
    return p0
.end method

.method public getWeekNumberColor()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public getWeekSeparatorLineColor()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

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
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setDate(J)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->setDate(JZZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 8
    .line 9
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setFocusedMonthDateColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMaxDate(J)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->onRangeChanged()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setMinDate(J)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->onRangeChanged()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setOnDateChangeListener(Lcom/takisoft/datetimepicker/widget/CalendarView$OnDateChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    iput-object p1, p0, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShownWeekCount(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 8
    .line 9
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setWeekNumberColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/CalendarView;->mDelegate:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method
