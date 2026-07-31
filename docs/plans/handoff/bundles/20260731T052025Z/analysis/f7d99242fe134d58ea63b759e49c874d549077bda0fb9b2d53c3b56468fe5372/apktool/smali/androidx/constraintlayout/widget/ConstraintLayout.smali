.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static sSharedValues:Landroidx/constraintlayout/widget/SharedValues;


# instance fields
.field public final mChildrenByIds:Landroid/util/SparseArray;

.field public final mConstraintHelpers:Ljava/util/ArrayList;

.field public mConstraintLayoutSpec:Landroidx/compose/ui/platform/WeakCache;

.field public mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field public mConstraintSetId:I

.field public mDirtyHierarchy:Z

.field public final mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field public mMaxHeight:I

.field public mMaxWidth:I

.field public final mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

.field public mMinHeight:I

.field public mMinWidth:I

.field public mOptimizationLevel:I

.field public final mTempMapIdToWidget:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 20
    .line 21
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 28
    .line 29
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 30
    .line 31
    const v0, 0x7fffffff

    .line 32
    .line 33
    .line 34
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 35
    .line 36
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 40
    .line 41
    const/16 v0, 0x101

    .line 42
    .line 43
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 47
    .line 48
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/compose/ui/platform/WeakCache;

    .line 49
    .line 50
    const/4 v1, -0x1

    .line 51
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 52
    .line 53
    new-instance v1, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v1, Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 64
    .line 65
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 66
    .line 67
    invoke-direct {v1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 71
    .line 72
    invoke-virtual {p0, v0, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 79
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 81
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    .line 82
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 83
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    .line 85
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 87
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/compose/ui/platform/WeakCache;

    const/4 v0, -0x1

    .line 88
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 92
    invoke-virtual {p0, p2, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 96
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 97
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 98
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    .line 99
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 100
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    .line 102
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 104
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/compose/ui/platform/WeakCache;

    const/4 v0, -0x1

    .line 105
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 108
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 109
    invoke-virtual {p0, p2, p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 111
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 112
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 113
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 114
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 115
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const p1, 0x7fffffff

    .line 116
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 117
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 p1, 0x101

    .line 119
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 121
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/compose/ui/platform/WeakCache;

    const/4 p1, -0x1

    .line 122
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 123
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 124
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 125
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {p1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 126
    invoke-virtual {p0, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 8

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 9
    .line 10
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 11
    .line 12
    const/high16 v2, -0x40800000    # -1.0f

    .line 13
    .line 14
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    iput-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidelineUseRtl:Z

    .line 18
    .line 19
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 20
    .line 21
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 22
    .line 23
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 24
    .line 25
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 26
    .line 27
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 28
    .line 29
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 30
    .line 31
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 32
    .line 33
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 34
    .line 35
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 36
    .line 37
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    .line 38
    .line 39
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    .line 40
    .line 41
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 48
    .line 49
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 50
    .line 51
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 52
    .line 53
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 54
    .line 55
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 56
    .line 57
    const/high16 v5, -0x80000000

    .line 58
    .line 59
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 60
    .line 61
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 62
    .line 63
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 64
    .line 65
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 66
    .line 67
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 68
    .line 69
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 70
    .line 71
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    .line 72
    .line 73
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    .line 74
    .line 75
    const/high16 v6, 0x3f000000    # 0.5f

    .line 76
    .line 77
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 78
    .line 79
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 80
    .line 81
    const/4 v7, 0x0

    .line 82
    iput-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 83
    .line 84
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 85
    .line 86
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 87
    .line 88
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 89
    .line 90
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 91
    .line 92
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 93
    .line 94
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 95
    .line 96
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 97
    .line 98
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 99
    .line 100
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 101
    .line 102
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 103
    .line 104
    const/high16 v2, 0x3f800000    # 1.0f

    .line 105
    .line 106
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 107
    .line 108
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 109
    .line 110
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 111
    .line 112
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 113
    .line 114
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 115
    .line 116
    iput-boolean v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 117
    .line 118
    iput-boolean v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 119
    .line 120
    iput-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    .line 121
    .line 122
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    .line 123
    .line 124
    iput-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mHorizontalDimensionFixed:Z

    .line 125
    .line 126
    iput-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mVerticalDimensionFixed:Z

    .line 127
    .line 128
    iput-boolean v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mNeedsBaseline:Z

    .line 129
    .line 130
    iput-boolean v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsGuideline:Z

    .line 131
    .line 132
    iput-boolean v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsHelper:Z

    .line 133
    .line 134
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedLeftToLeft:I

    .line 135
    .line 136
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedLeftToRight:I

    .line 137
    .line 138
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedRightToLeft:I

    .line 139
    .line 140
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedRightToRight:I

    .line 141
    .line 142
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolveGoneLeftMargin:I

    .line 143
    .line 144
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolveGoneRightMargin:I

    .line 145
    .line 146
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedHorizontalBias:F

    .line 147
    .line 148
    new-instance v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 149
    .line 150
    invoke-direct {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 154
    .line 155
    return-object v0
.end method

.method private getPaddingWidth()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    add-int/2addr p0, v0

    .line 36
    if-lez p0, :cond_0

    .line 37
    .line 38
    return p0

    .line 39
    :cond_0
    return v2
.end method

.method public static getSharedValues()Landroidx/constraintlayout/widget/SharedValues;
    .locals 2

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/constraintlayout/widget/SharedValues;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    .line 21
    .line 22
    :cond_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    .line 3
    return p0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final forceLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 156
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 11

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 12
    .line 13
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 14
    .line 15
    const/high16 v2, -0x40800000    # -1.0f

    .line 16
    .line 17
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    iput-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidelineUseRtl:Z

    .line 21
    .line 22
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 23
    .line 24
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 25
    .line 26
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 27
    .line 28
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 29
    .line 30
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 31
    .line 32
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 33
    .line 34
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 35
    .line 36
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 37
    .line 38
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 39
    .line 40
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    .line 41
    .line 42
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    .line 43
    .line 44
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 51
    .line 52
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 53
    .line 54
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 55
    .line 56
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 57
    .line 58
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 59
    .line 60
    const/high16 v6, -0x80000000

    .line 61
    .line 62
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 63
    .line 64
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 65
    .line 66
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 67
    .line 68
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 69
    .line 70
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 71
    .line 72
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 73
    .line 74
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    .line 75
    .line 76
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    .line 77
    .line 78
    const/high16 v7, 0x3f000000    # 0.5f

    .line 79
    .line 80
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 81
    .line 82
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 83
    .line 84
    const/4 v8, 0x0

    .line 85
    iput-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 86
    .line 87
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 88
    .line 89
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 90
    .line 91
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 92
    .line 93
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 94
    .line 95
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 96
    .line 97
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 98
    .line 99
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 100
    .line 101
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 102
    .line 103
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 104
    .line 105
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 106
    .line 107
    const/high16 v2, 0x3f800000    # 1.0f

    .line 108
    .line 109
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 110
    .line 111
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 112
    .line 113
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 114
    .line 115
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 116
    .line 117
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 118
    .line 119
    iput-boolean v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 120
    .line 121
    iput-boolean v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 122
    .line 123
    iput-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    .line 124
    .line 125
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    .line 126
    .line 127
    iput-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mHorizontalDimensionFixed:Z

    .line 128
    .line 129
    iput-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mVerticalDimensionFixed:Z

    .line 130
    .line 131
    iput-boolean v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mNeedsBaseline:Z

    .line 132
    .line 133
    iput-boolean v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsGuideline:Z

    .line 134
    .line 135
    iput-boolean v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsHelper:Z

    .line 136
    .line 137
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedLeftToLeft:I

    .line 138
    .line 139
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedLeftToRight:I

    .line 140
    .line 141
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedRightToLeft:I

    .line 142
    .line 143
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedRightToRight:I

    .line 144
    .line 145
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolveGoneLeftMargin:I

    .line 146
    .line 147
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolveGoneRightMargin:I

    .line 148
    .line 149
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedHorizontalBias:F

    .line 150
    .line 151
    new-instance v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 152
    .line 153
    invoke-direct {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    .line 154
    .line 155
    .line 156
    iput-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 157
    .line 158
    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    .line 159
    .line 160
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    move v2, v4

    .line 169
    :goto_0
    if-ge v2, p1, :cond_1

    .line 170
    .line 171
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    sget-object v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams$Table;->sMap:Landroid/util/SparseIntArray;

    .line 176
    .line 177
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    const-string v8, "ConstraintLayout"

    .line 182
    .line 183
    const/4 v9, 0x2

    .line 184
    const/4 v10, -0x2

    .line 185
    packed-switch v7, :pswitch_data_0

    .line 186
    .line 187
    .line 188
    packed-switch v7, :pswitch_data_1

    .line 189
    .line 190
    .line 191
    packed-switch v7, :pswitch_data_2

    .line 192
    .line 193
    .line 194
    goto/16 :goto_1

    .line 195
    .line 196
    :pswitch_0
    iget-boolean v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidelineUseRtl:Z

    .line 197
    .line 198
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    iput-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidelineUseRtl:Z

    .line 203
    .line 204
    goto/16 :goto_1

    .line 205
    .line 206
    :pswitch_1
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    .line 207
    .line 208
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    .line 213
    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    :pswitch_2
    invoke-static {v0, p0, v6, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_1

    .line 220
    .line 221
    :pswitch_3
    invoke-static {v0, p0, v6, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_1

    .line 225
    .line 226
    :pswitch_4
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    .line 227
    .line 228
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    .line 233
    .line 234
    goto/16 :goto_1

    .line 235
    .line 236
    :pswitch_5
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    .line 237
    .line 238
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    .line 243
    .line 244
    goto/16 :goto_1

    .line 245
    .line 246
    :pswitch_6
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    .line 247
    .line 248
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    .line 253
    .line 254
    if-ne v7, v1, :cond_0

    .line 255
    .line 256
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    .line 261
    .line 262
    goto/16 :goto_1

    .line 263
    .line 264
    :pswitch_7
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    .line 265
    .line 266
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    .line 271
    .line 272
    if-ne v7, v1, :cond_0

    .line 273
    .line 274
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    .line 279
    .line 280
    goto/16 :goto_1

    .line 281
    .line 282
    :pswitch_8
    invoke-virtual {p0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    iput-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    .line 287
    .line 288
    goto/16 :goto_1

    .line 289
    .line 290
    :pswitch_9
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 291
    .line 292
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 297
    .line 298
    goto/16 :goto_1

    .line 299
    .line 300
    :pswitch_a
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 301
    .line 302
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 307
    .line 308
    goto/16 :goto_1

    .line 309
    .line 310
    :pswitch_b
    invoke-virtual {p0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 315
    .line 316
    goto/16 :goto_1

    .line 317
    .line 318
    :pswitch_c
    invoke-virtual {p0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 319
    .line 320
    .line 321
    move-result v6

    .line 322
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 323
    .line 324
    goto/16 :goto_1

    .line 325
    .line 326
    :pswitch_d
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 327
    .line 328
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 329
    .line 330
    .line 331
    move-result v6

    .line 332
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 333
    .line 334
    goto/16 :goto_1

    .line 335
    .line 336
    :pswitch_e
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 337
    .line 338
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 343
    .line 344
    goto/16 :goto_1

    .line 345
    .line 346
    :pswitch_f
    invoke-virtual {p0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    invoke-static {v0, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionRatioString(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_1

    .line 354
    .line 355
    :pswitch_10
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 356
    .line 357
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 358
    .line 359
    .line 360
    move-result v6

    .line 361
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    .line 362
    .line 363
    .line 364
    move-result v6

    .line 365
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 366
    .line 367
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 368
    .line 369
    goto/16 :goto_1

    .line 370
    .line 371
    :pswitch_11
    :try_start_0
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 372
    .line 373
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 374
    .line 375
    .line 376
    move-result v7

    .line 377
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .line 379
    goto/16 :goto_1

    .line 380
    .line 381
    :catch_0
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 382
    .line 383
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 384
    .line 385
    .line 386
    move-result v6

    .line 387
    if-ne v6, v10, :cond_0

    .line 388
    .line 389
    iput v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 390
    .line 391
    goto/16 :goto_1

    .line 392
    .line 393
    :pswitch_12
    :try_start_1
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 394
    .line 395
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 396
    .line 397
    .line 398
    move-result v7

    .line 399
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 400
    .line 401
    goto/16 :goto_1

    .line 402
    .line 403
    :catch_1
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 404
    .line 405
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 406
    .line 407
    .line 408
    move-result v6

    .line 409
    if-ne v6, v10, :cond_0

    .line 410
    .line 411
    iput v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 412
    .line 413
    goto/16 :goto_1

    .line 414
    .line 415
    :pswitch_13
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 416
    .line 417
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 418
    .line 419
    .line 420
    move-result v6

    .line 421
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    .line 422
    .line 423
    .line 424
    move-result v6

    .line 425
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 426
    .line 427
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 428
    .line 429
    goto/16 :goto_1

    .line 430
    .line 431
    :pswitch_14
    :try_start_2
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 432
    .line 433
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 434
    .line 435
    .line 436
    move-result v7

    .line 437
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 438
    .line 439
    goto/16 :goto_1

    .line 440
    .line 441
    :catch_2
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 442
    .line 443
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 444
    .line 445
    .line 446
    move-result v6

    .line 447
    if-ne v6, v10, :cond_0

    .line 448
    .line 449
    iput v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 450
    .line 451
    goto/16 :goto_1

    .line 452
    .line 453
    :pswitch_15
    :try_start_3
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 454
    .line 455
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 456
    .line 457
    .line 458
    move-result v7

    .line 459
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 460
    .line 461
    goto/16 :goto_1

    .line 462
    .line 463
    :catch_3
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 464
    .line 465
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 466
    .line 467
    .line 468
    move-result v6

    .line 469
    if-ne v6, v10, :cond_0

    .line 470
    .line 471
    iput v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 472
    .line 473
    goto/16 :goto_1

    .line 474
    .line 475
    :pswitch_16
    invoke-virtual {p0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 476
    .line 477
    .line 478
    move-result v6

    .line 479
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 480
    .line 481
    if-ne v6, v3, :cond_0

    .line 482
    .line 483
    const-string v6, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    .line 484
    .line 485
    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .line 487
    .line 488
    goto/16 :goto_1

    .line 489
    .line 490
    :pswitch_17
    invoke-virtual {p0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 491
    .line 492
    .line 493
    move-result v6

    .line 494
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 495
    .line 496
    if-ne v6, v3, :cond_0

    .line 497
    .line 498
    const-string v6, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    .line 499
    .line 500
    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .line 502
    .line 503
    goto/16 :goto_1

    .line 504
    .line 505
    :pswitch_18
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 506
    .line 507
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 508
    .line 509
    .line 510
    move-result v6

    .line 511
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 512
    .line 513
    goto/16 :goto_1

    .line 514
    .line 515
    :pswitch_19
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 516
    .line 517
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 518
    .line 519
    .line 520
    move-result v6

    .line 521
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 522
    .line 523
    goto/16 :goto_1

    .line 524
    .line 525
    :pswitch_1a
    iget-boolean v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 526
    .line 527
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 528
    .line 529
    .line 530
    move-result v6

    .line 531
    iput-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 532
    .line 533
    goto/16 :goto_1

    .line 534
    .line 535
    :pswitch_1b
    iget-boolean v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 536
    .line 537
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 538
    .line 539
    .line 540
    move-result v6

    .line 541
    iput-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 542
    .line 543
    goto/16 :goto_1

    .line 544
    .line 545
    :pswitch_1c
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 546
    .line 547
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 548
    .line 549
    .line 550
    move-result v6

    .line 551
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 552
    .line 553
    goto/16 :goto_1

    .line 554
    .line 555
    :pswitch_1d
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 556
    .line 557
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 558
    .line 559
    .line 560
    move-result v6

    .line 561
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 562
    .line 563
    goto/16 :goto_1

    .line 564
    .line 565
    :pswitch_1e
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 566
    .line 567
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 568
    .line 569
    .line 570
    move-result v6

    .line 571
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 572
    .line 573
    goto/16 :goto_1

    .line 574
    .line 575
    :pswitch_1f
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 576
    .line 577
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 578
    .line 579
    .line 580
    move-result v6

    .line 581
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 582
    .line 583
    goto/16 :goto_1

    .line 584
    .line 585
    :pswitch_20
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 586
    .line 587
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 588
    .line 589
    .line 590
    move-result v6

    .line 591
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 592
    .line 593
    goto/16 :goto_1

    .line 594
    .line 595
    :pswitch_21
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 596
    .line 597
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 598
    .line 599
    .line 600
    move-result v6

    .line 601
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 602
    .line 603
    goto/16 :goto_1

    .line 604
    .line 605
    :pswitch_22
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 606
    .line 607
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 608
    .line 609
    .line 610
    move-result v7

    .line 611
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 612
    .line 613
    if-ne v7, v1, :cond_0

    .line 614
    .line 615
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 616
    .line 617
    .line 618
    move-result v6

    .line 619
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 620
    .line 621
    goto/16 :goto_1

    .line 622
    .line 623
    :pswitch_23
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 624
    .line 625
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 626
    .line 627
    .line 628
    move-result v7

    .line 629
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 630
    .line 631
    if-ne v7, v1, :cond_0

    .line 632
    .line 633
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 634
    .line 635
    .line 636
    move-result v6

    .line 637
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 638
    .line 639
    goto/16 :goto_1

    .line 640
    .line 641
    :pswitch_24
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 642
    .line 643
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 644
    .line 645
    .line 646
    move-result v7

    .line 647
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 648
    .line 649
    if-ne v7, v1, :cond_0

    .line 650
    .line 651
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 652
    .line 653
    .line 654
    move-result v6

    .line 655
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 656
    .line 657
    goto/16 :goto_1

    .line 658
    .line 659
    :pswitch_25
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 660
    .line 661
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 662
    .line 663
    .line 664
    move-result v7

    .line 665
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 666
    .line 667
    if-ne v7, v1, :cond_0

    .line 668
    .line 669
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 670
    .line 671
    .line 672
    move-result v6

    .line 673
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 674
    .line 675
    goto/16 :goto_1

    .line 676
    .line 677
    :pswitch_26
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 678
    .line 679
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 680
    .line 681
    .line 682
    move-result v7

    .line 683
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 684
    .line 685
    if-ne v7, v1, :cond_0

    .line 686
    .line 687
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 688
    .line 689
    .line 690
    move-result v6

    .line 691
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 692
    .line 693
    goto/16 :goto_1

    .line 694
    .line 695
    :pswitch_27
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 696
    .line 697
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 698
    .line 699
    .line 700
    move-result v7

    .line 701
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 702
    .line 703
    if-ne v7, v1, :cond_0

    .line 704
    .line 705
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 706
    .line 707
    .line 708
    move-result v6

    .line 709
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 710
    .line 711
    goto/16 :goto_1

    .line 712
    .line 713
    :pswitch_28
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 714
    .line 715
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 716
    .line 717
    .line 718
    move-result v7

    .line 719
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 720
    .line 721
    if-ne v7, v1, :cond_0

    .line 722
    .line 723
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 724
    .line 725
    .line 726
    move-result v6

    .line 727
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 728
    .line 729
    goto/16 :goto_1

    .line 730
    .line 731
    :pswitch_29
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 732
    .line 733
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 734
    .line 735
    .line 736
    move-result v7

    .line 737
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 738
    .line 739
    if-ne v7, v1, :cond_0

    .line 740
    .line 741
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 742
    .line 743
    .line 744
    move-result v6

    .line 745
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 746
    .line 747
    goto/16 :goto_1

    .line 748
    .line 749
    :pswitch_2a
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 750
    .line 751
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 752
    .line 753
    .line 754
    move-result v7

    .line 755
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 756
    .line 757
    if-ne v7, v1, :cond_0

    .line 758
    .line 759
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 760
    .line 761
    .line 762
    move-result v6

    .line 763
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 764
    .line 765
    goto/16 :goto_1

    .line 766
    .line 767
    :pswitch_2b
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 768
    .line 769
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 770
    .line 771
    .line 772
    move-result v7

    .line 773
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 774
    .line 775
    if-ne v7, v1, :cond_0

    .line 776
    .line 777
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 778
    .line 779
    .line 780
    move-result v6

    .line 781
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 782
    .line 783
    goto/16 :goto_1

    .line 784
    .line 785
    :pswitch_2c
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 786
    .line 787
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 788
    .line 789
    .line 790
    move-result v7

    .line 791
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 792
    .line 793
    if-ne v7, v1, :cond_0

    .line 794
    .line 795
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 796
    .line 797
    .line 798
    move-result v6

    .line 799
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 800
    .line 801
    goto/16 :goto_1

    .line 802
    .line 803
    :pswitch_2d
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 804
    .line 805
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 806
    .line 807
    .line 808
    move-result v7

    .line 809
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 810
    .line 811
    if-ne v7, v1, :cond_0

    .line 812
    .line 813
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 814
    .line 815
    .line 816
    move-result v6

    .line 817
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 818
    .line 819
    goto :goto_1

    .line 820
    :pswitch_2e
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 821
    .line 822
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 823
    .line 824
    .line 825
    move-result v7

    .line 826
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 827
    .line 828
    if-ne v7, v1, :cond_0

    .line 829
    .line 830
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 831
    .line 832
    .line 833
    move-result v6

    .line 834
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 835
    .line 836
    goto :goto_1

    .line 837
    :pswitch_2f
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 838
    .line 839
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 840
    .line 841
    .line 842
    move-result v6

    .line 843
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 844
    .line 845
    goto :goto_1

    .line 846
    :pswitch_30
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 847
    .line 848
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 849
    .line 850
    .line 851
    move-result v6

    .line 852
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 853
    .line 854
    goto :goto_1

    .line 855
    :pswitch_31
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 856
    .line 857
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 858
    .line 859
    .line 860
    move-result v6

    .line 861
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 862
    .line 863
    goto :goto_1

    .line 864
    :pswitch_32
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 865
    .line 866
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 867
    .line 868
    .line 869
    move-result v6

    .line 870
    const/high16 v7, 0x43b40000    # 360.0f

    .line 871
    .line 872
    rem-float/2addr v6, v7

    .line 873
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 874
    .line 875
    cmpg-float v8, v6, v5

    .line 876
    .line 877
    if-gez v8, :cond_0

    .line 878
    .line 879
    sub-float v6, v7, v6

    .line 880
    .line 881
    rem-float/2addr v6, v7

    .line 882
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 883
    .line 884
    goto :goto_1

    .line 885
    :pswitch_33
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 886
    .line 887
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 888
    .line 889
    .line 890
    move-result v6

    .line 891
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 892
    .line 893
    goto :goto_1

    .line 894
    :pswitch_34
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 895
    .line 896
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 897
    .line 898
    .line 899
    move-result v7

    .line 900
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 901
    .line 902
    if-ne v7, v1, :cond_0

    .line 903
    .line 904
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 905
    .line 906
    .line 907
    move-result v6

    .line 908
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 909
    .line 910
    goto :goto_1

    .line 911
    :pswitch_35
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 912
    .line 913
    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 914
    .line 915
    .line 916
    move-result v6

    .line 917
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 918
    .line 919
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 920
    .line 921
    goto/16 :goto_0

    .line 922
    .line 923
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 924
    .line 925
    .line 926
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    .line 927
    .line 928
    .line 929
    return-object v0

    .line 930
    nop

    .line 931
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    :pswitch_data_2
    .packed-switch 0x40
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .line 931
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 932
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, -0x1

    .line 933
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 934
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 935
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    const/4 v2, 0x1

    .line 936
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidelineUseRtl:Z

    .line 937
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 938
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 939
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 940
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 941
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 942
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 943
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 944
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 945
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 946
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    .line 947
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    .line 948
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v3, 0x0

    .line 949
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    const/4 v4, 0x0

    .line 950
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 951
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 952
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 953
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 954
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    const/high16 v4, -0x80000000

    .line 955
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 956
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 957
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 958
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 959
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 960
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 961
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    .line 962
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    const/high16 v5, 0x3f000000    # 0.5f

    .line 963
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 964
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v6, 0x0

    .line 965
    iput-object v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 966
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 967
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 968
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 969
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 970
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 971
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 972
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 973
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 974
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 975
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 976
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 977
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 978
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 979
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 980
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 981
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 982
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 983
    iput-object v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    .line 984
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    .line 985
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mHorizontalDimensionFixed:Z

    .line 986
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mVerticalDimensionFixed:Z

    .line 987
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mNeedsBaseline:Z

    .line 988
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsGuideline:Z

    .line 989
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsHelper:Z

    .line 990
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedLeftToLeft:I

    .line 991
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedLeftToRight:I

    .line 992
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedRightToLeft:I

    .line 993
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedRightToRight:I

    .line 994
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolveGoneLeftMargin:I

    .line 995
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolveGoneRightMargin:I

    .line 996
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedHorizontalBias:F

    .line 997
    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 998
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 999
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1000
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1001
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1002
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1003
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1004
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1005
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1006
    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-nez v0, :cond_1

    return-object p0

    .line 1007
    :cond_1
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1008
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1009
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1010
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1011
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidelineUseRtl:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidelineUseRtl:Z

    .line 1012
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1013
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1014
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1015
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1016
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1017
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1018
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1019
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1020
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1021
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    .line 1022
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    .line 1023
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 1024
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 1025
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 1026
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1027
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1028
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1029
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1030
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1031
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1032
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1033
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1034
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1035
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1036
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    .line 1037
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    .line 1038
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1039
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1040
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1041
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1042
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1043
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1044
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1045
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 1046
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 1047
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1048
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1049
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1050
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1051
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1052
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 1053
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 1054
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 1055
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1056
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1057
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 1058
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mHorizontalDimensionFixed:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mHorizontalDimensionFixed:Z

    .line 1059
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mVerticalDimensionFixed:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mVerticalDimensionFixed:Z

    .line 1060
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mNeedsBaseline:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mNeedsBaseline:Z

    .line 1061
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsGuideline:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsGuideline:Z

    .line 1062
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedLeftToLeft:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedLeftToLeft:I

    .line 1063
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedLeftToRight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedLeftToRight:I

    .line 1064
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedRightToLeft:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedRightToLeft:I

    .line 1065
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedRightToRight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedRightToRight:I

    .line 1066
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolveGoneLeftMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolveGoneLeftMargin:I

    .line 1067
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolveGoneRightMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolveGoneRightMargin:I

    .line 1068
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedHorizontalBias:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedHorizontalBias:F

    .line 1069
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    .line 1070
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    .line 1071
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object p0
.end method

.method public getMaxHeight()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 2
    .line 3
    return p0
.end method

.method public getMaxWidth()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 2
    .line 3
    return p0
.end method

.method public getMinHeight()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 2
    .line 3
    return p0
.end method

.method public getMinWidth()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 2
    .line 3
    return p0
.end method

.method public getOptimizationLevel()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 2
    .line 3
    iget p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 4
    .line 5
    return p0
.end method

.method public getSceneString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v2, "parent"

    .line 35
    .line 36
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 39
    .line 40
    const-string v4, " setDebugName "

    .line 41
    .line 42
    const-string v5, "ConstraintLayout"

    .line 43
    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_5

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 84
    .line 85
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Landroid/view/View;

    .line 86
    .line 87
    if-eqz v7, :cond_3

    .line 88
    .line 89
    iget-object v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    .line 90
    .line 91
    if-nez v8, :cond_4

    .line 92
    .line 93
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-eq v7, v3, :cond_4

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    iput-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    .line 112
    .line 113
    :cond_4
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 114
    .line 115
    if-nez v7, :cond_3

    .line 116
    .line 117
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    .line 118
    .line 119
    iput-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 120
    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getSceneString(Ljava/lang/StringBuilder;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    return-object p0
.end method

.method public final getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    instance-of p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 41
    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 49
    .line 50
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_2
    const/4 p0, 0x0

    .line 54
    return-object p0
.end method

.method public final init(Landroid/util/AttributeSet;II)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 2
    .line 3
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Landroid/view/View;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 6
    .line 7
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 10
    .line 11
    iput-object v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasurer:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 24
    .line 25
    if-eqz p1, :cond_8

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget-object v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    .line 32
    .line 33
    invoke-virtual {v2, p1, v3, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    const/4 p3, 0x0

    .line 42
    move v2, p3

    .line 43
    :goto_0
    if-ge v2, p2, :cond_7

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const/16 v4, 0x10

    .line 50
    .line 51
    if-ne v3, v4, :cond_0

    .line 52
    .line 53
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 54
    .line 55
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_0
    const/16 v4, 0x11

    .line 63
    .line 64
    if-ne v3, v4, :cond_1

    .line 65
    .line 66
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 67
    .line 68
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_1
    const/16 v4, 0xe

    .line 76
    .line 77
    if-ne v3, v4, :cond_2

    .line 78
    .line 79
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 80
    .line 81
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    const/16 v4, 0xf

    .line 89
    .line 90
    if-ne v3, v4, :cond_3

    .line 91
    .line 92
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 93
    .line 94
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    const/16 v4, 0x71

    .line 102
    .line 103
    if-ne v3, v4, :cond_4

    .line 104
    .line 105
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 106
    .line 107
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    const/16 v4, 0x38

    .line 115
    .line 116
    if-ne v3, v4, :cond_5

    .line 117
    .line 118
    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_6

    .line 123
    .line 124
    :try_start_0
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->parseLayoutDescription(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :catch_0
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/compose/ui/platform/WeakCache;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    const/16 v4, 0x22

    .line 132
    .line 133
    if-ne v3, v4, :cond_6

    .line 134
    .line 135
    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    :try_start_1
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 140
    .line 141
    invoke-direct {v4}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v4, v5, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :catch_1
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 155
    .line 156
    :goto_1
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 157
    .line 158
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    .line 163
    .line 164
    :cond_8
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 165
    .line 166
    iput p0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 167
    .line 168
    const/16 p0, 0x200

    .line 169
    .line 170
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    sput-boolean p0, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    .line 175
    .line 176
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    move p3, p2

    .line 10
    :goto_0
    if-ge p3, p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object p5

    .line 20
    check-cast p5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 21
    .line 22
    iget-object v0, p5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 23
    .line 24
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v2, 0x8

    .line 29
    .line 30
    if-ne v1, v2, :cond_0

    .line 31
    .line 32
    iget-boolean v1, p5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsGuideline:Z

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    iget-boolean p5, p5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsHelper:Z

    .line 37
    .line 38
    if-nez p5, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 42
    .line 43
    .line 44
    move-result p5

    .line 45
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    add-int/2addr v2, p5

    .line 54
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/2addr v0, v1

    .line 59
    invoke-virtual {p4, p5, v1, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 60
    .line 61
    .line 62
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-lez p1, :cond_2

    .line 72
    .line 73
    :goto_2
    if-ge p2, p1, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    check-cast p3, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 80
    .line 81
    invoke-virtual {p3}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostLayout()V

    .line 82
    .line 83
    .line 84
    add-int/lit8 p2, p2, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    return-void
.end method

.method public final onMeasure(II)V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 4
    .line 5
    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 6
    .line 7
    const/4 v9, 0x1

    .line 8
    const/4 v10, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    move v2, v10

    .line 16
    :goto_0
    if-ge v2, v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    iput-boolean v9, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 43
    .line 44
    const/high16 v2, 0x400000

    .line 45
    .line 46
    and-int/2addr v0, v2

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-ne v9, v0, :cond_2

    .line 54
    .line 55
    move v0, v9

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move v0, v10

    .line 58
    :goto_2
    iget-object v11, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 59
    .line 60
    iput-boolean v0, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 61
    .line 62
    iget-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 63
    .line 64
    if-eqz v0, :cond_5d

    .line 65
    .line 66
    iput-boolean v10, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    move v2, v10

    .line 73
    :goto_3
    if-ge v2, v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    move v12, v9

    .line 86
    goto :goto_4

    .line 87
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_4
    move v12, v10

    .line 91
    :goto_4
    if-eqz v12, :cond_5b

    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    move v0, v10

    .line 101
    :goto_5
    if-ge v0, v13, :cond_6

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-nez v2, :cond_5

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_5
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->reset()V

    .line 115
    .line 116
    .line 117
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_6
    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 121
    .line 122
    const/4 v14, -0x1

    .line 123
    if-eq v0, v14, :cond_7

    .line 124
    .line 125
    move v0, v10

    .line 126
    :goto_7
    if-ge v0, v13, :cond_7

    .line 127
    .line 128
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 133
    .line 134
    .line 135
    add-int/lit8 v0, v0, 0x1

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_7
    iget-object v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 139
    .line 140
    if-eqz v2, :cond_20

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    new-instance v4, Ljava/util/HashSet;

    .line 147
    .line 148
    iget-object v5, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 155
    .line 156
    .line 157
    move v6, v10

    .line 158
    :goto_8
    if-ge v6, v3, :cond_17

    .line 159
    .line 160
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v15

    .line 164
    invoke-virtual {v15}, Landroid/view/View;->getId()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    move/from16 v16, v10

    .line 169
    .line 170
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    const-string v9, "ConstraintSet"

    .line 179
    .line 180
    if-nez v10, :cond_8

    .line 181
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v10, "id unknown "

    .line 185
    .line 186
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :try_start_0
    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    invoke-virtual {v15}, Landroid/view/View;->getId()I

    .line 198
    .line 199
    .line 200
    move-result v15

    .line 201
    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_9

    .line 206
    :catch_0
    const-string v10, "UNKNOWN"

    .line 207
    .line 208
    :goto_9
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    :goto_a
    move-object/from16 v19, v2

    .line 219
    .line 220
    move-object/from16 v20, v4

    .line 221
    .line 222
    move/from16 v21, v6

    .line 223
    .line 224
    move-object/from16 v28, v11

    .line 225
    .line 226
    move/from16 v22, v12

    .line 227
    .line 228
    move/from16 v25, v13

    .line 229
    .line 230
    goto/16 :goto_16

    .line 231
    .line 232
    :cond_8
    iget-boolean v10, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    .line 233
    .line 234
    if-eqz v10, :cond_a

    .line 235
    .line 236
    if-eq v0, v14, :cond_9

    .line 237
    .line 238
    goto :goto_b

    .line 239
    :cond_9
    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 240
    .line 241
    invoke-static {v0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :cond_a
    :goto_b
    if-ne v0, v14, :cond_b

    .line 246
    .line 247
    :goto_c
    goto :goto_a

    .line 248
    :cond_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v10

    .line 256
    if-eqz v10, :cond_15

    .line 257
    .line 258
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 274
    .line 275
    if-nez v9, :cond_c

    .line 276
    .line 277
    goto :goto_c

    .line 278
    :cond_c
    iget-object v10, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 279
    .line 280
    iget-object v14, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 281
    .line 282
    move-object/from16 v19, v2

    .line 283
    .line 284
    iget-object v2, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 285
    .line 286
    move-object/from16 v20, v4

    .line 287
    .line 288
    instance-of v4, v15, Landroidx/constraintlayout/widget/Barrier;

    .line 289
    .line 290
    if-eqz v4, :cond_e

    .line 291
    .line 292
    const/4 v4, 0x1

    .line 293
    iput v4, v14, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 294
    .line 295
    move-object v4, v15

    .line 296
    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    .line 297
    .line 298
    invoke-virtual {v4, v0}, Landroid/view/View;->setId(I)V

    .line 299
    .line 300
    .line 301
    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 302
    .line 303
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 304
    .line 305
    .line 306
    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 307
    .line 308
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    .line 309
    .line 310
    .line 311
    iget-boolean v0, v14, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 312
    .line 313
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/Barrier;->setAllowsGoneWidget(Z)V

    .line 314
    .line 315
    .line 316
    iget-object v0, v14, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 317
    .line 318
    if-eqz v0, :cond_d

    .line 319
    .line 320
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 321
    .line 322
    .line 323
    goto :goto_d

    .line 324
    :cond_d
    iget-object v0, v14, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 325
    .line 326
    if-eqz v0, :cond_e

    .line 327
    .line 328
    invoke-static {v4, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->convertReferenceString(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    iput-object v0, v14, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 333
    .line 334
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 335
    .line 336
    .line 337
    :cond_e
    :goto_d
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    move-object v4, v0

    .line 342
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 343
    .line 344
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v9, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 348
    .line 349
    .line 350
    iget-object v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 351
    .line 352
    const-string v14, "\" not found on "

    .line 353
    .line 354
    move/from16 v21, v6

    .line 355
    .line 356
    const-string v6, " Custom Attribute \""

    .line 357
    .line 358
    move/from16 v22, v12

    .line 359
    .line 360
    const-string v12, "TransitionLayout"

    .line 361
    .line 362
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 371
    .line 372
    .line 373
    move-result-object v23

    .line 374
    :goto_e
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    if-eqz v0, :cond_10

    .line 379
    .line 380
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    move-object v8, v0

    .line 385
    check-cast v8, Ljava/lang/String;

    .line 386
    .line 387
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 392
    .line 393
    move-object/from16 v24, v9

    .line 394
    .line 395
    iget-boolean v9, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    .line 396
    .line 397
    if-nez v9, :cond_f

    .line 398
    .line 399
    const-string v9, "set"

    .line 400
    .line 401
    invoke-static {v9, v8}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v9

    .line 405
    :goto_f
    move/from16 v25, v13

    .line 406
    .line 407
    goto :goto_10

    .line 408
    :cond_f
    move-object v9, v8

    .line 409
    goto :goto_f

    .line 410
    :goto_10
    :try_start_1
    iget v13, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:I

    .line 411
    .line 412
    invoke-static {v13}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 413
    .line 414
    .line 415
    move-result v13
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 416
    sget-object v26, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 417
    .line 418
    sget-object v27, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 419
    .line 420
    packed-switch v13, :pswitch_data_0

    .line 421
    .line 422
    .line 423
    move-object/from16 v28, v11

    .line 424
    .line 425
    goto/16 :goto_14

    .line 426
    .line 427
    :pswitch_0
    move-object/from16 v28, v11

    .line 428
    .line 429
    const/4 v13, 0x1

    .line 430
    :try_start_2
    new-array v11, v13, [Ljava/lang/Class;

    .line 431
    .line 432
    aput-object v27, v11, v16

    .line 433
    .line 434
    invoke-virtual {v7, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 435
    .line 436
    .line 437
    move-result-object v11

    .line 438
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    .line 439
    .line 440
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    move-object/from16 v26, v0

    .line 445
    .line 446
    new-array v0, v13, [Ljava/lang/Object;

    .line 447
    .line 448
    aput-object v26, v0, v16

    .line 449
    .line 450
    invoke-virtual {v11, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    goto/16 :goto_14

    .line 454
    .line 455
    :catch_1
    move-exception v0

    .line 456
    goto/16 :goto_11

    .line 457
    .line 458
    :catch_2
    move-exception v0

    .line 459
    goto/16 :goto_12

    .line 460
    .line 461
    :catch_3
    move-exception v0

    .line 462
    goto/16 :goto_13

    .line 463
    .line 464
    :pswitch_1
    move-object/from16 v28, v11

    .line 465
    .line 466
    const/4 v13, 0x1

    .line 467
    new-array v11, v13, [Ljava/lang/Class;

    .line 468
    .line 469
    aput-object v26, v11, v16

    .line 470
    .line 471
    invoke-virtual {v7, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 472
    .line 473
    .line 474
    move-result-object v11

    .line 475
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    .line 476
    .line 477
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    move-object/from16 v26, v0

    .line 482
    .line 483
    new-array v0, v13, [Ljava/lang/Object;

    .line 484
    .line 485
    aput-object v26, v0, v16

    .line 486
    .line 487
    invoke-virtual {v11, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    goto/16 :goto_14

    .line 491
    .line 492
    :pswitch_2
    move-object/from16 v28, v11

    .line 493
    .line 494
    const/4 v13, 0x1

    .line 495
    new-array v11, v13, [Ljava/lang/Class;

    .line 496
    .line 497
    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 498
    .line 499
    aput-object v13, v11, v16

    .line 500
    .line 501
    invoke-virtual {v7, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 502
    .line 503
    .line 504
    move-result-object v11

    .line 505
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    .line 506
    .line 507
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    move-object/from16 v26, v0

    .line 512
    .line 513
    const/4 v13, 0x1

    .line 514
    new-array v0, v13, [Ljava/lang/Object;

    .line 515
    .line 516
    aput-object v26, v0, v16

    .line 517
    .line 518
    invoke-virtual {v11, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    goto/16 :goto_14

    .line 522
    .line 523
    :pswitch_3
    move-object/from16 v28, v11

    .line 524
    .line 525
    const/4 v13, 0x1

    .line 526
    new-array v11, v13, [Ljava/lang/Class;

    .line 527
    .line 528
    const-class v17, Ljava/lang/CharSequence;

    .line 529
    .line 530
    aput-object v17, v11, v16

    .line 531
    .line 532
    invoke-virtual {v7, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 533
    .line 534
    .line 535
    move-result-object v11

    .line 536
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    .line 537
    .line 538
    move-object/from16 v26, v0

    .line 539
    .line 540
    new-array v0, v13, [Ljava/lang/Object;

    .line 541
    .line 542
    aput-object v26, v0, v16

    .line 543
    .line 544
    invoke-virtual {v11, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    goto/16 :goto_14

    .line 548
    .line 549
    :pswitch_4
    move-object/from16 v28, v11

    .line 550
    .line 551
    const/4 v13, 0x1

    .line 552
    new-array v11, v13, [Ljava/lang/Class;

    .line 553
    .line 554
    const-class v13, Landroid/graphics/drawable/Drawable;

    .line 555
    .line 556
    aput-object v13, v11, v16

    .line 557
    .line 558
    invoke-virtual {v7, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 559
    .line 560
    .line 561
    move-result-object v11

    .line 562
    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    .line 563
    .line 564
    invoke-direct {v13}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 565
    .line 566
    .line 567
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    .line 568
    .line 569
    invoke-virtual {v13, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 570
    .line 571
    .line 572
    move-object/from16 v26, v13

    .line 573
    .line 574
    const/4 v13, 0x1

    .line 575
    new-array v0, v13, [Ljava/lang/Object;

    .line 576
    .line 577
    aput-object v26, v0, v16

    .line 578
    .line 579
    invoke-virtual {v11, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    goto/16 :goto_14

    .line 583
    .line 584
    :pswitch_5
    move-object/from16 v28, v11

    .line 585
    .line 586
    const/4 v13, 0x1

    .line 587
    new-array v11, v13, [Ljava/lang/Class;

    .line 588
    .line 589
    aput-object v27, v11, v16

    .line 590
    .line 591
    invoke-virtual {v7, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 592
    .line 593
    .line 594
    move-result-object v11

    .line 595
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    .line 596
    .line 597
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    move-object/from16 v26, v0

    .line 602
    .line 603
    new-array v0, v13, [Ljava/lang/Object;

    .line 604
    .line 605
    aput-object v26, v0, v16

    .line 606
    .line 607
    invoke-virtual {v11, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    goto/16 :goto_14

    .line 611
    .line 612
    :pswitch_6
    move-object/from16 v28, v11

    .line 613
    .line 614
    const/4 v13, 0x1

    .line 615
    new-array v11, v13, [Ljava/lang/Class;

    .line 616
    .line 617
    aput-object v26, v11, v16

    .line 618
    .line 619
    invoke-virtual {v7, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 620
    .line 621
    .line 622
    move-result-object v11

    .line 623
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    .line 624
    .line 625
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    move-object/from16 v26, v0

    .line 630
    .line 631
    new-array v0, v13, [Ljava/lang/Object;

    .line 632
    .line 633
    aput-object v26, v0, v16

    .line 634
    .line 635
    invoke-virtual {v11, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    goto :goto_14

    .line 639
    :pswitch_7
    move-object/from16 v28, v11

    .line 640
    .line 641
    const/4 v13, 0x1

    .line 642
    new-array v11, v13, [Ljava/lang/Class;

    .line 643
    .line 644
    aput-object v27, v11, v16

    .line 645
    .line 646
    invoke-virtual {v7, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 647
    .line 648
    .line 649
    move-result-object v11

    .line 650
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    .line 651
    .line 652
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    move-object/from16 v26, v0

    .line 657
    .line 658
    new-array v0, v13, [Ljava/lang/Object;

    .line 659
    .line 660
    aput-object v26, v0, v16

    .line 661
    .line 662
    invoke-virtual {v11, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    .line 663
    .line 664
    .line 665
    goto :goto_14

    .line 666
    :catch_4
    move-exception v0

    .line 667
    move-object/from16 v28, v11

    .line 668
    .line 669
    goto :goto_11

    .line 670
    :catch_5
    move-exception v0

    .line 671
    move-object/from16 v28, v11

    .line 672
    .line 673
    goto :goto_12

    .line 674
    :catch_6
    move-exception v0

    .line 675
    move-object/from16 v28, v11

    .line 676
    .line 677
    goto :goto_13

    .line 678
    :goto_11
    invoke-static {v6, v8, v14}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    move-result-object v8

    .line 682
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v9

    .line 686
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v8

    .line 693
    invoke-static {v12, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 694
    .line 695
    .line 696
    goto :goto_14

    .line 697
    :goto_12
    invoke-static {v6, v8, v14}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    move-result-object v8

    .line 701
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v9

    .line 705
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v8

    .line 712
    invoke-static {v12, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    .line 714
    .line 715
    goto :goto_14

    .line 716
    :goto_13
    new-instance v8, Ljava/lang/StringBuilder;

    .line 717
    .line 718
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v11

    .line 725
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    const-string v11, " must have a method "

    .line 729
    .line 730
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v8

    .line 740
    invoke-static {v12, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    .line 742
    .line 743
    :goto_14
    move-object/from16 v9, v24

    .line 744
    .line 745
    move/from16 v13, v25

    .line 746
    .line 747
    move-object/from16 v11, v28

    .line 748
    .line 749
    goto/16 :goto_e

    .line 750
    .line 751
    :cond_10
    move-object/from16 v28, v11

    .line 752
    .line 753
    move/from16 v25, v13

    .line 754
    .line 755
    invoke-virtual {v15, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    .line 757
    .line 758
    iget v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 759
    .line 760
    if-nez v0, :cond_11

    .line 761
    .line 762
    iget v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 763
    .line 764
    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 765
    .line 766
    .line 767
    :cond_11
    iget v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 768
    .line 769
    invoke-virtual {v15, v0}, Landroid/view/View;->setAlpha(F)V

    .line 770
    .line 771
    .line 772
    iget v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 773
    .line 774
    invoke-virtual {v15, v0}, Landroid/view/View;->setRotation(F)V

    .line 775
    .line 776
    .line 777
    iget v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 778
    .line 779
    invoke-virtual {v15, v0}, Landroid/view/View;->setRotationX(F)V

    .line 780
    .line 781
    .line 782
    iget v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 783
    .line 784
    invoke-virtual {v15, v0}, Landroid/view/View;->setRotationY(F)V

    .line 785
    .line 786
    .line 787
    iget v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 788
    .line 789
    invoke-virtual {v15, v0}, Landroid/view/View;->setScaleX(F)V

    .line 790
    .line 791
    .line 792
    iget v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 793
    .line 794
    invoke-virtual {v15, v0}, Landroid/view/View;->setScaleY(F)V

    .line 795
    .line 796
    .line 797
    iget v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    .line 798
    .line 799
    const/4 v4, -0x1

    .line 800
    if-eq v0, v4, :cond_12

    .line 801
    .line 802
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    check-cast v0, Landroid/view/View;

    .line 807
    .line 808
    iget v4, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    .line 809
    .line 810
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    if-eqz v0, :cond_14

    .line 815
    .line 816
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 817
    .line 818
    .line 819
    move-result v4

    .line 820
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 821
    .line 822
    .line 823
    move-result v6

    .line 824
    add-int/2addr v6, v4

    .line 825
    int-to-float v4, v6

    .line 826
    const/high16 v6, 0x40000000    # 2.0f

    .line 827
    .line 828
    div-float/2addr v4, v6

    .line 829
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 830
    .line 831
    .line 832
    move-result v7

    .line 833
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 834
    .line 835
    .line 836
    move-result v0

    .line 837
    add-int/2addr v0, v7

    .line 838
    int-to-float v0, v0

    .line 839
    div-float/2addr v0, v6

    .line 840
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    .line 841
    .line 842
    .line 843
    move-result v6

    .line 844
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    .line 845
    .line 846
    .line 847
    move-result v7

    .line 848
    sub-int/2addr v6, v7

    .line 849
    if-lez v6, :cond_14

    .line 850
    .line 851
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    .line 852
    .line 853
    .line 854
    move-result v6

    .line 855
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    .line 856
    .line 857
    .line 858
    move-result v7

    .line 859
    sub-int/2addr v6, v7

    .line 860
    if-lez v6, :cond_14

    .line 861
    .line 862
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    .line 863
    .line 864
    .line 865
    move-result v6

    .line 866
    int-to-float v6, v6

    .line 867
    sub-float/2addr v0, v6

    .line 868
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    .line 869
    .line 870
    .line 871
    move-result v6

    .line 872
    int-to-float v6, v6

    .line 873
    sub-float/2addr v4, v6

    .line 874
    invoke-virtual {v15, v0}, Landroid/view/View;->setPivotX(F)V

    .line 875
    .line 876
    .line 877
    invoke-virtual {v15, v4}, Landroid/view/View;->setPivotY(F)V

    .line 878
    .line 879
    .line 880
    goto :goto_15

    .line 881
    :cond_12
    iget v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 882
    .line 883
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 884
    .line 885
    .line 886
    move-result v0

    .line 887
    if-nez v0, :cond_13

    .line 888
    .line 889
    iget v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 890
    .line 891
    invoke-virtual {v15, v0}, Landroid/view/View;->setPivotX(F)V

    .line 892
    .line 893
    .line 894
    :cond_13
    iget v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 895
    .line 896
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 897
    .line 898
    .line 899
    move-result v0

    .line 900
    if-nez v0, :cond_14

    .line 901
    .line 902
    iget v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 903
    .line 904
    invoke-virtual {v15, v0}, Landroid/view/View;->setPivotY(F)V

    .line 905
    .line 906
    .line 907
    :cond_14
    :goto_15
    iget v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 908
    .line 909
    invoke-virtual {v15, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 910
    .line 911
    .line 912
    iget v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 913
    .line 914
    invoke-virtual {v15, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 915
    .line 916
    .line 917
    iget v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 918
    .line 919
    invoke-virtual {v15, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 920
    .line 921
    .line 922
    iget-boolean v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    .line 923
    .line 924
    if-eqz v0, :cond_16

    .line 925
    .line 926
    iget v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 927
    .line 928
    invoke-virtual {v15, v0}, Landroid/view/View;->setElevation(F)V

    .line 929
    .line 930
    .line 931
    goto :goto_16

    .line 932
    :cond_15
    move-object/from16 v19, v2

    .line 933
    .line 934
    move-object/from16 v20, v4

    .line 935
    .line 936
    move/from16 v21, v6

    .line 937
    .line 938
    move-object/from16 v28, v11

    .line 939
    .line 940
    move/from16 v22, v12

    .line 941
    .line 942
    move/from16 v25, v13

    .line 943
    .line 944
    new-instance v2, Ljava/lang/StringBuilder;

    .line 945
    .line 946
    const-string v4, "WARNING NO CONSTRAINTS for view "

    .line 947
    .line 948
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 952
    .line 953
    .line 954
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    .line 960
    .line 961
    :cond_16
    :goto_16
    add-int/lit8 v6, v21, 0x1

    .line 962
    .line 963
    move/from16 v10, v16

    .line 964
    .line 965
    move-object/from16 v2, v19

    .line 966
    .line 967
    move-object/from16 v4, v20

    .line 968
    .line 969
    move/from16 v12, v22

    .line 970
    .line 971
    move/from16 v13, v25

    .line 972
    .line 973
    move-object/from16 v11, v28

    .line 974
    .line 975
    const/4 v9, 0x1

    .line 976
    const/4 v14, -0x1

    .line 977
    goto/16 :goto_8

    .line 978
    .line 979
    :cond_17
    move-object/from16 v20, v4

    .line 980
    .line 981
    move/from16 v16, v10

    .line 982
    .line 983
    move-object/from16 v28, v11

    .line 984
    .line 985
    move/from16 v22, v12

    .line 986
    .line 987
    move/from16 v25, v13

    .line 988
    .line 989
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 990
    .line 991
    .line 992
    move-result-object v0

    .line 993
    :cond_18
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 994
    .line 995
    .line 996
    move-result v2

    .line 997
    if-eqz v2, :cond_1d

    .line 998
    .line 999
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v2

    .line 1003
    check-cast v2, Ljava/lang/Integer;

    .line 1004
    .line 1005
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v4

    .line 1009
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1010
    .line 1011
    if-nez v4, :cond_19

    .line 1012
    .line 1013
    goto :goto_17

    .line 1014
    :cond_19
    iget-object v6, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 1015
    .line 1016
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 1017
    .line 1018
    const/4 v13, 0x1

    .line 1019
    if-ne v7, v13, :cond_1c

    .line 1020
    .line 1021
    new-instance v7, Landroidx/constraintlayout/widget/Barrier;

    .line 1022
    .line 1023
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v8

    .line 1027
    invoke-direct {v7, v8}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1031
    .line 1032
    .line 1033
    move-result v8

    .line 1034
    invoke-virtual {v7, v8}, Landroid/view/View;->setId(I)V

    .line 1035
    .line 1036
    .line 1037
    iget-object v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 1038
    .line 1039
    if-eqz v8, :cond_1a

    .line 1040
    .line 1041
    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 1042
    .line 1043
    .line 1044
    goto :goto_18

    .line 1045
    :cond_1a
    iget-object v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 1046
    .line 1047
    if-eqz v8, :cond_1b

    .line 1048
    .line 1049
    invoke-static {v7, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->convertReferenceString(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I

    .line 1050
    .line 1051
    .line 1052
    move-result-object v8

    .line 1053
    iput-object v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 1054
    .line 1055
    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 1056
    .line 1057
    .line 1058
    :cond_1b
    :goto_18
    iget v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 1059
    .line 1060
    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 1061
    .line 1062
    .line 1063
    iget v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 1064
    .line 1065
    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    .line 1066
    .line 1067
    .line 1068
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v8

    .line 1072
    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v1, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1079
    .line 1080
    .line 1081
    :cond_1c
    iget-boolean v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 1082
    .line 1083
    if-eqz v6, :cond_18

    .line 1084
    .line 1085
    new-instance v6, Landroidx/constraintlayout/widget/Guideline;

    .line 1086
    .line 1087
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v7

    .line 1091
    invoke-direct {v6, v7}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1095
    .line 1096
    .line 1097
    move-result v2

    .line 1098
    invoke-virtual {v6, v2}, Landroid/view/View;->setId(I)V

    .line 1099
    .line 1100
    .line 1101
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v2

    .line 1105
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1109
    .line 1110
    .line 1111
    goto :goto_17

    .line 1112
    :cond_1d
    move/from16 v0, v16

    .line 1113
    .line 1114
    :goto_19
    if-ge v0, v3, :cond_1f

    .line 1115
    .line 1116
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v2

    .line 1120
    instance-of v4, v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1121
    .line 1122
    if-eqz v4, :cond_1e

    .line 1123
    .line 1124
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1125
    .line 1126
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintHelper;->applyLayoutFeaturesInConstraintSet(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1127
    .line 1128
    .line 1129
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    .line 1130
    .line 1131
    goto :goto_19

    .line 1132
    :cond_1f
    move-object/from16 v7, v28

    .line 1133
    .line 1134
    goto :goto_1a

    .line 1135
    :cond_20
    move/from16 v16, v10

    .line 1136
    .line 1137
    move/from16 v22, v12

    .line 1138
    .line 1139
    move/from16 v25, v13

    .line 1140
    .line 1141
    move-object v7, v11

    .line 1142
    :goto_1a
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1143
    .line 1144
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1145
    .line 1146
    .line 1147
    iget-object v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 1148
    .line 1149
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1150
    .line 1151
    .line 1152
    move-result v2

    .line 1153
    const/4 v8, 0x2

    .line 1154
    if-lez v2, :cond_27

    .line 1155
    .line 1156
    move/from16 v3, v16

    .line 1157
    .line 1158
    :goto_1b
    if-ge v3, v2, :cond_27

    .line 1159
    .line 1160
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v4

    .line 1164
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1165
    .line 1166
    iget-object v5, v4, Landroidx/constraintlayout/widget/ConstraintHelper;->mMap:Ljava/util/HashMap;

    .line 1167
    .line 1168
    invoke-virtual {v4}, Landroid/view/View;->isInEditMode()Z

    .line 1169
    .line 1170
    .line 1171
    iget-object v6, v4, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    .line 1172
    .line 1173
    if-nez v6, :cond_21

    .line 1174
    .line 1175
    goto/16 :goto_1e

    .line 1176
    .line 1177
    :cond_21
    move/from16 v9, v16

    .line 1178
    .line 1179
    iput v9, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    .line 1180
    .line 1181
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1182
    .line 1183
    const/4 v9, 0x0

    .line 1184
    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1185
    .line 1186
    .line 1187
    const/4 v6, 0x0

    .line 1188
    :goto_1c
    iget v9, v4, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 1189
    .line 1190
    if-ge v6, v9, :cond_26

    .line 1191
    .line 1192
    iget-object v9, v4, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    .line 1193
    .line 1194
    aget v9, v9, v6

    .line 1195
    .line 1196
    iget-object v10, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 1197
    .line 1198
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v11

    .line 1202
    check-cast v11, Landroid/view/View;

    .line 1203
    .line 1204
    if-nez v11, :cond_22

    .line 1205
    .line 1206
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v9

    .line 1210
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v9

    .line 1214
    check-cast v9, Ljava/lang/String;

    .line 1215
    .line 1216
    invoke-virtual {v4, v1, v9}, Landroidx/constraintlayout/widget/ConstraintHelper;->findId(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    .line 1217
    .line 1218
    .line 1219
    move-result v12

    .line 1220
    if-eqz v12, :cond_22

    .line 1221
    .line 1222
    iget-object v11, v4, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    .line 1223
    .line 1224
    aput v12, v11, v6

    .line 1225
    .line 1226
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v11

    .line 1230
    invoke-virtual {v5, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    .line 1232
    .line 1233
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v9

    .line 1237
    move-object v11, v9

    .line 1238
    check-cast v11, Landroid/view/View;

    .line 1239
    .line 1240
    :cond_22
    if-eqz v11, :cond_25

    .line 1241
    .line 1242
    iget-object v9, v4, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    .line 1243
    .line 1244
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v10

    .line 1248
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1249
    .line 1250
    .line 1251
    if-eq v10, v9, :cond_25

    .line 1252
    .line 1253
    if-nez v10, :cond_23

    .line 1254
    .line 1255
    goto :goto_1d

    .line 1256
    :cond_23
    iget v11, v9, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    .line 1257
    .line 1258
    const/16 v17, 0x1

    .line 1259
    .line 1260
    add-int/lit8 v11, v11, 0x1

    .line 1261
    .line 1262
    iget-object v12, v9, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1263
    .line 1264
    array-length v13, v12

    .line 1265
    if-le v11, v13, :cond_24

    .line 1266
    .line 1267
    array-length v11, v12

    .line 1268
    mul-int/2addr v11, v8

    .line 1269
    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v11

    .line 1273
    check-cast v11, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1274
    .line 1275
    iput-object v11, v9, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1276
    .line 1277
    :cond_24
    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1278
    .line 1279
    iget v12, v9, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    .line 1280
    .line 1281
    aput-object v10, v11, v12

    .line 1282
    .line 1283
    const/16 v17, 0x1

    .line 1284
    .line 1285
    add-int/lit8 v12, v12, 0x1

    .line 1286
    .line 1287
    iput v12, v9, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    .line 1288
    .line 1289
    :cond_25
    :goto_1d
    add-int/lit8 v6, v6, 0x1

    .line 1290
    .line 1291
    goto :goto_1c

    .line 1292
    :cond_26
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    .line 1293
    .line 1294
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1295
    .line 1296
    .line 1297
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    .line 1298
    .line 1299
    const/16 v16, 0x0

    .line 1300
    .line 1301
    goto/16 :goto_1b

    .line 1302
    .line 1303
    :cond_27
    move/from16 v9, v25

    .line 1304
    .line 1305
    const/4 v0, 0x0

    .line 1306
    :goto_1f
    if-ge v0, v9, :cond_28

    .line 1307
    .line 1308
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1309
    .line 1310
    .line 1311
    add-int/lit8 v0, v0, 0x1

    .line 1312
    .line 1313
    goto :goto_1f

    .line 1314
    :cond_28
    iget-object v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 1315
    .line 1316
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1317
    .line 1318
    .line 1319
    const/4 v2, 0x0

    .line 1320
    invoke-virtual {v4, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 1324
    .line 1325
    .line 1326
    move-result v0

    .line 1327
    invoke-virtual {v4, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1328
    .line 1329
    .line 1330
    const/4 v0, 0x0

    .line 1331
    :goto_20
    if-ge v0, v9, :cond_29

    .line 1332
    .line 1333
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v2

    .line 1337
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v3

    .line 1341
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 1342
    .line 1343
    .line 1344
    move-result v2

    .line 1345
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1346
    .line 1347
    .line 1348
    add-int/lit8 v0, v0, 0x1

    .line 1349
    .line 1350
    goto :goto_20

    .line 1351
    :cond_29
    const/4 v0, 0x0

    .line 1352
    :goto_21
    if-ge v0, v9, :cond_5c

    .line 1353
    .line 1354
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v2

    .line 1358
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v10

    .line 1362
    if-nez v10, :cond_2b

    .line 1363
    .line 1364
    :cond_2a
    :goto_22
    move v5, v8

    .line 1365
    const/4 v15, -0x1

    .line 1366
    :goto_23
    const/16 v17, 0x1

    .line 1367
    .line 1368
    goto/16 :goto_38

    .line 1369
    .line 1370
    :cond_2b
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v3

    .line 1374
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1375
    .line 1376
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1377
    .line 1378
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1379
    .line 1380
    .line 1381
    iget-object v5, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1382
    .line 1383
    if-eqz v5, :cond_2c

    .line 1384
    .line 1385
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 1386
    .line 1387
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1388
    .line 1389
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->reset()V

    .line 1393
    .line 1394
    .line 1395
    :cond_2c
    iput-object v7, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1396
    .line 1397
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 1401
    .line 1402
    .line 1403
    move-result v5

    .line 1404
    iput v5, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1405
    .line 1406
    iput-object v2, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Landroid/view/View;

    .line 1407
    .line 1408
    instance-of v5, v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1409
    .line 1410
    if-eqz v5, :cond_2d

    .line 1411
    .line 1412
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1413
    .line 1414
    iget-boolean v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 1415
    .line 1416
    invoke-virtual {v2, v10, v5}, Landroidx/constraintlayout/widget/ConstraintHelper;->resolveRtl(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    .line 1417
    .line 1418
    .line 1419
    :cond_2d
    iget-boolean v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsGuideline:Z

    .line 1420
    .line 1421
    if-eqz v2, :cond_31

    .line 1422
    .line 1423
    check-cast v10, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 1424
    .line 1425
    iget v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedGuideBegin:I

    .line 1426
    .line 1427
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedGuideEnd:I

    .line 1428
    .line 1429
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedGuidePercent:F

    .line 1430
    .line 1431
    const/high16 v6, -0x40800000    # -1.0f

    .line 1432
    .line 1433
    cmpl-float v11, v3, v6

    .line 1434
    .line 1435
    if-eqz v11, :cond_2e

    .line 1436
    .line 1437
    if-lez v11, :cond_2a

    .line 1438
    .line 1439
    iput v3, v10, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 1440
    .line 1441
    const/4 v3, -0x1

    .line 1442
    iput v3, v10, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 1443
    .line 1444
    iput v3, v10, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 1445
    .line 1446
    goto :goto_24

    .line 1447
    :cond_2e
    const/4 v3, -0x1

    .line 1448
    if-eq v2, v3, :cond_30

    .line 1449
    .line 1450
    if-le v2, v3, :cond_2f

    .line 1451
    .line 1452
    iput v6, v10, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 1453
    .line 1454
    iput v2, v10, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 1455
    .line 1456
    iput v3, v10, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 1457
    .line 1458
    :cond_2f
    :goto_24
    move v15, v3

    .line 1459
    move v5, v8

    .line 1460
    goto :goto_23

    .line 1461
    :cond_30
    if-eq v5, v3, :cond_2f

    .line 1462
    .line 1463
    if-le v5, v3, :cond_2f

    .line 1464
    .line 1465
    iput v6, v10, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 1466
    .line 1467
    iput v3, v10, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 1468
    .line 1469
    iput v5, v10, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 1470
    .line 1471
    goto :goto_22

    .line 1472
    :cond_31
    iget v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedLeftToLeft:I

    .line 1473
    .line 1474
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedLeftToRight:I

    .line 1475
    .line 1476
    iget v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedRightToLeft:I

    .line 1477
    .line 1478
    iget v11, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedRightToRight:I

    .line 1479
    .line 1480
    iget v14, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolveGoneLeftMargin:I

    .line 1481
    .line 1482
    iget v12, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolveGoneRightMargin:I

    .line 1483
    .line 1484
    iget v13, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mResolvedHorizontalBias:F

    .line 1485
    .line 1486
    iget v15, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 1487
    .line 1488
    const/16 v19, 0x4

    .line 1489
    .line 1490
    const/16 v20, 0x2

    .line 1491
    .line 1492
    const/16 v23, 0x5

    .line 1493
    .line 1494
    const/16 v24, 0x3

    .line 1495
    .line 1496
    const/4 v8, -0x1

    .line 1497
    const/16 v25, 0x0

    .line 1498
    .line 1499
    if-eq v15, v8, :cond_33

    .line 1500
    .line 1501
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v2

    .line 1505
    move-object v15, v2

    .line 1506
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1507
    .line 1508
    if-eqz v15, :cond_32

    .line 1509
    .line 1510
    iget v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 1511
    .line 1512
    iget v13, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 1513
    .line 1514
    const/4 v11, 0x7

    .line 1515
    const/4 v14, 0x0

    .line 1516
    move v12, v11

    .line 1517
    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(IIIILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1518
    .line 1519
    .line 1520
    iput v2, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 1521
    .line 1522
    :cond_32
    move-object v2, v10

    .line 1523
    move/from16 v10, v19

    .line 1524
    .line 1525
    move/from16 v13, v20

    .line 1526
    .line 1527
    move/from16 v11, v23

    .line 1528
    .line 1529
    move/from16 v14, v24

    .line 1530
    .line 1531
    goto/16 :goto_2e

    .line 1532
    .line 1533
    :cond_33
    if-eq v2, v8, :cond_35

    .line 1534
    .line 1535
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v2

    .line 1539
    move-object v15, v2

    .line 1540
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1541
    .line 1542
    if-eqz v15, :cond_34

    .line 1543
    .line 1544
    move v2, v13

    .line 1545
    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1546
    .line 1547
    move v5, v12

    .line 1548
    move/from16 v12, v20

    .line 1549
    .line 1550
    move/from16 v18, v5

    .line 1551
    .line 1552
    move v5, v2

    .line 1553
    move v2, v11

    .line 1554
    move/from16 v11, v20

    .line 1555
    .line 1556
    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(IIIILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1557
    .line 1558
    .line 1559
    goto :goto_25

    .line 1560
    :cond_34
    move v2, v11

    .line 1561
    move/from16 v18, v12

    .line 1562
    .line 1563
    move v5, v13

    .line 1564
    move/from16 v11, v20

    .line 1565
    .line 1566
    :goto_25
    move v12, v11

    .line 1567
    move/from16 v11, v19

    .line 1568
    .line 1569
    goto :goto_26

    .line 1570
    :cond_35
    move v2, v11

    .line 1571
    move/from16 v18, v12

    .line 1572
    .line 1573
    move v12, v13

    .line 1574
    move/from16 v11, v20

    .line 1575
    .line 1576
    if-eq v5, v8, :cond_36

    .line 1577
    .line 1578
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v5

    .line 1582
    move-object v15, v5

    .line 1583
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1584
    .line 1585
    if-eqz v15, :cond_36

    .line 1586
    .line 1587
    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1588
    .line 1589
    move v5, v12

    .line 1590
    move/from16 v12, v19

    .line 1591
    .line 1592
    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(IIIILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1593
    .line 1594
    .line 1595
    move/from16 v29, v12

    .line 1596
    .line 1597
    move v12, v11

    .line 1598
    move/from16 v11, v29

    .line 1599
    .line 1600
    goto :goto_26

    .line 1601
    :cond_36
    move v5, v12

    .line 1602
    goto :goto_25

    .line 1603
    :goto_26
    if-eq v6, v8, :cond_39

    .line 1604
    .line 1605
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v2

    .line 1609
    move-object v15, v2

    .line 1610
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1611
    .line 1612
    if-eqz v15, :cond_37

    .line 1613
    .line 1614
    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1615
    .line 1616
    move/from16 v14, v18

    .line 1617
    .line 1618
    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(IIIILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1619
    .line 1620
    .line 1621
    :cond_37
    move v6, v12

    .line 1622
    :cond_38
    :goto_27
    move v2, v11

    .line 1623
    goto :goto_28

    .line 1624
    :cond_39
    move v6, v12

    .line 1625
    move/from16 v14, v18

    .line 1626
    .line 1627
    if-eq v2, v8, :cond_38

    .line 1628
    .line 1629
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v2

    .line 1633
    move-object v15, v2

    .line 1634
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1635
    .line 1636
    if-eqz v15, :cond_38

    .line 1637
    .line 1638
    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1639
    .line 1640
    move v12, v11

    .line 1641
    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(IIIILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1642
    .line 1643
    .line 1644
    goto :goto_27

    .line 1645
    :goto_28
    iget v11, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1646
    .line 1647
    if-eq v11, v8, :cond_3b

    .line 1648
    .line 1649
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1650
    .line 1651
    .line 1652
    move-result-object v8

    .line 1653
    move-object v15, v8

    .line 1654
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1655
    .line 1656
    if-eqz v15, :cond_3a

    .line 1657
    .line 1658
    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1659
    .line 1660
    iget v14, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1661
    .line 1662
    move/from16 v12, v24

    .line 1663
    .line 1664
    move/from16 v11, v24

    .line 1665
    .line 1666
    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(IIIILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1667
    .line 1668
    .line 1669
    goto :goto_29

    .line 1670
    :cond_3a
    move/from16 v11, v24

    .line 1671
    .line 1672
    :goto_29
    move v12, v11

    .line 1673
    move/from16 v11, v23

    .line 1674
    .line 1675
    const/4 v8, -0x1

    .line 1676
    goto :goto_2a

    .line 1677
    :cond_3b
    move/from16 v11, v24

    .line 1678
    .line 1679
    iget v8, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1680
    .line 1681
    const/4 v12, -0x1

    .line 1682
    if-eq v8, v12, :cond_3c

    .line 1683
    .line 1684
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v8

    .line 1688
    move-object v15, v8

    .line 1689
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1690
    .line 1691
    if-eqz v15, :cond_3c

    .line 1692
    .line 1693
    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1694
    .line 1695
    iget v14, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1696
    .line 1697
    move v8, v12

    .line 1698
    move/from16 v12, v23

    .line 1699
    .line 1700
    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(IIIILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1701
    .line 1702
    .line 1703
    move/from16 v29, v12

    .line 1704
    .line 1705
    move v12, v11

    .line 1706
    move/from16 v11, v29

    .line 1707
    .line 1708
    goto :goto_2a

    .line 1709
    :cond_3c
    move v8, v12

    .line 1710
    move v12, v11

    .line 1711
    move/from16 v11, v23

    .line 1712
    .line 1713
    :goto_2a
    iget v13, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1714
    .line 1715
    if-eq v13, v8, :cond_3f

    .line 1716
    .line 1717
    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1718
    .line 1719
    .line 1720
    move-result-object v13

    .line 1721
    move-object v15, v13

    .line 1722
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1723
    .line 1724
    if-eqz v15, :cond_3d

    .line 1725
    .line 1726
    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1727
    .line 1728
    iget v14, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1729
    .line 1730
    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(IIIILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1731
    .line 1732
    .line 1733
    :cond_3d
    move/from16 v19, v12

    .line 1734
    .line 1735
    :cond_3e
    :goto_2b
    move v12, v5

    .line 1736
    goto :goto_2c

    .line 1737
    :cond_3f
    move/from16 v19, v12

    .line 1738
    .line 1739
    iget v12, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1740
    .line 1741
    if-eq v12, v8, :cond_3e

    .line 1742
    .line 1743
    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v8

    .line 1747
    move-object v15, v8

    .line 1748
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1749
    .line 1750
    if-eqz v15, :cond_3e

    .line 1751
    .line 1752
    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1753
    .line 1754
    iget v14, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1755
    .line 1756
    move v12, v11

    .line 1757
    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(IIIILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1758
    .line 1759
    .line 1760
    goto :goto_2b

    .line 1761
    :goto_2c
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1762
    .line 1763
    const/4 v8, -0x1

    .line 1764
    if-eq v5, v8, :cond_40

    .line 1765
    .line 1766
    move v13, v6

    .line 1767
    const/4 v6, 0x6

    .line 1768
    move-object/from16 v29, v10

    .line 1769
    .line 1770
    move v10, v2

    .line 1771
    move-object/from16 v2, v29

    .line 1772
    .line 1773
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;II)V

    .line 1774
    .line 1775
    .line 1776
    move-object/from16 v1, p0

    .line 1777
    .line 1778
    move/from16 v14, v19

    .line 1779
    .line 1780
    goto :goto_2d

    .line 1781
    :cond_40
    move-object v13, v10

    .line 1782
    move v10, v2

    .line 1783
    move-object v2, v13

    .line 1784
    move v13, v6

    .line 1785
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    .line 1786
    .line 1787
    if-eq v5, v8, :cond_41

    .line 1788
    .line 1789
    move-object/from16 v1, p0

    .line 1790
    .line 1791
    move/from16 v6, v19

    .line 1792
    .line 1793
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;II)V

    .line 1794
    .line 1795
    .line 1796
    move v14, v6

    .line 1797
    goto :goto_2d

    .line 1798
    :cond_41
    move/from16 v14, v19

    .line 1799
    .line 1800
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    .line 1801
    .line 1802
    move-object/from16 v1, p0

    .line 1803
    .line 1804
    if-eq v5, v8, :cond_42

    .line 1805
    .line 1806
    move v6, v11

    .line 1807
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;II)V

    .line 1808
    .line 1809
    .line 1810
    :cond_42
    :goto_2d
    cmpl-float v5, v12, v25

    .line 1811
    .line 1812
    if-ltz v5, :cond_43

    .line 1813
    .line 1814
    iput v12, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1815
    .line 1816
    :cond_43
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1817
    .line 1818
    cmpl-float v6, v5, v25

    .line 1819
    .line 1820
    if-ltz v6, :cond_44

    .line 1821
    .line 1822
    iput v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1823
    .line 1824
    :cond_44
    :goto_2e
    iget-boolean v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mHorizontalDimensionFixed:Z

    .line 1825
    .line 1826
    const/4 v6, 0x3

    .line 1827
    const/4 v8, -0x2

    .line 1828
    const/4 v12, 0x4

    .line 1829
    if-nez v5, :cond_47

    .line 1830
    .line 1831
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1832
    .line 1833
    const/4 v15, -0x1

    .line 1834
    if-ne v5, v15, :cond_46

    .line 1835
    .line 1836
    iget-boolean v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 1837
    .line 1838
    if-eqz v5, :cond_45

    .line 1839
    .line 1840
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(I)V

    .line 1841
    .line 1842
    .line 1843
    goto :goto_2f

    .line 1844
    :cond_45
    invoke-virtual {v2, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(I)V

    .line 1845
    .line 1846
    .line 1847
    :goto_2f
    invoke-virtual {v2, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1848
    .line 1849
    .line 1850
    move-result-object v5

    .line 1851
    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1852
    .line 1853
    iput v13, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 1854
    .line 1855
    invoke-virtual {v2, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1856
    .line 1857
    .line 1858
    move-result-object v5

    .line 1859
    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1860
    .line 1861
    iput v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 1862
    .line 1863
    goto :goto_30

    .line 1864
    :cond_46
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(I)V

    .line 1865
    .line 1866
    .line 1867
    const/4 v5, 0x0

    .line 1868
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 1869
    .line 1870
    .line 1871
    goto :goto_30

    .line 1872
    :cond_47
    const/4 v13, 0x1

    .line 1873
    invoke-virtual {v2, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(I)V

    .line 1874
    .line 1875
    .line 1876
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1877
    .line 1878
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 1879
    .line 1880
    .line 1881
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1882
    .line 1883
    if-ne v5, v8, :cond_48

    .line 1884
    .line 1885
    const/4 v5, 0x2

    .line 1886
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(I)V

    .line 1887
    .line 1888
    .line 1889
    :cond_48
    :goto_30
    iget-boolean v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mVerticalDimensionFixed:Z

    .line 1890
    .line 1891
    if-nez v5, :cond_4b

    .line 1892
    .line 1893
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1894
    .line 1895
    const/4 v15, -0x1

    .line 1896
    if-ne v5, v15, :cond_4a

    .line 1897
    .line 1898
    iget-boolean v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 1899
    .line 1900
    if-eqz v5, :cond_49

    .line 1901
    .line 1902
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(I)V

    .line 1903
    .line 1904
    .line 1905
    goto :goto_31

    .line 1906
    :cond_49
    invoke-virtual {v2, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(I)V

    .line 1907
    .line 1908
    .line 1909
    :goto_31
    invoke-virtual {v2, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1910
    .line 1911
    .line 1912
    move-result-object v5

    .line 1913
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1914
    .line 1915
    iput v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 1916
    .line 1917
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1918
    .line 1919
    .line 1920
    move-result-object v5

    .line 1921
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1922
    .line 1923
    iput v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 1924
    .line 1925
    goto :goto_32

    .line 1926
    :cond_4a
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(I)V

    .line 1927
    .line 1928
    .line 1929
    const/4 v5, 0x0

    .line 1930
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 1931
    .line 1932
    .line 1933
    goto :goto_32

    .line 1934
    :cond_4b
    const/4 v13, 0x1

    .line 1935
    const/4 v15, -0x1

    .line 1936
    invoke-virtual {v2, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(I)V

    .line 1937
    .line 1938
    .line 1939
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1940
    .line 1941
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 1942
    .line 1943
    .line 1944
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1945
    .line 1946
    if-ne v5, v8, :cond_4c

    .line 1947
    .line 1948
    const/4 v5, 0x2

    .line 1949
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(I)V

    .line 1950
    .line 1951
    .line 1952
    :cond_4c
    :goto_32
    iget-object v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1953
    .line 1954
    if-eqz v5, :cond_4d

    .line 1955
    .line 1956
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1957
    .line 1958
    .line 1959
    move-result v8

    .line 1960
    if-nez v8, :cond_4e

    .line 1961
    .line 1962
    :cond_4d
    move/from16 v5, v25

    .line 1963
    .line 1964
    goto/16 :goto_36

    .line 1965
    .line 1966
    :cond_4e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1967
    .line 1968
    .line 1969
    move-result v8

    .line 1970
    const/16 v10, 0x2c

    .line 1971
    .line 1972
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    .line 1973
    .line 1974
    .line 1975
    move-result v10

    .line 1976
    if-lez v10, :cond_51

    .line 1977
    .line 1978
    add-int/lit8 v11, v8, -0x1

    .line 1979
    .line 1980
    if-ge v10, v11, :cond_51

    .line 1981
    .line 1982
    const/4 v11, 0x0

    .line 1983
    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1984
    .line 1985
    .line 1986
    move-result-object v12

    .line 1987
    const-string v11, "W"

    .line 1988
    .line 1989
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1990
    .line 1991
    .line 1992
    move-result v11

    .line 1993
    if-eqz v11, :cond_4f

    .line 1994
    .line 1995
    const/4 v11, 0x0

    .line 1996
    goto :goto_33

    .line 1997
    :cond_4f
    const-string v11, "H"

    .line 1998
    .line 1999
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2000
    .line 2001
    .line 2002
    move-result v11

    .line 2003
    if-eqz v11, :cond_50

    .line 2004
    .line 2005
    const/4 v11, 0x1

    .line 2006
    goto :goto_33

    .line 2007
    :cond_50
    move v11, v15

    .line 2008
    :goto_33
    add-int/lit8 v10, v10, 0x1

    .line 2009
    .line 2010
    goto :goto_34

    .line 2011
    :cond_51
    move v11, v15

    .line 2012
    const/4 v10, 0x0

    .line 2013
    :goto_34
    const/16 v12, 0x3a

    .line 2014
    .line 2015
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    .line 2016
    .line 2017
    .line 2018
    move-result v12

    .line 2019
    if-ltz v12, :cond_53

    .line 2020
    .line 2021
    add-int/lit8 v8, v8, -0x1

    .line 2022
    .line 2023
    if-ge v12, v8, :cond_53

    .line 2024
    .line 2025
    invoke-virtual {v5, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 2026
    .line 2027
    .line 2028
    move-result-object v8

    .line 2029
    add-int/lit8 v12, v12, 0x1

    .line 2030
    .line 2031
    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2032
    .line 2033
    .line 2034
    move-result-object v5

    .line 2035
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 2036
    .line 2037
    .line 2038
    move-result v10

    .line 2039
    if-lez v10, :cond_54

    .line 2040
    .line 2041
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 2042
    .line 2043
    .line 2044
    move-result v10

    .line 2045
    if-lez v10, :cond_54

    .line 2046
    .line 2047
    :try_start_3
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 2048
    .line 2049
    .line 2050
    move-result v8

    .line 2051
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 2052
    .line 2053
    .line 2054
    move-result v5

    .line 2055
    cmpl-float v10, v8, v25

    .line 2056
    .line 2057
    if-lez v10, :cond_54

    .line 2058
    .line 2059
    cmpl-float v10, v5, v25

    .line 2060
    .line 2061
    if-lez v10, :cond_54

    .line 2062
    .line 2063
    const/4 v13, 0x1

    .line 2064
    if-ne v11, v13, :cond_52

    .line 2065
    .line 2066
    div-float/2addr v5, v8

    .line 2067
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 2068
    .line 2069
    .line 2070
    move-result v5

    .line 2071
    goto :goto_35

    .line 2072
    :cond_52
    div-float/2addr v8, v5

    .line 2073
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 2074
    .line 2075
    .line 2076
    move-result v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_7

    .line 2077
    goto :goto_35

    .line 2078
    :cond_53
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2079
    .line 2080
    .line 2081
    move-result-object v5

    .line 2082
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 2083
    .line 2084
    .line 2085
    move-result v8

    .line 2086
    if-lez v8, :cond_54

    .line 2087
    .line 2088
    :try_start_4
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 2089
    .line 2090
    .line 2091
    move-result v5
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_7

    .line 2092
    goto :goto_35

    .line 2093
    :catch_7
    :cond_54
    move/from16 v5, v25

    .line 2094
    .line 2095
    :goto_35
    cmpl-float v8, v5, v25

    .line 2096
    .line 2097
    if-lez v8, :cond_55

    .line 2098
    .line 2099
    iput v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 2100
    .line 2101
    iput v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 2102
    .line 2103
    goto :goto_37

    .line 2104
    :goto_36
    iput v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 2105
    .line 2106
    :cond_55
    :goto_37
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2107
    .line 2108
    iget-object v8, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 2109
    .line 2110
    const/16 v16, 0x0

    .line 2111
    .line 2112
    aput v5, v8, v16

    .line 2113
    .line 2114
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2115
    .line 2116
    const/16 v17, 0x1

    .line 2117
    .line 2118
    aput v5, v8, v17

    .line 2119
    .line 2120
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2121
    .line 2122
    iput v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 2123
    .line 2124
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2125
    .line 2126
    iput v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 2127
    .line 2128
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    .line 2129
    .line 2130
    if-ltz v5, :cond_56

    .line 2131
    .line 2132
    if-gt v5, v6, :cond_56

    .line 2133
    .line 2134
    iput v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    .line 2135
    .line 2136
    :cond_56
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2137
    .line 2138
    iget v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2139
    .line 2140
    iget v8, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2141
    .line 2142
    iget v10, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2143
    .line 2144
    iput v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 2145
    .line 2146
    iput v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 2147
    .line 2148
    const v6, 0x7fffffff

    .line 2149
    .line 2150
    .line 2151
    if-ne v8, v6, :cond_57

    .line 2152
    .line 2153
    const/4 v8, 0x0

    .line 2154
    :cond_57
    iput v8, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 2155
    .line 2156
    iput v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 2157
    .line 2158
    const/16 v25, 0x0

    .line 2159
    .line 2160
    cmpl-float v8, v10, v25

    .line 2161
    .line 2162
    const/high16 v11, 0x3f800000    # 1.0f

    .line 2163
    .line 2164
    if-lez v8, :cond_58

    .line 2165
    .line 2166
    cmpg-float v8, v10, v11

    .line 2167
    .line 2168
    if-gez v8, :cond_58

    .line 2169
    .line 2170
    if-nez v5, :cond_58

    .line 2171
    .line 2172
    const/4 v5, 0x2

    .line 2173
    iput v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 2174
    .line 2175
    :cond_58
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2176
    .line 2177
    iget v8, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2178
    .line 2179
    iget v10, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 2180
    .line 2181
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2182
    .line 2183
    iput v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 2184
    .line 2185
    iput v8, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 2186
    .line 2187
    if-ne v10, v6, :cond_59

    .line 2188
    .line 2189
    const/4 v10, 0x0

    .line 2190
    :cond_59
    iput v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 2191
    .line 2192
    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 2193
    .line 2194
    const/16 v25, 0x0

    .line 2195
    .line 2196
    cmpl-float v6, v3, v25

    .line 2197
    .line 2198
    if-lez v6, :cond_5a

    .line 2199
    .line 2200
    cmpg-float v3, v3, v11

    .line 2201
    .line 2202
    if-gez v3, :cond_5a

    .line 2203
    .line 2204
    if-nez v5, :cond_5a

    .line 2205
    .line 2206
    const/4 v5, 0x2

    .line 2207
    iput v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 2208
    .line 2209
    goto :goto_38

    .line 2210
    :cond_5a
    const/4 v5, 0x2

    .line 2211
    :goto_38
    add-int/lit8 v0, v0, 0x1

    .line 2212
    .line 2213
    move v8, v5

    .line 2214
    goto/16 :goto_21

    .line 2215
    .line 2216
    :cond_5b
    move-object v7, v11

    .line 2217
    move/from16 v22, v12

    .line 2218
    .line 2219
    :cond_5c
    if-eqz v22, :cond_5e

    .line 2220
    .line 2221
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/core/view/MenuHostHelper;

    .line 2222
    .line 2223
    invoke-virtual {v0, v7}, Landroidx/core/view/MenuHostHelper;->updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 2224
    .line 2225
    .line 2226
    goto :goto_39

    .line 2227
    :cond_5d
    move-object v7, v11

    .line 2228
    :cond_5e
    :goto_39
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 2229
    .line 2230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2231
    .line 2232
    .line 2233
    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 2234
    .line 2235
    move/from16 v2, p1

    .line 2236
    .line 2237
    move/from16 v8, p2

    .line 2238
    .line 2239
    invoke-virtual {v1, v7, v0, v2, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 2240
    .line 2241
    .line 2242
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2243
    .line 2244
    .line 2245
    move-result v0

    .line 2246
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2247
    .line 2248
    .line 2249
    move-result v3

    .line 2250
    iget-boolean v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 2251
    .line 2252
    iget-boolean v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 2253
    .line 2254
    iget-object v6, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 2255
    .line 2256
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingHeight:I

    .line 2257
    .line 2258
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingWidth:I

    .line 2259
    .line 2260
    add-int/2addr v0, v6

    .line 2261
    add-int/2addr v3, v7

    .line 2262
    const/4 v9, 0x0

    .line 2263
    invoke-static {v0, v2, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 2264
    .line 2265
    .line 2266
    move-result v0

    .line 2267
    invoke-static {v3, v8, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 2268
    .line 2269
    .line 2270
    move-result v2

    .line 2271
    const v3, 0xffffff

    .line 2272
    .line 2273
    .line 2274
    and-int/2addr v0, v3

    .line 2275
    and-int/2addr v2, v3

    .line 2276
    iget v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 2277
    .line 2278
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 2279
    .line 2280
    .line 2281
    move-result v0

    .line 2282
    iget v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 2283
    .line 2284
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 2285
    .line 2286
    .line 2287
    move-result v2

    .line 2288
    const/high16 v3, 0x1000000

    .line 2289
    .line 2290
    if-eqz v4, :cond_5f

    .line 2291
    .line 2292
    or-int/2addr v0, v3

    .line 2293
    :cond_5f
    if-eqz v5, :cond_60

    .line 2294
    .line 2295
    or-int/2addr v2, v3

    .line 2296
    :cond_60
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 2297
    .line 2298
    .line 2299
    return-void

    .line 2300
    nop

    .line 2301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 22
    .line 23
    new-instance v1, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 24
    .line 25
    invoke-direct {v1}, Landroidx/constraintlayout/core/widgets/Guideline;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 29
    .line 30
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsGuideline:Z

    .line 31
    .line 32
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setOrientation(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    move-object v0, p1

    .line 42
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 52
    .line 53
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsHelper:Z

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 76
    .line 77
    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 18
    .line 19
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->reset()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 34
    .line 35
    return-void
.end method

.method public final parseLayoutDescription(I)V
    .locals 8

    .line 1
    new-instance v0, Landroidx/compose/ui/platform/WeakCache;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/16 v2, 0xd

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/platform/WeakCache;-><init>(IZ)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Landroidx/compose/ui/platform/WeakCache;->values:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v2, Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v2, v0, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 26
    .line 27
    const-string v2, "Error parsing resource: "

    .line 28
    .line 29
    const-string v3, "ConstraintLayoutStates"

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    :try_start_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/4 v6, 0x0

    .line 44
    :goto_0
    const/4 v7, 0x1

    .line 45
    if-eq v5, v7, :cond_2

    .line 46
    .line 47
    const/4 v7, 0x2

    .line 48
    if-eq v5, v7, :cond_0

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    sparse-switch v7, :sswitch_data_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :sswitch_0
    const-string v7, "Variant"

    .line 64
    .line 65
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    .line 72
    .line 73
    invoke-direct {v5, v1, v4}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 74
    .line 75
    .line 76
    if-eqz v6, :cond_1

    .line 77
    .line 78
    iget-object v7, v6, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v7, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catch_0
    move-exception v1

    .line 87
    goto :goto_3

    .line 88
    :catch_1
    move-exception v1

    .line 89
    goto :goto_4

    .line 90
    :sswitch_1
    const-string v7, "layoutDescription"

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :sswitch_2
    const-string v7, "StateSet"

    .line 94
    .line 95
    :goto_1
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :sswitch_3
    const-string v7, "State"

    .line 100
    .line 101
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_1

    .line 106
    .line 107
    new-instance v5, Lokhttp3/internal/http2/Huffman$Node;

    .line 108
    .line 109
    invoke-direct {v5, v1, v4}, Lokhttp3/internal/http2/Huffman$Node;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 110
    .line 111
    .line 112
    iget-object v6, v0, Landroidx/compose/ui/platform/WeakCache;->values:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v6, Landroid/util/SparseArray;

    .line 115
    .line 116
    iget v7, v5, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 117
    .line 118
    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    move-object v6, v5

    .line 122
    goto :goto_2

    .line 123
    :sswitch_4
    const-string v7, "ConstraintSet"

    .line 124
    .line 125
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_1

    .line 130
    .line 131
    invoke-virtual {v0, v1, v4}, Landroidx/compose/ui/platform/WeakCache;->parseConstraintSet(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 135
    .line 136
    .line 137
    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_0

    .line 139
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {v3, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .line 153
    .line 154
    goto :goto_5

    .line 155
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v3, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .line 169
    .line 170
    :cond_2
    :goto_5
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/compose/ui/platform/WeakCache;

    .line 171
    .line 172
    return-void

    .line 173
    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_4
        0x4c7d471 -> :sswitch_3
        0x526c4e31 -> :sswitch_2
        0x62ce7272 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    const/4 v8, 0x0

    .line 28
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    add-int v10, v7, v9

    .line 41
    .line 42
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    .line 43
    .line 44
    .line 45
    move-result v11

    .line 46
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 47
    .line 48
    iput v7, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingTop:I

    .line 49
    .line 50
    iput v9, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingBottom:I

    .line 51
    .line 52
    iput v11, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingWidth:I

    .line 53
    .line 54
    iput v10, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingHeight:I

    .line 55
    .line 56
    move/from16 v9, p3

    .line 57
    .line 58
    iput v9, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    .line 59
    .line 60
    move/from16 v9, p4

    .line 61
    .line 62
    iput v9, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    const/4 v14, 0x1

    .line 81
    if-gtz v9, :cond_1

    .line 82
    .line 83
    if-lez v13, :cond_0

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v15

    .line 99
    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 100
    .line 101
    .line 102
    move-result-object v15

    .line 103
    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 104
    .line 105
    const/high16 v16, 0x400000

    .line 106
    .line 107
    and-int v15, v15, v16

    .line 108
    .line 109
    if-eqz v15, :cond_2

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 112
    .line 113
    .line 114
    move-result v15

    .line 115
    if-ne v14, v15, :cond_2

    .line 116
    .line 117
    move v9, v13

    .line 118
    :cond_2
    :goto_1
    sub-int/2addr v4, v11

    .line 119
    sub-int/2addr v6, v10

    .line 120
    iget v10, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingHeight:I

    .line 121
    .line 122
    iget v11, v12, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingWidth:I

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    const/high16 v15, 0x40000000    # 2.0f

    .line 129
    .line 130
    const/high16 v13, -0x80000000

    .line 131
    .line 132
    if-eq v3, v13, :cond_6

    .line 133
    .line 134
    if-eqz v3, :cond_4

    .line 135
    .line 136
    if-eq v3, v15, :cond_3

    .line 137
    .line 138
    move/from16 v17, v8

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_3
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 142
    .line 143
    sub-int/2addr v14, v11

    .line 144
    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    .line 145
    .line 146
    .line 147
    move-result v14

    .line 148
    move/from16 v17, v14

    .line 149
    .line 150
    const/4 v14, 0x1

    .line 151
    goto :goto_4

    .line 152
    :cond_4
    if-nez v12, :cond_5

    .line 153
    .line 154
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 155
    .line 156
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    .line 157
    .line 158
    .line 159
    move-result v14

    .line 160
    :goto_2
    move/from16 v17, v14

    .line 161
    .line 162
    :goto_3
    const/4 v14, 0x2

    .line 163
    goto :goto_4

    .line 164
    :cond_5
    move/from16 v17, v8

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_6
    if-nez v12, :cond_7

    .line 168
    .line 169
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 170
    .line 171
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    .line 172
    .line 173
    .line 174
    move-result v14

    .line 175
    goto :goto_2

    .line 176
    :cond_7
    move/from16 v17, v4

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :goto_4
    if-eq v5, v13, :cond_b

    .line 180
    .line 181
    if-eqz v5, :cond_9

    .line 182
    .line 183
    if-eq v5, v15, :cond_8

    .line 184
    .line 185
    move v13, v8

    .line 186
    :goto_5
    const/4 v12, 0x1

    .line 187
    goto :goto_8

    .line 188
    :cond_8
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 189
    .line 190
    sub-int/2addr v12, v10

    .line 191
    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    move v13, v12

    .line 196
    goto :goto_5

    .line 197
    :cond_9
    if-nez v12, :cond_a

    .line 198
    .line 199
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 200
    .line 201
    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    :goto_6
    move v13, v12

    .line 206
    :goto_7
    const/4 v12, 0x2

    .line 207
    goto :goto_8

    .line 208
    :cond_a
    move v13, v8

    .line 209
    goto :goto_7

    .line 210
    :cond_b
    if-nez v12, :cond_c

    .line 211
    .line 212
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 213
    .line 214
    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    goto :goto_6

    .line 219
    :cond_c
    move v13, v6

    .line 220
    goto :goto_7

    .line 221
    :goto_8
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 222
    .line 223
    .line 224
    move-result v15

    .line 225
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 226
    .line 227
    move/from16 v19, v10

    .line 228
    .line 229
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 230
    .line 231
    move-object/from16 v20, v10

    .line 232
    .line 233
    move/from16 v10, v17

    .line 234
    .line 235
    if-ne v10, v15, :cond_d

    .line 236
    .line 237
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 238
    .line 239
    .line 240
    move-result v15

    .line 241
    if-eq v13, v15, :cond_e

    .line 242
    .line 243
    :cond_d
    const/4 v15, 0x1

    .line 244
    goto :goto_a

    .line 245
    :cond_e
    const/16 p4, 0x1

    .line 246
    .line 247
    :goto_9
    const/4 v15, 0x0

    .line 248
    goto :goto_b

    .line 249
    :goto_a
    iput-boolean v15, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 250
    .line 251
    move/from16 p4, v15

    .line 252
    .line 253
    goto :goto_9

    .line 254
    :goto_b
    iput v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 255
    .line 256
    iput v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 257
    .line 258
    move/from16 v18, v15

    .line 259
    .line 260
    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 261
    .line 262
    sub-int/2addr v15, v11

    .line 263
    aput v15, v20, v18

    .line 264
    .line 265
    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 266
    .line 267
    sub-int v15, v15, v19

    .line 268
    .line 269
    aput v15, v20, p4

    .line 270
    .line 271
    move/from16 v15, v18

    .line 272
    .line 273
    iput v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 274
    .line 275
    iput v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 276
    .line 277
    invoke-virtual {v1, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 287
    .line 288
    .line 289
    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 290
    .line 291
    sub-int/2addr v10, v11

    .line 292
    if-gez v10, :cond_f

    .line 293
    .line 294
    iput v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 295
    .line 296
    goto :goto_c

    .line 297
    :cond_f
    iput v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 298
    .line 299
    :goto_c
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 300
    .line 301
    sub-int v0, v0, v19

    .line 302
    .line 303
    if-gez v0, :cond_10

    .line 304
    .line 305
    iput v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 306
    .line 307
    goto :goto_d

    .line 308
    :cond_10
    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 309
    .line 310
    :goto_d
    iput v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 311
    .line 312
    iput v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 313
    .line 314
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/core/view/MenuHostHelper;

    .line 315
    .line 316
    iget-object v7, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 319
    .line 320
    iget-object v9, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast v9, Ljava/util/ArrayList;

    .line 323
    .line 324
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 325
    .line 326
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 329
    .line 330
    .line 331
    move-result v11

    .line 332
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 333
    .line 334
    .line 335
    move-result v12

    .line 336
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 337
    .line 338
    .line 339
    move-result v13

    .line 340
    const/16 v14, 0x80

    .line 341
    .line 342
    invoke-static {v2, v14}, Landroidx/constraintlayout/core/widgets/Chain;->enabled(II)Z

    .line 343
    .line 344
    .line 345
    move-result v14

    .line 346
    const/16 v15, 0x40

    .line 347
    .line 348
    if-nez v14, :cond_12

    .line 349
    .line 350
    invoke-static {v2, v15}, Landroidx/constraintlayout/core/widgets/Chain;->enabled(II)Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-eqz v2, :cond_11

    .line 355
    .line 356
    goto :goto_e

    .line 357
    :cond_11
    const/4 v2, 0x0

    .line 358
    goto :goto_f

    .line 359
    :cond_12
    :goto_e
    const/4 v2, 0x1

    .line 360
    :goto_f
    const/16 v17, 0x0

    .line 361
    .line 362
    if-eqz v2, :cond_1a

    .line 363
    .line 364
    const/4 v15, 0x0

    .line 365
    :goto_10
    if-ge v15, v11, :cond_1a

    .line 366
    .line 367
    move/from16 v19, v2

    .line 368
    .line 369
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 376
    .line 377
    move/from16 v21, v11

    .line 378
    .line 379
    iget-object v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    .line 380
    .line 381
    move-object/from16 v22, v11

    .line 382
    .line 383
    const/16 v18, 0x0

    .line 384
    .line 385
    aget v11, v22, v18

    .line 386
    .line 387
    move/from16 v23, v15

    .line 388
    .line 389
    const/4 v15, 0x3

    .line 390
    if-ne v11, v15, :cond_13

    .line 391
    .line 392
    const/16 v25, 0x1

    .line 393
    .line 394
    :goto_11
    const/16 v24, 0x1

    .line 395
    .line 396
    goto :goto_12

    .line 397
    :cond_13
    const/16 v25, 0x0

    .line 398
    .line 399
    goto :goto_11

    .line 400
    :goto_12
    aget v11, v22, v24

    .line 401
    .line 402
    if-ne v11, v15, :cond_14

    .line 403
    .line 404
    const/4 v11, 0x1

    .line 405
    goto :goto_13

    .line 406
    :cond_14
    const/4 v11, 0x0

    .line 407
    :goto_13
    if-eqz v25, :cond_15

    .line 408
    .line 409
    if-eqz v11, :cond_15

    .line 410
    .line 411
    iget v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 412
    .line 413
    cmpl-float v11, v11, v17

    .line 414
    .line 415
    if-lez v11, :cond_15

    .line 416
    .line 417
    const/4 v11, 0x1

    .line 418
    goto :goto_14

    .line 419
    :cond_15
    const/4 v11, 0x0

    .line 420
    :goto_14
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 421
    .line 422
    .line 423
    move-result v15

    .line 424
    if-eqz v15, :cond_17

    .line 425
    .line 426
    if-eqz v11, :cond_17

    .line 427
    .line 428
    :cond_16
    :goto_15
    const/high16 v2, 0x40000000    # 2.0f

    .line 429
    .line 430
    const/16 v19, 0x0

    .line 431
    .line 432
    goto :goto_16

    .line 433
    :cond_17
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    .line 434
    .line 435
    .line 436
    move-result v15

    .line 437
    if-eqz v15, :cond_18

    .line 438
    .line 439
    if-eqz v11, :cond_18

    .line 440
    .line 441
    goto :goto_15

    .line 442
    :cond_18
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 443
    .line 444
    .line 445
    move-result v11

    .line 446
    if-nez v11, :cond_16

    .line 447
    .line 448
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    if-eqz v2, :cond_19

    .line 453
    .line 454
    goto :goto_15

    .line 455
    :cond_19
    add-int/lit8 v15, v23, 0x1

    .line 456
    .line 457
    move/from16 v2, v19

    .line 458
    .line 459
    move/from16 v11, v21

    .line 460
    .line 461
    goto :goto_10

    .line 462
    :cond_1a
    move/from16 v19, v2

    .line 463
    .line 464
    move/from16 v21, v11

    .line 465
    .line 466
    const/high16 v2, 0x40000000    # 2.0f

    .line 467
    .line 468
    :goto_16
    if-ne v3, v2, :cond_1b

    .line 469
    .line 470
    if-eq v5, v2, :cond_1c

    .line 471
    .line 472
    :cond_1b
    if-eqz v14, :cond_1d

    .line 473
    .line 474
    :cond_1c
    const/4 v2, 0x1

    .line 475
    goto :goto_17

    .line 476
    :cond_1d
    const/4 v2, 0x0

    .line 477
    :goto_17
    and-int v2, v19, v2

    .line 478
    .line 479
    if-eqz v2, :cond_3d

    .line 480
    .line 481
    const/16 v18, 0x0

    .line 482
    .line 483
    aget v15, v20, v18

    .line 484
    .line 485
    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    .line 486
    .line 487
    .line 488
    move-result v4

    .line 489
    const/4 v15, 0x1

    .line 490
    aget v11, v20, v15

    .line 491
    .line 492
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    .line 493
    .line 494
    .line 495
    move-result v6

    .line 496
    const/high16 v11, 0x40000000    # 2.0f

    .line 497
    .line 498
    if-ne v3, v11, :cond_1f

    .line 499
    .line 500
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 501
    .line 502
    .line 503
    move-result v11

    .line 504
    if-eq v11, v4, :cond_1e

    .line 505
    .line 506
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 507
    .line 508
    .line 509
    iput-boolean v15, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 510
    .line 511
    :cond_1e
    const/high16 v11, 0x40000000    # 2.0f

    .line 512
    .line 513
    :cond_1f
    if-ne v5, v11, :cond_20

    .line 514
    .line 515
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 516
    .line 517
    .line 518
    move-result v4

    .line 519
    if-eq v4, v6, :cond_20

    .line 520
    .line 521
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 522
    .line 523
    .line 524
    iput-boolean v15, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 525
    .line 526
    :cond_20
    if-ne v3, v11, :cond_36

    .line 527
    .line 528
    if-ne v5, v11, :cond_36

    .line 529
    .line 530
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/lang/Object;

    .line 531
    .line 532
    check-cast v4, Ljava/util/ArrayList;

    .line 533
    .line 534
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mWidgetcontainer:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 537
    .line 538
    iget-boolean v11, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 539
    .line 540
    if-nez v11, :cond_22

    .line 541
    .line 542
    iget-boolean v11, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 543
    .line 544
    if-eqz v11, :cond_21

    .line 545
    .line 546
    goto :goto_18

    .line 547
    :cond_21
    move/from16 v20, v2

    .line 548
    .line 549
    const/4 v15, 0x0

    .line 550
    goto :goto_1a

    .line 551
    :cond_22
    :goto_18
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 552
    .line 553
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 554
    .line 555
    .line 556
    move-result-object v11

    .line 557
    :goto_19
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 558
    .line 559
    .line 560
    move-result v15

    .line 561
    if-eqz v15, :cond_23

    .line 562
    .line 563
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v15

    .line 567
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 568
    .line 569
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->ensureWidgetRuns()V

    .line 570
    .line 571
    .line 572
    move/from16 v20, v2

    .line 573
    .line 574
    const/4 v2, 0x0

    .line 575
    iput-boolean v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 576
    .line 577
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 578
    .line 579
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 580
    .line 581
    .line 582
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 583
    .line 584
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 585
    .line 586
    .line 587
    move/from16 v2, v20

    .line 588
    .line 589
    goto :goto_19

    .line 590
    :cond_23
    move/from16 v20, v2

    .line 591
    .line 592
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->ensureWidgetRuns()V

    .line 593
    .line 594
    .line 595
    const/4 v15, 0x0

    .line 596
    iput-boolean v15, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 597
    .line 598
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 599
    .line 600
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 601
    .line 602
    .line 603
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 604
    .line 605
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 606
    .line 607
    .line 608
    iput-boolean v15, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 609
    .line 610
    :goto_1a
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Ljava/lang/Object;

    .line 611
    .line 612
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 613
    .line 614
    invoke-virtual {v8, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->basicMeasureWidgets(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 615
    .line 616
    .line 617
    iput v15, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 618
    .line 619
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    .line 620
    .line 621
    iput v15, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 622
    .line 623
    invoke-virtual {v6, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)I

    .line 624
    .line 625
    .line 626
    move-result v11

    .line 627
    move-object/from16 v22, v2

    .line 628
    .line 629
    const/4 v15, 0x1

    .line 630
    invoke-virtual {v6, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)I

    .line 631
    .line 632
    .line 633
    move-result v2

    .line 634
    iget-boolean v15, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 635
    .line 636
    if-eqz v15, :cond_24

    .line 637
    .line 638
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->buildGraph()V

    .line 639
    .line 640
    .line 641
    :cond_24
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 642
    .line 643
    .line 644
    move-result v15

    .line 645
    move-object/from16 v23, v4

    .line 646
    .line 647
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 648
    .line 649
    .line 650
    move-result v4

    .line 651
    move-object/from16 v24, v10

    .line 652
    .line 653
    iget-object v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 654
    .line 655
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 656
    .line 657
    invoke-virtual {v10, v15}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 658
    .line 659
    .line 660
    iget-object v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 661
    .line 662
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 663
    .line 664
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 668
    .line 669
    .line 670
    const/4 v10, 0x2

    .line 671
    if-eq v11, v10, :cond_27

    .line 672
    .line 673
    if-ne v2, v10, :cond_25

    .line 674
    .line 675
    goto :goto_1c

    .line 676
    :cond_25
    move/from16 v25, v4

    .line 677
    .line 678
    :cond_26
    const/4 v10, 0x1

    .line 679
    :goto_1b
    const/16 v18, 0x0

    .line 680
    .line 681
    goto :goto_1e

    .line 682
    :cond_27
    :goto_1c
    if-eqz v14, :cond_29

    .line 683
    .line 684
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 685
    .line 686
    .line 687
    move-result-object v10

    .line 688
    :cond_28
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 689
    .line 690
    .line 691
    move-result v25

    .line 692
    if-eqz v25, :cond_29

    .line 693
    .line 694
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v25

    .line 698
    check-cast v25, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 699
    .line 700
    invoke-virtual/range {v25 .. v25}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    .line 701
    .line 702
    .line 703
    move-result v25

    .line 704
    if-nez v25, :cond_28

    .line 705
    .line 706
    const/4 v14, 0x0

    .line 707
    :cond_29
    if-eqz v14, :cond_2a

    .line 708
    .line 709
    const/4 v10, 0x2

    .line 710
    if-ne v11, v10, :cond_2a

    .line 711
    .line 712
    const/4 v10, 0x1

    .line 713
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(I)V

    .line 714
    .line 715
    .line 716
    move/from16 v25, v4

    .line 717
    .line 718
    const/4 v10, 0x0

    .line 719
    invoke-virtual {v8, v6, v10}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 720
    .line 721
    .line 722
    move-result v4

    .line 723
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 724
    .line 725
    .line 726
    iget-object v4, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 727
    .line 728
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 729
    .line 730
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 731
    .line 732
    .line 733
    move-result v10

    .line 734
    invoke-virtual {v4, v10}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 735
    .line 736
    .line 737
    goto :goto_1d

    .line 738
    :cond_2a
    move/from16 v25, v4

    .line 739
    .line 740
    :goto_1d
    if-eqz v14, :cond_26

    .line 741
    .line 742
    const/4 v10, 0x2

    .line 743
    if-ne v2, v10, :cond_26

    .line 744
    .line 745
    const/4 v10, 0x1

    .line 746
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(I)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v8, v6, v10}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 750
    .line 751
    .line 752
    move-result v4

    .line 753
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 754
    .line 755
    .line 756
    iget-object v4, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 757
    .line 758
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 759
    .line 760
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 761
    .line 762
    .line 763
    move-result v14

    .line 764
    invoke-virtual {v4, v14}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 765
    .line 766
    .line 767
    goto :goto_1b

    .line 768
    :goto_1e
    aget v4, v22, v18

    .line 769
    .line 770
    if-eq v4, v10, :cond_2c

    .line 771
    .line 772
    const/4 v10, 0x4

    .line 773
    if-ne v4, v10, :cond_2b

    .line 774
    .line 775
    goto :goto_1f

    .line 776
    :cond_2b
    const/4 v4, 0x0

    .line 777
    goto :goto_20

    .line 778
    :cond_2c
    :goto_1f
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 779
    .line 780
    .line 781
    move-result v4

    .line 782
    add-int/2addr v4, v15

    .line 783
    iget-object v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 784
    .line 785
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 786
    .line 787
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 788
    .line 789
    .line 790
    iget-object v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 791
    .line 792
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 793
    .line 794
    sub-int/2addr v4, v15

    .line 795
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 799
    .line 800
    .line 801
    const/4 v15, 0x1

    .line 802
    aget v4, v22, v15

    .line 803
    .line 804
    if-eq v4, v15, :cond_2d

    .line 805
    .line 806
    const/4 v10, 0x4

    .line 807
    if-ne v4, v10, :cond_2e

    .line 808
    .line 809
    :cond_2d
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 810
    .line 811
    .line 812
    move-result v4

    .line 813
    add-int v4, v4, v25

    .line 814
    .line 815
    iget-object v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 816
    .line 817
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 818
    .line 819
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 820
    .line 821
    .line 822
    iget-object v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 823
    .line 824
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 825
    .line 826
    sub-int v4, v4, v25

    .line 827
    .line 828
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 829
    .line 830
    .line 831
    :cond_2e
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 832
    .line 833
    .line 834
    const/4 v4, 0x1

    .line 835
    :goto_20
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 836
    .line 837
    .line 838
    move-result-object v8

    .line 839
    :goto_21
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 840
    .line 841
    .line 842
    move-result v10

    .line 843
    if-eqz v10, :cond_30

    .line 844
    .line 845
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    move-result-object v10

    .line 849
    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 850
    .line 851
    iget-object v14, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 852
    .line 853
    if-ne v14, v6, :cond_2f

    .line 854
    .line 855
    iget-boolean v14, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mResolved:Z

    .line 856
    .line 857
    if-nez v14, :cond_2f

    .line 858
    .line 859
    goto :goto_21

    .line 860
    :cond_2f
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->applyToWidget()V

    .line 861
    .line 862
    .line 863
    goto :goto_21

    .line 864
    :cond_30
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 865
    .line 866
    .line 867
    move-result-object v8

    .line 868
    :cond_31
    :goto_22
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 869
    .line 870
    .line 871
    move-result v10

    .line 872
    if-eqz v10, :cond_35

    .line 873
    .line 874
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v10

    .line 878
    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 879
    .line 880
    if-nez v4, :cond_32

    .line 881
    .line 882
    iget-object v14, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 883
    .line 884
    if-ne v14, v6, :cond_32

    .line 885
    .line 886
    goto :goto_22

    .line 887
    :cond_32
    iget-object v14, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 888
    .line 889
    iget-boolean v14, v14, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 890
    .line 891
    if-nez v14, :cond_33

    .line 892
    .line 893
    :goto_23
    const/4 v4, 0x0

    .line 894
    goto :goto_24

    .line 895
    :cond_33
    iget-object v14, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 896
    .line 897
    iget-boolean v14, v14, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 898
    .line 899
    if-nez v14, :cond_34

    .line 900
    .line 901
    instance-of v14, v10, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;

    .line 902
    .line 903
    if-nez v14, :cond_34

    .line 904
    .line 905
    goto :goto_23

    .line 906
    :cond_34
    iget-object v14, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 907
    .line 908
    iget-boolean v14, v14, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 909
    .line 910
    if-nez v14, :cond_31

    .line 911
    .line 912
    instance-of v14, v10, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 913
    .line 914
    if-nez v14, :cond_31

    .line 915
    .line 916
    instance-of v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;

    .line 917
    .line 918
    if-nez v10, :cond_31

    .line 919
    .line 920
    goto :goto_23

    .line 921
    :cond_35
    const/4 v4, 0x1

    .line 922
    :goto_24
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(I)V

    .line 923
    .line 924
    .line 925
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(I)V

    .line 926
    .line 927
    .line 928
    const/4 v2, 0x2

    .line 929
    const/high16 v11, 0x40000000    # 2.0f

    .line 930
    .line 931
    goto/16 :goto_28

    .line 932
    .line 933
    :cond_36
    move/from16 v20, v2

    .line 934
    .line 935
    move-object/from16 v24, v10

    .line 936
    .line 937
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mWidgetcontainer:Ljava/lang/Object;

    .line 938
    .line 939
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 940
    .line 941
    iget-boolean v4, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 942
    .line 943
    if-eqz v4, :cond_38

    .line 944
    .line 945
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 946
    .line 947
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 948
    .line 949
    .line 950
    move-result-object v4

    .line 951
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 952
    .line 953
    .line 954
    move-result v6

    .line 955
    if-eqz v6, :cond_37

    .line 956
    .line 957
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 958
    .line 959
    .line 960
    move-result-object v6

    .line 961
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 962
    .line 963
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->ensureWidgetRuns()V

    .line 964
    .line 965
    .line 966
    const/4 v15, 0x0

    .line 967
    iput-boolean v15, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 968
    .line 969
    iget-object v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 970
    .line 971
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 972
    .line 973
    iput-boolean v15, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 974
    .line 975
    iput-boolean v15, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mResolved:Z

    .line 976
    .line 977
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 978
    .line 979
    .line 980
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 981
    .line 982
    iget-object v10, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 983
    .line 984
    iput-boolean v15, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 985
    .line 986
    iput-boolean v15, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mResolved:Z

    .line 987
    .line 988
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 989
    .line 990
    .line 991
    goto :goto_25

    .line 992
    :cond_37
    const/4 v15, 0x0

    .line 993
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->ensureWidgetRuns()V

    .line 994
    .line 995
    .line 996
    iput-boolean v15, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 997
    .line 998
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 999
    .line 1000
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 1001
    .line 1002
    iput-boolean v15, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 1003
    .line 1004
    iput-boolean v15, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mResolved:Z

    .line 1005
    .line 1006
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 1007
    .line 1008
    .line 1009
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 1010
    .line 1011
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 1012
    .line 1013
    iput-boolean v15, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 1014
    .line 1015
    iput-boolean v15, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mResolved:Z

    .line 1016
    .line 1017
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->buildGraph()V

    .line 1021
    .line 1022
    .line 1023
    goto :goto_26

    .line 1024
    :cond_38
    const/4 v15, 0x0

    .line 1025
    :goto_26
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Ljava/lang/Object;

    .line 1026
    .line 1027
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 1028
    .line 1029
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->basicMeasureWidgets(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 1030
    .line 1031
    .line 1032
    iput v15, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 1033
    .line 1034
    iput v15, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 1035
    .line 1036
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 1037
    .line 1038
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1039
    .line 1040
    invoke-virtual {v4, v15}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 1041
    .line 1042
    .line 1043
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 1044
    .line 1045
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1046
    .line 1047
    invoke-virtual {v2, v15}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 1048
    .line 1049
    .line 1050
    const/high16 v11, 0x40000000    # 2.0f

    .line 1051
    .line 1052
    if-ne v3, v11, :cond_39

    .line 1053
    .line 1054
    invoke-virtual {v1, v15, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(IZ)Z

    .line 1055
    .line 1056
    .line 1057
    move-result v2

    .line 1058
    move v4, v2

    .line 1059
    const/4 v2, 0x1

    .line 1060
    goto :goto_27

    .line 1061
    :cond_39
    const/4 v2, 0x0

    .line 1062
    const/4 v4, 0x1

    .line 1063
    :goto_27
    if-ne v5, v11, :cond_3a

    .line 1064
    .line 1065
    const/4 v15, 0x1

    .line 1066
    invoke-virtual {v1, v15, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(IZ)Z

    .line 1067
    .line 1068
    .line 1069
    move-result v6

    .line 1070
    and-int/2addr v4, v6

    .line 1071
    add-int/lit8 v2, v2, 0x1

    .line 1072
    .line 1073
    :cond_3a
    :goto_28
    if-eqz v4, :cond_3e

    .line 1074
    .line 1075
    if-ne v3, v11, :cond_3b

    .line 1076
    .line 1077
    const/4 v3, 0x1

    .line 1078
    goto :goto_29

    .line 1079
    :cond_3b
    const/4 v3, 0x0

    .line 1080
    :goto_29
    if-ne v5, v11, :cond_3c

    .line 1081
    .line 1082
    const/4 v5, 0x1

    .line 1083
    goto :goto_2a

    .line 1084
    :cond_3c
    const/4 v5, 0x0

    .line 1085
    :goto_2a
    invoke-virtual {v1, v3, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateFromRuns(ZZ)V

    .line 1086
    .line 1087
    .line 1088
    goto :goto_2b

    .line 1089
    :cond_3d
    move/from16 v20, v2

    .line 1090
    .line 1091
    move-object/from16 v24, v10

    .line 1092
    .line 1093
    const/4 v2, 0x0

    .line 1094
    const/4 v4, 0x0

    .line 1095
    :cond_3e
    :goto_2b
    if-eqz v4, :cond_40

    .line 1096
    .line 1097
    const/4 v10, 0x2

    .line 1098
    if-eq v2, v10, :cond_3f

    .line 1099
    .line 1100
    goto :goto_2c

    .line 1101
    :cond_3f
    return-void

    .line 1102
    :cond_40
    :goto_2c
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 1103
    .line 1104
    if-lez v21, :cond_4d

    .line 1105
    .line 1106
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1107
    .line 1108
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1109
    .line 1110
    .line 1111
    move-result v3

    .line 1112
    const/16 v4, 0x40

    .line 1113
    .line 1114
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1115
    .line 1116
    .line 1117
    move-result v4

    .line 1118
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 1119
    .line 1120
    const/4 v15, 0x0

    .line 1121
    :goto_2d
    if-ge v15, v3, :cond_4b

    .line 1122
    .line 1123
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1124
    .line 1125
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v6

    .line 1129
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1130
    .line 1131
    instance-of v8, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 1132
    .line 1133
    if-eqz v8, :cond_41

    .line 1134
    .line 1135
    :goto_2e
    move/from16 p0, v3

    .line 1136
    .line 1137
    const/4 v14, 0x3

    .line 1138
    goto/16 :goto_31

    .line 1139
    .line 1140
    :cond_41
    instance-of v8, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 1141
    .line 1142
    if-eqz v8, :cond_42

    .line 1143
    .line 1144
    goto :goto_2e

    .line 1145
    :cond_42
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1146
    .line 1147
    .line 1148
    if-eqz v4, :cond_43

    .line 1149
    .line 1150
    iget-object v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 1151
    .line 1152
    if-eqz v8, :cond_43

    .line 1153
    .line 1154
    iget-object v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 1155
    .line 1156
    if-eqz v10, :cond_43

    .line 1157
    .line 1158
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 1159
    .line 1160
    iget-boolean v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 1161
    .line 1162
    if-eqz v8, :cond_43

    .line 1163
    .line 1164
    iget-object v8, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 1165
    .line 1166
    iget-boolean v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 1167
    .line 1168
    if-eqz v8, :cond_43

    .line 1169
    .line 1170
    goto :goto_2e

    .line 1171
    :cond_43
    const/4 v10, 0x0

    .line 1172
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)I

    .line 1173
    .line 1174
    .line 1175
    move-result v8

    .line 1176
    const/4 v10, 0x1

    .line 1177
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)I

    .line 1178
    .line 1179
    .line 1180
    move-result v11

    .line 1181
    const/4 v14, 0x3

    .line 1182
    move/from16 p0, v3

    .line 1183
    .line 1184
    if-ne v8, v14, :cond_44

    .line 1185
    .line 1186
    iget v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1187
    .line 1188
    if-eq v3, v10, :cond_44

    .line 1189
    .line 1190
    if-ne v11, v14, :cond_44

    .line 1191
    .line 1192
    iget v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1193
    .line 1194
    if-eq v3, v10, :cond_44

    .line 1195
    .line 1196
    move v3, v10

    .line 1197
    goto :goto_2f

    .line 1198
    :cond_44
    const/4 v3, 0x0

    .line 1199
    :goto_2f
    if-nez v3, :cond_48

    .line 1200
    .line 1201
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1202
    .line 1203
    .line 1204
    move-result v14

    .line 1205
    if-eqz v14, :cond_48

    .line 1206
    .line 1207
    const/4 v14, 0x3

    .line 1208
    if-ne v8, v14, :cond_45

    .line 1209
    .line 1210
    iget v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1211
    .line 1212
    if-nez v10, :cond_45

    .line 1213
    .line 1214
    if-eq v11, v14, :cond_45

    .line 1215
    .line 1216
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 1217
    .line 1218
    .line 1219
    move-result v10

    .line 1220
    if-nez v10, :cond_45

    .line 1221
    .line 1222
    const/4 v3, 0x1

    .line 1223
    :cond_45
    if-ne v11, v14, :cond_46

    .line 1224
    .line 1225
    iget v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1226
    .line 1227
    if-nez v10, :cond_46

    .line 1228
    .line 1229
    if-eq v8, v14, :cond_46

    .line 1230
    .line 1231
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 1232
    .line 1233
    .line 1234
    move-result v10

    .line 1235
    if-nez v10, :cond_46

    .line 1236
    .line 1237
    const/4 v3, 0x1

    .line 1238
    :cond_46
    if-eq v8, v14, :cond_47

    .line 1239
    .line 1240
    if-ne v11, v14, :cond_49

    .line 1241
    .line 1242
    :cond_47
    iget v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1243
    .line 1244
    cmpl-float v8, v8, v17

    .line 1245
    .line 1246
    if-lez v8, :cond_49

    .line 1247
    .line 1248
    const/4 v3, 0x1

    .line 1249
    goto :goto_30

    .line 1250
    :cond_48
    const/4 v14, 0x3

    .line 1251
    :cond_49
    :goto_30
    if-eqz v3, :cond_4a

    .line 1252
    .line 1253
    goto :goto_31

    .line 1254
    :cond_4a
    const/4 v10, 0x0

    .line 1255
    invoke-virtual {v0, v10, v6, v5}, Landroidx/core/view/MenuHostHelper;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)Z

    .line 1256
    .line 1257
    .line 1258
    :goto_31
    add-int/lit8 v15, v15, 0x1

    .line 1259
    .line 1260
    move/from16 v3, p0

    .line 1261
    .line 1262
    goto/16 :goto_2d

    .line 1263
    .line 1264
    :cond_4b
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1265
    .line 1266
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1267
    .line 1268
    .line 1269
    move-result v4

    .line 1270
    iget-object v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 1271
    .line 1272
    const/4 v15, 0x0

    .line 1273
    :goto_32
    if-ge v15, v4, :cond_4c

    .line 1274
    .line 1275
    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1276
    .line 1277
    .line 1278
    add-int/lit8 v15, v15, 0x1

    .line 1279
    .line 1280
    goto :goto_32

    .line 1281
    :cond_4c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1282
    .line 1283
    .line 1284
    move-result v3

    .line 1285
    if-lez v3, :cond_4d

    .line 1286
    .line 1287
    const/4 v15, 0x0

    .line 1288
    :goto_33
    if-ge v15, v3, :cond_4d

    .line 1289
    .line 1290
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v4

    .line 1294
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1295
    .line 1296
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1297
    .line 1298
    .line 1299
    add-int/lit8 v15, v15, 0x1

    .line 1300
    .line 1301
    goto :goto_33

    .line 1302
    :cond_4d
    invoke-virtual {v0, v1}, Landroidx/core/view/MenuHostHelper;->updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1306
    .line 1307
    .line 1308
    move-result v3

    .line 1309
    const/4 v15, 0x0

    .line 1310
    if-lez v21, :cond_4e

    .line 1311
    .line 1312
    invoke-virtual {v0, v1, v15, v12, v13}, Landroidx/core/view/MenuHostHelper;->solveLinearSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 1313
    .line 1314
    .line 1315
    :cond_4e
    if-lez v3, :cond_5d

    .line 1316
    .line 1317
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    .line 1318
    .line 1319
    aget v5, v4, v15

    .line 1320
    .line 1321
    const/4 v10, 0x2

    .line 1322
    if-ne v5, v10, :cond_4f

    .line 1323
    .line 1324
    const/4 v5, 0x1

    .line 1325
    :goto_34
    const/4 v6, 0x1

    .line 1326
    goto :goto_35

    .line 1327
    :cond_4f
    move v5, v15

    .line 1328
    goto :goto_34

    .line 1329
    :goto_35
    aget v4, v4, v6

    .line 1330
    .line 1331
    if-ne v4, v10, :cond_50

    .line 1332
    .line 1333
    const/4 v4, 0x1

    .line 1334
    goto :goto_36

    .line 1335
    :cond_50
    move v4, v15

    .line 1336
    :goto_36
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1337
    .line 1338
    .line 1339
    move-result v6

    .line 1340
    iget v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 1341
    .line 1342
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    .line 1343
    .line 1344
    .line 1345
    move-result v6

    .line 1346
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1347
    .line 1348
    .line 1349
    move-result v8

    .line 1350
    iget v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 1351
    .line 1352
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 1353
    .line 1354
    .line 1355
    move-result v7

    .line 1356
    move v8, v15

    .line 1357
    :goto_37
    if-ge v8, v3, :cond_51

    .line 1358
    .line 1359
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v10

    .line 1363
    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1364
    .line 1365
    add-int/lit8 v8, v8, 0x1

    .line 1366
    .line 1367
    goto :goto_37

    .line 1368
    :cond_51
    move v8, v15

    .line 1369
    :goto_38
    const/4 v10, 0x2

    .line 1370
    if-ge v8, v10, :cond_5d

    .line 1371
    .line 1372
    move v11, v15

    .line 1373
    move v14, v11

    .line 1374
    :goto_39
    if-ge v11, v3, :cond_5c

    .line 1375
    .line 1376
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v16

    .line 1380
    move-object/from16 v10, v16

    .line 1381
    .line 1382
    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1383
    .line 1384
    instance-of v15, v10, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 1385
    .line 1386
    if-eqz v15, :cond_52

    .line 1387
    .line 1388
    :goto_3a
    move/from16 p0, v3

    .line 1389
    .line 1390
    goto :goto_3b

    .line 1391
    :cond_52
    instance-of v15, v10, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 1392
    .line 1393
    if-eqz v15, :cond_53

    .line 1394
    .line 1395
    goto :goto_3a

    .line 1396
    :cond_53
    iget v15, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1397
    .line 1398
    move/from16 p0, v3

    .line 1399
    .line 1400
    const/16 v3, 0x8

    .line 1401
    .line 1402
    if-ne v15, v3, :cond_54

    .line 1403
    .line 1404
    goto :goto_3b

    .line 1405
    :cond_54
    if-eqz v20, :cond_55

    .line 1406
    .line 1407
    iget-object v3, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 1408
    .line 1409
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 1410
    .line 1411
    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 1412
    .line 1413
    if-eqz v3, :cond_55

    .line 1414
    .line 1415
    iget-object v3, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 1416
    .line 1417
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 1418
    .line 1419
    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 1420
    .line 1421
    if-eqz v3, :cond_55

    .line 1422
    .line 1423
    :goto_3b
    move/from16 p2, v4

    .line 1424
    .line 1425
    move/from16 v16, v5

    .line 1426
    .line 1427
    move/from16 v17, v8

    .line 1428
    .line 1429
    move v15, v14

    .line 1430
    move-object/from16 v8, v24

    .line 1431
    .line 1432
    const/4 v14, 0x4

    .line 1433
    goto/16 :goto_3f

    .line 1434
    .line 1435
    :cond_55
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1436
    .line 1437
    .line 1438
    move-result v3

    .line 1439
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1440
    .line 1441
    .line 1442
    move-result v15

    .line 1443
    move/from16 p2, v4

    .line 1444
    .line 1445
    iget v4, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 1446
    .line 1447
    move/from16 v16, v5

    .line 1448
    .line 1449
    const/4 v5, 0x1

    .line 1450
    if-ne v8, v5, :cond_56

    .line 1451
    .line 1452
    const/4 v5, 0x2

    .line 1453
    :cond_56
    move/from16 v17, v8

    .line 1454
    .line 1455
    move-object/from16 v8, v24

    .line 1456
    .line 1457
    invoke-virtual {v0, v5, v10, v8}, Landroidx/core/view/MenuHostHelper;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)Z

    .line 1458
    .line 1459
    .line 1460
    move-result v5

    .line 1461
    or-int/2addr v5, v14

    .line 1462
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1463
    .line 1464
    .line 1465
    move-result v14

    .line 1466
    move/from16 v21, v5

    .line 1467
    .line 1468
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1469
    .line 1470
    .line 1471
    move-result v5

    .line 1472
    if-eq v14, v3, :cond_58

    .line 1473
    .line 1474
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 1475
    .line 1476
    .line 1477
    if-eqz v16, :cond_57

    .line 1478
    .line 1479
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 1480
    .line 1481
    .line 1482
    move-result v3

    .line 1483
    iget v14, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1484
    .line 1485
    add-int/2addr v3, v14

    .line 1486
    if-le v3, v6, :cond_57

    .line 1487
    .line 1488
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 1489
    .line 1490
    .line 1491
    move-result v3

    .line 1492
    iget v14, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1493
    .line 1494
    add-int/2addr v3, v14

    .line 1495
    const/4 v14, 0x4

    .line 1496
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v19

    .line 1500
    invoke-virtual/range {v19 .. v19}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1501
    .line 1502
    .line 1503
    move-result v19

    .line 1504
    add-int v3, v19, v3

    .line 1505
    .line 1506
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    .line 1507
    .line 1508
    .line 1509
    move-result v6

    .line 1510
    goto :goto_3c

    .line 1511
    :cond_57
    const/4 v14, 0x4

    .line 1512
    :goto_3c
    const/16 v21, 0x1

    .line 1513
    .line 1514
    goto :goto_3d

    .line 1515
    :cond_58
    const/4 v14, 0x4

    .line 1516
    :goto_3d
    if-eq v5, v15, :cond_5a

    .line 1517
    .line 1518
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 1519
    .line 1520
    .line 1521
    if-eqz p2, :cond_59

    .line 1522
    .line 1523
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 1524
    .line 1525
    .line 1526
    move-result v3

    .line 1527
    iget v5, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1528
    .line 1529
    add-int/2addr v3, v5

    .line 1530
    if-le v3, v7, :cond_59

    .line 1531
    .line 1532
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 1533
    .line 1534
    .line 1535
    move-result v3

    .line 1536
    iget v5, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1537
    .line 1538
    add-int/2addr v3, v5

    .line 1539
    const/4 v5, 0x5

    .line 1540
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v5

    .line 1544
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1545
    .line 1546
    .line 1547
    move-result v5

    .line 1548
    add-int/2addr v5, v3

    .line 1549
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 1550
    .line 1551
    .line 1552
    move-result v7

    .line 1553
    :cond_59
    const/4 v15, 0x1

    .line 1554
    goto :goto_3e

    .line 1555
    :cond_5a
    move/from16 v15, v21

    .line 1556
    .line 1557
    :goto_3e
    iget-boolean v3, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHasBaseline:Z

    .line 1558
    .line 1559
    if-eqz v3, :cond_5b

    .line 1560
    .line 1561
    iget v3, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 1562
    .line 1563
    if-eq v4, v3, :cond_5b

    .line 1564
    .line 1565
    const/4 v15, 0x1

    .line 1566
    :cond_5b
    :goto_3f
    add-int/lit8 v11, v11, 0x1

    .line 1567
    .line 1568
    move/from16 v3, p0

    .line 1569
    .line 1570
    move/from16 v4, p2

    .line 1571
    .line 1572
    move-object/from16 v24, v8

    .line 1573
    .line 1574
    move v14, v15

    .line 1575
    move/from16 v5, v16

    .line 1576
    .line 1577
    move/from16 v8, v17

    .line 1578
    .line 1579
    const/4 v10, 0x2

    .line 1580
    const/4 v15, 0x0

    .line 1581
    goto/16 :goto_39

    .line 1582
    .line 1583
    :cond_5c
    move/from16 p0, v3

    .line 1584
    .line 1585
    move/from16 p2, v4

    .line 1586
    .line 1587
    move/from16 v16, v5

    .line 1588
    .line 1589
    move/from16 v17, v8

    .line 1590
    .line 1591
    move-object/from16 v8, v24

    .line 1592
    .line 1593
    const/16 v19, 0x4

    .line 1594
    .line 1595
    if-eqz v14, :cond_5d

    .line 1596
    .line 1597
    add-int/lit8 v3, v17, 0x1

    .line 1598
    .line 1599
    invoke-virtual {v0, v1, v3, v12, v13}, Landroidx/core/view/MenuHostHelper;->solveLinearSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 1600
    .line 1601
    .line 1602
    move/from16 v4, p2

    .line 1603
    .line 1604
    move-object/from16 v24, v8

    .line 1605
    .line 1606
    move/from16 v5, v16

    .line 1607
    .line 1608
    const/4 v15, 0x0

    .line 1609
    move v8, v3

    .line 1610
    move/from16 v3, p0

    .line 1611
    .line 1612
    goto/16 :goto_38

    .line 1613
    .line 1614
    :cond_5d
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 1615
    .line 1616
    const/16 v0, 0x200

    .line 1617
    .line 1618
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1619
    .line 1620
    .line 1621
    move-result v0

    .line 1622
    sput-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    .line 1623
    .line 1624
    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/compose/ui/platform/WeakCache;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 4
    .line 5
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 6
    .line 7
    const/16 p1, 0x200

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    sput-boolean p0, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    .line 14
    .line 15
    return-void
.end method

.method public final setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;II)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    instance-of p4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 24
    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    const/4 p4, 0x1

    .line 28
    iput-boolean p4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mNeedsBaseline:Z

    .line 29
    .line 30
    const/4 v0, 0x6

    .line 31
    if-ne p5, v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 38
    .line 39
    iput-boolean p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mNeedsBaseline:Z

    .line 40
    .line 41
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 42
    .line 43
    iput-boolean p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHasBaseline:Z

    .line 44
    .line 45
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p3, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    iget p5, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    .line 54
    .line 55
    iget p2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    .line 56
    .line 57
    invoke-virtual {p0, p3, p5, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;II)V

    .line 58
    .line 59
    .line 60
    iput-boolean p4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHasBaseline:Z

    .line 61
    .line 62
    const/4 p0, 0x3

    .line 63
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x5

    .line 71
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
