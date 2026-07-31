.class public final Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mTempRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;


# direct methods
.method public constructor <init>(Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

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
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 12
    .line 13
    return-void
.end method

.method public static makeId(II)I
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    or-int/2addr p0, p1

    .line 4
    return p0
.end method


# virtual methods
.method public final adjustPicker(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mShowHours:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentHour()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-boolean v2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/16 v2, 0x17

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/16 v2, 0xc

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    move v0, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-le v0, v2, :cond_2

    .line 27
    .line 28
    add-int/lit8 v0, v0, -0xc

    .line 29
    .line 30
    :cond_2
    :goto_0
    move v1, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v3, 0x5

    .line 37
    div-int/2addr v0, v3

    .line 38
    const/16 v2, 0x37

    .line 39
    .line 40
    :goto_1
    add-int/2addr v0, p1

    .line 41
    mul-int/2addr v0, v3

    .line 42
    invoke-static {v0, v1, v2}, Lorg/jsoup/helper/Validate;->clamp(III)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mShowHours:Z

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_4
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final getVirtualViewAt(FF)I
    .locals 4

    .line 1
    sget-object v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq v1, v2, :cond_7

    .line 12
    .line 13
    invoke-static {v1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->snapOnly30s(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    rem-int/lit16 v2, v2, 0x168

    .line 18
    .line 19
    iget-boolean v3, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mShowHours:Z

    .line 20
    .line 21
    if-eqz v3, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0, v2, p1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget-boolean p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/16 p0, 0xc

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    move p1, p0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-le p1, p0, :cond_2

    .line 43
    .line 44
    add-int/lit8 p1, p1, -0xc

    .line 45
    .line 46
    :cond_2
    :goto_0
    invoke-static {v0, p1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    div-int/lit8 v1, v1, 0x6

    .line 56
    .line 57
    div-int/lit8 v2, v2, 0x6

    .line 58
    .line 59
    sub-int p1, p0, v1

    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const/16 p2, 0x1e

    .line 66
    .line 67
    if-le p1, p2, :cond_4

    .line 68
    .line 69
    rsub-int/lit8 p1, p1, 0x3c

    .line 70
    .line 71
    :cond_4
    sub-int v0, v2, v1

    .line 72
    .line 73
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-le v0, p2, :cond_5

    .line 78
    .line 79
    rsub-int/lit8 v0, v0, 0x3c

    .line 80
    .line 81
    :cond_5
    if-ge p1, v0, :cond_6

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_6
    move p0, v2

    .line 85
    :goto_1
    const/4 p1, 0x2

    .line 86
    invoke-static {p1, p0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    return p0

    .line 91
    :cond_7
    const/high16 p0, -0x80000000

    .line 92
    .line 93
    return p0
.end method

.method public final getVisibleVirtualViews(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mShowHours:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 8
    .line 9
    xor-int/lit8 v0, p0, 0x1

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/16 p0, 0x17

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 p0, 0xc

    .line 17
    .line 18
    :goto_0
    if-gt v0, p0, :cond_3

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {v1, v0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    const/4 v0, 0x0

    .line 40
    :goto_1
    const/16 v1, 0x3c

    .line 41
    .line 42
    if-ge v0, v1, :cond_3

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    invoke-static {v1, v0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    if-le p0, v0, :cond_2

    .line 57
    .line 58
    add-int/lit8 v2, v0, 0x5

    .line 59
    .line 60
    if-ge p0, v2, :cond_2

    .line 61
    .line 62
    invoke-static {v1, p0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_2
    add-int/lit8 v0, v0, 0x5

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 5
    .line 6
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 10
    .line 11
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onPerformActionForVirtualView(II)Z
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p2, v0, :cond_4

    .line 5
    .line 6
    and-int/lit8 p2, p1, 0xf

    .line 7
    .line 8
    ushr-int/lit8 p1, p1, 0x8

    .line 9
    .line 10
    and-int/lit16 p1, p1, 0xff

    .line 11
    .line 12
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p2, v0, :cond_3

    .line 16
    .line 17
    iget-boolean p2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mAmOrPm:I

    .line 23
    .line 24
    const/16 v2, 0xc

    .line 25
    .line 26
    if-ne p1, v2, :cond_1

    .line 27
    .line 28
    if-nez p2, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-ne p2, v0, :cond_2

    .line 32
    .line 33
    add-int/lit8 v1, p1, 0xc

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v1, p1

    .line 37
    :goto_0
    move p1, v1

    .line 38
    :goto_1
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 39
    .line 40
    .line 41
    return v0

    .line 42
    :cond_3
    const/4 v2, 0x2

    .line 43
    if-ne p2, v2, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 46
    .line 47
    .line 48
    return v0

    .line 49
    :cond_4
    return v1
.end method

.method public final onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    const-class p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    and-int/lit8 p0, p1, 0xf

    .line 11
    .line 12
    ushr-int/lit8 p1, p1, 0x8

    .line 13
    .line 14
    and-int/lit16 p1, p1, 0xff

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    if-ne p0, v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_1
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 15

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    iget-object v2, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4
    .line 5
    const-class v3, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    sget-object v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 17
    .line 18
    .line 19
    and-int/lit8 v3, p1, 0xf

    .line 20
    .line 21
    ushr-int/lit8 v4, p1, 0x8

    .line 22
    .line 23
    and-int/lit16 v4, v4, 0xff

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    const/4 v6, 0x1

    .line 27
    if-eq v3, v6, :cond_1

    .line 28
    .line 29
    if-ne v3, v5, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v7, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    :goto_1
    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object v7, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 42
    .line 43
    iget-object v8, v7, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTextInset:[I

    .line 44
    .line 45
    iget v9, v7, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 46
    .line 47
    const/4 v10, 0x0

    .line 48
    const/16 v11, 0xc

    .line 49
    .line 50
    if-ne v3, v6, :cond_7

    .line 51
    .line 52
    sget-object v12, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    .line 53
    .line 54
    iget-boolean v12, v7, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 55
    .line 56
    if-eqz v12, :cond_3

    .line 57
    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    if-le v4, v11, :cond_3

    .line 61
    .line 62
    :cond_2
    move v13, v6

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move v13, v10

    .line 65
    :goto_2
    iget v14, v7, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mCircleRadius:I

    .line 66
    .line 67
    if-eqz v13, :cond_4

    .line 68
    .line 69
    aget v8, v8, v5

    .line 70
    .line 71
    :goto_3
    sub-int/2addr v14, v8

    .line 72
    int-to-float v8, v14

    .line 73
    int-to-float v9, v9

    .line 74
    goto :goto_4

    .line 75
    :cond_4
    aget v8, v8, v10

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :goto_4
    if-eqz v12, :cond_5

    .line 79
    .line 80
    if-lt v4, v11, :cond_6

    .line 81
    .line 82
    add-int/lit8 v12, v4, -0xc

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_5
    if-ne v4, v11, :cond_6

    .line 86
    .line 87
    move v12, v10

    .line 88
    goto :goto_5

    .line 89
    :cond_6
    move v12, v4

    .line 90
    :goto_5
    mul-int/lit8 v12, v12, 0x1e

    .line 91
    .line 92
    int-to-float v12, v12

    .line 93
    goto :goto_6

    .line 94
    :cond_7
    if-ne v3, v5, :cond_8

    .line 95
    .line 96
    iget v12, v7, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mCircleRadius:I

    .line 97
    .line 98
    aget v8, v8, v6

    .line 99
    .line 100
    sub-int/2addr v12, v8

    .line 101
    int-to-float v8, v12

    .line 102
    mul-int/lit8 v12, v4, 0x6

    .line 103
    .line 104
    int-to-float v12, v12

    .line 105
    int-to-float v9, v9

    .line 106
    goto :goto_6

    .line 107
    :cond_8
    const/4 v8, 0x0

    .line 108
    move v9, v8

    .line 109
    move v12, v9

    .line 110
    :goto_6
    float-to-double v12, v12

    .line 111
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    .line 112
    .line 113
    .line 114
    move-result-wide v12

    .line 115
    iget v14, v7, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mXCenter:I

    .line 116
    .line 117
    int-to-float v14, v14

    .line 118
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 119
    .line 120
    .line 121
    move-result-wide v10

    .line 122
    double-to-float v10, v10

    .line 123
    mul-float/2addr v10, v8

    .line 124
    add-float/2addr v10, v14

    .line 125
    iget v11, v7, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mYCenter:I

    .line 126
    .line 127
    int-to-float v11, v11

    .line 128
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    .line 129
    .line 130
    .line 131
    move-result-wide v12

    .line 132
    double-to-float v12, v12

    .line 133
    mul-float/2addr v8, v12

    .line 134
    sub-float/2addr v11, v8

    .line 135
    sub-float v8, v10, v9

    .line 136
    .line 137
    float-to-int v8, v8

    .line 138
    sub-float v12, v11, v9

    .line 139
    .line 140
    float-to-int v12, v12

    .line 141
    add-float/2addr v10, v9

    .line 142
    float-to-int v10, v10

    .line 143
    add-float/2addr v11, v9

    .line 144
    float-to-int v9, v11

    .line 145
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 146
    .line 147
    invoke-virtual {v0, v8, v12, v10, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 151
    .line 152
    .line 153
    if-ne v3, v6, :cond_a

    .line 154
    .line 155
    invoke-virtual {v7}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentHour()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-ne v0, v4, :cond_9

    .line 160
    .line 161
    :goto_7
    move v10, v6

    .line 162
    goto :goto_8

    .line 163
    :cond_9
    const/4 v10, 0x0

    .line 164
    goto :goto_8

    .line 165
    :cond_a
    if-ne v3, v5, :cond_9

    .line 166
    .line 167
    invoke-virtual {v7}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-ne v0, v4, :cond_9

    .line 172
    .line 173
    goto :goto_7

    .line 174
    :goto_8
    invoke-virtual {v2, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 175
    .line 176
    .line 177
    const/high16 v0, -0x80000000

    .line 178
    .line 179
    if-ne v3, v6, :cond_c

    .line 180
    .line 181
    add-int/2addr v4, v6

    .line 182
    iget-boolean v1, v7, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 183
    .line 184
    if-eqz v1, :cond_b

    .line 185
    .line 186
    const/16 v11, 0x17

    .line 187
    .line 188
    goto :goto_9

    .line 189
    :cond_b
    const/16 v11, 0xc

    .line 190
    .line 191
    :goto_9
    if-gt v4, v11, :cond_e

    .line 192
    .line 193
    invoke-static {v3, v4}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    goto :goto_a

    .line 198
    :cond_c
    if-ne v3, v5, :cond_e

    .line 199
    .line 200
    invoke-virtual {v7}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    rem-int/lit8 v5, v4, 0x5

    .line 205
    .line 206
    sub-int v5, v4, v5

    .line 207
    .line 208
    add-int/lit8 v5, v5, 0x5

    .line 209
    .line 210
    if-ge v4, v1, :cond_d

    .line 211
    .line 212
    if-le v5, v1, :cond_d

    .line 213
    .line 214
    invoke-static {v3, v1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    goto :goto_a

    .line 219
    :cond_d
    const/16 v1, 0x3c

    .line 220
    .line 221
    if-ge v5, v1, :cond_e

    .line 222
    .line 223
    invoke-static {v3, v5}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    goto :goto_a

    .line 228
    :cond_e
    move v1, v0

    .line 229
    :goto_a
    if-eq v1, v0, :cond_f

    .line 230
    .line 231
    invoke-virtual {v2, v7, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    .line 232
    .line 233
    .line 234
    :cond_f
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return p3

    .line 9
    :cond_0
    const/16 p1, 0x1000

    .line 10
    .line 11
    if-eq p2, p1, :cond_2

    .line 12
    .line 13
    const/16 p1, 0x2000

    .line 14
    .line 15
    if-eq p2, p1, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_1
    const/4 p1, -0x1

    .line 20
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    .line 21
    .line 22
    .line 23
    return p3

    .line 24
    :cond_2
    invoke-virtual {p0, p3}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    .line 25
    .line 26
    .line 27
    return p3
.end method
