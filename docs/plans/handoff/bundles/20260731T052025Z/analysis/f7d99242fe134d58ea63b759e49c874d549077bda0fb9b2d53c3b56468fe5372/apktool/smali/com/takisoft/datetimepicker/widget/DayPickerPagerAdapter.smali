.class public final Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mCalendarViewId:I

.field public mCount:I

.field public mDayHighlightColor:Landroid/content/res/ColorStateList;

.field public mDayOfWeekTextAppearance:I

.field public mDaySelectorColor:Landroid/content/res/ColorStateList;

.field public mDayTextAppearance:I

.field public mFirstDayOfWeek:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public final mItems:Landroid/util/SparseArray;

.field public final mLayoutResId:I

.field public final mMaxDate:Ljava/util/Calendar;

.field public final mMinDate:Ljava/util/Calendar;

.field public mMonthTextAppearance:I

.field public final mOnDayClickListener:Lokhttp3/ConnectionPool;

.field public mOnDaySelectedListener:Lcom/takisoft/datetimepicker/widget/DayPickerView$1;

.field public mSelectedDay:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    .line 15
    .line 16
    new-instance v0, Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    .line 25
    .line 26
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 27
    .line 28
    const/16 v1, 0x15

    .line 29
    .line 30
    invoke-direct {v0, v1, p0}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mOnDayClickListener:Lokhttp3/ConnectionPool;

    .line 34
    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    .line 41
    const p1, 0x7f0c0159

    .line 42
    .line 43
    .line 44
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mLayoutResId:I

    .line 45
    .line 46
    const p1, 0x7f0902c2

    .line 47
    .line 48
    .line 49
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mCalendarViewId:I

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final destroyItem(Landroidx/viewpager/widget/ViewPager;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;

    .line 2
    .line 3
    iget-object p3, p3, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final getPositionForDay(Ljava/util/Calendar;)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, -0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sub-int/2addr v1, v0

    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    sub-int/2addr p1, p0

    .line 27
    mul-int/lit8 v1, v1, 0xc

    .line 28
    .line 29
    add-int/2addr v1, p1

    .line 30
    return v1
.end method

.method public final setSelectedDay(Ljava/util/Calendar;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->getPositionForDay(Ljava/util/Calendar;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->getPositionForDay(Ljava/util/Calendar;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    iget-object v3, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    if-ltz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, v0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/takisoft/datetimepicker/widget/SimpleMonthView;

    .line 27
    .line 28
    const/4 v4, -0x1

    .line 29
    iput v4, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mActivatedDay:I

    .line 30
    .line 31
    iget-object v4, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mTouchHelper:Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 37
    .line 38
    .line 39
    :cond_0
    if-ltz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    const/4 v1, 0x5

    .line 50
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iget-object v0, v0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/takisoft/datetimepicker/widget/SimpleMonthView;

    .line 55
    .line 56
    iput v1, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mActivatedDay:I

    .line 57
    .line 58
    iget-object v1, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mTouchHelper:Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 64
    .line 65
    .line 66
    :cond_1
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    .line 67
    .line 68
    return-void
.end method
