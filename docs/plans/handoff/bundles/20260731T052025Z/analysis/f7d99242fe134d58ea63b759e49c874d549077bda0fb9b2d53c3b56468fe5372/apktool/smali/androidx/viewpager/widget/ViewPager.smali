.class public abstract Landroidx/viewpager/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final COMPARATOR:Landroidx/viewpager/widget/ViewPager$1;

.field public static final LAYOUT_ATTRS:[I

.field public static final sInterpolator:Landroidx/viewpager/widget/ViewPager$2;


# instance fields
.field public mActivePointerId:I

.field public mAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field public mBottomPageBounds:I

.field public mCalledSuper:Z

.field public final mCloseEnough:I

.field public mCurItem:I

.field public mDecorChildCount:I

.field public final mEndScrollRunnable:Landroidx/fragment/app/Fragment$1;

.field public mExpectedAdapterCount:I

.field public mFirstLayout:Z

.field public mFirstOffset:F

.field public final mFlingDistance:I

.field public mInitialMotionX:F

.field public mInitialMotionY:F

.field public mIsBeingDragged:Z

.field public mIsScrollStarted:Z

.field public mIsUnableToDrag:Z

.field public final mItems:Ljava/util/ArrayList;

.field public mLastMotionX:F

.field public mLastMotionY:F

.field public mLastOffset:F

.field public final mLeftEdge:Landroid/widget/EdgeEffect;

.field public mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field public final mMaximumVelocity:I

.field public final mMinimumVelocity:I

.field public mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

.field public mOffscreenPageLimit:I

.field public mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field public mPageMargin:I

.field public mPopulatePending:Z

.field public mRestoredCurItem:I

.field public final mRightEdge:Landroid/widget/EdgeEffect;

.field public mScrollState:I

.field public final mScroller:Landroid/widget/Scroller;

.field public mScrollingCacheEnabled:Z

.field public final mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

.field public final mTempRect:Landroid/graphics/Rect;

.field public mTopPageBounds:I

.field public final mTouchSlop:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x10100b3

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Landroidx/viewpager/widget/ViewPager;->LAYOUT_ATTRS:[I

    .line 9
    .line 10
    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/viewpager/widget/ViewPager;->COMPARATOR:Landroidx/viewpager/widget/ViewPager$1;

    .line 17
    .line 18
    new-instance v0, Landroidx/viewpager/widget/ViewPager$2;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroidx/viewpager/widget/ViewPager$2;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroidx/viewpager/widget/ViewPager;->sInterpolator:Landroidx/viewpager/widget/ViewPager$2;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 17
    .line 18
    new-instance p1, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    .line 27
    .line 28
    const p2, -0x800001

    .line 29
    .line 30
    .line 31
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    .line 32
    .line 33
    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 34
    .line 35
    .line 36
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 40
    .line 41
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 42
    .line 43
    iput-boolean p2, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 44
    .line 45
    new-instance p1, Landroidx/fragment/app/Fragment$1;

    .line 46
    .line 47
    const/16 v0, 0x18

    .line 48
    .line 49
    invoke-direct {p1, v0, p0}, Landroidx/fragment/app/Fragment$1;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Landroidx/fragment/app/Fragment$1;

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 58
    .line 59
    .line 60
    const/high16 v0, 0x40000

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Landroid/widget/Scroller;

    .line 73
    .line 74
    sget-object v2, Landroidx/viewpager/widget/ViewPager;->sInterpolator:Landroidx/viewpager/widget/ViewPager$2;

    .line 75
    .line 76
    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 80
    .line 81
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    .line 100
    .line 101
    const/high16 v3, 0x43c80000    # 400.0f

    .line 102
    .line 103
    mul-float/2addr v3, v2

    .line 104
    float-to-int v3, v3

    .line 105
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mMinimumVelocity:I

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mMaximumVelocity:I

    .line 112
    .line 113
    new-instance v1, Landroid/widget/EdgeEffect;

    .line 114
    .line 115
    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 119
    .line 120
    new-instance v1, Landroid/widget/EdgeEffect;

    .line 121
    .line 122
    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 126
    .line 127
    const/high16 v0, 0x41c80000    # 25.0f

    .line 128
    .line 129
    mul-float/2addr v0, v2

    .line 130
    float-to-int v0, v0

    .line 131
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mFlingDistance:I

    .line 132
    .line 133
    const/high16 v0, 0x40000000    # 2.0f

    .line 134
    .line 135
    mul-float/2addr v2, v0

    .line 136
    float-to-int v0, v2

    .line 137
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mCloseEnough:I

    .line 138
    .line 139
    new-instance v0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;

    .line 140
    .line 141
    invoke-direct {v0, p1, p0}, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;-><init>(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-nez p1, :cond_0

    .line 152
    .line 153
    invoke-virtual {p0, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 154
    .line 155
    .line 156
    :cond_0
    new-instance p1, Lcom/beetstra/jutf7/Base64Util;

    .line 157
    .line 158
    invoke-direct {p1, p0}, Lcom/beetstra/jutf7/Base64Util;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    .line 159
    .line 160
    .line 161
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public static canScroll(IIILandroid/view/View;Z)Z
    .locals 9

    .line 1
    instance-of v0, p3, Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    move-object v0, p3

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    sub-int/2addr v4, v1

    .line 22
    :goto_0
    if-ltz v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    add-int v6, p1, v2

    .line 29
    .line 30
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-lt v6, v7, :cond_0

    .line 35
    .line 36
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-ge v6, v7, :cond_0

    .line 41
    .line 42
    add-int v7, p2, v3

    .line 43
    .line 44
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-lt v7, v8, :cond_0

    .line 49
    .line 50
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-ge v7, v8, :cond_0

    .line 55
    .line 56
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    sub-int/2addr v6, v8

    .line 61
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    sub-int/2addr v7, v8

    .line 66
    invoke-static {p0, v6, v7, v5, v1}, Landroidx/viewpager/widget/ViewPager;->canScroll(IIILandroid/view/View;Z)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_0

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    if-eqz p4, :cond_2

    .line 77
    .line 78
    neg-int p0, p0

    .line 79
    invoke-virtual {p3, p0}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_2

    .line 84
    .line 85
    :goto_1
    return v1

    .line 86
    :cond_2
    const/4 p0, 0x0

    .line 87
    return p0
.end method

.method private getClientWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    sub-int/2addr v0, p0

    .line 15
    return v0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollingCacheEnabled:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->mScrollingCacheEnabled:Z

    .line 6
    .line 7
    :cond_0
    return-void
.end method


# virtual methods
.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/high16 v2, 0x60000

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    iget v4, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 37
    .line 38
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 39
    .line 40
    if-ne v4, v5, :cond_0

    .line 41
    .line 42
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/high16 p2, 0x40000

    .line 49
    .line 50
    if-ne v1, p2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-ne v0, p2, :cond_4

    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 p2, 0x1

    .line 66
    and-int/2addr p3, p2

    .line 67
    if-ne p3, p2, :cond_5

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_5

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-nez p2, :cond_5

    .line 80
    .line 81
    :cond_4
    :goto_1
    return-void

    .line 82
    :cond_5
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput v1, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 13
    .line 14
    iget-object v4, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 15
    .line 16
    check-cast v4, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 17
    .line 18
    iget-object v5, v4, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    .line 19
    .line 20
    iget-object v6, v4, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    .line 21
    .line 22
    iget-object v7, v4, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 23
    .line 24
    iget v8, v4, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mLayoutResId:I

    .line 25
    .line 26
    const/4 v9, 0x0

    .line 27
    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    iget v8, v4, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mCalendarViewId:I

    .line 32
    .line 33
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    check-cast v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;

    .line 38
    .line 39
    iget-object v10, v4, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mOnDayClickListener:Lokhttp3/ConnectionPool;

    .line 40
    .line 41
    iput-object v10, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mOnDayClickListener:Lokhttp3/ConnectionPool;

    .line 42
    .line 43
    iget v10, v4, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mMonthTextAppearance:I

    .line 44
    .line 45
    iget-object v11, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 46
    .line 47
    invoke-virtual {v8, v11, v10}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->applyTextAppearance(Landroid/text/TextPaint;I)Landroid/content/res/ColorStateList;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 51
    .line 52
    .line 53
    iget v10, v4, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    .line 54
    .line 55
    iget-object v11, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 56
    .line 57
    invoke-virtual {v8, v11, v10}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->applyTextAppearance(Landroid/text/TextPaint;I)Landroid/content/res/ColorStateList;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 61
    .line 62
    .line 63
    iget v10, v4, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    .line 64
    .line 65
    iget-object v11, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 66
    .line 67
    invoke-virtual {v8, v11, v10}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->applyTextAppearance(Landroid/text/TextPaint;I)Landroid/content/res/ColorStateList;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    if-eqz v10, :cond_0

    .line 72
    .line 73
    iput-object v10, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 74
    .line 75
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 76
    .line 77
    .line 78
    iget-object v10, v4, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    .line 79
    .line 80
    if-eqz v10, :cond_1

    .line 81
    .line 82
    const/16 v11, 0x28

    .line 83
    .line 84
    invoke-static {v11}, Lcom/takisoft/datetimepicker/util/StateSet;->get(I)[I

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    invoke-virtual {v10, v11, v9}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    iget-object v11, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 93
    .line 94
    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    .line 96
    .line 97
    iget-object v11, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    .line 98
    .line 99
    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    .line 101
    .line 102
    const/16 v10, 0xb0

    .line 103
    .line 104
    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 108
    .line 109
    .line 110
    :cond_1
    iget-object v10, v4, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    .line 111
    .line 112
    if-eqz v10, :cond_2

    .line 113
    .line 114
    const/16 v11, 0x18

    .line 115
    .line 116
    invoke-static {v11}, Lcom/takisoft/datetimepicker/util/StateSet;->get(I)[I

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    invoke-virtual {v10, v11, v9}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    iget-object v11, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 125
    .line 126
    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 130
    .line 131
    .line 132
    :cond_2
    const/4 v10, 0x2

    .line 133
    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    add-int/2addr v11, v1

    .line 138
    rem-int/lit8 v11, v11, 0xc

    .line 139
    .line 140
    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    .line 141
    .line 142
    .line 143
    move-result v12

    .line 144
    add-int/2addr v12, v1

    .line 145
    div-int/lit8 v12, v12, 0xc

    .line 146
    .line 147
    const/4 v13, 0x1

    .line 148
    invoke-virtual {v6, v13}, Ljava/util/Calendar;->get(I)I

    .line 149
    .line 150
    .line 151
    move-result v14

    .line 152
    add-int/2addr v14, v12

    .line 153
    iget-object v12, v4, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    .line 154
    .line 155
    const/4 v9, 0x5

    .line 156
    if-eqz v12, :cond_3

    .line 157
    .line 158
    invoke-virtual {v12, v10}, Ljava/util/Calendar;->get(I)I

    .line 159
    .line 160
    .line 161
    move-result v12

    .line 162
    if-ne v12, v11, :cond_3

    .line 163
    .line 164
    iget-object v12, v4, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    .line 165
    .line 166
    invoke-virtual {v12, v9}, Ljava/util/Calendar;->get(I)I

    .line 167
    .line 168
    .line 169
    move-result v12

    .line 170
    goto :goto_0

    .line 171
    :cond_3
    const/4 v12, -0x1

    .line 172
    :goto_0
    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    .line 173
    .line 174
    .line 175
    move-result v15

    .line 176
    if-ne v15, v11, :cond_4

    .line 177
    .line 178
    invoke-virtual {v6, v13}, Ljava/util/Calendar;->get(I)I

    .line 179
    .line 180
    .line 181
    move-result v15

    .line 182
    if-ne v15, v14, :cond_4

    .line 183
    .line 184
    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    goto :goto_1

    .line 189
    :cond_4
    move v6, v13

    .line 190
    :goto_1
    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    .line 191
    .line 192
    .line 193
    move-result v15

    .line 194
    const/16 v16, 0x1f

    .line 195
    .line 196
    if-ne v15, v11, :cond_5

    .line 197
    .line 198
    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    .line 199
    .line 200
    .line 201
    move-result v15

    .line 202
    if-ne v15, v14, :cond_5

    .line 203
    .line 204
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    goto :goto_2

    .line 209
    :cond_5
    move/from16 v5, v16

    .line 210
    .line 211
    :goto_2
    iget v15, v4, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    .line 212
    .line 213
    iput v12, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mActivatedDay:I

    .line 214
    .line 215
    if-ltz v11, :cond_6

    .line 216
    .line 217
    const/16 v12, 0xb

    .line 218
    .line 219
    if-gt v11, v12, :cond_6

    .line 220
    .line 221
    iput v11, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonth:I

    .line 222
    .line 223
    :cond_6
    iput v14, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mYear:I

    .line 224
    .line 225
    iget-object v11, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 226
    .line 227
    iget v12, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonth:I

    .line 228
    .line 229
    invoke-virtual {v11, v10, v12}, Ljava/util/Calendar;->set(II)V

    .line 230
    .line 231
    .line 232
    iget-object v11, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 233
    .line 234
    iget v12, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mYear:I

    .line 235
    .line 236
    invoke-virtual {v11, v13, v12}, Ljava/util/Calendar;->set(II)V

    .line 237
    .line 238
    .line 239
    iget-object v11, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 240
    .line 241
    invoke-virtual {v11, v9, v13}, Ljava/util/Calendar;->set(II)V

    .line 242
    .line 243
    .line 244
    iget-object v11, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 245
    .line 246
    const/4 v12, 0x7

    .line 247
    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    .line 248
    .line 249
    .line 250
    move-result v11

    .line 251
    iput v11, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayOfWeekStart:I

    .line 252
    .line 253
    if-lt v15, v13, :cond_7

    .line 254
    .line 255
    if-gt v15, v12, :cond_7

    .line 256
    .line 257
    iput v15, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mWeekStart:I

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_7
    iget-object v11, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 261
    .line 262
    invoke-virtual {v11}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    .line 263
    .line 264
    .line 265
    move-result v11

    .line 266
    iput v11, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mWeekStart:I

    .line 267
    .line 268
    :goto_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    const/4 v12, -0x1

    .line 273
    iput v12, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mToday:I

    .line 274
    .line 275
    iget v12, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonth:I

    .line 276
    .line 277
    iget v14, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mYear:I

    .line 278
    .line 279
    packed-switch v12, :pswitch_data_0

    .line 280
    .line 281
    .line 282
    const-string v0, "Invalid Month"

    .line 283
    .line 284
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    const/4 v0, 0x0

    .line 288
    return-object v0

    .line 289
    :pswitch_0
    const/16 v16, 0x1e

    .line 290
    .line 291
    :goto_4
    :pswitch_1
    move/from16 v12, v16

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :pswitch_2
    rem-int/lit8 v14, v14, 0x4

    .line 295
    .line 296
    if-nez v14, :cond_8

    .line 297
    .line 298
    const/16 v16, 0x1d

    .line 299
    .line 300
    goto :goto_4

    .line 301
    :cond_8
    const/16 v16, 0x1c

    .line 302
    .line 303
    goto :goto_4

    .line 304
    :goto_5
    iput v12, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDaysInMonth:I

    .line 305
    .line 306
    const/4 v12, 0x0

    .line 307
    :cond_9
    :goto_6
    iget v14, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDaysInMonth:I

    .line 308
    .line 309
    if-ge v12, v14, :cond_a

    .line 310
    .line 311
    add-int/lit8 v12, v12, 0x1

    .line 312
    .line 313
    iget v14, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mYear:I

    .line 314
    .line 315
    invoke-virtual {v11, v13}, Ljava/util/Calendar;->get(I)I

    .line 316
    .line 317
    .line 318
    move-result v15

    .line 319
    if-ne v14, v15, :cond_9

    .line 320
    .line 321
    iget v14, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonth:I

    .line 322
    .line 323
    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    .line 324
    .line 325
    .line 326
    move-result v15

    .line 327
    if-ne v14, v15, :cond_9

    .line 328
    .line 329
    invoke-virtual {v11, v9}, Ljava/util/Calendar;->get(I)I

    .line 330
    .line 331
    .line 332
    move-result v14

    .line 333
    if-ne v12, v14, :cond_9

    .line 334
    .line 335
    iput v12, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mToday:I

    .line 336
    .line 337
    goto :goto_6

    .line 338
    :cond_a
    if-ge v6, v13, :cond_b

    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_b
    if-le v6, v14, :cond_c

    .line 342
    .line 343
    move v13, v14

    .line 344
    goto :goto_7

    .line 345
    :cond_c
    move v13, v6

    .line 346
    :goto_7
    iput v13, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 347
    .line 348
    if-ge v5, v13, :cond_d

    .line 349
    .line 350
    move v5, v13

    .line 351
    goto :goto_8

    .line 352
    :cond_d
    if-le v5, v14, :cond_e

    .line 353
    .line 354
    move v5, v14

    .line 355
    :cond_e
    :goto_8
    iput v5, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 356
    .line 357
    invoke-virtual {v8}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->updateMonthYearLabel()V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v8}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 361
    .line 362
    .line 363
    iget-object v5, v8, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mTouchHelper:Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 364
    .line 365
    invoke-virtual {v5}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 369
    .line 370
    .line 371
    new-instance v5, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;

    .line 372
    .line 373
    invoke-direct {v5, v1, v7, v8}, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;-><init>(ILandroid/view/View;Lcom/takisoft/datetimepicker/widget/SimpleMonthView;)V

    .line 374
    .line 375
    .line 376
    iget-object v4, v4, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    .line 377
    .line 378
    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 382
    .line 383
    .line 384
    iput-object v5, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;

    .line 385
    .line 386
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 387
    .line 388
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    const/high16 v1, 0x3f800000    # 1.0f

    .line 392
    .line 393
    iput v1, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 394
    .line 395
    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 396
    .line 397
    if-ltz v2, :cond_10

    .line 398
    .line 399
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    if-lt v2, v1, :cond_f

    .line 404
    .line 405
    goto :goto_9

    .line 406
    :cond_f
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    return-object v3

    .line 410
    :cond_10
    :goto_9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    return-object v3

    .line 414
    nop

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final addTouchables(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget v2, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 25
    .line 26
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 27
    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    :cond_0
    move-object v0, p3

    .line 12
    check-cast v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 13
    .line 14
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-class v3, Landroidx/viewpager/widget/ViewPager$DecorView;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    :goto_0
    or-int/2addr v1, v2

    .line 32
    iput-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 33
    .line 34
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final arrowScroll(I)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-ne v0, p0, :cond_0

    .line 7
    .line 8
    :goto_0
    move-object v0, v1

    .line 9
    goto :goto_3

    .line 10
    :cond_0
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    :goto_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    if-ne v2, p0, :cond_1

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_1
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_2
    instance-of v3, v0, Landroid/view/ViewGroup;

    .line 49
    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    const-string v3, " => "

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v2, "arrowScroll tried to find focus based on non-child current focused view "

    .line 78
    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v2, "ViewPager"

    .line 84
    .line 85
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    :goto_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const/4 v2, 0x1

    .line 98
    const/4 v3, 0x0

    .line 99
    const/16 v4, 0x42

    .line 100
    .line 101
    const/16 v5, 0x11

    .line 102
    .line 103
    if-eqz v1, :cond_8

    .line 104
    .line 105
    if-eq v1, v0, :cond_8

    .line 106
    .line 107
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 108
    .line 109
    if-ne p1, v5, :cond_6

    .line 110
    .line 111
    invoke-virtual {p0, v6, v1}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 116
    .line 117
    invoke-virtual {p0, v6, v0}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 122
    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    if-lt v4, v5, :cond_5

    .line 126
    .line 127
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 128
    .line 129
    if-lez v0, :cond_c

    .line 130
    .line 131
    sub-int/2addr v0, v2

    .line 132
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 133
    .line 134
    invoke-virtual {p0, v0, v3, v2, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    :goto_4
    move v3, v0

    .line 143
    goto :goto_7

    .line 144
    :cond_6
    if-ne p1, v4, :cond_d

    .line 145
    .line 146
    invoke-virtual {p0, v6, v1}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 151
    .line 152
    invoke-virtual {p0, v6, v0}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 157
    .line 158
    if-eqz v0, :cond_7

    .line 159
    .line 160
    if-gt v2, v3, :cond_7

    .line 161
    .line 162
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageRight()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    goto :goto_4

    .line 167
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    goto :goto_4

    .line 172
    :cond_8
    if-eq p1, v5, :cond_b

    .line 173
    .line 174
    if-ne p1, v2, :cond_9

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_9
    if-eq p1, v4, :cond_a

    .line 178
    .line 179
    const/4 v0, 0x2

    .line 180
    if-ne p1, v0, :cond_d

    .line 181
    .line 182
    :cond_a
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageRight()Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    goto :goto_7

    .line 187
    :cond_b
    :goto_5
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 188
    .line 189
    if-lez v0, :cond_c

    .line 190
    .line 191
    sub-int/2addr v0, v2

    .line 192
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 193
    .line 194
    invoke-virtual {p0, v0, v3, v2, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    .line 195
    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_c
    move v2, v3

    .line 199
    :goto_6
    move v3, v2

    .line 200
    :cond_d
    :goto_7
    if-eqz v3, :cond_e

    .line 201
    .line 202
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    .line 207
    .line 208
    .line 209
    :cond_e
    return v3
.end method

.method public final canScrollHorizontally(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-gez p1, :cond_2

    .line 17
    .line 18
    int-to-float p1, v0

    .line 19
    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    .line 20
    .line 21
    mul-float/2addr p1, p0

    .line 22
    float-to-int p0, p1

    .line 23
    if-le v2, p0, :cond_1

    .line 24
    .line 25
    return v3

    .line 26
    :cond_1
    return v1

    .line 27
    :cond_2
    if-lez p1, :cond_3

    .line 28
    .line 29
    int-to-float p1, v0

    .line 30
    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    .line 31
    .line 32
    mul-float/2addr p1, p0

    .line 33
    float-to-int p0, p1

    .line 34
    if-ge v2, p0, :cond_3

    .line 35
    .line 36
    return v3

    .line 37
    :cond_3
    return v1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final completeScroll(Z)V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v3

    .line 11
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-direct {p0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ne v4, v6, :cond_1

    .line 44
    .line 45
    if-eq v5, v1, :cond_2

    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0, v6, v1}, Landroid/view/View;->scrollTo(II)V

    .line 48
    .line 49
    .line 50
    if-eq v6, v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0, v6}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    .line 53
    .line 54
    .line 55
    :cond_2
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 56
    .line 57
    move v1, v3

    .line 58
    :goto_1
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-ge v1, v5, :cond_4

    .line 65
    .line 66
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 71
    .line 72
    iget-boolean v5, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 73
    .line 74
    if-eqz v5, :cond_3

    .line 75
    .line 76
    iput-boolean v3, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 77
    .line 78
    move v0, v2

    .line 79
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    if-eqz v0, :cond_6

    .line 83
    .line 84
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Landroidx/fragment/app/Fragment$1;

    .line 85
    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment$1;->run()V

    .line 95
    .line 96
    .line 97
    :cond_6
    return-void
.end method

.method public final computeScroll()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_2

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-ne v0, v3, :cond_0

    .line 35
    .line 36
    if-eq v2, v4, :cond_1

    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0, v3, v4}, Landroid/view/View;->scrollTo(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0, v4}, Landroid/view/View;->scrollTo(II)V

    .line 52
    .line 53
    .line 54
    :cond_1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final dataSetChanged()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2
    .line 3
    check-cast v0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 4
    .line 5
    iget v0, v0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mCount:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 16
    .line 17
    mul-int/lit8 v3, v3, 0x2

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    add-int/2addr v3, v4

    .line 21
    const/4 v5, 0x0

    .line 22
    if-ge v2, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ge v2, v0, :cond_0

    .line 29
    .line 30
    move v2, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v2, v5

    .line 33
    :goto_0
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 34
    .line 35
    move v6, v5

    .line 36
    move v7, v6

    .line 37
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-ge v6, v8, :cond_7

    .line 42
    .line 43
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    check-cast v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 48
    .line 49
    iget-object v9, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 50
    .line 51
    iget-object v10, v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;

    .line 52
    .line 53
    check-cast v9, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 54
    .line 55
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget v9, v10, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;->position:I

    .line 59
    .line 60
    const/4 v10, -0x1

    .line 61
    if-ne v9, v10, :cond_1

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_1
    const/4 v10, -0x2

    .line 65
    if-ne v9, v10, :cond_4

    .line 66
    .line 67
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    add-int/lit8 v6, v6, -0x1

    .line 71
    .line 72
    if-nez v7, :cond_2

    .line 73
    .line 74
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move v7, v4

    .line 80
    :cond_2
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 81
    .line 82
    iget v9, v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 83
    .line 84
    iget-object v10, v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;

    .line 85
    .line 86
    invoke-virtual {v2, p0, v9, v10}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroidx/viewpager/widget/ViewPager;ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 90
    .line 91
    iget v8, v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 92
    .line 93
    if-ne v2, v8, :cond_3

    .line 94
    .line 95
    add-int/lit8 v3, v0, -0x1

    .line 96
    .line 97
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    move v3, v2

    .line 106
    :cond_3
    :goto_2
    move v2, v4

    .line 107
    goto :goto_3

    .line 108
    :cond_4
    iget v10, v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 109
    .line 110
    if-eq v10, v9, :cond_6

    .line 111
    .line 112
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 113
    .line 114
    if-ne v10, v2, :cond_5

    .line 115
    .line 116
    move v3, v9

    .line 117
    :cond_5
    iput v9, v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    :goto_3
    add-int/2addr v6, v4

    .line 121
    goto :goto_1

    .line 122
    :cond_7
    if-eqz v7, :cond_8

    .line 123
    .line 124
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    :cond_8
    sget-object v0, Landroidx/viewpager/widget/ViewPager;->COMPARATOR:Landroidx/viewpager/widget/ViewPager$1;

    .line 130
    .line 131
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 132
    .line 133
    .line 134
    if-eqz v2, :cond_b

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    move v1, v5

    .line 141
    :goto_4
    if-ge v1, v0, :cond_a

    .line 142
    .line 143
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 152
    .line 153
    iget-boolean v6, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 154
    .line 155
    if-nez v6, :cond_9

    .line 156
    .line 157
    const/4 v6, 0x0

    .line 158
    iput v6, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 159
    .line 160
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_a
    invoke-virtual {p0, v3, v5, v5, v4}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 167
    .line 168
    .line 169
    :cond_b
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_6

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v3, 0x15

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    if-eq v0, v3, :cond_4

    .line 23
    .line 24
    const/16 v3, 0x16

    .line 25
    .line 26
    if-eq v0, v3, :cond_2

    .line 27
    .line 28
    const/16 v3, 0x3d

    .line 29
    .line 30
    if-eq v0, v3, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_6

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageRight()Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const/16 p1, 0x42

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 80
    .line 81
    if-lez p1, :cond_6

    .line 82
    .line 83
    sub-int/2addr p1, v1

    .line 84
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 85
    .line 86
    invoke-virtual {p0, p1, v2, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    .line 87
    .line 88
    .line 89
    move p0, v1

    .line 90
    goto :goto_1

    .line 91
    :cond_5
    const/16 p1, 0x11

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    goto :goto_1

    .line 98
    :cond_6
    :goto_0
    move p0, v2

    .line 99
    :goto_1
    if-eqz p0, :cond_7

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_7
    return v2

    .line 103
    :cond_8
    :goto_2
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1000

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    iget v4, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 39
    .line 40
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 41
    .line 42
    if-ne v4, v5, :cond_1

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return v1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-ne v0, v4, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    check-cast v0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 23
    .line 24
    iget v0, v0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mCount:I

    .line 25
    .line 26
    if-le v0, v4, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    sub-int/2addr v3, v4

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    sub-int/2addr v3, v4

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    const/high16 v5, 0x43870000    # 270.0f

    .line 65
    .line 66
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 67
    .line 68
    .line 69
    neg-int v5, v3

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    add-int/2addr v6, v5

    .line 75
    int-to-float v5, v6

    .line 76
    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    .line 77
    .line 78
    int-to-float v7, v4

    .line 79
    mul-float/2addr v6, v7

    .line 80
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_3

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    sub-int/2addr v4, v5

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    sub-int/2addr v4, v5

    .line 121
    const/high16 v5, 0x42b40000    # 90.0f

    .line 122
    .line 123
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    neg-int v5, v5

    .line 131
    int-to-float v5, v5

    .line 132
    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    .line 133
    .line 134
    const/high16 v7, 0x3f800000    # 1.0f

    .line 135
    .line 136
    add-float/2addr v6, v7

    .line 137
    neg-float v6, v6

    .line 138
    int-to-float v7, v2

    .line 139
    mul-float/2addr v6, v7

    .line 140
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v4, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    or-int/2addr v3, v1

    .line 151
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 152
    .line 153
    .line 154
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 155
    .line 156
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 159
    .line 160
    .line 161
    :cond_4
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 9
    .line 10
    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 12
    .line 13
    sget-object v1, Landroidx/viewpager/widget/ViewPager;->LAYOUT_ATTRS:[I

    .line 14
    .line 15
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 p1, 0x0

    .line 20
    const/16 v1, 0x30

    .line 21
    .line 22
    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 32
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public final getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-nez p2, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    if-eq p2, p0, :cond_2

    .line 48
    .line 49
    check-cast p2, Landroid/view/ViewGroup;

    .line 50
    .line 51
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    add-int/2addr v1, v0

    .line 58
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 59
    .line 60
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    add-int/2addr v1, v0

    .line 67
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 68
    .line 69
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    add-int/2addr v1, v0

    .line 76
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 77
    .line 78
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    add-int/2addr v1, v0

    .line 85
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    return-object p1
.end method

.method public getCurrentItem()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 2
    .line 3
    return p0
.end method

.method public getOffscreenPageLimit()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 2
    .line 3
    return p0
.end method

.method public getPageMargin()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    .line 2
    .line 3
    return p0
.end method

.method public final infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 17
    .line 18
    iget-object v3, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;

    .line 19
    .line 20
    check-cast v2, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v2, v3, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    .line 26
    .line 27
    if-ne p1, v2, :cond_0

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public final infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .locals 13

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    int-to-float v3, v0

    .line 14
    div-float/2addr v2, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v1

    .line 17
    :goto_0
    if-lez v0, :cond_1

    .line 18
    .line 19
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    .line 20
    .line 21
    int-to-float v3, v3

    .line 22
    int-to-float v0, v0

    .line 23
    div-float/2addr v3, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v3, v1

    .line 26
    :goto_1
    const/4 v0, 0x0

    .line 27
    const/4 v4, -0x1

    .line 28
    const/4 v5, 0x1

    .line 29
    const/4 v6, 0x0

    .line 30
    move v8, v0

    .line 31
    move v9, v5

    .line 32
    move-object v7, v6

    .line 33
    move v6, v4

    .line 34
    move v4, v1

    .line 35
    :goto_2
    iget-object v10, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    if-ge v8, v11, :cond_6

    .line 42
    .line 43
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    check-cast v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 48
    .line 49
    if-nez v9, :cond_2

    .line 50
    .line 51
    iget v12, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 52
    .line 53
    add-int/2addr v6, v5

    .line 54
    if-eq v12, v6, :cond_2

    .line 55
    .line 56
    add-float/2addr v1, v4

    .line 57
    add-float/2addr v1, v3

    .line 58
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 59
    .line 60
    iput v1, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 61
    .line 62
    iput v6, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 63
    .line 64
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const/high16 v1, 0x3f800000    # 1.0f

    .line 70
    .line 71
    iput v1, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 72
    .line 73
    add-int/lit8 v8, v8, -0x1

    .line 74
    .line 75
    move-object v6, v4

    .line 76
    goto :goto_3

    .line 77
    :cond_2
    move-object v6, v11

    .line 78
    :goto_3
    iget v1, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 79
    .line 80
    iget v4, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 81
    .line 82
    add-float/2addr v4, v1

    .line 83
    add-float/2addr v4, v3

    .line 84
    if-nez v9, :cond_3

    .line 85
    .line 86
    cmpl-float v9, v2, v1

    .line 87
    .line 88
    if-ltz v9, :cond_6

    .line 89
    .line 90
    :cond_3
    cmpg-float v4, v2, v4

    .line 91
    .line 92
    if-ltz v4, :cond_5

    .line 93
    .line 94
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    sub-int/2addr v4, v5

    .line 99
    if-ne v8, v4, :cond_4

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_4
    iget v4, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 103
    .line 104
    iget v7, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 105
    .line 106
    add-int/lit8 v8, v8, 0x1

    .line 107
    .line 108
    move-object v9, v6

    .line 109
    move v6, v4

    .line 110
    move v4, v7

    .line 111
    move-object v7, v9

    .line 112
    move v9, v0

    .line 113
    goto :goto_2

    .line 114
    :cond_5
    :goto_4
    return-object v6

    .line 115
    :cond_6
    return-object v7
.end method

.method public final infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 15
    .line 16
    iget v2, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 17
    .line 18
    if-ne v2, p1, :cond_0

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 6
    .line 7
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Landroidx/fragment/app/Fragment$1;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    .line 7
    .line 8
    if-lez v1, :cond_4

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-lez v2, :cond_4

    .line 21
    .line 22
    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 23
    .line 24
    if-eqz v2, :cond_4

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    .line 35
    .line 36
    int-to-float v4, v4

    .line 37
    int-to-float v5, v3

    .line 38
    div-float/2addr v4, v5

    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    check-cast v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 45
    .line 46
    iget v8, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    iget v10, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 53
    .line 54
    add-int/lit8 v11, v9, -0x1

    .line 55
    .line 56
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    check-cast v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 61
    .line 62
    iget v11, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 63
    .line 64
    :goto_0
    if-ge v10, v11, :cond_4

    .line 65
    .line 66
    :goto_1
    iget v12, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 67
    .line 68
    if-le v10, v12, :cond_0

    .line 69
    .line 70
    if-ge v6, v9, :cond_0

    .line 71
    .line 72
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_0
    if-ne v10, v12, :cond_1

    .line 82
    .line 83
    iget v8, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 84
    .line 85
    iget v12, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 86
    .line 87
    add-float v13, v8, v12

    .line 88
    .line 89
    mul-float/2addr v13, v5

    .line 90
    add-float/2addr v8, v12

    .line 91
    add-float/2addr v8, v4

    .line 92
    goto :goto_2

    .line 93
    :cond_1
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 94
    .line 95
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    const/high16 v12, 0x3f800000    # 1.0f

    .line 99
    .line 100
    add-float v13, v8, v12

    .line 101
    .line 102
    mul-float/2addr v13, v5

    .line 103
    add-float/2addr v12, v4

    .line 104
    add-float/2addr v12, v8

    .line 105
    move v8, v12

    .line 106
    :goto_2
    iget v12, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    .line 107
    .line 108
    int-to-float v12, v12

    .line 109
    add-float/2addr v12, v13

    .line 110
    int-to-float v14, v2

    .line 111
    cmpl-float v12, v12, v14

    .line 112
    .line 113
    if-lez v12, :cond_2

    .line 114
    .line 115
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 118
    .line 119
    .line 120
    move-result v14

    .line 121
    iget v15, v0, Landroidx/viewpager/widget/ViewPager;->mTopPageBounds:I

    .line 122
    .line 123
    move-object/from16 v16, v1

    .line 124
    .line 125
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    .line 126
    .line 127
    int-to-float v1, v1

    .line 128
    add-float/2addr v1, v13

    .line 129
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    move/from16 v17, v2

    .line 134
    .line 135
    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->mBottomPageBounds:I

    .line 136
    .line 137
    invoke-virtual {v12, v14, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 141
    .line 142
    move-object/from16 v2, p1

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_2
    move-object/from16 v16, v1

    .line 149
    .line 150
    move/from16 v17, v2

    .line 151
    .line 152
    move-object/from16 v2, p1

    .line 153
    .line 154
    :goto_3
    add-int v1, v17, v3

    .line 155
    .line 156
    int-to-float v1, v1

    .line 157
    cmpl-float v1, v13, v1

    .line 158
    .line 159
    if-lez v1, :cond_3

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 163
    .line 164
    move-object/from16 v1, v16

    .line 165
    .line 166
    move/from16 v2, v17

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_4
    :goto_4
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_12

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    iget-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    return v2

    .line 28
    :cond_2
    const/4 v3, 0x2

    .line 29
    if-eqz v0, :cond_d

    .line 30
    .line 31
    if-eq v0, v3, :cond_4

    .line 32
    .line 33
    const/4 v1, 0x6

    .line 34
    if-eq v0, v1, :cond_3

    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_4
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 44
    .line 45
    const/4 v3, -0x1

    .line 46
    if-ne v0, v3, :cond_5

    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 59
    .line 60
    sub-float v4, v3, v4

    .line 61
    .line 62
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionY:F

    .line 71
    .line 72
    sub-float v6, v0, v6

    .line 73
    .line 74
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    const/4 v7, 0x0

    .line 79
    cmpl-float v8, v4, v7

    .line 80
    .line 81
    if-eqz v8, :cond_8

    .line 82
    .line 83
    iget v9, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 84
    .line 85
    cmpg-float v10, v9, v7

    .line 86
    .line 87
    if-gez v10, :cond_6

    .line 88
    .line 89
    if-gtz v8, :cond_8

    .line 90
    .line 91
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    int-to-float v10, v10

    .line 96
    cmpl-float v9, v9, v10

    .line 97
    .line 98
    if-lez v9, :cond_7

    .line 99
    .line 100
    cmpg-float v7, v4, v7

    .line 101
    .line 102
    if-gez v7, :cond_7

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_7
    float-to-int v4, v4

    .line 106
    float-to-int v7, v3

    .line 107
    float-to-int v9, v0

    .line 108
    invoke-static {v4, v7, v9, p0, v2}, Landroidx/viewpager/widget/ViewPager;->canScroll(IIILandroid/view/View;Z)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_8

    .line 113
    .line 114
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 115
    .line 116
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 117
    .line 118
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    .line 119
    .line 120
    return v2

    .line 121
    :cond_8
    :goto_0
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    .line 122
    .line 123
    int-to-float v4, v2

    .line 124
    cmpl-float v7, v5, v4

    .line 125
    .line 126
    if-lez v7, :cond_b

    .line 127
    .line 128
    const/high16 v7, 0x3f000000    # 0.5f

    .line 129
    .line 130
    mul-float/2addr v5, v7

    .line 131
    cmpl-float v5, v5, v6

    .line 132
    .line 133
    if-lez v5, :cond_b

    .line 134
    .line 135
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    if-eqz v4, :cond_9

    .line 142
    .line 143
    invoke-interface {v4, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 144
    .line 145
    .line 146
    :cond_9
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 147
    .line 148
    .line 149
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    .line 150
    .line 151
    int-to-float v2, v2

    .line 152
    if-lez v8, :cond_a

    .line 153
    .line 154
    add-float/2addr v4, v2

    .line 155
    goto :goto_1

    .line 156
    :cond_a
    sub-float/2addr v4, v2

    .line 157
    :goto_1
    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 158
    .line 159
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 160
    .line 161
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_b
    cmpl-float v0, v6, v4

    .line 166
    .line 167
    if-lez v0, :cond_c

    .line 168
    .line 169
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    .line 170
    .line 171
    :cond_c
    :goto_2
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 172
    .line 173
    if-eqz v0, :cond_10

    .line 174
    .line 175
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->performDrag(F)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_10

    .line 180
    .line 181
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    .line 192
    .line 193
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionY:F

    .line 200
    .line 201
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 202
    .line 203
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 208
    .line 209
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    .line 210
    .line 211
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    .line 212
    .line 213
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 214
    .line 215
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 216
    .line 217
    .line 218
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    .line 219
    .line 220
    if-ne v4, v3, :cond_f

    .line 221
    .line 222
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    sub-int/2addr v3, v4

    .line 231
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mCloseEnough:I

    .line 236
    .line 237
    if-le v3, v4, :cond_f

    .line 238
    .line 239
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 240
    .line 241
    .line 242
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 243
    .line 244
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 245
    .line 246
    .line 247
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 248
    .line 249
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    if-eqz v0, :cond_e

    .line 254
    .line 255
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 256
    .line 257
    .line 258
    :cond_e
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 259
    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_f
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 263
    .line 264
    .line 265
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 266
    .line 267
    :cond_10
    :goto_3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 268
    .line 269
    if-nez v0, :cond_11

    .line 270
    .line 271
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 276
    .line 277
    :cond_11
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 278
    .line 279
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 280
    .line 281
    .line 282
    iget-boolean p0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 283
    .line 284
    return p0

    .line 285
    :cond_12
    :goto_4
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    .line 286
    .line 287
    .line 288
    return v2
.end method

.method public final onLayout(ZIIII)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int v2, p4, p2

    .line 8
    .line 9
    sub-int v3, p5, p3

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x0

    .line 33
    :goto_0
    const/16 v12, 0x8

    .line 34
    .line 35
    if-ge v10, v1, :cond_7

    .line 36
    .line 37
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v13

    .line 41
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 42
    .line 43
    .line 44
    move-result v14

    .line 45
    if-eq v14, v12, :cond_6

    .line 46
    .line 47
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    check-cast v12, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 52
    .line 53
    iget-boolean v14, v12, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 54
    .line 55
    if-eqz v14, :cond_6

    .line 56
    .line 57
    iget v12, v12, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    .line 58
    .line 59
    and-int/lit8 v14, v12, 0x7

    .line 60
    .line 61
    and-int/lit8 v12, v12, 0x70

    .line 62
    .line 63
    const/4 v15, 0x1

    .line 64
    if-eq v14, v15, :cond_2

    .line 65
    .line 66
    const/4 v15, 0x3

    .line 67
    if-eq v14, v15, :cond_1

    .line 68
    .line 69
    const/4 v15, 0x5

    .line 70
    if-eq v14, v15, :cond_0

    .line 71
    .line 72
    move v14, v4

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    sub-int v14, v2, v6

    .line 75
    .line 76
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 77
    .line 78
    .line 79
    move-result v15

    .line 80
    sub-int/2addr v14, v15

    .line 81
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 82
    .line 83
    .line 84
    move-result v15

    .line 85
    add-int/2addr v6, v15

    .line 86
    :goto_1
    move/from16 v17, v14

    .line 87
    .line 88
    move v14, v4

    .line 89
    move/from16 v4, v17

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    add-int/2addr v14, v4

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 99
    .line 100
    .line 101
    move-result v14

    .line 102
    sub-int v14, v2, v14

    .line 103
    .line 104
    div-int/lit8 v14, v14, 0x2

    .line 105
    .line 106
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    .line 107
    .line 108
    .line 109
    move-result v14

    .line 110
    goto :goto_1

    .line 111
    :goto_2
    const/16 v15, 0x10

    .line 112
    .line 113
    if-eq v12, v15, :cond_5

    .line 114
    .line 115
    const/16 v15, 0x30

    .line 116
    .line 117
    if-eq v12, v15, :cond_4

    .line 118
    .line 119
    const/16 v15, 0x50

    .line 120
    .line 121
    if-eq v12, v15, :cond_3

    .line 122
    .line 123
    move v12, v5

    .line 124
    goto :goto_4

    .line 125
    :cond_3
    sub-int v12, v3, v7

    .line 126
    .line 127
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 128
    .line 129
    .line 130
    move-result v15

    .line 131
    sub-int/2addr v12, v15

    .line 132
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    add-int/2addr v7, v15

    .line 137
    :goto_3
    move/from16 v17, v12

    .line 138
    .line 139
    move v12, v5

    .line 140
    move/from16 v5, v17

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    add-int/2addr v12, v5

    .line 148
    goto :goto_4

    .line 149
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 150
    .line 151
    .line 152
    move-result v12

    .line 153
    sub-int v12, v3, v12

    .line 154
    .line 155
    div-int/lit8 v12, v12, 0x2

    .line 156
    .line 157
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    goto :goto_3

    .line 162
    :goto_4
    add-int/2addr v4, v8

    .line 163
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 164
    .line 165
    .line 166
    move-result v15

    .line 167
    add-int/2addr v15, v4

    .line 168
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 169
    .line 170
    .line 171
    move-result v16

    .line 172
    add-int v9, v16, v5

    .line 173
    .line 174
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    .line 175
    .line 176
    .line 177
    add-int/lit8 v11, v11, 0x1

    .line 178
    .line 179
    move v5, v12

    .line 180
    move v4, v14

    .line 181
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_7
    sub-int/2addr v2, v4

    .line 186
    sub-int/2addr v2, v6

    .line 187
    const/4 v6, 0x0

    .line 188
    :goto_5
    if-ge v6, v1, :cond_9

    .line 189
    .line 190
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    if-eq v9, v12, :cond_8

    .line 199
    .line 200
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    check-cast v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 205
    .line 206
    iget-boolean v9, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 207
    .line 208
    if-nez v9, :cond_8

    .line 209
    .line 210
    invoke-virtual {v0, v8}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    if-eqz v9, :cond_8

    .line 215
    .line 216
    int-to-float v10, v2

    .line 217
    iget v9, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 218
    .line 219
    mul-float/2addr v10, v9

    .line 220
    float-to-int v9, v10

    .line 221
    add-int/2addr v9, v4

    .line 222
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    add-int/2addr v10, v9

    .line 227
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 228
    .line 229
    .line 230
    move-result v13

    .line 231
    add-int/2addr v13, v5

    .line 232
    invoke-virtual {v8, v9, v5, v10, v13}, Landroid/view/View;->layout(IIII)V

    .line 233
    .line 234
    .line 235
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_9
    iput v5, v0, Landroidx/viewpager/widget/ViewPager;->mTopPageBounds:I

    .line 239
    .line 240
    sub-int/2addr v3, v7

    .line 241
    iput v3, v0, Landroidx/viewpager/widget/ViewPager;->mBottomPageBounds:I

    .line 242
    .line 243
    iput v11, v0, Landroidx/viewpager/widget/ViewPager;->mDecorChildCount:I

    .line 244
    .line 245
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 246
    .line 247
    if-eqz v1, :cond_a

    .line 248
    .line 249
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 250
    .line 251
    const/4 v2, 0x0

    .line 252
    invoke-virtual {v0, v1, v2, v2, v2}, Landroidx/viewpager/widget/ViewPager;->scrollToItem(IIZZ)V

    .line 253
    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_a
    const/4 v2, 0x0

    .line 257
    :goto_6
    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 258
    .line 259
    return-void
.end method

.method public final onPageScrolled(F)V
    .locals 11

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mDecorChildCount:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lez v0, :cond_5

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/4 v6, 0x0

    .line 27
    :goto_0
    if-ge v6, v5, :cond_5

    .line 28
    .line 29
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    check-cast v8, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 38
    .line 39
    iget-boolean v9, v8, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 40
    .line 41
    if-nez v9, :cond_0

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_0
    iget v8, v8, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    .line 45
    .line 46
    and-int/lit8 v8, v8, 0x7

    .line 47
    .line 48
    if-eq v8, v1, :cond_3

    .line 49
    .line 50
    const/4 v9, 0x3

    .line 51
    if-eq v8, v9, :cond_2

    .line 52
    .line 53
    const/4 v9, 0x5

    .line 54
    if-eq v8, v9, :cond_1

    .line 55
    .line 56
    move v8, v2

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    sub-int v8, v4, v3

    .line 59
    .line 60
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    sub-int/2addr v8, v9

    .line 65
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    add-int/2addr v3, v9

    .line 70
    :goto_1
    move v10, v8

    .line 71
    move v8, v2

    .line 72
    move v2, v10

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    add-int/2addr v8, v2

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    sub-int v8, v4, v8

    .line 85
    .line 86
    div-int/lit8 v8, v8, 0x2

    .line 87
    .line 88
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    goto :goto_1

    .line 93
    :goto_2
    add-int/2addr v2, v0

    .line 94
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    sub-int/2addr v2, v9

    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 102
    .line 103
    .line 104
    :cond_4
    move v2, v8

    .line 105
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 109
    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    check-cast v0, Lcom/takisoft/datetimepicker/widget/DayPickerView$1;

    .line 113
    .line 114
    const/high16 v2, 0x3f000000    # 0.5f

    .line 115
    .line 116
    sub-float/2addr v2, p1

    .line 117
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    const/high16 v2, 0x40000000    # 2.0f

    .line 122
    .line 123
    mul-float/2addr p1, v2

    .line 124
    iget-object v0, v0, Lcom/takisoft/datetimepicker/widget/DayPickerView$1;->this$0:Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 125
    .line 126
    iget-object v2, v0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 127
    .line 128
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 129
    .line 130
    .line 131
    iget-object v0, v0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 132
    .line 133
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 134
    .line 135
    .line 136
    :cond_6
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    .line 137
    .line 138
    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, p1, 0x2

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move v1, v0

    .line 12
    move v0, v2

    .line 13
    move v4, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    move v4, v1

    .line 19
    :goto_0
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    iget v6, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 38
    .line 39
    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 40
    .line 41
    if-ne v6, v7, :cond_1

    .line 42
    .line 43
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    return v3

    .line 50
    :cond_1
    add-int/2addr v0, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return v2
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$SavedState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Landroidx/viewpager/widget/ViewPager$SavedState;

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 17
    .line 18
    iget p1, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->position:I

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, p1, v1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    .line 29
    .line 30
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/viewpager/widget/ViewPager$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 11
    .line 12
    iput v0, v1, Landroidx/viewpager/widget/ViewPager$SavedState;->position:I

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    iput-object p0, v1, Landroidx/viewpager/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 23
    .line 24
    :cond_0
    return-object v1
.end method

.method public final onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-eq p1, p3, :cond_0

    .line 5
    .line 6
    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    .line 7
    .line 8
    invoke-virtual {p0, p1, p3, p2, p2}, Landroidx/viewpager/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 17
    .line 18
    if-eqz v0, :cond_13

    .line 19
    .line 20
    check-cast v0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 21
    .line 22
    iget v0, v0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mCount:I

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    and-int/lit16 v0, v0, 0xff

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    if-eqz v0, :cond_10

    .line 51
    .line 52
    if-eq v0, v2, :cond_b

    .line 53
    .line 54
    const/4 v3, 0x2

    .line 55
    if-eq v0, v3, :cond_6

    .line 56
    .line 57
    const/4 v3, 0x3

    .line 58
    if-eq v0, v3, :cond_5

    .line 59
    .line 60
    const/4 v3, 0x5

    .line 61
    if-eq v0, v3, :cond_4

    .line 62
    .line 63
    const/4 v3, 0x6

    .line 64
    if-eq v0, v3, :cond_3

    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 69
    .line 70
    .line 71
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 82
    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :cond_5
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 104
    .line 105
    if-eqz p1, :cond_11

    .line 106
    .line 107
    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 108
    .line 109
    invoke-virtual {p0, p1, v1, v2, v1}, Landroidx/viewpager/widget/ViewPager;->scrollToItem(IIZZ)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    goto/16 :goto_3

    .line 117
    .line 118
    :cond_6
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 119
    .line 120
    if-nez v0, :cond_a

    .line 121
    .line 122
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    const/4 v3, -0x1

    .line 129
    if-ne v0, v3, :cond_7

    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    goto/16 :goto_3

    .line 136
    .line 137
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 142
    .line 143
    sub-float v4, v3, v4

    .line 144
    .line 145
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 154
    .line 155
    sub-float v5, v0, v5

    .line 156
    .line 157
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    .line 162
    .line 163
    int-to-float v7, v6

    .line 164
    cmpl-float v7, v4, v7

    .line 165
    .line 166
    if-lez v7, :cond_a

    .line 167
    .line 168
    cmpl-float v4, v4, v5

    .line 169
    .line 170
    if-lez v4, :cond_a

    .line 171
    .line 172
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    if-eqz v4, :cond_8

    .line 179
    .line 180
    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 181
    .line 182
    .line 183
    :cond_8
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    .line 184
    .line 185
    sub-float/2addr v3, v4

    .line 186
    const/4 v5, 0x0

    .line 187
    cmpl-float v3, v3, v5

    .line 188
    .line 189
    if-lez v3, :cond_9

    .line 190
    .line 191
    int-to-float v3, v6

    .line 192
    add-float/2addr v4, v3

    .line 193
    goto :goto_0

    .line 194
    :cond_9
    int-to-float v3, v6

    .line 195
    sub-float/2addr v4, v3

    .line 196
    :goto_0
    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 197
    .line 198
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 199
    .line 200
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 201
    .line 202
    .line 203
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    if-eqz v0, :cond_a

    .line 211
    .line 212
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 213
    .line 214
    .line 215
    :cond_a
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 216
    .line 217
    if-eqz v0, :cond_11

    .line 218
    .line 219
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 220
    .line 221
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->performDrag(F)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    goto/16 :goto_3

    .line 234
    .line 235
    :cond_b
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 236
    .line 237
    if-eqz v0, :cond_11

    .line 238
    .line 239
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 240
    .line 241
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mMaximumVelocity:I

    .line 242
    .line 243
    int-to-float v3, v3

    .line 244
    const/16 v4, 0x3e8

    .line 245
    .line 246
    invoke-virtual {v0, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 247
    .line 248
    .line 249
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 250
    .line 251
    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    float-to-int v0, v0

    .line 256
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 257
    .line 258
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    .line 271
    .line 272
    int-to-float v6, v6

    .line 273
    int-to-float v3, v3

    .line 274
    div-float/2addr v6, v3

    .line 275
    iget v7, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 276
    .line 277
    int-to-float v4, v4

    .line 278
    div-float/2addr v4, v3

    .line 279
    iget v3, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 280
    .line 281
    sub-float/2addr v4, v3

    .line 282
    iget v3, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 283
    .line 284
    add-float/2addr v3, v6

    .line 285
    div-float/2addr v4, v3

    .line 286
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 287
    .line 288
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    .line 297
    .line 298
    sub-float/2addr p1, v3

    .line 299
    float-to-int p1, p1

    .line 300
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mFlingDistance:I

    .line 305
    .line 306
    if-le p1, v3, :cond_d

    .line 307
    .line 308
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mMinimumVelocity:I

    .line 313
    .line 314
    if-le p1, v3, :cond_d

    .line 315
    .line 316
    if-lez v0, :cond_c

    .line 317
    .line 318
    goto :goto_2

    .line 319
    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_d
    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 323
    .line 324
    if-lt v7, p1, :cond_e

    .line 325
    .line 326
    const p1, 0x3ecccccd    # 0.4f

    .line 327
    .line 328
    .line 329
    goto :goto_1

    .line 330
    :cond_e
    const p1, 0x3f19999a    # 0.6f

    .line 331
    .line 332
    .line 333
    :goto_1
    add-float/2addr v4, p1

    .line 334
    float-to-int p1, v4

    .line 335
    add-int/2addr v7, p1

    .line 336
    :goto_2
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    if-lez v3, :cond_f

    .line 343
    .line 344
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    check-cast v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 349
    .line 350
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    sub-int/2addr v3, v2

    .line 355
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    check-cast p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 360
    .line 361
    iget v1, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 362
    .line 363
    iget p1, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 364
    .line 365
    invoke-static {v7, p1}, Ljava/lang/Math;->min(II)I

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 370
    .line 371
    .line 372
    move-result v7

    .line 373
    :cond_f
    invoke-virtual {p0, v7, v0, v2, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    goto :goto_3

    .line 381
    :cond_10
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 382
    .line 383
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 384
    .line 385
    .line 386
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 387
    .line 388
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    .line 396
    .line 397
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 398
    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionY:F

    .line 404
    .line 405
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 406
    .line 407
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 408
    .line 409
    .line 410
    move-result p1

    .line 411
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 412
    .line 413
    :cond_11
    :goto_3
    if-eqz v1, :cond_12

    .line 414
    .line 415
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 416
    .line 417
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 418
    .line 419
    .line 420
    :cond_12
    return v2

    .line 421
    :cond_13
    :goto_4
    return v1
.end method

.method public final pageRight()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 7
    .line 8
    check-cast v0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 9
    .line 10
    iget v0, v0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mCount:I

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    sub-int/2addr v0, v3

    .line 14
    if-ge v2, v0, :cond_0

    .line 15
    .line 16
    add-int/2addr v2, v3

    .line 17
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 18
    .line 19
    invoke-virtual {p0, v2, v1, v3, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    .line 20
    .line 21
    .line 22
    return v3

    .line 23
    :cond_0
    return v1
.end method

.method public final pageScrolled(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "onPageScrolled did not call superclass implementation"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onPageScrolled(F)V

    .line 21
    .line 22
    .line 23
    iget-boolean p0, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    :goto_0
    return v2

    .line 28
    :cond_1
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    .line 41
    .line 42
    int-to-float v4, v4

    .line 43
    int-to-float v3, v3

    .line 44
    div-float/2addr v4, v3

    .line 45
    iget v5, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 46
    .line 47
    int-to-float p1, p1

    .line 48
    div-float/2addr p1, v3

    .line 49
    iget v3, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 50
    .line 51
    sub-float/2addr p1, v3

    .line 52
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 53
    .line 54
    add-float/2addr v0, v4

    .line 55
    div-float/2addr p1, v0

    .line 56
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onPageScrolled(F)V

    .line 59
    .line 60
    .line 61
    iget-boolean p0, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    .line 62
    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    const/4 p0, 0x1

    .line 66
    return p0

    .line 67
    :cond_3
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return v2
.end method

.method public final performDrag(F)Z
    .locals 9

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2
    .line 3
    sub-float/2addr v0, p1

    .line 4
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    int-to-float p1, p1

    .line 11
    add-float/2addr p1, v0

    .line 12
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    .line 18
    .line 19
    mul-float/2addr v1, v0

    .line 20
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    .line 21
    .line 22
    mul-float/2addr v2, v0

    .line 23
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/4 v7, 0x1

    .line 37
    sub-int/2addr v6, v7

    .line 38
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 43
    .line 44
    iget v6, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 45
    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    iget v1, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 49
    .line 50
    mul-float/2addr v1, v0

    .line 51
    move v5, v4

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v5, v7

    .line 54
    :goto_0
    iget v6, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 55
    .line 56
    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 57
    .line 58
    check-cast v8, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 59
    .line 60
    iget v8, v8, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mCount:I

    .line 61
    .line 62
    sub-int/2addr v8, v7

    .line 63
    if-eq v6, v8, :cond_1

    .line 64
    .line 65
    iget v2, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 66
    .line 67
    mul-float/2addr v2, v0

    .line 68
    move v3, v4

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move v3, v7

    .line 71
    :goto_1
    cmpg-float v6, p1, v1

    .line 72
    .line 73
    if-gez v6, :cond_3

    .line 74
    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    sub-float p1, v1, p1

    .line 78
    .line 79
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    div-float/2addr p1, v0

    .line 84
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 87
    .line 88
    .line 89
    move v4, v7

    .line 90
    :cond_2
    move p1, v1

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    cmpl-float v1, p1, v2

    .line 93
    .line 94
    if-lez v1, :cond_5

    .line 95
    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    sub-float/2addr p1, v2

    .line 99
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    div-float/2addr p1, v0

    .line 104
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 107
    .line 108
    .line 109
    move v4, v7

    .line 110
    :cond_4
    move p1, v2

    .line 111
    :cond_5
    :goto_2
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 112
    .line 113
    float-to-int v1, p1

    .line 114
    int-to-float v2, v1

    .line 115
    sub-float/2addr p1, v2

    .line 116
    add-float/2addr p1, v0

    .line 117
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    .line 127
    .line 128
    .line 129
    return v4
.end method

.method public populate()V
    .locals 1

    .line 863
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->populate(I)V

    return-void
.end method

.method public final populate(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 6
    .line 7
    if-eq v2, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iput v1, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto/16 :goto_21

    .line 22
    .line 23
    :cond_1
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    goto/16 :goto_21

    .line 28
    .line 29
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    goto/16 :goto_21

    .line 36
    .line 37
    :cond_3
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 43
    .line 44
    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 45
    .line 46
    sub-int/2addr v4, v1

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 53
    .line 54
    check-cast v6, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 55
    .line 56
    iget v6, v6, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mCount:I

    .line 57
    .line 58
    add-int/lit8 v7, v6, -0x1

    .line 59
    .line 60
    iget v8, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 61
    .line 62
    add-int/2addr v8, v1

    .line 63
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iget v7, v0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    .line 68
    .line 69
    if-ne v6, v7, :cond_2f

    .line 70
    .line 71
    move v7, v5

    .line 72
    :goto_1
    iget-object v8, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-ge v7, v9, :cond_5

    .line 79
    .line 80
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    check-cast v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 85
    .line 86
    iget v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 87
    .line 88
    iget v11, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 89
    .line 90
    if-lt v10, v11, :cond_4

    .line 91
    .line 92
    if-ne v10, v11, :cond_5

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    const/4 v9, 0x0

    .line 99
    :goto_2
    if-nez v9, :cond_6

    .line 100
    .line 101
    if-lez v6, :cond_6

    .line 102
    .line 103
    iget v9, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 104
    .line 105
    invoke-virtual {v0, v9, v7}, Landroidx/viewpager/widget/ViewPager;->addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    :cond_6
    if-eqz v9, :cond_26

    .line 110
    .line 111
    add-int/lit8 v11, v7, -0x1

    .line 112
    .line 113
    if-ltz v11, :cond_7

    .line 114
    .line 115
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    check-cast v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_7
    const/4 v12, 0x0

    .line 123
    :goto_3
    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    const/high16 v14, 0x40000000    # 2.0f

    .line 128
    .line 129
    if-gtz v13, :cond_8

    .line 130
    .line 131
    const/4 v3, 0x0

    .line 132
    goto :goto_4

    .line 133
    :cond_8
    iget v15, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 134
    .line 135
    sub-float v15, v14, v15

    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    int-to-float v3, v3

    .line 142
    int-to-float v5, v13

    .line 143
    div-float/2addr v3, v5

    .line 144
    add-float/2addr v3, v15

    .line 145
    :goto_4
    iget v5, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 146
    .line 147
    add-int/lit8 v5, v5, -0x1

    .line 148
    .line 149
    const/4 v15, 0x0

    .line 150
    :goto_5
    if-ltz v5, :cond_9

    .line 151
    .line 152
    cmpl-float v16, v15, v3

    .line 153
    .line 154
    if-ltz v16, :cond_c

    .line 155
    .line 156
    if-ge v5, v4, :cond_c

    .line 157
    .line 158
    if-nez v12, :cond_a

    .line 159
    .line 160
    :cond_9
    const/16 v16, 0x0

    .line 161
    .line 162
    goto :goto_8

    .line 163
    :cond_a
    const/16 v16, 0x0

    .line 164
    .line 165
    iget v10, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 166
    .line 167
    if-ne v5, v10, :cond_e

    .line 168
    .line 169
    iget-boolean v10, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 170
    .line 171
    if-nez v10, :cond_e

    .line 172
    .line 173
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    iget-object v10, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 177
    .line 178
    iget-object v12, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;

    .line 179
    .line 180
    invoke-virtual {v10, v0, v5, v12}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroidx/viewpager/widget/ViewPager;ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    add-int/lit8 v11, v11, -0x1

    .line 184
    .line 185
    add-int/lit8 v7, v7, -0x1

    .line 186
    .line 187
    if-ltz v11, :cond_b

    .line 188
    .line 189
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    check-cast v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_b
    const/4 v10, 0x0

    .line 197
    :goto_6
    move-object v12, v10

    .line 198
    goto :goto_7

    .line 199
    :cond_c
    const/16 v16, 0x0

    .line 200
    .line 201
    if-eqz v12, :cond_d

    .line 202
    .line 203
    iget v10, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 204
    .line 205
    if-ne v5, v10, :cond_d

    .line 206
    .line 207
    iget v10, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 208
    .line 209
    add-float/2addr v15, v10

    .line 210
    add-int/lit8 v11, v11, -0x1

    .line 211
    .line 212
    if-ltz v11, :cond_b

    .line 213
    .line 214
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    check-cast v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_d
    add-int/lit8 v10, v11, 0x1

    .line 222
    .line 223
    invoke-virtual {v0, v5, v10}, Landroidx/viewpager/widget/ViewPager;->addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    iget v10, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 228
    .line 229
    add-float/2addr v15, v10

    .line 230
    add-int/lit8 v7, v7, 0x1

    .line 231
    .line 232
    if-ltz v11, :cond_b

    .line 233
    .line 234
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v10

    .line 238
    check-cast v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_e
    :goto_7
    add-int/lit8 v5, v5, -0x1

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :goto_8
    iget v3, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 245
    .line 246
    add-int/lit8 v4, v7, 0x1

    .line 247
    .line 248
    cmpg-float v5, v3, v14

    .line 249
    .line 250
    if-gez v5, :cond_16

    .line 251
    .line 252
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    if-ge v4, v5, :cond_f

    .line 257
    .line 258
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 263
    .line 264
    goto :goto_9

    .line 265
    :cond_f
    const/4 v5, 0x0

    .line 266
    :goto_9
    if-gtz v13, :cond_10

    .line 267
    .line 268
    move/from16 v10, v16

    .line 269
    .line 270
    goto :goto_a

    .line 271
    :cond_10
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 272
    .line 273
    .line 274
    move-result v10

    .line 275
    int-to-float v10, v10

    .line 276
    int-to-float v11, v13

    .line 277
    div-float/2addr v10, v11

    .line 278
    add-float/2addr v10, v14

    .line 279
    :goto_a
    iget v11, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 280
    .line 281
    add-int/lit8 v11, v11, 0x1

    .line 282
    .line 283
    move v12, v4

    .line 284
    :goto_b
    if-ge v11, v6, :cond_16

    .line 285
    .line 286
    cmpl-float v13, v3, v10

    .line 287
    .line 288
    if-ltz v13, :cond_13

    .line 289
    .line 290
    if-le v11, v1, :cond_13

    .line 291
    .line 292
    if-nez v5, :cond_11

    .line 293
    .line 294
    goto :goto_d

    .line 295
    :cond_11
    iget v13, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 296
    .line 297
    if-ne v11, v13, :cond_15

    .line 298
    .line 299
    iget-boolean v13, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 300
    .line 301
    if-nez v13, :cond_15

    .line 302
    .line 303
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    iget-object v13, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 307
    .line 308
    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;

    .line 309
    .line 310
    invoke-virtual {v13, v0, v11, v5}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroidx/viewpager/widget/ViewPager;ILjava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    if-ge v12, v5, :cond_12

    .line 318
    .line 319
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 324
    .line 325
    goto :goto_c

    .line 326
    :cond_12
    const/4 v5, 0x0

    .line 327
    goto :goto_c

    .line 328
    :cond_13
    if-eqz v5, :cond_14

    .line 329
    .line 330
    iget v13, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 331
    .line 332
    if-ne v11, v13, :cond_14

    .line 333
    .line 334
    iget v5, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 335
    .line 336
    add-float/2addr v3, v5

    .line 337
    add-int/lit8 v12, v12, 0x1

    .line 338
    .line 339
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    if-ge v12, v5, :cond_12

    .line 344
    .line 345
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 350
    .line 351
    goto :goto_c

    .line 352
    :cond_14
    invoke-virtual {v0, v11, v12}, Landroidx/viewpager/widget/ViewPager;->addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    add-int/lit8 v12, v12, 0x1

    .line 357
    .line 358
    iget v5, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 359
    .line 360
    add-float/2addr v3, v5

    .line 361
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    if-ge v12, v5, :cond_12

    .line 366
    .line 367
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 372
    .line 373
    :cond_15
    :goto_c
    add-int/lit8 v11, v11, 0x1

    .line 374
    .line 375
    goto :goto_b

    .line 376
    :cond_16
    :goto_d
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 377
    .line 378
    check-cast v1, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 379
    .line 380
    iget v1, v1, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mCount:I

    .line 381
    .line 382
    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    if-lez v3, :cond_17

    .line 387
    .line 388
    iget v5, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    .line 389
    .line 390
    int-to-float v5, v5

    .line 391
    int-to-float v3, v3

    .line 392
    div-float/2addr v5, v3

    .line 393
    goto :goto_e

    .line 394
    :cond_17
    move/from16 v5, v16

    .line 395
    .line 396
    :goto_e
    const/high16 v3, 0x3f800000    # 1.0f

    .line 397
    .line 398
    if-eqz v2, :cond_1d

    .line 399
    .line 400
    iget v6, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 401
    .line 402
    iget v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 403
    .line 404
    if-ge v6, v10, :cond_1a

    .line 405
    .line 406
    iget v10, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 407
    .line 408
    iget v2, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 409
    .line 410
    add-float/2addr v10, v2

    .line 411
    add-float/2addr v10, v5

    .line 412
    add-int/lit8 v6, v6, 0x1

    .line 413
    .line 414
    const/4 v2, 0x0

    .line 415
    :goto_f
    iget v11, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 416
    .line 417
    if-gt v6, v11, :cond_1d

    .line 418
    .line 419
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 420
    .line 421
    .line 422
    move-result v11

    .line 423
    if-ge v2, v11, :cond_1d

    .line 424
    .line 425
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v11

    .line 429
    check-cast v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 430
    .line 431
    :goto_10
    iget v12, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 432
    .line 433
    if-le v6, v12, :cond_18

    .line 434
    .line 435
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 436
    .line 437
    .line 438
    move-result v12

    .line 439
    add-int/lit8 v12, v12, -0x1

    .line 440
    .line 441
    if-ge v2, v12, :cond_18

    .line 442
    .line 443
    add-int/lit8 v2, v2, 0x1

    .line 444
    .line 445
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v11

    .line 449
    check-cast v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 450
    .line 451
    goto :goto_10

    .line 452
    :cond_18
    :goto_11
    iget v12, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 453
    .line 454
    if-ge v6, v12, :cond_19

    .line 455
    .line 456
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 457
    .line 458
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    add-float v12, v3, v5

    .line 462
    .line 463
    add-float/2addr v10, v12

    .line 464
    add-int/lit8 v6, v6, 0x1

    .line 465
    .line 466
    goto :goto_11

    .line 467
    :cond_19
    iput v10, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 468
    .line 469
    iget v11, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 470
    .line 471
    add-float/2addr v11, v5

    .line 472
    add-float/2addr v10, v11

    .line 473
    add-int/lit8 v6, v6, 0x1

    .line 474
    .line 475
    goto :goto_f

    .line 476
    :cond_1a
    if-le v6, v10, :cond_1d

    .line 477
    .line 478
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 479
    .line 480
    .line 481
    move-result v10

    .line 482
    add-int/lit8 v10, v10, -0x1

    .line 483
    .line 484
    iget v2, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 485
    .line 486
    add-int/lit8 v6, v6, -0x1

    .line 487
    .line 488
    :goto_12
    iget v11, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 489
    .line 490
    if-lt v6, v11, :cond_1d

    .line 491
    .line 492
    if-ltz v10, :cond_1d

    .line 493
    .line 494
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v11

    .line 498
    check-cast v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 499
    .line 500
    :goto_13
    iget v12, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 501
    .line 502
    if-ge v6, v12, :cond_1b

    .line 503
    .line 504
    if-lez v10, :cond_1b

    .line 505
    .line 506
    add-int/lit8 v10, v10, -0x1

    .line 507
    .line 508
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v11

    .line 512
    check-cast v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 513
    .line 514
    goto :goto_13

    .line 515
    :cond_1b
    :goto_14
    iget v12, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 516
    .line 517
    if-le v6, v12, :cond_1c

    .line 518
    .line 519
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 520
    .line 521
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 522
    .line 523
    .line 524
    add-float v12, v3, v5

    .line 525
    .line 526
    sub-float/2addr v2, v12

    .line 527
    add-int/lit8 v6, v6, -0x1

    .line 528
    .line 529
    goto :goto_14

    .line 530
    :cond_1c
    iget v12, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 531
    .line 532
    add-float/2addr v12, v5

    .line 533
    sub-float/2addr v2, v12

    .line 534
    iput v2, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 535
    .line 536
    add-int/lit8 v6, v6, -0x1

    .line 537
    .line 538
    goto :goto_12

    .line 539
    :cond_1d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    iget v6, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 544
    .line 545
    iget v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 546
    .line 547
    add-int/lit8 v11, v10, -0x1

    .line 548
    .line 549
    if-nez v10, :cond_1e

    .line 550
    .line 551
    move v12, v6

    .line 552
    goto :goto_15

    .line 553
    :cond_1e
    const v12, -0x800001

    .line 554
    .line 555
    .line 556
    :goto_15
    iput v12, v0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    .line 557
    .line 558
    add-int/lit8 v1, v1, -0x1

    .line 559
    .line 560
    if-ne v10, v1, :cond_1f

    .line 561
    .line 562
    iget v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 563
    .line 564
    add-float/2addr v10, v6

    .line 565
    sub-float/2addr v10, v3

    .line 566
    goto :goto_16

    .line 567
    :cond_1f
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    .line 568
    .line 569
    .line 570
    :goto_16
    iput v10, v0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    .line 571
    .line 572
    add-int/lit8 v7, v7, -0x1

    .line 573
    .line 574
    :goto_17
    if-ltz v7, :cond_22

    .line 575
    .line 576
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v10

    .line 580
    check-cast v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 581
    .line 582
    :goto_18
    iget v12, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 583
    .line 584
    if-le v11, v12, :cond_20

    .line 585
    .line 586
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 587
    .line 588
    add-int/lit8 v11, v11, -0x1

    .line 589
    .line 590
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    add-float v12, v3, v5

    .line 594
    .line 595
    sub-float/2addr v6, v12

    .line 596
    goto :goto_18

    .line 597
    :cond_20
    iget v13, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 598
    .line 599
    add-float/2addr v13, v5

    .line 600
    sub-float/2addr v6, v13

    .line 601
    iput v6, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 602
    .line 603
    if-nez v12, :cond_21

    .line 604
    .line 605
    iput v6, v0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    .line 606
    .line 607
    :cond_21
    add-int/lit8 v7, v7, -0x1

    .line 608
    .line 609
    add-int/lit8 v11, v11, -0x1

    .line 610
    .line 611
    goto :goto_17

    .line 612
    :cond_22
    iget v6, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 613
    .line 614
    iget v7, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 615
    .line 616
    add-float/2addr v6, v7

    .line 617
    add-float/2addr v6, v5

    .line 618
    iget v7, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 619
    .line 620
    :goto_19
    add-int/lit8 v7, v7, 0x1

    .line 621
    .line 622
    if-ge v4, v2, :cond_25

    .line 623
    .line 624
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v9

    .line 628
    check-cast v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 629
    .line 630
    :goto_1a
    iget v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 631
    .line 632
    if-ge v7, v10, :cond_23

    .line 633
    .line 634
    iget-object v10, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 635
    .line 636
    add-int/lit8 v7, v7, 0x1

    .line 637
    .line 638
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 639
    .line 640
    .line 641
    add-float v10, v3, v5

    .line 642
    .line 643
    add-float/2addr v6, v10

    .line 644
    goto :goto_1a

    .line 645
    :cond_23
    if-ne v10, v1, :cond_24

    .line 646
    .line 647
    iget v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 648
    .line 649
    add-float/2addr v10, v6

    .line 650
    sub-float/2addr v10, v3

    .line 651
    iput v10, v0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    .line 652
    .line 653
    :cond_24
    iput v6, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 654
    .line 655
    iget v9, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 656
    .line 657
    add-float/2addr v9, v5

    .line 658
    add-float/2addr v6, v9

    .line 659
    add-int/lit8 v4, v4, 0x1

    .line 660
    .line 661
    goto :goto_19

    .line 662
    :cond_25
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 663
    .line 664
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 665
    .line 666
    .line 667
    goto :goto_1b

    .line 668
    :cond_26
    const/16 v16, 0x0

    .line 669
    .line 670
    :goto_1b
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 671
    .line 672
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 676
    .line 677
    .line 678
    move-result v1

    .line 679
    const/4 v2, 0x0

    .line 680
    :goto_1c
    if-ge v2, v1, :cond_28

    .line 681
    .line 682
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 683
    .line 684
    .line 685
    move-result-object v3

    .line 686
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 687
    .line 688
    .line 689
    move-result-object v4

    .line 690
    check-cast v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 691
    .line 692
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 693
    .line 694
    .line 695
    iget-boolean v5, v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 696
    .line 697
    if-nez v5, :cond_27

    .line 698
    .line 699
    iget v5, v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 700
    .line 701
    cmpl-float v5, v5, v16

    .line 702
    .line 703
    if-nez v5, :cond_27

    .line 704
    .line 705
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 706
    .line 707
    .line 708
    move-result-object v3

    .line 709
    if-eqz v3, :cond_27

    .line 710
    .line 711
    iget v3, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 712
    .line 713
    iput v3, v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 714
    .line 715
    :cond_27
    add-int/lit8 v2, v2, 0x1

    .line 716
    .line 717
    goto :goto_1c

    .line 718
    :cond_28
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 719
    .line 720
    .line 721
    move-result v1

    .line 722
    if-eqz v1, :cond_2e

    .line 723
    .line 724
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 725
    .line 726
    .line 727
    move-result-object v1

    .line 728
    if-eqz v1, :cond_2b

    .line 729
    .line 730
    :goto_1d
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    if-eq v2, v0, :cond_2a

    .line 735
    .line 736
    if-eqz v2, :cond_2b

    .line 737
    .line 738
    instance-of v1, v2, Landroid/view/View;

    .line 739
    .line 740
    if-nez v1, :cond_29

    .line 741
    .line 742
    goto :goto_1e

    .line 743
    :cond_29
    move-object v1, v2

    .line 744
    check-cast v1, Landroid/view/View;

    .line 745
    .line 746
    goto :goto_1d

    .line 747
    :cond_2a
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 748
    .line 749
    .line 750
    move-result-object v3

    .line 751
    goto :goto_1f

    .line 752
    :cond_2b
    :goto_1e
    const/4 v3, 0x0

    .line 753
    :goto_1f
    if-eqz v3, :cond_2c

    .line 754
    .line 755
    iget v1, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 756
    .line 757
    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 758
    .line 759
    if-eq v1, v2, :cond_2e

    .line 760
    .line 761
    :cond_2c
    const/4 v5, 0x0

    .line 762
    :goto_20
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    if-ge v5, v1, :cond_2e

    .line 767
    .line 768
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 773
    .line 774
    .line 775
    move-result-object v2

    .line 776
    if-eqz v2, :cond_2d

    .line 777
    .line 778
    iget v2, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 779
    .line 780
    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 781
    .line 782
    if-ne v2, v3, :cond_2d

    .line 783
    .line 784
    const/4 v2, 0x2

    .line 785
    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    .line 786
    .line 787
    .line 788
    move-result v1

    .line 789
    if-eqz v1, :cond_2d

    .line 790
    .line 791
    goto :goto_21

    .line 792
    :cond_2d
    add-int/lit8 v5, v5, 0x1

    .line 793
    .line 794
    goto :goto_20

    .line 795
    :cond_2e
    :goto_21
    return-void

    .line 796
    :cond_2f
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 801
    .line 802
    .line 803
    move-result v2

    .line 804
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    goto :goto_22

    .line 809
    :catch_0
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 810
    .line 811
    .line 812
    move-result v1

    .line 813
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v1

    .line 817
    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 818
    .line 819
    const-string v3, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    .line 820
    .line 821
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 822
    .line 823
    .line 824
    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    .line 825
    .line 826
    const-string v4, ", found: "

    .line 827
    .line 828
    const-string v5, " Pager id: "

    .line 829
    .line 830
    invoke-static {v2, v3, v4, v6, v5}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    const-string v1, " Pager class: "

    .line 837
    .line 838
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 842
    .line 843
    .line 844
    move-result-object v1

    .line 845
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    const-string v1, " Problematic adapter: "

    .line 849
    .line 850
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 854
    .line 855
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    invoke-static {v0, v2}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 860
    .line 861
    .line 862
    return-void
.end method

.method public final recomputeScrollPosition(IIII)V
    .locals 2

    .line 1
    if-lez p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    mul-int/2addr p1, p0

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sub-int/2addr p1, v0

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    sub-int/2addr p1, v0

    .line 42
    add-int/2addr p1, p3

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    sub-int/2addr p2, p3

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    sub-int/2addr p2, p3

    .line 53
    add-int/2addr p2, p4

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    int-to-float p3, p3

    .line 59
    int-to-float p2, p2

    .line 60
    div-float/2addr p3, p2

    .line 61
    int-to-float p1, p1

    .line 62
    mul-float/2addr p3, p1

    .line 63
    float-to-int p1, p3

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 73
    .line 74
    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    if-eqz p2, :cond_2

    .line 79
    .line 80
    iget p2, p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 81
    .line 82
    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    .line 83
    .line 84
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    const/4 p2, 0x0

    .line 90
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    sub-int/2addr p1, p3

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    sub-int/2addr p1, p3

    .line 100
    int-to-float p1, p1

    .line 101
    mul-float/2addr p2, p1

    .line 102
    float-to-int p1, p2

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eq p1, p2, :cond_3

    .line 108
    .line 109
    const/4 p2, 0x0

    .line 110
    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 118
    .line 119
    .line 120
    :cond_3
    return-void
.end method

.method public final resetTouch()Z
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return v0

    .line 43
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 44
    return p0
.end method

.method public final scrollToItem(IIZZ)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    .line 14
    .line 15
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 16
    .line 17
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    .line 18
    .line 19
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    mul-float/2addr v0, v2

    .line 28
    float-to-int v0, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v1

    .line 31
    :goto_0
    if-eqz p3, :cond_7

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-nez p3, :cond_1

    .line 38
    .line 39
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_5

    .line 43
    .line 44
    :cond_1
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 45
    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    invoke-virtual {p3}, Landroid/widget/Scroller;->isFinished()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_3

    .line 53
    .line 54
    iget-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    invoke-virtual {p3}, Landroid/widget/Scroller;->getCurrX()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {p3}, Landroid/widget/Scroller;->getStartX()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    :goto_1
    invoke-virtual {p3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 71
    .line 72
    .line 73
    :goto_2
    move v4, v2

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    goto :goto_2

    .line 80
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    sub-int v6, v0, v4

    .line 85
    .line 86
    rsub-int/lit8 v7, v5, 0x0

    .line 87
    .line 88
    if-nez v6, :cond_4

    .line 89
    .line 90
    if-nez v7, :cond_4

    .line 91
    .line 92
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_4
    const/4 p3, 0x1

    .line 103
    invoke-direct {p0, p3}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 104
    .line 105
    .line 106
    const/4 p3, 0x2

    .line 107
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    div-int/lit8 v0, p3, 0x2

    .line 115
    .line 116
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    int-to-float v2, v2

    .line 121
    const/high16 v3, 0x3f800000    # 1.0f

    .line 122
    .line 123
    mul-float/2addr v2, v3

    .line 124
    int-to-float p3, p3

    .line 125
    div-float/2addr v2, p3

    .line 126
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    int-to-float v0, v0

    .line 131
    const/high16 v8, 0x3f000000    # 0.5f

    .line 132
    .line 133
    sub-float/2addr v2, v8

    .line 134
    const v8, 0x3ef1463b

    .line 135
    .line 136
    .line 137
    mul-float/2addr v2, v8

    .line 138
    float-to-double v8, v2

    .line 139
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 140
    .line 141
    .line 142
    move-result-wide v8

    .line 143
    double-to-float v2, v8

    .line 144
    mul-float/2addr v2, v0

    .line 145
    add-float/2addr v2, v0

    .line 146
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-lez p2, :cond_5

    .line 151
    .line 152
    int-to-float p2, p2

    .line 153
    div-float/2addr v2, p2

    .line 154
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    const/high16 p3, 0x447a0000    # 1000.0f

    .line 159
    .line 160
    mul-float/2addr p2, p3

    .line 161
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    mul-int/lit8 p2, p2, 0x4

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_5
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 169
    .line 170
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    mul-float/2addr p3, v3

    .line 174
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    int-to-float p2, p2

    .line 179
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    .line 180
    .line 181
    int-to-float v0, v0

    .line 182
    add-float/2addr p3, v0

    .line 183
    div-float/2addr p2, p3

    .line 184
    add-float/2addr p2, v3

    .line 185
    const/high16 p3, 0x42c80000    # 100.0f

    .line 186
    .line 187
    mul-float/2addr p2, p3

    .line 188
    float-to-int p2, p2

    .line 189
    :goto_4
    const/16 p3, 0x258

    .line 190
    .line 191
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    .line 196
    .line 197
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 198
    .line 199
    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 200
    .line 201
    .line 202
    sget-object p2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 203
    .line 204
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 205
    .line 206
    .line 207
    :goto_5
    if-eqz p4, :cond_6

    .line 208
    .line 209
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 210
    .line 211
    if-eqz p0, :cond_6

    .line 212
    .line 213
    check-cast p0, Lcom/takisoft/datetimepicker/widget/DayPickerView$1;

    .line 214
    .line 215
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView$1;->this$0:Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 216
    .line 217
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->updateButtonVisibility(I)V

    .line 218
    .line 219
    .line 220
    :cond_6
    return-void

    .line 221
    :cond_7
    if-eqz p4, :cond_8

    .line 222
    .line 223
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 224
    .line 225
    if-eqz p2, :cond_8

    .line 226
    .line 227
    check-cast p2, Lcom/takisoft/datetimepicker/widget/DayPickerView$1;

    .line 228
    .line 229
    iget-object p2, p2, Lcom/takisoft/datetimepicker/widget/DayPickerView$1;->this$0:Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 230
    .line 231
    invoke-virtual {p2, p1}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->updateButtonVisibility(I)V

    .line 232
    .line 233
    .line 234
    :cond_8
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    .line 241
    .line 242
    .line 243
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    const/4 v4, 0x0

    .line 11
    :try_start_0
    iput-object v4, v1, Landroidx/viewpager/widget/PagerAdapter;->mViewPagerObserver:Landroid/database/DataSetObserver;

    .line 12
    .line 13
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move v1, v3

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ge v1, v4, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 31
    .line 32
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 33
    .line 34
    iget v6, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 35
    .line 36
    iget-object v4, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;

    .line 37
    .line 38
    invoke-virtual {v5, p0, v6, v4}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroidx/viewpager/widget/ViewPager;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    .line 51
    .line 52
    move v0, v3

    .line 53
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-ge v0, v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 68
    .line 69
    iget-boolean v1, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 70
    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v0, v0, -0x1

    .line 77
    .line 78
    :cond_1
    add-int/2addr v0, v2

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 81
    .line 82
    invoke-virtual {p0, v3, v3}, Landroid/view/View;->scrollTo(II)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    throw p0

    .line 89
    :cond_3
    :goto_2
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 90
    .line 91
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    .line 92
    .line 93
    if-eqz p1, :cond_7

    .line 94
    .line 95
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

    .line 96
    .line 97
    if-nez p1, :cond_4

    .line 98
    .line 99
    new-instance p1, Landroidx/viewpager/widget/ViewPager$PagerObserver;

    .line 100
    .line 101
    invoke-direct {p1, v3, p0}, Landroidx/viewpager/widget/ViewPager$PagerObserver;-><init>(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

    .line 105
    .line 106
    :cond_4
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 107
    .line 108
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 111
    .line 112
    .line 113
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 114
    .line 115
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 116
    .line 117
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 118
    .line 119
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 120
    .line 121
    move-object v1, v0

    .line 122
    check-cast v1, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 123
    .line 124
    iget v1, v1, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mCount:I

    .line 125
    .line 126
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    .line 127
    .line 128
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    .line 129
    .line 130
    if-ltz v1, :cond_5

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    .line 136
    .line 137
    invoke-virtual {p0, p1, v3, v3, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    .line 138
    .line 139
    .line 140
    const/4 p1, -0x1

    .line 141
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    .line 142
    .line 143
    return-void

    .line 144
    :cond_5
    if-nez p1, :cond_6

    .line 145
    .line 146
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 151
    .line 152
    .line 153
    :cond_7
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 5
    .line 6
    xor-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setCurrentItemInternal(IIZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    check-cast v0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 7
    .line 8
    iget v0, v0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mCount:I

    .line 9
    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 14
    .line 15
    if-nez p4, :cond_1

    .line 16
    .line 17
    iget p4, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 18
    .line 19
    if-ne p4, p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const/4 p4, 0x1

    .line 32
    if-gez p1, :cond_2

    .line 33
    .line 34
    move p1, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 37
    .line 38
    check-cast v2, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 39
    .line 40
    iget v2, v2, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mCount:I

    .line 41
    .line 42
    if-lt p1, v2, :cond_3

    .line 43
    .line 44
    add-int/lit8 p1, v2, -0x1

    .line 45
    .line 46
    :cond_3
    :goto_0
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 47
    .line 48
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 49
    .line 50
    add-int v4, v3, v2

    .line 51
    .line 52
    if-gt p1, v4, :cond_4

    .line 53
    .line 54
    sub-int/2addr v3, v2

    .line 55
    if-ge p1, v3, :cond_5

    .line 56
    .line 57
    :cond_4
    move v2, v1

    .line 58
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-ge v2, v3, :cond_5

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 69
    .line 70
    iput-boolean p4, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 76
    .line 77
    if-eq v0, p1, :cond_6

    .line 78
    .line 79
    move v1, p4

    .line 80
    :cond_6
    iget-boolean p4, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 81
    .line 82
    if-eqz p4, :cond_8

    .line 83
    .line 84
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 85
    .line 86
    if-eqz v1, :cond_7

    .line 87
    .line 88
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 89
    .line 90
    if-eqz p2, :cond_7

    .line 91
    .line 92
    check-cast p2, Lcom/takisoft/datetimepicker/widget/DayPickerView$1;

    .line 93
    .line 94
    iget-object p2, p2, Lcom/takisoft/datetimepicker/widget/DayPickerView$1;->this$0:Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->updateButtonVisibility(I)V

    .line 97
    .line 98
    .line 99
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->populate(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/viewpager/widget/ViewPager;->scrollToItem(IIZZ)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_9
    :goto_2
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v2, "Requested offscreen page limit "

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, " too small; defaulting to 1"

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v1, "ViewPager"

    .line 24
    .line 25
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move p1, v0

    .line 29
    :cond_0
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 30
    .line 31
    if-eq p1, v0, :cond_1

    .line 32
    .line 33
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    .line 2
    .line 3
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1, v1, p1, v0}, Landroidx/viewpager/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setScrollState(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    .line 7
    .line 8
    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method
