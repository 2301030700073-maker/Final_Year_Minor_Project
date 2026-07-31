.class public final Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mTempCalendar:Ljava/util/Calendar;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/takisoft/datetimepicker/widget/SimpleMonthView;


# direct methods
.method public constructor <init>(Lcom/takisoft/datetimepicker/widget/SimpleMonthView;Lcom/takisoft/datetimepicker/widget/SimpleMonthView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/takisoft/datetimepicker/widget/SimpleMonthView;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final getDayDescription(I)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    sget v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->$r8$clinit:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/takisoft/datetimepicker/widget/SimpleMonthView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v1, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mYear:I

    .line 12
    .line 13
    iget v0, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonth:I

    .line 14
    .line 15
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    .line 16
    .line 17
    invoke-virtual {p0, v1, v0, p1}, Ljava/util/Calendar;->set(III)V

    .line 18
    .line 19
    .line 20
    const-string p1, "dd MMMM yyyy"

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-static {p1, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    const-string p0, ""

    .line 32
    .line 33
    return-object p0
.end method

.method public final getVirtualViewAt(FF)I
    .locals 1

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    .line 3
    add-float/2addr p1, v0

    .line 4
    float-to-int p1, p1

    .line 5
    add-float/2addr p2, v0

    .line 6
    float-to-int p2, p2

    .line 7
    sget v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->$r8$clinit:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/takisoft/datetimepicker/widget/SimpleMonthView;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->getDayAtLocation(II)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 p1, -0x1

    .line 16
    if-eq p0, p1, :cond_0

    .line 17
    .line 18
    return p0

    .line 19
    :cond_0
    const/high16 p0, -0x80000000

    .line 20
    .line 21
    return p0
.end method

.method public final getVisibleVirtualViews(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/takisoft/datetimepicker/widget/SimpleMonthView;

    .line 3
    .line 4
    iget v1, v1, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDaysInMonth:I

    .line 5
    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method

.method public final onPerformActionForVirtualView(II)Z
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-eq p2, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    sget p2, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->$r8$clinit:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/takisoft/datetimepicker/widget/SimpleMonthView;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->onDayClicked(I)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .line 1
    sget v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->$r8$clinit:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/takisoft/datetimepicker/widget/SimpleMonthView;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 15
    .line 16
    .line 17
    const-string p0, ""

    .line 18
    .line 19
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {v0, p1}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object v2, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    .line 36
    .line 37
    int-to-long v4, p1

    .line 38
    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v2, 0x0

    .line 44
    :goto_0
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 55
    .line 56
    .line 57
    iget p0, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    if-lt p1, p0, :cond_2

    .line 61
    .line 62
    iget p0, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 63
    .line 64
    if-gt p1, p0, :cond_2

    .line 65
    .line 66
    move v3, v1

    .line 67
    :cond_2
    if-eqz v3, :cond_3

    .line 68
    .line 69
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 70
    .line 71
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 75
    .line 76
    .line 77
    iget p0, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mActivatedDay:I

    .line 78
    .line 79
    if-ne p1, p0, :cond_4

    .line 80
    .line 81
    iget-object p0, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 84
    .line 85
    .line 86
    :cond_4
    return-void
.end method
