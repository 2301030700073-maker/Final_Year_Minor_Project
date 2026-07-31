.class public Lcom/takisoft/datetimepicker/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/takisoft/datetimepicker/widget/NumberPicker$CustomEditText;
    }
.end annotation


# static fields
.field public static final DIGIT_CHARACTERS:[C

.field public static final sTwoDigitFormatter:Lcom/takisoft/datetimepicker/widget/NumberPicker$TwoDigitFormatter;


# instance fields
.field public mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field public mAccessibilityNodeProvider:Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field public mAdjustScroller:Landroid/widget/Scroller;

.field public mBeginSoftInputOnLongPressCommand:Lcom/fsck/k9/controller/MessagingController$1;

.field public mBottomSelectionDividerBottom:I

.field public mChangeCurrentByOneFromLongPressCommand:Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field public mComputeMaxWidth:Z

.field public mCurrentScrollOffset:I

.field public mDecrementButton:Landroid/widget/ImageButton;

.field public mDecrementVirtualButtonPressed:Z

.field public mDisplayedValues:[Ljava/lang/String;

.field public mFlingScroller:Landroid/widget/Scroller;

.field public mFormatter:Lcom/takisoft/datetimepicker/widget/NumberPicker$Formatter;

.field public mHasSelectorWheel:Z

.field public mHideWheelUntilFocused:Z

.field public mIgnoreMoveEvents:Z

.field public mIncrementButton:Landroid/widget/ImageButton;

.field public mIncrementVirtualButtonPressed:Z

.field public mInitialScrollOffset:I

.field public mInputText:Landroid/widget/EditText;

.field public mLastDownEventTime:J

.field public mLastDownEventY:F

.field public mLastDownOrMoveEventY:F

.field public mLastHandledDownDpadKeyCode:I

.field public mLastHoveredChildVirtualViewId:I

.field public mLongPressUpdateInterval:J

.field public mMaxHeight:I

.field public mMaxValue:I

.field public mMaxWidth:I

.field public mMaximumFlingVelocity:I

.field public mMinHeight:I

.field public mMinValue:I

.field public mMinWidth:I

.field public mMinimumFlingVelocity:I

.field public mOnValueChangeListener:Lcom/takisoft/datetimepicker/widget/NumberPicker$OnValueChangeListener;

.field public mPerformClickOnTap:Z

.field public mPressedStateHelper:Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;

.field public mPreviousScrollerY:I

.field public mScrollState:I

.field public mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field public mSelectionDividerHeight:I

.field public mSelectionDividersDistance:I

.field public mSelectorElementHeight:I

.field public final mSelectorIndexToStringCache:Landroid/util/SparseArray;

.field public final mSelectorIndices:[I

.field public mSelectorTextGapHeight:I

.field public mSelectorWheelPaint:Landroid/graphics/Paint;

.field public mSetSelectionCommand:Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;

.field public mSolidColor:I

.field public mTextSize:I

.field public mTopSelectionDividerTop:I

.field public mTouchSlop:I

.field public mValue:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field public mWrapSelectorWheel:Z

.field public mWrapSelectorWheelPreferred:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/takisoft/datetimepicker/widget/NumberPicker$TwoDigitFormatter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$TwoDigitFormatter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->sTwoDigitFormatter:Lcom/takisoft/datetimepicker/widget/NumberPicker$TwoDigitFormatter;

    .line 7
    .line 8
    const/16 v0, 0x3c

    .line 9
    .line 10
    new-array v0, v0, [C

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04045f

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 6
    .line 7
    const-wide/16 v0, 0x12c

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorIndices:[I

    .line 22
    .line 23
    const/high16 v0, -0x80000000

    .line 24
    .line 25
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInitialScrollOffset:I

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mScrollState:I

    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 32
    .line 33
    invoke-static {p1}, Landroidx/work/Data$Companion;->isLightTheme(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const v0, 0x7f1304eb

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const v0, 0x7f1304ed

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->attrHandler(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    const-wide/16 v0, 0x12c

    .line 54
    iput-wide v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v0, 0x3

    .line 56
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorIndices:[I

    const/high16 v0, -0x80000000

    .line 57
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInitialScrollOffset:I

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mScrollState:I

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 60
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->attrHandler(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final getTwoDigitFormatter()Lcom/takisoft/datetimepicker/widget/NumberPicker$Formatter;
    .locals 1

    .line 1
    sget-object v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->sTwoDigitFormatter:Lcom/takisoft/datetimepicker/widget/NumberPicker$TwoDigitFormatter;

    .line 2
    .line 3
    return-object v0
.end method

.method public static makeMeasureSpec(II)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    const/high16 v3, 0x40000000    # 2.0f

    .line 16
    .line 17
    if-eq v1, v2, :cond_3

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    if-ne v1, v3, :cond_1

    .line 22
    .line 23
    :goto_0
    return p0

    .line 24
    :cond_1
    const-string p0, "Unknown measure mode: "

    .line 25
    .line 26
    invoke-static {p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_2
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0
.end method


# virtual methods
.method public final attrHandler(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 1
    sget-object v0, Lcom/takisoft/datetimepicker/R$styleable;->NumberPicker:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const p3, 0x7f0c030b

    .line 8
    .line 9
    .line 10
    const/4 p4, 0x1

    .line 11
    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    move v1, p4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v0

    .line 21
    :goto_0
    iput-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 22
    .line 23
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHideWheelUntilFocused:Z

    .line 28
    .line 29
    const/16 v1, 0x9

    .line 30
    .line 31
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iput v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSolidColor:I

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 45
    .line 46
    .line 47
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 67
    .line 68
    .line 69
    :cond_1
    iput-object v3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const/high16 v4, 0x40000000    # 2.0f

    .line 80
    .line 81
    invoke-static {p4, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    float-to-int v3, v3

    .line 86
    const/4 v4, 0x7

    .line 87
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    iput v3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    const/high16 v4, 0x42400000    # 48.0f

    .line 102
    .line 103
    invoke-static {p4, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    float-to-int v3, v3

    .line 108
    const/16 v4, 0x8

    .line 109
    .line 110
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    iput v3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 115
    .line 116
    const/4 v3, 0x4

    .line 117
    const/4 v5, -0x1

    .line 118
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    iput v3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinHeight:I

    .line 123
    .line 124
    const/4 v3, 0x2

    .line 125
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    iput v6, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxHeight:I

    .line 130
    .line 131
    iget v7, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinHeight:I

    .line 132
    .line 133
    if-eq v7, v5, :cond_3

    .line 134
    .line 135
    if-eq v6, v5, :cond_3

    .line 136
    .line 137
    if-gt v7, v6, :cond_2

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    const-string p0, "minHeight > maxHeight"

    .line 141
    .line 142
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_3
    :goto_1
    const/4 v6, 0x5

    .line 147
    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    iput v6, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinWidth:I

    .line 152
    .line 153
    const/4 v6, 0x3

    .line 154
    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    iput v6, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxWidth:I

    .line 159
    .line 160
    iget v7, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinWidth:I

    .line 161
    .line 162
    if-eq v7, v5, :cond_5

    .line 163
    .line 164
    if-eq v6, v5, :cond_5

    .line 165
    .line 166
    if-gt v7, v6, :cond_4

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_4
    const-string p0, "minWidth > maxWidth"

    .line 170
    .line 171
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_5
    :goto_2
    if-ne v6, v5, :cond_6

    .line 176
    .line 177
    move v6, p4

    .line 178
    goto :goto_3

    .line 179
    :cond_6
    move v6, v0

    .line 180
    :goto_3
    iput-boolean v6, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 181
    .line 182
    const/16 v6, 0xa

    .line 183
    .line 184
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    iput-object v6, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 189
    .line 190
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    .line 192
    .line 193
    new-instance p2, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;

    .line 194
    .line 195
    invoke-direct {p2, p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;-><init>(Lcom/takisoft/datetimepicker/widget/NumberPicker;)V

    .line 196
    .line 197
    .line 198
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mPressedStateHelper:Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;

    .line 199
    .line 200
    iget-boolean p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 201
    .line 202
    xor-int/2addr p2, p4

    .line 203
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    const-string v6, "layout_inflater"

    .line 211
    .line 212
    invoke-virtual {p2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    check-cast p2, Landroid/view/LayoutInflater;

    .line 217
    .line 218
    invoke-virtual {p2, p3, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    new-instance p2, Landroidx/preference/Preference$1;

    .line 222
    .line 223
    invoke-direct {p2, v1, p0}, Landroidx/preference/Preference$1;-><init>(ILjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    new-instance p3, Lcom/takisoft/datetimepicker/widget/NumberPicker$2;

    .line 227
    .line 228
    invoke-direct {p3, p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$2;-><init>(Lcom/takisoft/datetimepicker/widget/NumberPicker;)V

    .line 229
    .line 230
    .line 231
    iget-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 232
    .line 233
    const/4 v6, 0x0

    .line 234
    if-nez v1, :cond_7

    .line 235
    .line 236
    const v1, 0x7f090239

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Landroid/widget/ImageButton;

    .line 244
    .line 245
    iput-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 246
    .line 247
    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    .line 249
    .line 250
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 251
    .line 252
    invoke-virtual {v1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 253
    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_7
    iput-object v6, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 257
    .line 258
    :goto_4
    iget-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 259
    .line 260
    if-nez v1, :cond_8

    .line 261
    .line 262
    const v1, 0x7f09018c

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Landroid/widget/ImageButton;

    .line 270
    .line 271
    iput-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 272
    .line 273
    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    .line 275
    .line 276
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 277
    .line 278
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 279
    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_8
    iput-object v6, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 283
    .line 284
    :goto_5
    const p2, 0x7f090305

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    check-cast p2, Landroid/widget/EditText;

    .line 292
    .line 293
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 294
    .line 295
    new-instance p3, Landroidx/appcompat/widget/SearchView$3;

    .line 296
    .line 297
    invoke-direct {p3, p4, p0}, Landroidx/appcompat/widget/SearchView$3;-><init>(ILjava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 301
    .line 302
    .line 303
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 304
    .line 305
    new-instance p3, Lcom/takisoft/datetimepicker/widget/NumberPicker$InputTextFilter;

    .line 306
    .line 307
    invoke-direct {p3, p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$InputTextFilter;-><init>(Lcom/takisoft/datetimepicker/widget/NumberPicker;)V

    .line 308
    .line 309
    .line 310
    new-array v1, p4, [Landroid/text/InputFilter;

    .line 311
    .line 312
    aput-object p3, v1, v0

    .line 313
    .line 314
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 315
    .line 316
    .line 317
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 318
    .line 319
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 320
    .line 321
    .line 322
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 323
    .line 324
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 325
    .line 326
    .line 327
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 332
    .line 333
    .line 334
    move-result p2

    .line 335
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTouchSlop:I

    .line 336
    .line 337
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 338
    .line 339
    .line 340
    move-result p2

    .line 341
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 342
    .line 343
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    div-int/2addr p1, v4

    .line 348
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 349
    .line 350
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 351
    .line 352
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    float-to-int p1, p1

    .line 357
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTextSize:I

    .line 358
    .line 359
    new-instance p1, Landroid/graphics/Paint;

    .line 360
    .line 361
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 365
    .line 366
    .line 367
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 368
    .line 369
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 370
    .line 371
    .line 372
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTextSize:I

    .line 373
    .line 374
    int-to-float p2, p2

    .line 375
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 376
    .line 377
    .line 378
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 379
    .line 380
    invoke-virtual {p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 385
    .line 386
    .line 387
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 388
    .line 389
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 390
    .line 391
    .line 392
    move-result-object p2

    .line 393
    sget-object p3, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    .line 394
    .line 395
    invoke-virtual {p2, p3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 396
    .line 397
    .line 398
    move-result p2

    .line 399
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
    .line 401
    .line 402
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 403
    .line 404
    new-instance p1, Landroid/widget/Scroller;

    .line 405
    .line 406
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 407
    .line 408
    .line 409
    move-result-object p2

    .line 410
    invoke-direct {p1, p2, v6, p4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 411
    .line 412
    .line 413
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 414
    .line 415
    new-instance p1, Landroid/widget/Scroller;

    .line 416
    .line 417
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 418
    .line 419
    .line 420
    move-result-object p2

    .line 421
    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    .line 422
    .line 423
    const/high16 v0, 0x40200000    # 2.5f

    .line 424
    .line 425
    invoke-direct {p3, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 426
    .line 427
    .line 428
    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 429
    .line 430
    .line 431
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 432
    .line 433
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->updateInputTextView()V

    .line 434
    .line 435
    .line 436
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 437
    .line 438
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 439
    .line 440
    .line 441
    move-result p1

    .line 442
    if-nez p1, :cond_9

    .line 443
    .line 444
    invoke-virtual {p0, p4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 445
    .line 446
    .line 447
    :cond_9
    return-void
.end method

.method public final changeValueByOne(Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mPreviousScrollerY:I

    .line 26
    .line 27
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorElementHeight:I

    .line 32
    .line 33
    neg-int v5, p1

    .line 34
    const/16 v6, 0x12c

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget v5, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorElementHeight:I

    .line 44
    .line 45
    const/16 v6, 0x12c

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mValue:I

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    add-int/2addr v0, v1

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setValueInternal(IZ)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    sub-int/2addr v0, v1

    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setValueInternal(IZ)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final computeScroll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mPreviousScrollerY:I

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mPreviousScrollerY:I

    .line 34
    .line 35
    :cond_1
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mPreviousScrollerY:I

    .line 36
    .line 37
    sub-int v2, v1, v2

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0, v3, v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->scrollBy(II)V

    .line 41
    .line 42
    .line 43
    iput v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mPreviousScrollerY:I

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_6

    .line 50
    .line 51
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 52
    .line 53
    if-ne v0, v1, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->updateInputTextView()V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mScrollState:I

    .line 65
    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    iput v3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mScrollState:I

    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mScrollState:I

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    if-eq v0, v1, :cond_5

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->updateInputTextView()V

    .line 78
    .line 79
    .line 80
    :cond_5
    :goto_0
    return-void

    .line 81
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final computeVerticalScrollExtent()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final computeVerticalScrollOffset()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 2
    .line 3
    return p0
.end method

.method public final computeVerticalScrollRange()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxValue:I

    .line 2
    .line 3
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorElementHeight:I

    .line 9
    .line 10
    mul-int/2addr v0, p0

    .line 11
    return v0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "accessibility"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 21
    .line 22
    if-eqz v0, :cond_6

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_6

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    float-to-int v0, v0

    .line 35
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 36
    .line 37
    if-ge v0, v1, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 42
    .line 43
    if-le v0, v1, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x2

    .line 48
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 57
    .line 58
    const/4 v2, 0x7

    .line 59
    const/4 v3, 0x0

    .line 60
    const/16 v4, 0x40

    .line 61
    .line 62
    const/16 v5, 0x80

    .line 63
    .line 64
    const/4 v6, -0x1

    .line 65
    const/16 v7, 0x100

    .line 66
    .line 67
    if-eq p1, v2, :cond_5

    .line 68
    .line 69
    const/16 v2, 0x9

    .line 70
    .line 71
    if-eq p1, v2, :cond_4

    .line 72
    .line 73
    const/16 v2, 0xa

    .line 74
    .line 75
    if-eq p1, v2, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {v1, v0, v7}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 79
    .line 80
    .line 81
    iput v6, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {v1, v0, v5}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 85
    .line 86
    .line 87
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 88
    .line 89
    invoke-virtual {v1, v0, v4, v3}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 94
    .line 95
    if-eq p1, v0, :cond_6

    .line 96
    .line 97
    if-eq p1, v6, :cond_6

    .line 98
    .line 99
    invoke-virtual {v1, p1, v7}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0, v5}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 103
    .line 104
    .line 105
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 106
    .line 107
    invoke-virtual {v1, v0, v4, v3}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 108
    .line 109
    .line 110
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 111
    return p0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x13

    .line 6
    .line 7
    const/16 v2, 0x14

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    if-eq v0, v2, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x17

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const/16 v1, 0x42

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->removeAllCallbacks()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v3, 0x1

    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    if-eq v1, v3, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 42
    .line 43
    if-ne v1, v0, :cond_6

    .line 44
    .line 45
    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 47
    .line 48
    return v3

    .line 49
    :cond_4
    iget-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 50
    .line 51
    if-nez v1, :cond_7

    .line 52
    .line 53
    if-ne v0, v2, :cond_5

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getMaxValue()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-ge v1, v4, :cond_6

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_5
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getMinValue()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-le v1, v4, :cond_6

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    return p0

    .line 82
    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 83
    .line 84
    .line 85
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->removeAllCallbacks()V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_9

    .line 97
    .line 98
    if-ne v0, v2, :cond_8

    .line 99
    .line 100
    move p1, v3

    .line 101
    goto :goto_2

    .line 102
    :cond_8
    const/4 p1, 0x0

    .line 103
    :goto_2
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->changeValueByOne(Z)V

    .line 104
    .line 105
    .line 106
    :cond_9
    return v3
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->removeAllCallbacks()V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->removeAllCallbacks()V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

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
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 13
    .line 14
    if-lt p1, v1, :cond_3

    .line 15
    .line 16
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxValue:I

    .line 17
    .line 18
    if-le p1, v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    sub-int p0, p1, v1

    .line 26
    .line 27
    aget-object p0, v2, p0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    :goto_0
    const-string p0, ""

    .line 36
    .line 37
    :goto_1
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final ensureScrollWheelAdjusted()Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInitialScrollOffset:I

    .line 2
    .line 3
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iput v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mPreviousScrollerY:I

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorElementHeight:I

    .line 16
    .line 17
    div-int/lit8 v3, v2, 0x2

    .line 18
    .line 19
    if-le v1, v3, :cond_1

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    neg-int v2, v2

    .line 24
    :cond_0
    add-int/2addr v0, v2

    .line 25
    :cond_1
    move v5, v0

    .line 26
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    const/16 v6, 0x320

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_2
    return v1
.end method

.method public final formatNumber(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mFormatter:Lcom/takisoft/datetimepicker/widget/NumberPicker$Formatter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x1

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    aput-object p1, v0, v1

    .line 23
    .line 24
    const-string p1, "%d"

    .line 25
    .line 26
    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mAccessibilityNodeProvider:Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Lcom/takisoft/datetimepicker/widget/NumberPicker;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mAccessibilityNodeProvider:Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 20
    .line 21
    :cond_1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mAccessibilityNodeProvider:Lcom/takisoft/datetimepicker/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 22
    .line 23
    return-object p0
.end method

.method public getBottomFadingEdgeStrength()F
    .locals 0

    .line 1
    const p0, 0x3f666666    # 0.9f

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public getDisplayedValueForCurrentSelection()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/CharSequence;

    .line 12
    .line 13
    return-object p0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMaxValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxValue:I

    .line 2
    .line 3
    return p0
.end method

.method public getMinValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSelectedPos(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    if-ge v0, v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 21
    .line 22
    aget-object v1, v1, v0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 35
    .line 36
    add-int/2addr p0, v0

    .line 37
    return p0

    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    return p0

    .line 46
    :catch_0
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 47
    .line 48
    return p0
.end method

.method public getSolidColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSolidColor:I

    .line 2
    .line 3
    return p0
.end method

.method public getTopFadingEdgeStrength()F
    .locals 0

    .line 1
    const p0, 0x3f666666    # 0.9f

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mValue:I

    .line 2
    .line 3
    return p0
.end method

.method public getWrapSelectorWheel()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getWrappedSelectorIndex(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxValue:I

    .line 2
    .line 3
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 4
    .line 5
    if-le p1, v0, :cond_0

    .line 6
    .line 7
    sub-int/2addr p1, v0

    .line 8
    sub-int/2addr v0, p0

    .line 9
    rem-int/2addr p1, v0

    .line 10
    add-int/2addr p1, p0

    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    if-ge p1, p0, :cond_1

    .line 15
    .line 16
    sub-int p1, p0, p1

    .line 17
    .line 18
    sub-int p0, v0, p0

    .line 19
    .line 20
    rem-int/2addr p1, p0

    .line 21
    sub-int/2addr v0, p1

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    return p1
.end method

.method public final hideSoftInput()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "input_method"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 36
    .line 37
    const/4 v0, 0x4

    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final initializeSelectorWheelIndices()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorIndices:[I

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    if-ge v1, v3, :cond_1

    .line 15
    .line 16
    add-int/lit8 v3, v1, -0x1

    .line 17
    .line 18
    add-int/2addr v3, v0

    .line 19
    iget-boolean v4, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    :cond_0
    aput v3, v2, v1

    .line 28
    .line 29
    invoke-virtual {p0, v3}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sub-int/2addr v1, p1

    .line 14
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 15
    .line 16
    add-int/2addr p1, v1

    .line 17
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorElementHeight:I

    .line 18
    .line 19
    rem-int/2addr p1, v2

    .line 20
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInitialScrollOffset:I

    .line 21
    .line 22
    sub-int/2addr v2, p1

    .line 23
    const/4 p1, 0x0

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget v4, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorElementHeight:I

    .line 31
    .line 32
    div-int/lit8 v5, v4, 0x2

    .line 33
    .line 34
    if-le v3, v5, :cond_1

    .line 35
    .line 36
    if-lez v2, :cond_0

    .line 37
    .line 38
    sub-int/2addr v2, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    add-int/2addr v2, v4

    .line 41
    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 42
    invoke-virtual {p0, p1, v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->scrollBy(II)V

    .line 43
    .line 44
    .line 45
    return v0

    .line 46
    :cond_2
    return p1
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->removeAllCallbacks()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-boolean v3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHideWheelUntilFocused:Z

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v3, v4

    .line 32
    :goto_0
    sub-int v1, v0, v1

    .line 33
    .line 34
    div-int/lit8 v1, v1, 0x2

    .line 35
    .line 36
    int-to-float v1, v1

    .line 37
    iget v5, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 38
    .line 39
    int-to-float v5, v5

    .line 40
    const/16 v6, 0x10

    .line 41
    .line 42
    invoke-static {v6}, Lcom/takisoft/datetimepicker/util/StateSet;->get(I)[I

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const/4 v7, 0x0

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    iget-object v8, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    if-eqz v8, :cond_3

    .line 52
    .line 53
    iget v9, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mScrollState:I

    .line 54
    .line 55
    if-nez v9, :cond_3

    .line 56
    .line 57
    iget-boolean v9, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    .line 58
    .line 59
    if-eqz v9, :cond_2

    .line 60
    .line 61
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 62
    .line 63
    .line 64
    iget-object v8, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    iget v9, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 67
    .line 68
    invoke-virtual {v8, v7, v7, v0, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    .line 70
    .line 71
    iget-object v8, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-boolean v8, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    .line 77
    .line 78
    if-eqz v8, :cond_3

    .line 79
    .line 80
    iget-object v8, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    .line 82
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 83
    .line 84
    .line 85
    iget-object v6, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    iget v8, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 88
    .line 89
    invoke-virtual {v6, v7, v8, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    .line 94
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    move v2, v7

    .line 98
    :goto_1
    iget-object v6, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorIndices:[I

    .line 99
    .line 100
    array-length v8, v6

    .line 101
    if-ge v2, v8, :cond_7

    .line 102
    .line 103
    aget v6, v6, v2

    .line 104
    .line 105
    iget-object v8, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 106
    .line 107
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    check-cast v6, Ljava/lang/String;

    .line 112
    .line 113
    if-eqz v3, :cond_4

    .line 114
    .line 115
    if-ne v2, v4, :cond_5

    .line 116
    .line 117
    :cond_4
    if-ne v2, v4, :cond_6

    .line 118
    .line 119
    iget-object v8, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 120
    .line 121
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_6

    .line 126
    .line 127
    :cond_5
    iget-object v8, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 128
    .line 129
    invoke-virtual {p1, v6, v1, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 130
    .line 131
    .line 132
    :cond_6
    iget v6, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorElementHeight:I

    .line 133
    .line 134
    int-to-float v6, v6

    .line 135
    add-float/2addr v5, v6

    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_7
    if-eqz v3, :cond_8

    .line 140
    .line 141
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 142
    .line 143
    if-eqz v1, :cond_8

    .line 144
    .line 145
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 146
    .line 147
    iget v3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 148
    .line 149
    add-int/2addr v3, v2

    .line 150
    invoke-virtual {v1, v7, v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 154
    .line 155
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    .line 157
    .line 158
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 159
    .line 160
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 161
    .line 162
    sub-int v2, v1, v2

    .line 163
    .line 164
    iget-object v3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 165
    .line 166
    invoke-virtual {v3, v7, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 167
    .line 168
    .line 169
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 170
    .line 171
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 172
    .line 173
    .line 174
    :cond_8
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-class v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 22
    .line 23
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mValue:I

    .line 24
    .line 25
    add-int/2addr v0, v1

    .line 26
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorElementHeight:I

    .line 27
    .line 28
    mul-int/2addr v0, v1

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxValue:I

    .line 33
    .line 34
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 35
    .line 36
    sub-int/2addr v0, v1

    .line 37
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorElementHeight:I

    .line 38
    .line 39
    mul-int/2addr v0, p0

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->removeAllCallbacks()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastDownEventY:F

    .line 36
    .line 37
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    iput-wide v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastDownEventTime:J

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 48
    .line 49
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastDownEventY:F

    .line 50
    .line 51
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 52
    .line 53
    int-to-float v0, v0

    .line 54
    cmpg-float v0, p1, v0

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    if-gez v0, :cond_2

    .line 58
    .line 59
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mScrollState:I

    .line 60
    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mPressedStateHelper:Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 66
    .line 67
    .line 68
    iput v2, p1, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 69
    .line 70
    const/4 v0, 0x2

    .line 71
    iput v0, p1, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 72
    .line 73
    iget-object v0, p1, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 74
    .line 75
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    int-to-long v3, v3

    .line 80
    invoke-virtual {v0, p1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 85
    .line 86
    int-to-float v0, v0

    .line 87
    cmpl-float p1, p1, v0

    .line 88
    .line 89
    if-lez p1, :cond_3

    .line 90
    .line 91
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mScrollState:I

    .line 92
    .line 93
    if-nez p1, :cond_3

    .line 94
    .line 95
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mPressedStateHelper:Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 98
    .line 99
    .line 100
    iput v2, p1, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 101
    .line 102
    iput v2, p1, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 103
    .line 104
    iget-object v0, p1, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 105
    .line 106
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    int-to-long v3, v3

    .line 111
    invoke-virtual {v0, p1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_5

    .line 128
    .line 129
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 130
    .line 131
    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 135
    .line 136
    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 137
    .line 138
    .line 139
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mScrollState:I

    .line 140
    .line 141
    if-nez p1, :cond_4

    .line 142
    .line 143
    return v2

    .line 144
    :cond_4
    iput v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mScrollState:I

    .line 145
    .line 146
    return v2

    .line 147
    :cond_5
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-nez p1, :cond_6

    .line 154
    .line 155
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 156
    .line 157
    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 158
    .line 159
    .line 160
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 161
    .line 162
    invoke-virtual {p0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 163
    .line 164
    .line 165
    return v2

    .line 166
    :cond_6
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastDownEventY:F

    .line 167
    .line 168
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 169
    .line 170
    int-to-float v0, v0

    .line 171
    cmpg-float v0, p1, v0

    .line 172
    .line 173
    if-gez v0, :cond_7

    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->hideSoftInput()V

    .line 176
    .line 177
    .line 178
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    int-to-long v3, p1

    .line 183
    invoke-virtual {p0, v3, v4, v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(JZ)V

    .line 184
    .line 185
    .line 186
    return v2

    .line 187
    :cond_7
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 188
    .line 189
    int-to-float v0, v0

    .line 190
    cmpl-float p1, p1, v0

    .line 191
    .line 192
    if-lez p1, :cond_8

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->hideSoftInput()V

    .line 195
    .line 196
    .line 197
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    int-to-long v0, p1

    .line 202
    invoke-virtual {p0, v0, v1, v2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(JZ)V

    .line 203
    .line 204
    .line 205
    return v2

    .line 206
    :cond_8
    iput-boolean v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 207
    .line 208
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/fsck/k9/controller/MessagingController$1;

    .line 209
    .line 210
    if-nez p1, :cond_9

    .line 211
    .line 212
    new-instance p1, Lcom/fsck/k9/controller/MessagingController$1;

    .line 213
    .line 214
    const/4 v0, 0x6

    .line 215
    invoke-direct {p1, v0, p0}, Lcom/fsck/k9/controller/MessagingController$1;-><init>(ILjava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/fsck/k9/controller/MessagingController$1;

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_9
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 222
    .line 223
    .line 224
    :goto_1
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/fsck/k9/controller/MessagingController$1;

    .line 225
    .line 226
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    int-to-long v0, v0

    .line 231
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    .line 233
    .line 234
    return v2

    .line 235
    :cond_a
    :goto_2
    return v1
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    iget-object p4, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 18
    .line 19
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    iget-object p5, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 24
    .line 25
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result p5

    .line 29
    sub-int/2addr p2, p4

    .line 30
    div-int/lit8 p2, p2, 0x2

    .line 31
    .line 32
    sub-int/2addr p3, p5

    .line 33
    div-int/lit8 p3, p3, 0x2

    .line 34
    .line 35
    add-int/2addr p4, p2

    .line 36
    add-int/2addr p5, p3

    .line 37
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 38
    .line 39
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 40
    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 53
    .line 54
    .line 55
    iget-object p3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorIndices:[I

    .line 56
    .line 57
    array-length p4, p3

    .line 58
    iget p5, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTextSize:I

    .line 59
    .line 60
    mul-int/2addr p4, p5

    .line 61
    sub-int/2addr p2, p1

    .line 62
    sub-int/2addr p2, p4

    .line 63
    int-to-float p1, p2

    .line 64
    array-length p2, p3

    .line 65
    int-to-float p2, p2

    .line 66
    div-float/2addr p1, p2

    .line 67
    const/high16 p2, 0x3f000000    # 0.5f

    .line 68
    .line 69
    add-float/2addr p1, p2

    .line 70
    float-to-int p1, p1

    .line 71
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 72
    .line 73
    add-int/2addr p5, p1

    .line 74
    iput p5, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorElementHeight:I

    .line 75
    .line 76
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 83
    .line 84
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    add-int/2addr p2, p1

    .line 89
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorElementHeight:I

    .line 90
    .line 91
    sub-int/2addr p2, p1

    .line 92
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInitialScrollOffset:I

    .line 93
    .line 94
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->updateInputTextView()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    const/4 p3, 0x1

    .line 108
    invoke-virtual {p0, p3}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 109
    .line 110
    .line 111
    sub-int/2addr p2, p1

    .line 112
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTextSize:I

    .line 113
    .line 114
    sub-int/2addr p2, p1

    .line 115
    div-int/lit8 p2, p2, 0x2

    .line 116
    .line 117
    invoke-virtual {p0, p2}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 125
    .line 126
    sub-int/2addr p1, p2

    .line 127
    div-int/lit8 p1, p1, 0x2

    .line 128
    .line 129
    iget p3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 130
    .line 131
    sub-int/2addr p1, p3

    .line 132
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 133
    .line 134
    mul-int/lit8 p3, p3, 0x2

    .line 135
    .line 136
    add-int/2addr p3, p1

    .line 137
    add-int/2addr p3, p2

    .line 138
    iput p3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 139
    .line 140
    :cond_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxWidth:I

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->makeMeasureSpec(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxHeight:I

    .line 16
    .line 17
    invoke-static {p2, v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->makeMeasureSpec(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinWidth:I

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, -0x1

    .line 32
    if-eq v0, v3, :cond_1

    .line 33
    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v0, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :cond_1
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinHeight:I

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eq p1, v3, :cond_2

    .line 49
    .line 50
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-static {p1, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    :cond_2
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_12

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x2

    .line 34
    const/4 v3, 0x1

    .line 35
    if-eq v0, v3, :cond_7

    .line 36
    .line 37
    if-eq v0, v2, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    :goto_0
    return v3

    .line 45
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mScrollState:I

    .line 50
    .line 51
    if-eq v0, v3, :cond_5

    .line 52
    .line 53
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastDownEventY:F

    .line 54
    .line 55
    sub-float v0, p1, v0

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    float-to-int v0, v0

    .line 62
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTouchSlop:I

    .line 63
    .line 64
    if-le v0, v1, :cond_6

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->removeAllCallbacks()V

    .line 67
    .line 68
    .line 69
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mScrollState:I

    .line 70
    .line 71
    if-ne v0, v3, :cond_4

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    iput v3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mScrollState:I

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 78
    .line 79
    sub-float v0, p1, v0

    .line 80
    .line 81
    float-to-int v0, v0

    .line 82
    invoke-virtual {p0, v1, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->scrollBy(II)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 86
    .line 87
    .line 88
    :cond_6
    :goto_1
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 89
    .line 90
    return v3

    .line 91
    :cond_7
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/fsck/k9/controller/MessagingController$1;

    .line 92
    .line 93
    if-eqz v0, :cond_8

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 96
    .line 97
    .line 98
    :cond_8
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 99
    .line 100
    if-eqz v0, :cond_9

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    :cond_9
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mPressedStateHelper:Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 111
    .line 112
    iget v4, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 113
    .line 114
    int-to-float v4, v4

    .line 115
    const/16 v5, 0x3e8

    .line 116
    .line 117
    invoke-virtual {v0, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    float-to-int v8, v0

    .line 125
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iget v4, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 130
    .line 131
    if-le v0, v4, :cond_c

    .line 132
    .line 133
    iput v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mPreviousScrollerY:I

    .line 134
    .line 135
    iget-object v4, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 136
    .line 137
    if-lez v8, :cond_a

    .line 138
    .line 139
    const/4 v11, 0x0

    .line 140
    const v12, 0x7fffffff

    .line 141
    .line 142
    .line 143
    const/4 v5, 0x0

    .line 144
    const/4 v6, 0x0

    .line 145
    const/4 v7, 0x0

    .line 146
    const/4 v9, 0x0

    .line 147
    const/4 v10, 0x0

    .line 148
    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_a
    const/4 v11, 0x0

    .line 153
    const v12, 0x7fffffff

    .line 154
    .line 155
    .line 156
    const/4 v5, 0x0

    .line 157
    const v6, 0x7fffffff

    .line 158
    .line 159
    .line 160
    const/4 v7, 0x0

    .line 161
    const/4 v9, 0x0

    .line 162
    const/4 v10, 0x0

    .line 163
    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 164
    .line 165
    .line 166
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 167
    .line 168
    .line 169
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mScrollState:I

    .line 170
    .line 171
    if-ne p1, v2, :cond_b

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_b
    iput v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mScrollState:I

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    float-to-int v0, v0

    .line 182
    int-to-float v4, v0

    .line 183
    iget v5, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastDownEventY:F

    .line 184
    .line 185
    sub-float/2addr v4, v5

    .line 186
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    float-to-int v4, v4

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 192
    .line 193
    .line 194
    move-result-wide v5

    .line 195
    iget-wide v7, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLastDownEventTime:J

    .line 196
    .line 197
    sub-long/2addr v5, v7

    .line 198
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTouchSlop:I

    .line 199
    .line 200
    if-gt v4, p1, :cond_f

    .line 201
    .line 202
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    int-to-long v7, p1

    .line 207
    cmp-long p1, v5, v7

    .line 208
    .line 209
    if-gez p1, :cond_f

    .line 210
    .line 211
    iget-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 212
    .line 213
    if-eqz p1, :cond_d

    .line 214
    .line 215
    iput-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->performClick()Z

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_d
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorElementHeight:I

    .line 222
    .line 223
    div-int/2addr v0, p1

    .line 224
    sub-int/2addr v0, v3

    .line 225
    if-lez v0, :cond_e

    .line 226
    .line 227
    invoke-virtual {p0, v3}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->changeValueByOne(Z)V

    .line 228
    .line 229
    .line 230
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mPressedStateHelper:Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;

    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 233
    .line 234
    .line 235
    iput v2, p1, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 236
    .line 237
    iput v3, p1, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 238
    .line 239
    iget-object v0, p1, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 240
    .line 241
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_e
    if-gez v0, :cond_10

    .line 246
    .line 247
    invoke-virtual {p0, v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->changeValueByOne(Z)V

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mPressedStateHelper:Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;

    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 253
    .line 254
    .line 255
    iput v2, p1, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 256
    .line 257
    iput v2, p1, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 258
    .line 259
    iget-object v0, p1, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 260
    .line 261
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_f
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 266
    .line 267
    .line 268
    :cond_10
    :goto_3
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mScrollState:I

    .line 269
    .line 270
    if-nez p1, :cond_11

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_11
    iput v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mScrollState:I

    .line 274
    .line 275
    :goto_4
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 276
    .line 277
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 278
    .line 279
    .line 280
    const/4 p1, 0x0

    .line 281
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 282
    .line 283
    return v3

    .line 284
    :cond_12
    :goto_5
    return v1
.end method

.method public final performClick()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->showSoftInput()V

    .line 17
    .line 18
    .line 19
    :cond_1
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method public final performLongClick()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->showSoftInput()V

    .line 18
    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 21
    .line 22
    :cond_1
    return v1
.end method

.method public final postChangeCurrentByOneFromLongPress(JZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/takisoft/datetimepicker/widget/NumberPicker;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 17
    .line 18
    iput-boolean p3, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 19
    .line 20
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final removeAllCallbacks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSetSelectionCommand:Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-boolean v1, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/fsck/k9/controller/MessagingController$1;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mPressedStateHelper:Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final scrollBy(II)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorIndices:[I

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    if-lez p2, :cond_0

    .line 9
    .line 10
    aget v2, v1, v0

    .line 11
    .line 12
    iget v3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 13
    .line 14
    if-gt v2, v3, :cond_0

    .line 15
    .line 16
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInitialScrollOffset:I

    .line 17
    .line 18
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    if-nez p1, :cond_1

    .line 22
    .line 23
    if-gez p2, :cond_1

    .line 24
    .line 25
    aget p1, v1, v0

    .line 26
    .line 27
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxValue:I

    .line 28
    .line 29
    if-lt p1, v2, :cond_1

    .line 30
    .line 31
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInitialScrollOffset:I

    .line 32
    .line 33
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 37
    .line 38
    add-int/2addr p1, p2

    .line 39
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 40
    .line 41
    :cond_2
    :goto_0
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 42
    .line 43
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInitialScrollOffset:I

    .line 44
    .line 45
    sub-int p2, p1, p2

    .line 46
    .line 47
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    if-le p2, v2, :cond_5

    .line 51
    .line 52
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorElementHeight:I

    .line 53
    .line 54
    sub-int/2addr p1, p2

    .line 55
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 56
    .line 57
    array-length p1, v1

    .line 58
    sub-int/2addr p1, v0

    .line 59
    :goto_1
    if-lez p1, :cond_3

    .line 60
    .line 61
    add-int/lit8 p2, p1, -0x1

    .line 62
    .line 63
    aget p2, v1, p2

    .line 64
    .line 65
    aput p2, v1, p1

    .line 66
    .line 67
    add-int/lit8 p1, p1, -0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    aget p1, v1, v0

    .line 71
    .line 72
    sub-int/2addr p1, v0

    .line 73
    iget-boolean p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 74
    .line 75
    if-eqz p2, :cond_4

    .line 76
    .line 77
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 78
    .line 79
    if-ge p1, p2, :cond_4

    .line 80
    .line 81
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxValue:I

    .line 82
    .line 83
    :cond_4
    aput p1, v1, v3

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 86
    .line 87
    .line 88
    aget p1, v1, v0

    .line 89
    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setValueInternal(IZ)V

    .line 91
    .line 92
    .line 93
    iget-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 94
    .line 95
    if-nez p1, :cond_2

    .line 96
    .line 97
    aget p1, v1, v0

    .line 98
    .line 99
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 100
    .line 101
    if-gt p1, p2, :cond_2

    .line 102
    .line 103
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInitialScrollOffset:I

    .line 104
    .line 105
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    :goto_2
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 109
    .line 110
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInitialScrollOffset:I

    .line 111
    .line 112
    sub-int p2, p1, p2

    .line 113
    .line 114
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 115
    .line 116
    neg-int v2, v2

    .line 117
    if-ge p2, v2, :cond_8

    .line 118
    .line 119
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorElementHeight:I

    .line 120
    .line 121
    add-int/2addr p1, p2

    .line 122
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 123
    .line 124
    move p1, v3

    .line 125
    :goto_3
    array-length p2, v1

    .line 126
    sub-int/2addr p2, v0

    .line 127
    if-ge p1, p2, :cond_6

    .line 128
    .line 129
    add-int/lit8 p2, p1, 0x1

    .line 130
    .line 131
    aget v2, v1, p2

    .line 132
    .line 133
    aput v2, v1, p1

    .line 134
    .line 135
    move p1, p2

    .line 136
    goto :goto_3

    .line 137
    :cond_6
    array-length p1, v1

    .line 138
    add-int/lit8 p1, p1, -0x2

    .line 139
    .line 140
    aget p1, v1, p1

    .line 141
    .line 142
    add-int/2addr p1, v0

    .line 143
    iget-boolean p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 144
    .line 145
    if-eqz p2, :cond_7

    .line 146
    .line 147
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxValue:I

    .line 148
    .line 149
    if-le p1, p2, :cond_7

    .line 150
    .line 151
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 152
    .line 153
    :cond_7
    array-length p2, v1

    .line 154
    sub-int/2addr p2, v0

    .line 155
    aput p1, v1, p2

    .line 156
    .line 157
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 158
    .line 159
    .line 160
    aget p1, v1, v0

    .line 161
    .line 162
    invoke-virtual {p0, p1, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setValueInternal(IZ)V

    .line 163
    .line 164
    .line 165
    iget-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 166
    .line 167
    if-nez p1, :cond_5

    .line 168
    .line 169
    aget p1, v1, v0

    .line 170
    .line 171
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxValue:I

    .line 172
    .line 173
    if-lt p1, p2, :cond_5

    .line 174
    .line 175
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInitialScrollOffset:I

    .line 176
    .line 177
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_8
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 5
    .line 6
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const p1, 0x80001

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p1, 0x2

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->updateInputTextView()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setFormatter(Lcom/takisoft/datetimepicker/widget/NumberPicker$Formatter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mFormatter:Lcom/takisoft/datetimepicker/widget/NumberPicker$Formatter;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mFormatter:Lcom/takisoft/datetimepicker/widget/NumberPicker$Formatter;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->updateInputTextView()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxValue:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-ltz p1, :cond_2

    .line 7
    .line 8
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxValue:I

    .line 9
    .line 10
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mValue:I

    .line 11
    .line 12
    if-ge p1, v0, :cond_1

    .line 13
    .line 14
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mValue:I

    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->updateInputTextView()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    const-string p0, "maxValue must be >= 0"

    .line 33
    .line 34
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-ltz p1, :cond_2

    .line 7
    .line 8
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 9
    .line 10
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mValue:I

    .line 11
    .line 12
    if-le p1, v0, :cond_1

    .line 13
    .line 14
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mValue:I

    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->updateInputTextView()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    const-string p0, "minValue must be >= 0"

    .line 33
    .line 34
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 2
    .line 3
    return-void
.end method

.method public setOnScrollListener(Lcom/takisoft/datetimepicker/widget/NumberPicker$OnScrollListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setOnValueChangedListener(Lcom/takisoft/datetimepicker/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mOnValueChangeListener:Lcom/takisoft/datetimepicker/widget/NumberPicker$OnValueChangeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setValue(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setValueInternal(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final setValueInternal(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mValue:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 16
    .line 17
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxValue:I

    .line 22
    .line 23
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    :goto_0
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mValue:I

    .line 28
    .line 29
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mValue:I

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->updateInputTextView()V

    .line 32
    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mOnValueChangeListener:Lcom/takisoft/datetimepicker/widget/NumberPicker$OnValueChangeListener;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mValue:I

    .line 41
    .line 42
    invoke-interface {p1, p0, v0, p2}, Lcom/takisoft/datetimepicker/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lcom/takisoft/datetimepicker/widget/NumberPicker;II)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final showSoftInput()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "input_method"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 31
    .line 32
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final tryComputeMaxWidth()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    const/16 v3, 0x9

    .line 15
    .line 16
    if-gt v2, v3, :cond_2

    .line 17
    .line 18
    iget-object v3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 19
    .line 20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const/4 v6, 0x1

    .line 29
    new-array v6, v6, [Ljava/lang/Object;

    .line 30
    .line 31
    aput-object v5, v6, v1

    .line 32
    .line 33
    const-string v5, "%d"

    .line 34
    .line 35
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    cmpl-float v4, v3, v0

    .line 44
    .line 45
    if-lez v4, :cond_1

    .line 46
    .line 47
    move v0, v3

    .line 48
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxValue:I

    .line 52
    .line 53
    :goto_1
    if-lez v2, :cond_3

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    div-int/lit8 v2, v2, 0xa

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    int-to-float v1, v1

    .line 61
    mul-float/2addr v1, v0

    .line 62
    float-to-int v0, v1

    .line 63
    goto :goto_3

    .line 64
    :cond_4
    array-length v0, v0

    .line 65
    move v2, v1

    .line 66
    :goto_2
    if-ge v1, v0, :cond_6

    .line 67
    .line 68
    iget-object v3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 69
    .line 70
    iget-object v4, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 71
    .line 72
    aget-object v4, v4, v1

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    int-to-float v4, v2

    .line 79
    cmpl-float v4, v3, v4

    .line 80
    .line 81
    if-lez v4, :cond_5

    .line 82
    .line 83
    float-to-int v2, v3

    .line 84
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_6
    move v0, v2

    .line 88
    :goto_3
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 95
    .line 96
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    add-int/2addr v2, v1

    .line 101
    add-int/2addr v2, v0

    .line 102
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxWidth:I

    .line 103
    .line 104
    if-eq v0, v2, :cond_8

    .line 105
    .line 106
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinWidth:I

    .line 107
    .line 108
    if-le v2, v0, :cond_7

    .line 109
    .line 110
    iput v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxWidth:I

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_7
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxWidth:I

    .line 114
    .line 115
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 116
    .line 117
    .line 118
    :cond_8
    :goto_5
    return-void
.end method

.method public final updateInputTextView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mValue:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 13
    .line 14
    sub-int/2addr v1, v2

    .line 15
    aget-object v0, v0, v1

    .line 16
    .line 17
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final updateWrapSelectorWheel()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxValue:I

    .line 2
    .line 3
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMinValue:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSelectorIndices:[I

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

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
    iput-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 19
    .line 20
    return-void
.end method
