.class public final Lcom/google/android/material/datepicker/MonthAdapter;
.super Landroid/widget/BaseAdapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final MAXIMUM_GRID_CELLS:I

.field public static final MAXIMUM_WEEKS:I


# instance fields
.field public final calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

.field public calendarStyle:Lorg/wikipedia/databinding/FragmentNewsBinding;

.field public final dateSelector:Lcom/google/android/material/datepicker/SingleDateSelector;

.field public final dayViewDecorator:Lorg/wikipedia/games/onthisday/DateDecorator;

.field public final month:Lcom/google/android/material/datepicker/Month;

.field public previouslySelectedDates:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendarOf(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x4

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMaximum(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sput v1, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_WEEKS:I

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendarOf(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x5

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMaximum(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendarOf(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v2, 0x7

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getMaximum(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/2addr v0, v1

    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    sput v0, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_GRID_CELLS:I

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/SingleDateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lorg/wikipedia/games/onthisday/DateDecorator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/SingleDateSelector;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lorg/wikipedia/games/onthisday/DateDecorator;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/google/android/material/datepicker/SingleDateSelector;->getSelectedDays()Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->previouslySelectedDates:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final findNextValidDayPosition(I)I
    .locals 1

    .line 1
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gt p1, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->isDayPositionValid(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return p1

    .line 16
    :cond_1
    const/4 p0, -0x1

    .line 17
    return p0
.end method

.method public final findPreviousValidDayPosition(I)I
    .locals 1

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt p1, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->isDayPositionValid(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, -0x1

    .line 20
    return p0
.end method

.method public final firstPositionInMonth()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->firstDayOfWeek:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    .line 8
    .line 9
    const/4 v2, 0x7

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_0
    sub-int/2addr v2, v0

    .line 22
    if-gez v2, :cond_1

    .line 23
    .line 24
    iget p0, p0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    .line 25
    .line 26
    add-int/2addr v2, p0

    .line 27
    :cond_1
    return v2
.end method

.method public final getCount()I
    .locals 0

    .line 1
    sget p0, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_GRID_CELLS:I

    .line 2
    .line 3
    return p0
.end method

.method public final getItem(I)Ljava/lang/Long;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lt p1, v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-le p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sub-int/2addr p1, v0

    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    .line 24
    .line 25
    invoke-static {p0}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 v0, 0x5

    .line 30
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide p0

    .line 37
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    .line 2
    .line 3
    iget p0, p0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    .line 4
    .line 5
    div-int/2addr p1, p0

    .line 6
    int-to-long p0, p1

    .line 7
    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lorg/wikipedia/databinding/FragmentNewsBinding;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 15
    .line 16
    :cond_0
    move-object v0, p2

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const v0, 0x7f0c0349

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    move-object v0, p2

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    sub-int p2, p1, p2

    .line 45
    .line 46
    if-ltz p2, :cond_3

    .line 47
    .line 48
    iget-object p3, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    .line 49
    .line 50
    iget v2, p3, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    .line 51
    .line 52
    if-lt p2, v2, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 v2, 0x1

    .line 56
    add-int/2addr p2, v2

    .line 57
    invoke-virtual {v0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    iget-object p3, p3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 69
    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    new-array v4, v2, [Ljava/lang/Object;

    .line 75
    .line 76
    aput-object v3, v4, v1

    .line 77
    .line 78
    const-string v3, "%d"

    .line 79
    .line 80
    invoke-static {p3, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    :goto_0
    const/16 p2, 0x8

    .line 95
    .line 96
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 100
    .line 101
    .line 102
    const/4 p2, -0x1

    .line 103
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-nez p1, :cond_4

    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 111
    .line 112
    .line 113
    move-result-wide v1

    .line 114
    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/google/android/material/datepicker/MonthAdapter;->updateSelectedState(Landroid/widget/TextView;JI)V

    .line 115
    .line 116
    .line 117
    return-object v0
.end method

.method public final hasStableIds()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isDayPositionValid(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-interface {p0, v0, v1}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->isValid(J)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final lastPositionInMonth()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    .line 6
    .line 7
    iget p0, p0, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    .line 8
    .line 9
    add-int/2addr v0, p0

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    return v0
.end method

.method public final updateSelectedState(Landroid/widget/TextView;JI)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v8, p4

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    cmp-long v3, v3, p2

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v10, 0x1

    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    move v5, v10

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v5, v9

    .line 31
    :goto_0
    iget-object v3, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/SingleDateSelector;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v3, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Landroidx/core/util/Pair;

    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Ljava/lang/Long;

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 67
    .line 68
    .line 69
    move-result-wide v6

    .line 70
    cmp-long v4, v6, p2

    .line 71
    .line 72
    if-nez v4, :cond_2

    .line 73
    .line 74
    move v6, v10

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move v6, v9

    .line 77
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_5

    .line 91
    .line 92
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Landroidx/core/util/Pair;

    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    const v4, -0xffff01

    .line 102
    .line 103
    .line 104
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Ljava/lang/Long;

    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 111
    .line 112
    .line 113
    move-result-wide v11

    .line 114
    cmp-long v4, v11, p2

    .line 115
    .line 116
    if-nez v4, :cond_4

    .line 117
    .line 118
    move v7, v10

    .line 119
    :goto_2
    move-wide/from16 v3, p2

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    move v7, v9

    .line 123
    goto :goto_2

    .line 124
    :goto_3
    invoke-static/range {v2 .. v7}, Lorg/wikipedia/language/LanguageUtil;->getDayContentDescription(Landroid/content/Context;JZZZ)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    move-object v12, v2

    .line 129
    invoke-virtual {v1, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 133
    .line 134
    iget-object v2, v2, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 135
    .line 136
    invoke-interface {v2, v3, v4}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->isValid(J)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_b

    .line 141
    .line 142
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 143
    .line 144
    .line 145
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/SingleDateSelector;

    .line 146
    .line 147
    invoke-virtual {v2}, Lcom/google/android/material/datepicker/SingleDateSelector;->getSelectedDays()Ljava/util/ArrayList;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-eqz v5, :cond_7

    .line 160
    .line 161
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    check-cast v5, Ljava/lang/Long;

    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 168
    .line 169
    .line 170
    move-result-wide v5

    .line 171
    invoke-static {v3, v4}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    .line 172
    .line 173
    .line 174
    move-result-wide v13

    .line 175
    invoke-static {v5, v6}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    .line 176
    .line 177
    .line 178
    move-result-wide v5

    .line 179
    cmp-long v5, v13, v5

    .line 180
    .line 181
    if-nez v5, :cond_6

    .line 182
    .line 183
    move v2, v10

    .line 184
    goto :goto_4

    .line 185
    :cond_7
    move v2, v9

    .line 186
    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 187
    .line 188
    .line 189
    if-eqz v2, :cond_8

    .line 190
    .line 191
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 192
    .line 193
    iget-object v2, v2, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v2, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 196
    .line 197
    :goto_5
    move-object v13, v2

    .line 198
    goto :goto_7

    .line 199
    :cond_8
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 204
    .line 205
    .line 206
    move-result-wide v5

    .line 207
    cmp-long v2, v5, v3

    .line 208
    .line 209
    if-nez v2, :cond_9

    .line 210
    .line 211
    move v2, v10

    .line 212
    goto :goto_6

    .line 213
    :cond_9
    move v2, v9

    .line 214
    :goto_6
    iget-object v3, v0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 215
    .line 216
    if-eqz v2, :cond_a

    .line 217
    .line 218
    iget-object v2, v3, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v2, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_a
    iget-object v2, v3, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v2, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_b
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 229
    .line 230
    .line 231
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 232
    .line 233
    iget-object v2, v2, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v2, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :goto_7
    iget-object v14, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lorg/wikipedia/games/onthisday/DateDecorator;

    .line 239
    .line 240
    const/4 v15, 0x0

    .line 241
    if-eqz v14, :cond_1a

    .line 242
    .line 243
    const/4 v2, -0x1

    .line 244
    if-eq v8, v2, :cond_1a

    .line 245
    .line 246
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    .line 247
    .line 248
    iget v3, v2, Lcom/google/android/material/datepicker/Month;->year:I

    .line 249
    .line 250
    iget v4, v2, Lcom/google/android/material/datepicker/Month;->month:I

    .line 251
    .line 252
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    iget-object v2, v14, Lorg/wikipedia/games/onthisday/DateDecorator;->calendar:Ljava/util/Calendar;

    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    monitor-enter v2

    .line 261
    move-object v5, v2

    .line 262
    :try_start_0
    iget-object v2, v14, Lorg/wikipedia/games/onthisday/DateDecorator;->calendar:Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    .line 264
    const/4 v7, 0x0

    .line 265
    const/4 v8, 0x0

    .line 266
    const/4 v6, 0x0

    .line 267
    move-object/from16 v16, v5

    .line 268
    .line 269
    move/from16 v5, p4

    .line 270
    .line 271
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 272
    .line 273
    .line 274
    iget-object v2, v14, Lorg/wikipedia/games/onthisday/DateDecorator;->calendar:Ljava/util/Calendar;

    .line 275
    .line 276
    const/16 v6, 0xe

    .line 277
    .line 278
    invoke-virtual {v2, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 279
    .line 280
    .line 281
    iget-object v2, v14, Lorg/wikipedia/games/onthisday/DateDecorator;->calendar:Ljava/util/Calendar;

    .line 282
    .line 283
    iget-object v6, v14, Lorg/wikipedia/games/onthisday/DateDecorator;->startDate:Ljava/util/Date;

    .line 284
    .line 285
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-nez v2, :cond_c

    .line 290
    .line 291
    iget-object v2, v14, Lorg/wikipedia/games/onthisday/DateDecorator;->calendar:Ljava/util/Calendar;

    .line 292
    .line 293
    iget-object v6, v14, Lorg/wikipedia/games/onthisday/DateDecorator;->endDate:Ljava/util/Date;

    .line 294
    .line 295
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    if-nez v2, :cond_c

    .line 300
    .line 301
    move v9, v10

    .line 302
    goto :goto_8

    .line 303
    :catchall_0
    move-exception v0

    .line 304
    goto/16 :goto_13

    .line 305
    .line 306
    :cond_c
    :goto_8
    monitor-exit v16

    .line 307
    if-nez v9, :cond_e

    .line 308
    .line 309
    :cond_d
    :goto_9
    move-object v2, v15

    .line 310
    goto/16 :goto_11

    .line 311
    .line 312
    :cond_e
    sget-object v2, Lorg/wikipedia/games/onthisday/DateDecorator;->CREATOR:Lorg/wikipedia/games/onthisday/DateDecorator$CREATOR;

    .line 313
    .line 314
    add-int/lit8 v6, v4, 0x1

    .line 315
    .line 316
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    invoke-static {v3, v6, v5}, Lorg/wikipedia/games/onthisday/DateDecorator$CREATOR;->getDateKey(III)J

    .line 320
    .line 321
    .line 322
    move-result-wide v6

    .line 323
    iget-object v2, v14, Lorg/wikipedia/games/onthisday/DateDecorator;->scoreData:Ljava/util/Map;

    .line 324
    .line 325
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    check-cast v2, Ljava/lang/Integer;

    .line 334
    .line 335
    if-nez v2, :cond_f

    .line 336
    .line 337
    goto :goto_a

    .line 338
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    if-eqz v6, :cond_18

    .line 343
    .line 344
    :goto_a
    if-nez v2, :cond_10

    .line 345
    .line 346
    goto :goto_b

    .line 347
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    if-eq v6, v10, :cond_18

    .line 352
    .line 353
    :goto_b
    if-nez v2, :cond_11

    .line 354
    .line 355
    goto :goto_c

    .line 356
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 357
    .line 358
    .line 359
    move-result v6

    .line 360
    const/4 v7, 0x2

    .line 361
    if-ne v6, v7, :cond_12

    .line 362
    .line 363
    goto :goto_10

    .line 364
    :cond_12
    :goto_c
    if-nez v2, :cond_13

    .line 365
    .line 366
    goto :goto_d

    .line 367
    :cond_13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 368
    .line 369
    .line 370
    move-result v6

    .line 371
    const/4 v7, 0x3

    .line 372
    if-eq v6, v7, :cond_17

    .line 373
    .line 374
    :goto_d
    if-nez v2, :cond_14

    .line 375
    .line 376
    goto :goto_e

    .line 377
    :cond_14
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 378
    .line 379
    .line 380
    move-result v6

    .line 381
    const/4 v7, 0x4

    .line 382
    if-ne v6, v7, :cond_15

    .line 383
    .line 384
    goto :goto_f

    .line 385
    :cond_15
    :goto_e
    if-nez v2, :cond_16

    .line 386
    .line 387
    goto :goto_9

    .line 388
    :cond_16
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    const/4 v6, 0x5

    .line 393
    if-ne v2, v6, :cond_d

    .line 394
    .line 395
    const v2, 0x7f0600a8

    .line 396
    .line 397
    .line 398
    invoke-virtual {v12, v2}, Landroid/content/Context;->getColor(I)I

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    goto :goto_11

    .line 407
    :cond_17
    :goto_f
    const v2, 0x7f0603ff

    .line 408
    .line 409
    .line 410
    invoke-virtual {v12, v2}, Landroid/content/Context;->getColor(I)I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    goto :goto_11

    .line 419
    :cond_18
    :goto_10
    const v2, 0x7f06042c

    .line 420
    .line 421
    .line 422
    invoke-virtual {v12, v2}, Landroid/content/Context;->getColor(I)I

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    :goto_11
    iget-object v6, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lorg/wikipedia/games/onthisday/DateDecorator;

    .line 431
    .line 432
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    sget-object v7, Lorg/wikipedia/games/onthisday/DateDecorator;->CREATOR:Lorg/wikipedia/games/onthisday/DateDecorator$CREATOR;

    .line 436
    .line 437
    add-int/2addr v4, v10

    .line 438
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    .line 440
    .line 441
    invoke-static {v3, v4, v5}, Lorg/wikipedia/games/onthisday/DateDecorator$CREATOR;->getDateKey(III)J

    .line 442
    .line 443
    .line 444
    move-result-wide v3

    .line 445
    iget-object v5, v6, Lorg/wikipedia/games/onthisday/DateDecorator;->scoreData:Ljava/util/Map;

    .line 446
    .line 447
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    check-cast v3, Ljava/lang/Integer;

    .line 456
    .line 457
    if-nez v3, :cond_19

    .line 458
    .line 459
    move-object v3, v15

    .line 460
    goto :goto_12

    .line 461
    :cond_19
    const v3, 0x7f0600a7

    .line 462
    .line 463
    .line 464
    invoke-virtual {v12, v3}, Landroid/content/Context;->getColor(I)I

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    :goto_12
    invoke-virtual {v13, v1, v2, v3}, Landroidx/compose/ui/node/RulerTrackingMap;->styleItem(Landroid/widget/TextView;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 473
    .line 474
    .line 475
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lorg/wikipedia/games/onthisday/DateDecorator;

    .line 476
    .line 477
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    .line 479
    .line 480
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lorg/wikipedia/games/onthisday/DateDecorator;

    .line 481
    .line 482
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    .line 484
    .line 485
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lorg/wikipedia/games/onthisday/DateDecorator;

    .line 486
    .line 487
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    iget-object v2, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lorg/wikipedia/games/onthisday/DateDecorator;

    .line 491
    .line 492
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v1, v15, v15, v15, v15}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 496
    .line 497
    .line 498
    iget-object v0, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lorg/wikipedia/games/onthisday/DateDecorator;

    .line 499
    .line 500
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 504
    .line 505
    .line 506
    return-void

    .line 507
    :catchall_1
    move-exception v0

    .line 508
    move-object/from16 v16, v5

    .line 509
    .line 510
    :goto_13
    monitor-exit v16

    .line 511
    throw v0

    .line 512
    :cond_1a
    invoke-virtual {v13, v1, v15, v15}, Landroidx/compose/ui/node/RulerTrackingMap;->styleItem(Landroid/widget/TextView;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 513
    .line 514
    .line 515
    return-void
.end method

.method public final updateSelectedStateForDate(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V
    .locals 3

    .line 1
    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v1, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    add-int/lit8 v2, v0, -0x1

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v1, v2

    .line 38
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sub-int/2addr v1, v2

    .line 43
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/datepicker/MonthAdapter;->updateSelectedState(Landroid/widget/TextView;JI)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method
