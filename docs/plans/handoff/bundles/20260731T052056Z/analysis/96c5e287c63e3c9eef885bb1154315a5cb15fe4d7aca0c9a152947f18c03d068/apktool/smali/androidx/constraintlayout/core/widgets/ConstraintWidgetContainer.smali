.class public final Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
.super Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final mBasicMeasureSolver:Lcom/caverock/androidsvg/SVG;

.field public mChildren:Ljava/util/ArrayList;

.field public final mDependencyGraph:Lokio/FileMetadata;

.field public mHeightMeasuredTooSmall:Z

.field public mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public mHorizontalChainsSize:I

.field public mHorizontalWrapMax:Ljava/lang/ref/WeakReference;

.field public mHorizontalWrapMin:Ljava/lang/ref/WeakReference;

.field public mIsRtl:Z

.field public final mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field public mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

.field public mOptimizationLevel:I

.field public mPaddingLeft:I

.field public mPaddingTop:I

.field public mPass:I

.field public final mSystem:Landroidx/constraintlayout/core/LinearSystem;

.field public mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public mVerticalChainsSize:I

.field public mVerticalWrapMax:Ljava/lang/ref/WeakReference;

.field public mVerticalWrapMin:Ljava/lang/ref/WeakReference;

.field public final mWidgetsToAdd:Ljava/util/HashSet;

.field public mWidthMeasuredTooSmall:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/caverock/androidsvg/SVG;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVG;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Lcom/caverock/androidsvg/SVG;

    .line 17
    .line 18
    new-instance v0, Lokio/FileMetadata;

    .line 19
    .line 20
    invoke-direct {v0}, Lokio/FileMetadata;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v0, Lokio/FileMetadata;->isRegularFile:Z

    .line 25
    .line 26
    iput-boolean v1, v0, Lokio/FileMetadata;->isDirectory:Z

    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Lokio/FileMetadata;->createdAtMillis:Ljava/lang/Object;

    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput-object v1, v0, Lokio/FileMetadata;->lastModifiedAtMillis:Ljava/lang/Object;

    .line 42
    .line 43
    new-instance v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v2, v0, Lokio/FileMetadata;->lastAccessedAtMillis:Ljava/lang/Object;

    .line 49
    .line 50
    new-instance v2, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v2, v0, Lokio/FileMetadata;->extras:Ljava/lang/Object;

    .line 56
    .line 57
    iput-object p0, v0, Lokio/FileMetadata;->symlinkTarget:Ljava/lang/Object;

    .line 58
    .line 59
    iput-object p0, v0, Lokio/FileMetadata;->size:Ljava/lang/Object;

    .line 60
    .line 61
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Lokio/FileMetadata;

    .line 62
    .line 63
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 67
    .line 68
    new-instance v2, Landroidx/constraintlayout/core/LinearSystem;

    .line 69
    .line 70
    invoke-direct {v2}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 74
    .line 75
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 76
    .line 77
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 78
    .line 79
    const/4 v2, 0x4

    .line 80
    new-array v3, v2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 81
    .line 82
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 83
    .line 84
    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 85
    .line 86
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 87
    .line 88
    const/16 v2, 0x101

    .line 89
    .line 90
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 91
    .line 92
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 93
    .line 94
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 95
    .line 96
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 97
    .line 98
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 99
    .line 100
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 101
    .line 102
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 103
    .line 104
    new-instance v0, Ljava/util/HashSet;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidgetsToAdd:Ljava/util/HashSet;

    .line 110
    .line 111
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 117
    .line 118
    return-void
.end method

.method public static measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eq v0, v2, :cond_13

    .line 12
    .line 13
    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 14
    .line 15
    if-nez v0, :cond_13

    .line 16
    .line 17
    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto/16 :goto_8

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 24
    .line 25
    aget-object v2, v0, v3

    .line 26
    .line 27
    iput-object v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    aget-object v0, v0, v2

    .line 31
    .line 32
    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 45
    .line 46
    iput-boolean v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 47
    .line 48
    iput v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 49
    .line 50
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 51
    .line 52
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 53
    .line 54
    if-ne v0, v4, :cond_2

    .line 55
    .line 56
    move v0, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move v0, v3

    .line 59
    :goto_0
    iget-object v5, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 60
    .line 61
    if-ne v5, v4, :cond_3

    .line 62
    .line 63
    move v4, v2

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move v4, v3

    .line 66
    :goto_1
    const/4 v5, 0x0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 70
    .line 71
    cmpl-float v6, v6, v5

    .line 72
    .line 73
    if-lez v6, :cond_4

    .line 74
    .line 75
    move v6, v2

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    move v6, v3

    .line 78
    :goto_2
    if-eqz v4, :cond_5

    .line 79
    .line 80
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 81
    .line 82
    cmpl-float v5, v7, v5

    .line 83
    .line 84
    if-lez v5, :cond_5

    .line 85
    .line 86
    move v5, v2

    .line 87
    goto :goto_3

    .line 88
    :cond_5
    move v5, v3

    .line 89
    :goto_3
    if-eqz v0, :cond_7

    .line 90
    .line 91
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_7

    .line 96
    .line 97
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 98
    .line 99
    if-nez v7, :cond_7

    .line 100
    .line 101
    if-nez v6, :cond_7

    .line 102
    .line 103
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 104
    .line 105
    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 106
    .line 107
    if-eqz v4, :cond_6

    .line 108
    .line 109
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 110
    .line 111
    if-nez v0, :cond_6

    .line 112
    .line 113
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 114
    .line 115
    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 116
    .line 117
    :cond_6
    move v0, v3

    .line 118
    :cond_7
    if-eqz v4, :cond_9

    .line 119
    .line 120
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-eqz v7, :cond_9

    .line 125
    .line 126
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 127
    .line 128
    if-nez v7, :cond_9

    .line 129
    .line 130
    if-nez v5, :cond_9

    .line 131
    .line 132
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 133
    .line 134
    iput-object v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 135
    .line 136
    if-eqz v0, :cond_8

    .line 137
    .line 138
    iget v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 139
    .line 140
    if-nez v4, :cond_8

    .line 141
    .line 142
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 143
    .line 144
    iput-object v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 145
    .line 146
    :cond_8
    move v4, v3

    .line 147
    :cond_9
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-eqz v7, :cond_a

    .line 152
    .line 153
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 154
    .line 155
    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 156
    .line 157
    move v0, v3

    .line 158
    :cond_a
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    if-eqz v7, :cond_b

    .line 163
    .line 164
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 165
    .line 166
    iput-object v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 167
    .line 168
    move v4, v3

    .line 169
    :cond_b
    const/4 v7, 0x4

    .line 170
    if-eqz v6, :cond_e

    .line 171
    .line 172
    aget v6, v1, v3

    .line 173
    .line 174
    if-ne v6, v7, :cond_c

    .line 175
    .line 176
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 177
    .line 178
    iput-object v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_c
    if-nez v4, :cond_e

    .line 182
    .line 183
    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 184
    .line 185
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 186
    .line 187
    if-ne v4, v6, :cond_d

    .line 188
    .line 189
    iget v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_d
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 193
    .line 194
    iput-object v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 195
    .line 196
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 197
    .line 198
    .line 199
    iget v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 200
    .line 201
    :goto_4
    iput-object v6, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 202
    .line 203
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 204
    .line 205
    int-to-float v4, v4

    .line 206
    mul-float/2addr v6, v4

    .line 207
    float-to-int v4, v6

    .line 208
    iput v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 209
    .line 210
    :cond_e
    :goto_5
    if-eqz v5, :cond_12

    .line 211
    .line 212
    aget v1, v1, v2

    .line 213
    .line 214
    if-ne v1, v7, :cond_f

    .line 215
    .line 216
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 217
    .line 218
    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_f
    if-nez v0, :cond_12

    .line 222
    .line 223
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 224
    .line 225
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 226
    .line 227
    if-ne v0, v1, :cond_10

    .line 228
    .line 229
    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_10
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 233
    .line 234
    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 235
    .line 236
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 237
    .line 238
    .line 239
    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 240
    .line 241
    :goto_6
    iput-object v1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 242
    .line 243
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 244
    .line 245
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 246
    .line 247
    const/4 v4, -0x1

    .line 248
    if-ne v1, v4, :cond_11

    .line 249
    .line 250
    int-to-float v0, v0

    .line 251
    div-float/2addr v0, v2

    .line 252
    float-to-int v0, v0

    .line 253
    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_11
    int-to-float v0, v0

    .line 257
    mul-float/2addr v2, v0

    .line 258
    float-to-int v0, v2

    .line 259
    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 260
    .line 261
    :cond_12
    :goto_7
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 262
    .line 263
    .line 264
    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 265
    .line 266
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 267
    .line 268
    .line 269
    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 270
    .line 271
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 272
    .line 273
    .line 274
    iget-boolean p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 275
    .line 276
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHasBaseline:Z

    .line 277
    .line 278
    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 279
    .line 280
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 281
    .line 282
    .line 283
    iput v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 284
    .line 285
    return-void

    .line 286
    :cond_13
    :goto_8
    iput v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 287
    .line 288
    iput v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 289
    .line 290
    return-void
.end method


# virtual methods
.method public final addChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 5
    .line 6
    add-int/2addr p2, v0

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    if-lt p2, v2, :cond_0

    .line 11
    .line 12
    array-length p2, v1

    .line 13
    mul-int/lit8 p2, p2, 0x2

    .line 14
    .line 15
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    move-object v1, p2

    .line 20
    check-cast v1, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 21
    .line 22
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 23
    .line 24
    :cond_0
    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 25
    .line 26
    new-instance v2, Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    iget-boolean v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 30
    .line 31
    invoke-direct {v2, p1, v3, v4}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    .line 32
    .line 33
    .line 34
    aput-object v2, v1, p2

    .line 35
    .line 36
    add-int/2addr p2, v0

    .line 37
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    if-ne p2, v0, :cond_3

    .line 41
    .line 42
    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 43
    .line 44
    add-int/2addr p2, v0

    .line 45
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 46
    .line 47
    array-length v2, v1

    .line 48
    if-lt p2, v2, :cond_2

    .line 49
    .line 50
    array-length p2, v1

    .line 51
    mul-int/lit8 p2, p2, 0x2

    .line 52
    .line 53
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    move-object v1, p2

    .line 58
    check-cast v1, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 59
    .line 60
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 61
    .line 62
    :cond_2
    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 63
    .line 64
    new-instance v2, Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 65
    .line 66
    iget-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 67
    .line 68
    invoke-direct {v2, p1, v0, v3}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    .line 69
    .line 70
    .line 71
    aput-object v2, v1, p2

    .line 72
    .line 73
    add-int/2addr p2, v0

    .line 74
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 75
    .line 76
    :cond_3
    return-void
.end method

.method public final addChildrenToSolver(Landroidx/constraintlayout/core/LinearSystem;)V
    .locals 12

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    move v4, v3

    .line 19
    :goto_0
    const/4 v5, 0x1

    .line 20
    if-ge v3, v1, :cond_1

    .line 21
    .line 22
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 29
    .line 30
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 31
    .line 32
    aput-boolean v2, v7, v2

    .line 33
    .line 34
    aput-boolean v2, v7, v5

    .line 35
    .line 36
    instance-of v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    move v4, v5

    .line 41
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-eqz v4, :cond_8

    .line 45
    .line 46
    move v3, v2

    .line 47
    :goto_1
    if-ge v3, v1, :cond_8

    .line 48
    .line 49
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 56
    .line 57
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 58
    .line 59
    if-eqz v6, :cond_7

    .line 60
    .line 61
    check-cast v4, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 62
    .line 63
    move v6, v2

    .line 64
    :goto_2
    iget v7, v4, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 65
    .line 66
    if-ge v6, v7, :cond_7

    .line 67
    .line 68
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 69
    .line 70
    aget-object v7, v7, v6

    .line 71
    .line 72
    iget-boolean v8, v4, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 73
    .line 74
    if-nez v8, :cond_2

    .line 75
    .line 76
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-nez v8, :cond_2

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_2
    iget v8, v4, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 84
    .line 85
    if-eqz v8, :cond_5

    .line 86
    .line 87
    if-ne v8, v5, :cond_3

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_3
    const/4 v9, 0x2

    .line 91
    if-eq v8, v9, :cond_4

    .line 92
    .line 93
    const/4 v9, 0x3

    .line 94
    if-ne v8, v9, :cond_6

    .line 95
    .line 96
    :cond_4
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 97
    .line 98
    aput-boolean v5, v7, v5

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_5
    :goto_3
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 102
    .line 103
    aput-boolean v5, v7, v2

    .line 104
    .line 105
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_8
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidgetsToAdd:Ljava/util/HashSet;

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 114
    .line 115
    .line 116
    move v4, v2

    .line 117
    :goto_5
    if-ge v4, v1, :cond_c

    .line 118
    .line 119
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 126
    .line 127
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/Flow;

    .line 131
    .line 132
    if-nez v7, :cond_9

    .line 133
    .line 134
    instance-of v8, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 135
    .line 136
    if-eqz v8, :cond_b

    .line 137
    .line 138
    :cond_9
    if-eqz v7, :cond_a

    .line 139
    .line 140
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_a
    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 145
    .line 146
    .line 147
    :cond_b
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_c
    :goto_7
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-lez v4, :cond_11

    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    if-eqz v7, :cond_f

    .line 169
    .line 170
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 175
    .line 176
    check-cast v7, Landroidx/constraintlayout/core/widgets/Flow;

    .line 177
    .line 178
    move v8, v2

    .line 179
    :goto_8
    iget v9, v7, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 180
    .line 181
    if-ge v8, v9, :cond_d

    .line 182
    .line 183
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 184
    .line 185
    aget-object v9, v9, v8

    .line 186
    .line 187
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    if-eqz v9, :cond_e

    .line 192
    .line 193
    invoke-virtual {v7, p1, v0}, Landroidx/constraintlayout/core/widgets/Flow;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_9

    .line 200
    :cond_e
    add-int/lit8 v8, v8, 0x1

    .line 201
    .line 202
    goto :goto_8

    .line 203
    :cond_f
    :goto_9
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-ne v4, v6, :cond_c

    .line 208
    .line 209
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    if-eqz v6, :cond_10

    .line 218
    .line 219
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 224
    .line 225
    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 226
    .line 227
    .line 228
    goto :goto_a

    .line 229
    :cond_10
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 230
    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_11
    sget-boolean v3, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    .line 234
    .line 235
    if-eqz v3, :cond_16

    .line 236
    .line 237
    new-instance v9, Ljava/util/HashSet;

    .line 238
    .line 239
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 240
    .line 241
    .line 242
    move v3, v2

    .line 243
    :goto_b
    if-ge v3, v1, :cond_14

    .line 244
    .line 245
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 252
    .line 253
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/Flow;

    .line 257
    .line 258
    if-nez v6, :cond_13

    .line 259
    .line 260
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 261
    .line 262
    if-eqz v6, :cond_12

    .line 263
    .line 264
    goto :goto_c

    .line 265
    :cond_12
    invoke-virtual {v9, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    :cond_13
    :goto_c
    add-int/lit8 v3, v3, 0x1

    .line 269
    .line 270
    goto :goto_b

    .line 271
    :cond_14
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 272
    .line 273
    aget-object v1, v1, v2

    .line 274
    .line 275
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 276
    .line 277
    if-ne v1, v3, :cond_15

    .line 278
    .line 279
    move v10, v2

    .line 280
    goto :goto_d

    .line 281
    :cond_15
    move v10, v5

    .line 282
    :goto_d
    const/4 v11, 0x0

    .line 283
    move-object v7, p0

    .line 284
    move-object v6, p0

    .line 285
    move-object v8, p1

    .line 286
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    if-eqz p1, :cond_1d

    .line 298
    .line 299
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 304
    .line 305
    invoke-static {v6, v8, p1}, Landroidx/constraintlayout/core/widgets/Chain;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 309
    .line 310
    .line 311
    goto :goto_e

    .line 312
    :cond_16
    move-object v6, p0

    .line 313
    move-object v8, p1

    .line 314
    move p0, v2

    .line 315
    :goto_f
    if-ge p0, v1, :cond_1d

    .line 316
    .line 317
    iget-object p1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 324
    .line 325
    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 326
    .line 327
    if-eqz v3, :cond_1a

    .line 328
    .line 329
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 330
    .line 331
    aget-object v4, v3, v2

    .line 332
    .line 333
    aget-object v3, v3, v5

    .line 334
    .line 335
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 336
    .line 337
    if-ne v4, v7, :cond_17

    .line 338
    .line 339
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 340
    .line 341
    invoke-virtual {p1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 342
    .line 343
    .line 344
    :cond_17
    if-ne v3, v7, :cond_18

    .line 345
    .line 346
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 347
    .line 348
    invoke-virtual {p1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 349
    .line 350
    .line 351
    :cond_18
    invoke-virtual {p1, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 352
    .line 353
    .line 354
    if-ne v4, v7, :cond_19

    .line 355
    .line 356
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 357
    .line 358
    .line 359
    :cond_19
    if-ne v3, v7, :cond_1c

    .line 360
    .line 361
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 362
    .line 363
    .line 364
    goto :goto_10

    .line 365
    :cond_1a
    invoke-static {v6, v8, p1}, Landroidx/constraintlayout/core/widgets/Chain;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 366
    .line 367
    .line 368
    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/Flow;

    .line 369
    .line 370
    if-nez v3, :cond_1c

    .line 371
    .line 372
    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 373
    .line 374
    if-eqz v3, :cond_1b

    .line 375
    .line 376
    goto :goto_10

    .line 377
    :cond_1b
    invoke-virtual {p1, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 378
    .line 379
    .line 380
    :cond_1c
    :goto_10
    add-int/lit8 p0, p0, 0x1

    .line 381
    .line 382
    goto :goto_f

    .line 383
    :cond_1d
    iget p0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 384
    .line 385
    const/4 p1, 0x0

    .line 386
    if-lez p0, :cond_1e

    .line 387
    .line 388
    invoke-static {v6, v8, p1, v2}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    .line 389
    .line 390
    .line 391
    :cond_1e
    iget p0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 392
    .line 393
    if-lez p0, :cond_1f

    .line 394
    .line 395
    invoke-static {v6, v8, p1, v5}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    .line 396
    .line 397
    .line 398
    :cond_1f
    return-void
.end method

.method public final directMeasureWithOrientation(IZ)Z
    .locals 11

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Lokio/FileMetadata;

    .line 2
    .line 3
    iget-object v0, p0, Lokio/FileMetadata;->createdAtMillis:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v1, p0, Lokio/FileMetadata;->symlinkTarget:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-eqz p2, :cond_4

    .line 30
    .line 31
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 32
    .line 33
    if-eq v3, v8, :cond_0

    .line 34
    .line 35
    if-ne v5, v8, :cond_4

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    if-eqz v9, :cond_2

    .line 46
    .line 47
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    check-cast v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 52
    .line 53
    iget v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 54
    .line 55
    if-ne v10, p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-nez v9, :cond_1

    .line 62
    .line 63
    move p2, v2

    .line 64
    :cond_2
    if-nez p1, :cond_3

    .line 65
    .line 66
    if-eqz p2, :cond_4

    .line 67
    .line 68
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 69
    .line 70
    if-ne v3, p2, :cond_4

    .line 71
    .line 72
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 73
    .line 74
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1, v2}, Lokio/FileMetadata;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 82
    .line 83
    .line 84
    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 85
    .line 86
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 87
    .line 88
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    invoke-virtual {p2, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    if-eqz p2, :cond_4

    .line 97
    .line 98
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 99
    .line 100
    if-ne v5, p2, :cond_4

    .line 101
    .line 102
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 103
    .line 104
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1, v4}, Lokio/FileMetadata;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 112
    .line 113
    .line 114
    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 115
    .line 116
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 117
    .line 118
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    invoke-virtual {p2, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 123
    .line 124
    .line 125
    :cond_4
    :goto_0
    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 126
    .line 127
    if-nez p1, :cond_6

    .line 128
    .line 129
    aget-object p2, p2, v2

    .line 130
    .line 131
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 132
    .line 133
    if-eq p2, v7, :cond_5

    .line 134
    .line 135
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 136
    .line 137
    if-ne p2, v7, :cond_7

    .line 138
    .line 139
    :cond_5
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    add-int/2addr p2, v6

    .line 144
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 145
    .line 146
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 147
    .line 148
    invoke-virtual {v7, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 149
    .line 150
    .line 151
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 152
    .line 153
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 154
    .line 155
    sub-int/2addr p2, v6

    .line 156
    invoke-virtual {v7, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 157
    .line 158
    .line 159
    :goto_1
    move p2, v4

    .line 160
    goto :goto_3

    .line 161
    :cond_6
    aget-object p2, p2, v4

    .line 162
    .line 163
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 164
    .line 165
    if-eq p2, v6, :cond_8

    .line 166
    .line 167
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 168
    .line 169
    if-ne p2, v6, :cond_7

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_7
    move p2, v2

    .line 173
    goto :goto_3

    .line 174
    :cond_8
    :goto_2
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    add-int/2addr p2, v7

    .line 179
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 180
    .line 181
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 182
    .line 183
    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 184
    .line 185
    .line 186
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 187
    .line 188
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 189
    .line 190
    sub-int/2addr p2, v7

    .line 191
    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :goto_3
    invoke-virtual {p0}, Lokio/FileMetadata;->measureWidgets()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-eqz v6, :cond_b

    .line 207
    .line 208
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 213
    .line 214
    iget v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 215
    .line 216
    if-eq v7, p1, :cond_9

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_9
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 220
    .line 221
    if-ne v7, v1, :cond_a

    .line 222
    .line 223
    iget-boolean v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mResolved:Z

    .line 224
    .line 225
    if-nez v7, :cond_a

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_a
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->applyToWidget()V

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    :cond_c
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_11

    .line 241
    .line 242
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 247
    .line 248
    iget v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 249
    .line 250
    if-eq v6, p1, :cond_d

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_d
    if-nez p2, :cond_e

    .line 254
    .line 255
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 256
    .line 257
    if-ne v6, v1, :cond_e

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_e
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 261
    .line 262
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 263
    .line 264
    if-nez v6, :cond_f

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_f
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 268
    .line 269
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 270
    .line 271
    if-nez v6, :cond_10

    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_10
    instance-of v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 275
    .line 276
    if-nez v6, :cond_c

    .line 277
    .line 278
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 279
    .line 280
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 281
    .line 282
    if-nez v0, :cond_c

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_11
    move v2, v4

    .line 286
    :goto_6
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 290
    .line 291
    .line 292
    return v2
.end method

.method public final getSceneString(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ":{\n"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "  actualWidth:"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, "\n"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "  actualHeight:"

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;)V

    .line 88
    .line 89
    .line 90
    const-string v0, ",\n"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    const-string/jumbo p0, "}"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final layout()V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 5
    .line 6
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 7
    .line 8
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 9
    .line 10
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 11
    .line 12
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    aget-object v7, v5, v6

    .line 38
    .line 39
    aget-object v8, v5, v2

    .line 40
    .line 41
    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPass:I

    .line 42
    .line 43
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 44
    .line 45
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 46
    .line 47
    if-nez v9, :cond_1e

    .line 48
    .line 49
    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 50
    .line 51
    invoke-static {v9, v6}, Landroidx/constraintlayout/core/widgets/Chain;->enabled(II)Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_1e

    .line 56
    .line 57
    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 58
    .line 59
    aget-object v13, v5, v2

    .line 60
    .line 61
    aget-object v14, v5, v6

    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetFinalResolution()V

    .line 64
    .line 65
    .line 66
    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    move v6, v2

    .line 73
    :goto_0
    if-ge v6, v12, :cond_0

    .line 74
    .line 75
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v17

    .line 79
    check-cast v17, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 80
    .line 81
    invoke-virtual/range {v17 .. v17}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetFinalResolution()V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v6, v6, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    iget-boolean v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 88
    .line 89
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 90
    .line 91
    if-ne v13, v2, :cond_1

    .line 92
    .line 93
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    const/4 v13, 0x0

    .line 98
    invoke-virtual {v1, v13, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    const/4 v13, 0x0

    .line 103
    invoke-virtual {v11, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 104
    .line 105
    .line 106
    iput v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 107
    .line 108
    :goto_1
    const/4 v2, 0x0

    .line 109
    const/4 v13, 0x0

    .line 110
    const/16 v18, 0x0

    .line 111
    .line 112
    :goto_2
    const/high16 v19, 0x3f000000    # 0.5f

    .line 113
    .line 114
    if-ge v13, v12, :cond_7

    .line 115
    .line 116
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v20

    .line 120
    move/from16 v21, v2

    .line 121
    .line 122
    move-object/from16 v2, v20

    .line 123
    .line 124
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 125
    .line 126
    move-object/from16 v20, v5

    .line 127
    .line 128
    instance-of v5, v2, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 129
    .line 130
    if-eqz v5, :cond_6

    .line 131
    .line 132
    check-cast v2, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 133
    .line 134
    iget v5, v2, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 135
    .line 136
    move/from16 v22, v13

    .line 137
    .line 138
    const/4 v13, 0x1

    .line 139
    if-ne v5, v13, :cond_5

    .line 140
    .line 141
    iget v5, v2, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 142
    .line 143
    const/4 v13, -0x1

    .line 144
    if-eq v5, v13, :cond_2

    .line 145
    .line 146
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_2
    iget v5, v2, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 151
    .line 152
    if-eq v5, v13, :cond_3

    .line 153
    .line 154
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_3

    .line 159
    .line 160
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    iget v13, v2, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 165
    .line 166
    sub-int/2addr v5, v13

    .line 167
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_3
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-eqz v5, :cond_4

    .line 176
    .line 177
    iget v5, v2, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 178
    .line 179
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 180
    .line 181
    .line 182
    move-result v13

    .line 183
    int-to-float v13, v13

    .line 184
    mul-float/2addr v5, v13

    .line 185
    add-float v5, v5, v19

    .line 186
    .line 187
    float-to-int v5, v5

    .line 188
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 189
    .line 190
    .line 191
    :cond_4
    :goto_3
    const/16 v21, 0x1

    .line 192
    .line 193
    :cond_5
    move/from16 v2, v21

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_6
    move/from16 v22, v13

    .line 197
    .line 198
    instance-of v5, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 199
    .line 200
    if-eqz v5, :cond_5

    .line 201
    .line 202
    check-cast v2, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 203
    .line 204
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-nez v2, :cond_5

    .line 209
    .line 210
    move/from16 v2, v21

    .line 211
    .line 212
    const/16 v18, 0x1

    .line 213
    .line 214
    :goto_4
    add-int/lit8 v13, v22, 0x1

    .line 215
    .line 216
    move-object/from16 v5, v20

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_7
    move/from16 v21, v2

    .line 220
    .line 221
    move-object/from16 v20, v5

    .line 222
    .line 223
    if-eqz v21, :cond_a

    .line 224
    .line 225
    const/4 v2, 0x0

    .line 226
    :goto_5
    if-ge v2, v12, :cond_a

    .line 227
    .line 228
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 233
    .line 234
    instance-of v13, v5, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 235
    .line 236
    if-eqz v13, :cond_9

    .line 237
    .line 238
    check-cast v5, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 239
    .line 240
    iget v13, v5, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 241
    .line 242
    move/from16 v21, v2

    .line 243
    .line 244
    const/4 v2, 0x1

    .line 245
    if-ne v13, v2, :cond_8

    .line 246
    .line 247
    const/4 v13, 0x0

    .line 248
    invoke-static {v13, v5, v9, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    .line 249
    .line 250
    .line 251
    goto :goto_7

    .line 252
    :cond_8
    :goto_6
    const/4 v13, 0x0

    .line 253
    goto :goto_7

    .line 254
    :cond_9
    move/from16 v21, v2

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :goto_7
    add-int/lit8 v2, v21, 0x1

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_a
    const/4 v13, 0x0

    .line 261
    invoke-static {v13, v1, v9, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    .line 262
    .line 263
    .line 264
    if-eqz v18, :cond_c

    .line 265
    .line 266
    const/4 v2, 0x0

    .line 267
    :goto_8
    if-ge v2, v12, :cond_c

    .line 268
    .line 269
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 274
    .line 275
    instance-of v13, v5, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 276
    .line 277
    if-eqz v13, :cond_b

    .line 278
    .line 279
    check-cast v5, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 280
    .line 281
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 282
    .line 283
    .line 284
    move-result v13

    .line 285
    if-nez v13, :cond_b

    .line 286
    .line 287
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    .line 288
    .line 289
    .line 290
    move-result v13

    .line 291
    if-eqz v13, :cond_b

    .line 292
    .line 293
    const/4 v13, 0x1

    .line 294
    invoke-static {v13, v5, v9, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    .line 295
    .line 296
    .line 297
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 298
    .line 299
    goto :goto_8

    .line 300
    :cond_c
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 301
    .line 302
    if-ne v14, v2, :cond_d

    .line 303
    .line 304
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    const/4 v13, 0x0

    .line 309
    invoke-virtual {v1, v13, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 310
    .line 311
    .line 312
    goto :goto_9

    .line 313
    :cond_d
    const/4 v13, 0x0

    .line 314
    invoke-virtual {v10, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 315
    .line 316
    .line 317
    iput v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 318
    .line 319
    :goto_9
    const/4 v2, 0x0

    .line 320
    const/4 v5, 0x0

    .line 321
    const/4 v13, 0x0

    .line 322
    :goto_a
    if-ge v2, v12, :cond_13

    .line 323
    .line 324
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v14

    .line 328
    check-cast v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 329
    .line 330
    move/from16 v18, v2

    .line 331
    .line 332
    instance-of v2, v14, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 333
    .line 334
    if-eqz v2, :cond_11

    .line 335
    .line 336
    check-cast v14, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 337
    .line 338
    iget v2, v14, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 339
    .line 340
    if-nez v2, :cond_12

    .line 341
    .line 342
    iget v2, v14, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 343
    .line 344
    const/4 v5, -0x1

    .line 345
    if-eq v2, v5, :cond_e

    .line 346
    .line 347
    invoke-virtual {v14, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 348
    .line 349
    .line 350
    goto :goto_b

    .line 351
    :cond_e
    iget v2, v14, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 352
    .line 353
    if-eq v2, v5, :cond_f

    .line 354
    .line 355
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    if-eqz v2, :cond_f

    .line 360
    .line 361
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    iget v5, v14, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 366
    .line 367
    sub-int/2addr v2, v5

    .line 368
    invoke-virtual {v14, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 369
    .line 370
    .line 371
    goto :goto_b

    .line 372
    :cond_f
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-eqz v2, :cond_10

    .line 377
    .line 378
    iget v2, v14, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 379
    .line 380
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    int-to-float v5, v5

    .line 385
    mul-float/2addr v2, v5

    .line 386
    add-float v2, v2, v19

    .line 387
    .line 388
    float-to-int v2, v2

    .line 389
    invoke-virtual {v14, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 390
    .line 391
    .line 392
    :cond_10
    :goto_b
    const/4 v5, 0x1

    .line 393
    goto :goto_c

    .line 394
    :cond_11
    instance-of v2, v14, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 395
    .line 396
    if-eqz v2, :cond_12

    .line 397
    .line 398
    check-cast v14, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 399
    .line 400
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    const/4 v14, 0x1

    .line 405
    if-ne v2, v14, :cond_12

    .line 406
    .line 407
    const/4 v13, 0x1

    .line 408
    :cond_12
    :goto_c
    add-int/lit8 v2, v18, 0x1

    .line 409
    .line 410
    goto :goto_a

    .line 411
    :cond_13
    if-eqz v5, :cond_15

    .line 412
    .line 413
    const/4 v2, 0x0

    .line 414
    :goto_d
    if-ge v2, v12, :cond_15

    .line 415
    .line 416
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 421
    .line 422
    instance-of v14, v5, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 423
    .line 424
    if-eqz v14, :cond_14

    .line 425
    .line 426
    check-cast v5, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 427
    .line 428
    iget v14, v5, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 429
    .line 430
    if-nez v14, :cond_14

    .line 431
    .line 432
    const/4 v14, 0x1

    .line 433
    invoke-static {v14, v5, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    .line 434
    .line 435
    .line 436
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 437
    .line 438
    goto :goto_d

    .line 439
    :cond_15
    const/4 v2, 0x0

    .line 440
    invoke-static {v2, v1, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    .line 441
    .line 442
    .line 443
    if-eqz v13, :cond_17

    .line 444
    .line 445
    const/4 v2, 0x0

    .line 446
    :goto_e
    if-ge v2, v12, :cond_17

    .line 447
    .line 448
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 453
    .line 454
    instance-of v13, v5, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 455
    .line 456
    if-eqz v13, :cond_16

    .line 457
    .line 458
    check-cast v5, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 459
    .line 460
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 461
    .line 462
    .line 463
    move-result v13

    .line 464
    const/4 v14, 0x1

    .line 465
    if-ne v13, v14, :cond_16

    .line 466
    .line 467
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    .line 468
    .line 469
    .line 470
    move-result v13

    .line 471
    if-eqz v13, :cond_16

    .line 472
    .line 473
    invoke-static {v14, v5, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    .line 474
    .line 475
    .line 476
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 477
    .line 478
    goto :goto_e

    .line 479
    :cond_17
    const/4 v2, 0x0

    .line 480
    :goto_f
    if-ge v2, v12, :cond_1b

    .line 481
    .line 482
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 487
    .line 488
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 489
    .line 490
    .line 491
    move-result v13

    .line 492
    if-eqz v13, :cond_1a

    .line 493
    .line 494
    invoke-static {v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 495
    .line 496
    .line 497
    move-result v13

    .line 498
    if-eqz v13, :cond_1a

    .line 499
    .line 500
    sget-object v13, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->sMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 501
    .line 502
    invoke-static {v5, v9, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 503
    .line 504
    .line 505
    instance-of v13, v5, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 506
    .line 507
    if-eqz v13, :cond_19

    .line 508
    .line 509
    move-object v13, v5

    .line 510
    check-cast v13, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 511
    .line 512
    iget v13, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 513
    .line 514
    if-nez v13, :cond_18

    .line 515
    .line 516
    const/4 v13, 0x0

    .line 517
    invoke-static {v13, v5, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    .line 518
    .line 519
    .line 520
    goto :goto_10

    .line 521
    :cond_18
    const/4 v13, 0x0

    .line 522
    invoke-static {v13, v5, v9, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    .line 523
    .line 524
    .line 525
    goto :goto_10

    .line 526
    :cond_19
    const/4 v13, 0x0

    .line 527
    invoke-static {v13, v5, v9, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    .line 528
    .line 529
    .line 530
    invoke-static {v13, v5, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    .line 531
    .line 532
    .line 533
    :cond_1a
    :goto_10
    add-int/lit8 v2, v2, 0x1

    .line 534
    .line 535
    goto :goto_f

    .line 536
    :cond_1b
    const/4 v2, 0x0

    .line 537
    :goto_11
    if-ge v2, v3, :cond_1f

    .line 538
    .line 539
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 540
    .line 541
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v5

    .line 545
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 546
    .line 547
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 548
    .line 549
    .line 550
    move-result v6

    .line 551
    if-eqz v6, :cond_1d

    .line 552
    .line 553
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 554
    .line 555
    if-nez v6, :cond_1d

    .line 556
    .line 557
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 558
    .line 559
    if-nez v6, :cond_1d

    .line 560
    .line 561
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Flow;

    .line 562
    .line 563
    if-nez v6, :cond_1d

    .line 564
    .line 565
    iget-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    .line 566
    .line 567
    if-nez v6, :cond_1d

    .line 568
    .line 569
    const/4 v13, 0x0

    .line 570
    invoke-virtual {v5, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 571
    .line 572
    .line 573
    move-result-object v6

    .line 574
    const/4 v14, 0x1

    .line 575
    invoke-virtual {v5, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 576
    .line 577
    .line 578
    move-result-object v9

    .line 579
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 580
    .line 581
    if-ne v6, v12, :cond_1c

    .line 582
    .line 583
    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 584
    .line 585
    if-eq v6, v14, :cond_1c

    .line 586
    .line 587
    if-ne v9, v12, :cond_1c

    .line 588
    .line 589
    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 590
    .line 591
    if-eq v6, v14, :cond_1c

    .line 592
    .line 593
    goto :goto_12

    .line 594
    :cond_1c
    new-instance v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 595
    .line 596
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 597
    .line 598
    .line 599
    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 600
    .line 601
    invoke-static {v5, v9, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 602
    .line 603
    .line 604
    :cond_1d
    :goto_12
    add-int/lit8 v2, v2, 0x1

    .line 605
    .line 606
    goto :goto_11

    .line 607
    :cond_1e
    move-object/from16 v20, v5

    .line 608
    .line 609
    :cond_1f
    const/4 v2, 0x2

    .line 610
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 611
    .line 612
    if-le v3, v2, :cond_20

    .line 613
    .line 614
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 615
    .line 616
    if-eq v8, v9, :cond_21

    .line 617
    .line 618
    if-ne v7, v9, :cond_20

    .line 619
    .line 620
    goto :goto_13

    .line 621
    :cond_20
    move-object/from16 v23, v11

    .line 622
    .line 623
    goto/16 :goto_3c

    .line 624
    .line 625
    :cond_21
    :goto_13
    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 626
    .line 627
    const/16 v12, 0x400

    .line 628
    .line 629
    invoke-static {v9, v12}, Landroidx/constraintlayout/core/widgets/Chain;->enabled(II)Z

    .line 630
    .line 631
    .line 632
    move-result v9

    .line 633
    if-eqz v9, :cond_20

    .line 634
    .line 635
    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 636
    .line 637
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 638
    .line 639
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 640
    .line 641
    .line 642
    move-result v13

    .line 643
    const/4 v14, 0x0

    .line 644
    :goto_14
    if-ge v14, v13, :cond_24

    .line 645
    .line 646
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v15

    .line 650
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 651
    .line 652
    const/16 v17, 0x0

    .line 653
    .line 654
    aget-object v2, v20, v17

    .line 655
    .line 656
    const/16 v16, 0x1

    .line 657
    .line 658
    aget-object v5, v20, v16

    .line 659
    .line 660
    move/from16 v21, v14

    .line 661
    .line 662
    iget-object v14, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 663
    .line 664
    move-object/from16 v22, v14

    .line 665
    .line 666
    aget-object v14, v22, v17

    .line 667
    .line 668
    move-object/from16 v23, v11

    .line 669
    .line 670
    aget-object v11, v22, v16

    .line 671
    .line 672
    invoke-static {v2, v5, v14, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->validInGroup(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    .line 673
    .line 674
    .line 675
    move-result v2

    .line 676
    if-nez v2, :cond_22

    .line 677
    .line 678
    goto/16 :goto_3c

    .line 679
    .line 680
    :cond_22
    instance-of v2, v15, Landroidx/constraintlayout/core/widgets/Flow;

    .line 681
    .line 682
    if-eqz v2, :cond_23

    .line 683
    .line 684
    goto/16 :goto_3c

    .line 685
    .line 686
    :cond_23
    add-int/lit8 v14, v21, 0x1

    .line 687
    .line 688
    move-object/from16 v11, v23

    .line 689
    .line 690
    const/4 v2, 0x2

    .line 691
    goto :goto_14

    .line 692
    :cond_24
    move-object/from16 v23, v11

    .line 693
    .line 694
    const/4 v2, 0x0

    .line 695
    const/4 v5, 0x0

    .line 696
    const/4 v11, 0x0

    .line 697
    const/4 v14, 0x0

    .line 698
    const/4 v15, 0x0

    .line 699
    const/16 v21, 0x0

    .line 700
    .line 701
    const/16 v22, 0x0

    .line 702
    .line 703
    :goto_15
    if-ge v2, v13, :cond_37

    .line 704
    .line 705
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v24

    .line 709
    move/from16 v25, v2

    .line 710
    .line 711
    move-object/from16 v2, v24

    .line 712
    .line 713
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 714
    .line 715
    move-object/from16 v24, v5

    .line 716
    .line 717
    const/16 v17, 0x0

    .line 718
    .line 719
    aget-object v5, v20, v17

    .line 720
    .line 721
    move-object/from16 v26, v11

    .line 722
    .line 723
    const/16 v16, 0x1

    .line 724
    .line 725
    aget-object v11, v20, v16

    .line 726
    .line 727
    move-object/from16 v27, v14

    .line 728
    .line 729
    iget-object v14, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 730
    .line 731
    move-object/from16 v28, v14

    .line 732
    .line 733
    aget-object v14, v28, v17

    .line 734
    .line 735
    move-object/from16 v29, v15

    .line 736
    .line 737
    aget-object v15, v28, v16

    .line 738
    .line 739
    invoke-static {v5, v11, v14, v15}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->validInGroup(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    .line 740
    .line 741
    .line 742
    move-result v5

    .line 743
    if-nez v5, :cond_25

    .line 744
    .line 745
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 746
    .line 747
    invoke-static {v2, v9, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 748
    .line 749
    .line 750
    :cond_25
    instance-of v5, v2, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 751
    .line 752
    if-eqz v5, :cond_2a

    .line 753
    .line 754
    move-object v11, v2

    .line 755
    check-cast v11, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 756
    .line 757
    iget v14, v11, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 758
    .line 759
    if-nez v14, :cond_27

    .line 760
    .line 761
    if-nez v27, :cond_26

    .line 762
    .line 763
    new-instance v14, Ljava/util/ArrayList;

    .line 764
    .line 765
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 766
    .line 767
    .line 768
    goto :goto_16

    .line 769
    :cond_26
    move-object/from16 v14, v27

    .line 770
    .line 771
    :goto_16
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    goto :goto_17

    .line 775
    :cond_27
    move-object/from16 v14, v27

    .line 776
    .line 777
    :goto_17
    iget v15, v11, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 778
    .line 779
    move/from16 v28, v5

    .line 780
    .line 781
    const/4 v5, 0x1

    .line 782
    if-ne v15, v5, :cond_29

    .line 783
    .line 784
    if-nez v24, :cond_28

    .line 785
    .line 786
    new-instance v5, Ljava/util/ArrayList;

    .line 787
    .line 788
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 789
    .line 790
    .line 791
    goto :goto_18

    .line 792
    :cond_28
    move-object/from16 v5, v24

    .line 793
    .line 794
    :goto_18
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    .line 796
    .line 797
    goto :goto_19

    .line 798
    :cond_29
    move-object/from16 v5, v24

    .line 799
    .line 800
    goto :goto_19

    .line 801
    :cond_2a
    move/from16 v28, v5

    .line 802
    .line 803
    move-object/from16 v5, v24

    .line 804
    .line 805
    move-object/from16 v14, v27

    .line 806
    .line 807
    :goto_19
    instance-of v11, v2, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 808
    .line 809
    if-eqz v11, :cond_32

    .line 810
    .line 811
    instance-of v11, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 812
    .line 813
    if-eqz v11, :cond_2f

    .line 814
    .line 815
    move-object v11, v2

    .line 816
    check-cast v11, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 817
    .line 818
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 819
    .line 820
    .line 821
    move-result v15

    .line 822
    if-nez v15, :cond_2c

    .line 823
    .line 824
    if-nez v26, :cond_2b

    .line 825
    .line 826
    new-instance v15, Ljava/util/ArrayList;

    .line 827
    .line 828
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .line 830
    .line 831
    goto :goto_1a

    .line 832
    :cond_2b
    move-object/from16 v15, v26

    .line 833
    .line 834
    :goto_1a
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    .line 836
    .line 837
    :goto_1b
    move-object/from16 v24, v5

    .line 838
    .line 839
    goto :goto_1c

    .line 840
    :cond_2c
    move-object/from16 v15, v26

    .line 841
    .line 842
    goto :goto_1b

    .line 843
    :goto_1c
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 844
    .line 845
    .line 846
    move-result v5

    .line 847
    move-object/from16 v30, v9

    .line 848
    .line 849
    const/4 v9, 0x1

    .line 850
    if-ne v5, v9, :cond_2e

    .line 851
    .line 852
    if-nez v29, :cond_2d

    .line 853
    .line 854
    new-instance v5, Ljava/util/ArrayList;

    .line 855
    .line 856
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 857
    .line 858
    .line 859
    goto :goto_1d

    .line 860
    :cond_2d
    move-object/from16 v5, v29

    .line 861
    .line 862
    :goto_1d
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    .line 864
    .line 865
    goto :goto_1e

    .line 866
    :cond_2e
    move-object/from16 v5, v29

    .line 867
    .line 868
    :goto_1e
    move-object v11, v15

    .line 869
    move-object v15, v5

    .line 870
    goto :goto_21

    .line 871
    :cond_2f
    move-object/from16 v24, v5

    .line 872
    .line 873
    move-object/from16 v30, v9

    .line 874
    .line 875
    move-object v5, v2

    .line 876
    check-cast v5, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 877
    .line 878
    if-nez v26, :cond_30

    .line 879
    .line 880
    new-instance v11, Ljava/util/ArrayList;

    .line 881
    .line 882
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .line 884
    .line 885
    goto :goto_1f

    .line 886
    :cond_30
    move-object/from16 v11, v26

    .line 887
    .line 888
    :goto_1f
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    .line 890
    .line 891
    if-nez v29, :cond_31

    .line 892
    .line 893
    new-instance v15, Ljava/util/ArrayList;

    .line 894
    .line 895
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .line 897
    .line 898
    goto :goto_20

    .line 899
    :cond_31
    move-object/from16 v15, v29

    .line 900
    .line 901
    :goto_20
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    .line 903
    .line 904
    goto :goto_21

    .line 905
    :cond_32
    move-object/from16 v24, v5

    .line 906
    .line 907
    move-object/from16 v30, v9

    .line 908
    .line 909
    move-object/from16 v11, v26

    .line 910
    .line 911
    move-object/from16 v15, v29

    .line 912
    .line 913
    :goto_21
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 914
    .line 915
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 916
    .line 917
    if-nez v5, :cond_34

    .line 918
    .line 919
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 920
    .line 921
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 922
    .line 923
    if-nez v5, :cond_34

    .line 924
    .line 925
    if-nez v28, :cond_34

    .line 926
    .line 927
    instance-of v5, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 928
    .line 929
    if-nez v5, :cond_34

    .line 930
    .line 931
    if-nez v21, :cond_33

    .line 932
    .line 933
    new-instance v21, Ljava/util/ArrayList;

    .line 934
    .line 935
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 936
    .line 937
    .line 938
    :cond_33
    move-object/from16 v5, v21

    .line 939
    .line 940
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    .line 942
    .line 943
    move-object/from16 v21, v5

    .line 944
    .line 945
    :cond_34
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 946
    .line 947
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 948
    .line 949
    if-nez v5, :cond_36

    .line 950
    .line 951
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 952
    .line 953
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 954
    .line 955
    if-nez v5, :cond_36

    .line 956
    .line 957
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 958
    .line 959
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 960
    .line 961
    if-nez v5, :cond_36

    .line 962
    .line 963
    if-nez v28, :cond_36

    .line 964
    .line 965
    instance-of v5, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 966
    .line 967
    if-nez v5, :cond_36

    .line 968
    .line 969
    if-nez v22, :cond_35

    .line 970
    .line 971
    new-instance v22, Ljava/util/ArrayList;

    .line 972
    .line 973
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 974
    .line 975
    .line 976
    :cond_35
    move-object/from16 v5, v22

    .line 977
    .line 978
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    .line 980
    .line 981
    move-object/from16 v22, v5

    .line 982
    .line 983
    :cond_36
    add-int/lit8 v2, v25, 0x1

    .line 984
    .line 985
    move-object/from16 v5, v24

    .line 986
    .line 987
    move-object/from16 v9, v30

    .line 988
    .line 989
    goto/16 :goto_15

    .line 990
    .line 991
    :cond_37
    move-object/from16 v24, v5

    .line 992
    .line 993
    move-object/from16 v26, v11

    .line 994
    .line 995
    move-object/from16 v27, v14

    .line 996
    .line 997
    move-object/from16 v29, v15

    .line 998
    .line 999
    new-instance v2, Ljava/util/ArrayList;

    .line 1000
    .line 1001
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    .line 1003
    .line 1004
    if-eqz v24, :cond_38

    .line 1005
    .line 1006
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v5

    .line 1010
    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1011
    .line 1012
    .line 1013
    move-result v9

    .line 1014
    if-eqz v9, :cond_38

    .line 1015
    .line 1016
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v9

    .line 1020
    check-cast v9, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 1021
    .line 1022
    const/4 v11, 0x0

    .line 1023
    const/4 v14, 0x0

    .line 1024
    invoke-static {v9, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1025
    .line 1026
    .line 1027
    goto :goto_22

    .line 1028
    :cond_38
    const/4 v11, 0x0

    .line 1029
    const/4 v14, 0x0

    .line 1030
    if-eqz v26, :cond_39

    .line 1031
    .line 1032
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v5

    .line 1036
    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1037
    .line 1038
    .line 1039
    move-result v9

    .line 1040
    if-eqz v9, :cond_39

    .line 1041
    .line 1042
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v9

    .line 1046
    check-cast v9, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 1047
    .line 1048
    invoke-static {v9, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v15

    .line 1052
    invoke-virtual {v9, v14, v15, v2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->addDependents(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v15, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->cleanup(Ljava/util/ArrayList;)V

    .line 1056
    .line 1057
    .line 1058
    const/4 v11, 0x0

    .line 1059
    const/4 v14, 0x0

    .line 1060
    goto :goto_23

    .line 1061
    :cond_39
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1062
    .line 1063
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v5

    .line 1067
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1068
    .line 1069
    if-eqz v5, :cond_3a

    .line 1070
    .line 1071
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v5

    .line 1075
    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1076
    .line 1077
    .line 1078
    move-result v9

    .line 1079
    if-eqz v9, :cond_3a

    .line 1080
    .line 1081
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v9

    .line 1085
    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1086
    .line 1087
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1088
    .line 1089
    const/4 v11, 0x0

    .line 1090
    const/4 v14, 0x0

    .line 1091
    invoke-static {v9, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1092
    .line 1093
    .line 1094
    goto :goto_24

    .line 1095
    :cond_3a
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1096
    .line 1097
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v5

    .line 1101
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1102
    .line 1103
    if-eqz v5, :cond_3b

    .line 1104
    .line 1105
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v5

    .line 1109
    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1110
    .line 1111
    .line 1112
    move-result v9

    .line 1113
    if-eqz v9, :cond_3b

    .line 1114
    .line 1115
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v9

    .line 1119
    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1120
    .line 1121
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1122
    .line 1123
    const/4 v11, 0x0

    .line 1124
    const/4 v14, 0x0

    .line 1125
    invoke-static {v9, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1126
    .line 1127
    .line 1128
    goto :goto_25

    .line 1129
    :cond_3b
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1130
    .line 1131
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v5

    .line 1135
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1136
    .line 1137
    if-eqz v5, :cond_3c

    .line 1138
    .line 1139
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v5

    .line 1143
    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1144
    .line 1145
    .line 1146
    move-result v9

    .line 1147
    if-eqz v9, :cond_3c

    .line 1148
    .line 1149
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v9

    .line 1153
    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1154
    .line 1155
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1156
    .line 1157
    const/4 v11, 0x0

    .line 1158
    const/4 v14, 0x0

    .line 1159
    invoke-static {v9, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1160
    .line 1161
    .line 1162
    goto :goto_26

    .line 1163
    :cond_3c
    const/4 v11, 0x0

    .line 1164
    const/4 v14, 0x0

    .line 1165
    if-eqz v21, :cond_3d

    .line 1166
    .line 1167
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v5

    .line 1171
    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1172
    .line 1173
    .line 1174
    move-result v9

    .line 1175
    if-eqz v9, :cond_3d

    .line 1176
    .line 1177
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v9

    .line 1181
    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1182
    .line 1183
    invoke-static {v9, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1184
    .line 1185
    .line 1186
    goto :goto_27

    .line 1187
    :cond_3d
    if-eqz v27, :cond_3e

    .line 1188
    .line 1189
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v5

    .line 1193
    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1194
    .line 1195
    .line 1196
    move-result v9

    .line 1197
    if-eqz v9, :cond_3e

    .line 1198
    .line 1199
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v9

    .line 1203
    check-cast v9, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 1204
    .line 1205
    const/4 v14, 0x1

    .line 1206
    invoke-static {v9, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1207
    .line 1208
    .line 1209
    goto :goto_28

    .line 1210
    :cond_3e
    const/4 v14, 0x1

    .line 1211
    if-eqz v29, :cond_3f

    .line 1212
    .line 1213
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v5

    .line 1217
    :goto_29
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1218
    .line 1219
    .line 1220
    move-result v9

    .line 1221
    if-eqz v9, :cond_3f

    .line 1222
    .line 1223
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v9

    .line 1227
    check-cast v9, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 1228
    .line 1229
    invoke-static {v9, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v15

    .line 1233
    invoke-virtual {v9, v14, v15, v2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->addDependents(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {v15, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->cleanup(Ljava/util/ArrayList;)V

    .line 1237
    .line 1238
    .line 1239
    const/4 v11, 0x0

    .line 1240
    const/4 v14, 0x1

    .line 1241
    goto :goto_29

    .line 1242
    :cond_3f
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1243
    .line 1244
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v5

    .line 1248
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1249
    .line 1250
    if-eqz v5, :cond_40

    .line 1251
    .line 1252
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v5

    .line 1256
    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1257
    .line 1258
    .line 1259
    move-result v9

    .line 1260
    if-eqz v9, :cond_40

    .line 1261
    .line 1262
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v9

    .line 1266
    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1267
    .line 1268
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1269
    .line 1270
    const/4 v11, 0x0

    .line 1271
    const/4 v14, 0x1

    .line 1272
    invoke-static {v9, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1273
    .line 1274
    .line 1275
    goto :goto_2a

    .line 1276
    :cond_40
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1277
    .line 1278
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v5

    .line 1282
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1283
    .line 1284
    if-eqz v5, :cond_41

    .line 1285
    .line 1286
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v5

    .line 1290
    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1291
    .line 1292
    .line 1293
    move-result v9

    .line 1294
    if-eqz v9, :cond_41

    .line 1295
    .line 1296
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v9

    .line 1300
    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1301
    .line 1302
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1303
    .line 1304
    const/4 v11, 0x0

    .line 1305
    const/4 v14, 0x1

    .line 1306
    invoke-static {v9, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1307
    .line 1308
    .line 1309
    goto :goto_2b

    .line 1310
    :cond_41
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1311
    .line 1312
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v5

    .line 1316
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1317
    .line 1318
    if-eqz v5, :cond_42

    .line 1319
    .line 1320
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v5

    .line 1324
    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1325
    .line 1326
    .line 1327
    move-result v9

    .line 1328
    if-eqz v9, :cond_42

    .line 1329
    .line 1330
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v9

    .line 1334
    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1335
    .line 1336
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1337
    .line 1338
    const/4 v11, 0x0

    .line 1339
    const/4 v14, 0x1

    .line 1340
    invoke-static {v9, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1341
    .line 1342
    .line 1343
    goto :goto_2c

    .line 1344
    :cond_42
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1345
    .line 1346
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v5

    .line 1350
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1351
    .line 1352
    if-eqz v5, :cond_43

    .line 1353
    .line 1354
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v5

    .line 1358
    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1359
    .line 1360
    .line 1361
    move-result v9

    .line 1362
    if-eqz v9, :cond_43

    .line 1363
    .line 1364
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v9

    .line 1368
    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1369
    .line 1370
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1371
    .line 1372
    const/4 v11, 0x0

    .line 1373
    const/4 v14, 0x1

    .line 1374
    invoke-static {v9, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1375
    .line 1376
    .line 1377
    goto :goto_2d

    .line 1378
    :cond_43
    const/4 v11, 0x0

    .line 1379
    const/4 v14, 0x1

    .line 1380
    if-eqz v22, :cond_44

    .line 1381
    .line 1382
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v5

    .line 1386
    :goto_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1387
    .line 1388
    .line 1389
    move-result v9

    .line 1390
    if-eqz v9, :cond_44

    .line 1391
    .line 1392
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v9

    .line 1396
    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1397
    .line 1398
    invoke-static {v9, v14, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1399
    .line 1400
    .line 1401
    goto :goto_2e

    .line 1402
    :cond_44
    const/4 v5, 0x0

    .line 1403
    :goto_2f
    if-ge v5, v13, :cond_4b

    .line 1404
    .line 1405
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v9

    .line 1409
    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1410
    .line 1411
    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1412
    .line 1413
    const/16 v17, 0x0

    .line 1414
    .line 1415
    aget-object v14, v11, v17

    .line 1416
    .line 1417
    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1418
    .line 1419
    if-ne v14, v15, :cond_49

    .line 1420
    .line 1421
    const/16 v16, 0x1

    .line 1422
    .line 1423
    aget-object v11, v11, v16

    .line 1424
    .line 1425
    if-ne v11, v15, :cond_49

    .line 1426
    .line 1427
    iget v11, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    .line 1428
    .line 1429
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1430
    .line 1431
    .line 1432
    move-result v14

    .line 1433
    const/4 v15, 0x0

    .line 1434
    :goto_30
    if-ge v15, v14, :cond_46

    .line 1435
    .line 1436
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v21

    .line 1440
    move/from16 v22, v5

    .line 1441
    .line 1442
    move-object/from16 v5, v21

    .line 1443
    .line 1444
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1445
    .line 1446
    move-object/from16 v21, v12

    .line 1447
    .line 1448
    iget v12, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mId:I

    .line 1449
    .line 1450
    if-ne v11, v12, :cond_45

    .line 1451
    .line 1452
    goto :goto_31

    .line 1453
    :cond_45
    add-int/lit8 v15, v15, 0x1

    .line 1454
    .line 1455
    move-object/from16 v12, v21

    .line 1456
    .line 1457
    move/from16 v5, v22

    .line 1458
    .line 1459
    goto :goto_30

    .line 1460
    :cond_46
    move/from16 v22, v5

    .line 1461
    .line 1462
    move-object/from16 v21, v12

    .line 1463
    .line 1464
    const/4 v5, 0x0

    .line 1465
    :goto_31
    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    .line 1466
    .line 1467
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1468
    .line 1469
    .line 1470
    move-result v11

    .line 1471
    const/4 v12, 0x0

    .line 1472
    :goto_32
    if-ge v12, v11, :cond_48

    .line 1473
    .line 1474
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v14

    .line 1478
    check-cast v14, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1479
    .line 1480
    iget v15, v14, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mId:I

    .line 1481
    .line 1482
    if-ne v9, v15, :cond_47

    .line 1483
    .line 1484
    goto :goto_33

    .line 1485
    :cond_47
    add-int/lit8 v12, v12, 0x1

    .line 1486
    .line 1487
    goto :goto_32

    .line 1488
    :cond_48
    const/4 v14, 0x0

    .line 1489
    :goto_33
    if-eqz v5, :cond_4a

    .line 1490
    .line 1491
    if-eqz v14, :cond_4a

    .line 1492
    .line 1493
    const/4 v9, 0x0

    .line 1494
    invoke-virtual {v5, v9, v14}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    .line 1495
    .line 1496
    .line 1497
    const/4 v9, 0x2

    .line 1498
    iput v9, v14, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mOrientation:I

    .line 1499
    .line 1500
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1501
    .line 1502
    .line 1503
    goto :goto_34

    .line 1504
    :cond_49
    move/from16 v22, v5

    .line 1505
    .line 1506
    move-object/from16 v21, v12

    .line 1507
    .line 1508
    :cond_4a
    :goto_34
    add-int/lit8 v5, v22, 0x1

    .line 1509
    .line 1510
    move-object/from16 v12, v21

    .line 1511
    .line 1512
    goto :goto_2f

    .line 1513
    :cond_4b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1514
    .line 1515
    .line 1516
    move-result v5

    .line 1517
    const/4 v14, 0x1

    .line 1518
    if-gt v5, v14, :cond_4c

    .line 1519
    .line 1520
    goto/16 :goto_3c

    .line 1521
    .line 1522
    :cond_4c
    const/16 v17, 0x0

    .line 1523
    .line 1524
    aget-object v5, v20, v17

    .line 1525
    .line 1526
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1527
    .line 1528
    if-ne v5, v9, :cond_50

    .line 1529
    .line 1530
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v5

    .line 1534
    const/4 v9, 0x0

    .line 1535
    const/4 v11, 0x0

    .line 1536
    :cond_4d
    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1537
    .line 1538
    .line 1539
    move-result v12

    .line 1540
    if-eqz v12, :cond_4f

    .line 1541
    .line 1542
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v12

    .line 1546
    check-cast v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1547
    .line 1548
    iget v13, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mOrientation:I

    .line 1549
    .line 1550
    const/4 v14, 0x1

    .line 1551
    if-ne v13, v14, :cond_4e

    .line 1552
    .line 1553
    goto :goto_35

    .line 1554
    :cond_4e
    const/4 v13, 0x0

    .line 1555
    invoke-virtual {v12, v6, v13}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->measureWrap(Landroidx/constraintlayout/core/LinearSystem;I)I

    .line 1556
    .line 1557
    .line 1558
    move-result v14

    .line 1559
    if-le v14, v9, :cond_4d

    .line 1560
    .line 1561
    move-object v11, v12

    .line 1562
    move v9, v14

    .line 1563
    goto :goto_35

    .line 1564
    :cond_4f
    if-eqz v11, :cond_50

    .line 1565
    .line 1566
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1567
    .line 1568
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 1572
    .line 1573
    .line 1574
    :goto_36
    const/16 v16, 0x1

    .line 1575
    .line 1576
    goto :goto_37

    .line 1577
    :cond_50
    const/4 v11, 0x0

    .line 1578
    goto :goto_36

    .line 1579
    :goto_37
    aget-object v5, v20, v16

    .line 1580
    .line 1581
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1582
    .line 1583
    if-ne v5, v9, :cond_54

    .line 1584
    .line 1585
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v2

    .line 1589
    const/4 v5, 0x0

    .line 1590
    const/4 v9, 0x0

    .line 1591
    :cond_51
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1592
    .line 1593
    .line 1594
    move-result v12

    .line 1595
    if-eqz v12, :cond_53

    .line 1596
    .line 1597
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v12

    .line 1601
    check-cast v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1602
    .line 1603
    iget v13, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mOrientation:I

    .line 1604
    .line 1605
    if-nez v13, :cond_52

    .line 1606
    .line 1607
    goto :goto_38

    .line 1608
    :cond_52
    const/4 v14, 0x1

    .line 1609
    invoke-virtual {v12, v6, v14}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->measureWrap(Landroidx/constraintlayout/core/LinearSystem;I)I

    .line 1610
    .line 1611
    .line 1612
    move-result v13

    .line 1613
    if-le v13, v5, :cond_51

    .line 1614
    .line 1615
    move-object v9, v12

    .line 1616
    move v5, v13

    .line 1617
    goto :goto_38

    .line 1618
    :cond_53
    if-eqz v9, :cond_54

    .line 1619
    .line 1620
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1621
    .line 1622
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1623
    .line 1624
    .line 1625
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 1626
    .line 1627
    .line 1628
    goto :goto_39

    .line 1629
    :cond_54
    const/4 v9, 0x0

    .line 1630
    :goto_39
    if-nez v11, :cond_55

    .line 1631
    .line 1632
    if-eqz v9, :cond_5a

    .line 1633
    .line 1634
    :cond_55
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1635
    .line 1636
    if-ne v8, v2, :cond_57

    .line 1637
    .line 1638
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1639
    .line 1640
    .line 1641
    move-result v5

    .line 1642
    if-ge v0, v5, :cond_56

    .line 1643
    .line 1644
    if-lez v0, :cond_56

    .line 1645
    .line 1646
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 1647
    .line 1648
    .line 1649
    const/4 v14, 0x1

    .line 1650
    iput-boolean v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 1651
    .line 1652
    goto :goto_3a

    .line 1653
    :cond_56
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1654
    .line 1655
    .line 1656
    move-result v0

    .line 1657
    :cond_57
    :goto_3a
    if-ne v7, v2, :cond_59

    .line 1658
    .line 1659
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1660
    .line 1661
    .line 1662
    move-result v2

    .line 1663
    if-ge v4, v2, :cond_58

    .line 1664
    .line 1665
    if-lez v4, :cond_58

    .line 1666
    .line 1667
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 1668
    .line 1669
    .line 1670
    const/4 v14, 0x1

    .line 1671
    iput-boolean v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 1672
    .line 1673
    goto :goto_3b

    .line 1674
    :cond_58
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1675
    .line 1676
    .line 1677
    move-result v4

    .line 1678
    :cond_59
    :goto_3b
    move v2, v0

    .line 1679
    const/4 v0, 0x1

    .line 1680
    goto :goto_3d

    .line 1681
    :cond_5a
    :goto_3c
    move v2, v0

    .line 1682
    const/4 v0, 0x0

    .line 1683
    :goto_3d
    const/16 v5, 0x40

    .line 1684
    .line 1685
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1686
    .line 1687
    .line 1688
    move-result v9

    .line 1689
    if-nez v9, :cond_5c

    .line 1690
    .line 1691
    const/16 v9, 0x80

    .line 1692
    .line 1693
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1694
    .line 1695
    .line 1696
    move-result v9

    .line 1697
    if-eqz v9, :cond_5b

    .line 1698
    .line 1699
    goto :goto_3e

    .line 1700
    :cond_5b
    const/4 v9, 0x0

    .line 1701
    goto :goto_3f

    .line 1702
    :cond_5c
    :goto_3e
    const/4 v9, 0x1

    .line 1703
    :goto_3f
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1704
    .line 1705
    .line 1706
    const/4 v13, 0x0

    .line 1707
    iput-boolean v13, v6, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    .line 1708
    .line 1709
    iget v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 1710
    .line 1711
    if-eqz v11, :cond_5d

    .line 1712
    .line 1713
    if-eqz v9, :cond_5d

    .line 1714
    .line 1715
    const/4 v14, 0x1

    .line 1716
    iput-boolean v14, v6, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    .line 1717
    .line 1718
    goto :goto_40

    .line 1719
    :cond_5d
    const/4 v14, 0x1

    .line 1720
    :goto_40
    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1721
    .line 1722
    aget-object v11, v20, v13

    .line 1723
    .line 1724
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1725
    .line 1726
    if-eq v11, v12, :cond_5f

    .line 1727
    .line 1728
    aget-object v11, v20, v14

    .line 1729
    .line 1730
    if-ne v11, v12, :cond_5e

    .line 1731
    .line 1732
    goto :goto_41

    .line 1733
    :cond_5e
    move v11, v13

    .line 1734
    goto :goto_42

    .line 1735
    :cond_5f
    :goto_41
    const/4 v11, 0x1

    .line 1736
    :goto_42
    iput v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 1737
    .line 1738
    iput v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 1739
    .line 1740
    const/4 v12, 0x0

    .line 1741
    :goto_43
    if-ge v12, v3, :cond_61

    .line 1742
    .line 1743
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1744
    .line 1745
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v13

    .line 1749
    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1750
    .line 1751
    instance-of v14, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 1752
    .line 1753
    if-eqz v14, :cond_60

    .line 1754
    .line 1755
    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 1756
    .line 1757
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->layout()V

    .line 1758
    .line 1759
    .line 1760
    :cond_60
    add-int/lit8 v12, v12, 0x1

    .line 1761
    .line 1762
    goto :goto_43

    .line 1763
    :cond_61
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1764
    .line 1765
    .line 1766
    move-result v12

    .line 1767
    move v13, v0

    .line 1768
    const/4 v0, 0x0

    .line 1769
    const/4 v14, 0x1

    .line 1770
    :goto_44
    if-eqz v14, :cond_76

    .line 1771
    .line 1772
    const/16 v16, 0x1

    .line 1773
    .line 1774
    add-int/lit8 v15, v0, 0x1

    .line 1775
    .line 1776
    :try_start_0
    invoke-virtual {v6}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    .line 1777
    .line 1778
    .line 1779
    const/4 v5, 0x0

    .line 1780
    iput v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 1781
    .line 1782
    iput v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 1783
    .line 1784
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V

    .line 1785
    .line 1786
    .line 1787
    const/4 v0, 0x0

    .line 1788
    :goto_45
    if-ge v0, v3, :cond_62

    .line 1789
    .line 1790
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1791
    .line 1792
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v5

    .line 1796
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1797
    .line 1798
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V

    .line 1799
    .line 1800
    .line 1801
    add-int/lit8 v0, v0, 0x1

    .line 1802
    .line 1803
    goto :goto_45

    .line 1804
    :catch_0
    move-exception v0

    .line 1805
    move-object/from16 v22, v10

    .line 1806
    .line 1807
    const/4 v10, 0x0

    .line 1808
    goto/16 :goto_4b

    .line 1809
    .line 1810
    :cond_62
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChildrenToSolver(Landroidx/constraintlayout/core/LinearSystem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1811
    .line 1812
    .line 1813
    :try_start_1
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1814
    .line 1815
    const/4 v5, 0x5

    .line 1816
    if-eqz v0, :cond_63

    .line 1817
    .line 1818
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v0

    .line 1822
    if-eqz v0, :cond_63

    .line 1823
    .line 1824
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1825
    .line 1826
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1827
    .line 1828
    .line 1829
    move-result-object v0

    .line 1830
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1831
    .line 1832
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v14

    .line 1836
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1837
    .line 1838
    .line 1839
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1840
    move-object/from16 v22, v10

    .line 1841
    .line 1842
    const/4 v10, 0x0

    .line 1843
    :try_start_2
    invoke-virtual {v6, v0, v14, v10, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1844
    .line 1845
    .line 1846
    const/4 v10, 0x0

    .line 1847
    iput-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1848
    .line 1849
    goto :goto_48

    .line 1850
    :catch_1
    move-exception v0

    .line 1851
    :goto_46
    const/4 v10, 0x0

    .line 1852
    :goto_47
    const/4 v14, 0x1

    .line 1853
    goto/16 :goto_4b

    .line 1854
    .line 1855
    :catch_2
    move-exception v0

    .line 1856
    move-object/from16 v22, v10

    .line 1857
    .line 1858
    goto :goto_46

    .line 1859
    :cond_63
    move-object/from16 v22, v10

    .line 1860
    .line 1861
    :goto_48
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1862
    .line 1863
    if-eqz v0, :cond_64

    .line 1864
    .line 1865
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1866
    .line 1867
    .line 1868
    move-result-object v0

    .line 1869
    if-eqz v0, :cond_64

    .line 1870
    .line 1871
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1872
    .line 1873
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v0

    .line 1877
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1878
    .line 1879
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1880
    .line 1881
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1882
    .line 1883
    .line 1884
    move-result-object v10

    .line 1885
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1886
    .line 1887
    .line 1888
    move-result-object v0

    .line 1889
    const/4 v14, 0x0

    .line 1890
    invoke-virtual {v6, v10, v0, v14, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1891
    .line 1892
    .line 1893
    const/4 v10, 0x0

    .line 1894
    iput-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1895
    .line 1896
    :cond_64
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1897
    .line 1898
    if-eqz v0, :cond_65

    .line 1899
    .line 1900
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1901
    .line 1902
    .line 1903
    move-result-object v0

    .line 1904
    if-eqz v0, :cond_65

    .line 1905
    .line 1906
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1907
    .line 1908
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v0

    .line 1912
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1913
    .line 1914
    move-object/from16 v10, v23

    .line 1915
    .line 1916
    :try_start_3
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v14

    .line 1920
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1921
    .line 1922
    .line 1923
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1924
    move-object/from16 v23, v10

    .line 1925
    .line 1926
    const/4 v10, 0x0

    .line 1927
    :try_start_4
    invoke-virtual {v6, v0, v14, v10, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1928
    .line 1929
    .line 1930
    const/4 v10, 0x0

    .line 1931
    iput-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1932
    .line 1933
    goto :goto_49

    .line 1934
    :catch_3
    move-exception v0

    .line 1935
    move-object/from16 v23, v10

    .line 1936
    .line 1937
    goto :goto_46

    .line 1938
    :cond_65
    :goto_49
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1939
    .line 1940
    if-eqz v0, :cond_66

    .line 1941
    .line 1942
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1943
    .line 1944
    .line 1945
    move-result-object v0

    .line 1946
    if-eqz v0, :cond_66

    .line 1947
    .line 1948
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1949
    .line 1950
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1951
    .line 1952
    .line 1953
    move-result-object v0

    .line 1954
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1955
    .line 1956
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1957
    .line 1958
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1959
    .line 1960
    .line 1961
    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1962
    :try_start_5
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1963
    .line 1964
    .line 1965
    move-result-object v0

    .line 1966
    const/4 v14, 0x0

    .line 1967
    invoke-virtual {v6, v10, v0, v14, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1968
    .line 1969
    .line 1970
    const/4 v10, 0x0

    .line 1971
    :try_start_6
    iput-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1972
    .line 1973
    goto :goto_4a

    .line 1974
    :catch_4
    move-exception v0

    .line 1975
    goto :goto_47

    .line 1976
    :catch_5
    move-exception v0

    .line 1977
    goto :goto_46

    .line 1978
    :cond_66
    const/4 v10, 0x0

    .line 1979
    :goto_4a
    invoke-virtual {v6}, Landroidx/constraintlayout/core/LinearSystem;->minimize()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1980
    .line 1981
    .line 1982
    move/from16 v24, v11

    .line 1983
    .line 1984
    const/4 v14, 0x1

    .line 1985
    goto :goto_4c

    .line 1986
    :goto_4b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1987
    .line 1988
    .line 1989
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1990
    .line 1991
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1992
    .line 1993
    move/from16 v24, v11

    .line 1994
    .line 1995
    const-string v11, "EXCEPTION : "

    .line 1996
    .line 1997
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1998
    .line 1999
    .line 2000
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2001
    .line 2002
    .line 2003
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2004
    .line 2005
    .line 2006
    move-result-object v0

    .line 2007
    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2008
    .line 2009
    .line 2010
    :goto_4c
    sget-object v0, Landroidx/constraintlayout/core/widgets/Chain;->sFlags:[Z

    .line 2011
    .line 2012
    if-eqz v14, :cond_6a

    .line 2013
    .line 2014
    const/16 v17, 0x0

    .line 2015
    .line 2016
    const/16 v18, 0x2

    .line 2017
    .line 2018
    aput-boolean v17, v0, v18

    .line 2019
    .line 2020
    const/16 v5, 0x40

    .line 2021
    .line 2022
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 2023
    .line 2024
    .line 2025
    move-result v10

    .line 2026
    invoke-virtual {v1, v6, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 2027
    .line 2028
    .line 2029
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2030
    .line 2031
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 2032
    .line 2033
    .line 2034
    move-result v11

    .line 2035
    const/4 v5, 0x0

    .line 2036
    const/4 v14, 0x0

    .line 2037
    :goto_4d
    if-ge v5, v11, :cond_69

    .line 2038
    .line 2039
    move-object/from16 v25, v0

    .line 2040
    .line 2041
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2042
    .line 2043
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2044
    .line 2045
    .line 2046
    move-result-object v0

    .line 2047
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2048
    .line 2049
    invoke-virtual {v0, v6, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 2050
    .line 2051
    .line 2052
    move/from16 v26, v5

    .line 2053
    .line 2054
    iget v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 2055
    .line 2056
    move/from16 v27, v10

    .line 2057
    .line 2058
    const/4 v10, -0x1

    .line 2059
    if-ne v5, v10, :cond_67

    .line 2060
    .line 2061
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    .line 2062
    .line 2063
    if-eq v0, v10, :cond_68

    .line 2064
    .line 2065
    :cond_67
    const/4 v14, 0x1

    .line 2066
    :cond_68
    add-int/lit8 v5, v26, 0x1

    .line 2067
    .line 2068
    move-object/from16 v0, v25

    .line 2069
    .line 2070
    move/from16 v10, v27

    .line 2071
    .line 2072
    goto :goto_4d

    .line 2073
    :cond_69
    move-object/from16 v25, v0

    .line 2074
    .line 2075
    const/4 v10, -0x1

    .line 2076
    goto :goto_4f

    .line 2077
    :cond_6a
    move-object/from16 v25, v0

    .line 2078
    .line 2079
    const/4 v10, -0x1

    .line 2080
    invoke-virtual {v1, v6, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 2081
    .line 2082
    .line 2083
    const/4 v0, 0x0

    .line 2084
    :goto_4e
    if-ge v0, v3, :cond_6b

    .line 2085
    .line 2086
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2087
    .line 2088
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2089
    .line 2090
    .line 2091
    move-result-object v5

    .line 2092
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2093
    .line 2094
    invoke-virtual {v5, v6, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 2095
    .line 2096
    .line 2097
    add-int/lit8 v0, v0, 0x1

    .line 2098
    .line 2099
    goto :goto_4e

    .line 2100
    :cond_6b
    const/4 v14, 0x0

    .line 2101
    :goto_4f
    const/16 v0, 0x8

    .line 2102
    .line 2103
    if-eqz v24, :cond_6f

    .line 2104
    .line 2105
    if-ge v15, v0, :cond_6f

    .line 2106
    .line 2107
    const/16 v18, 0x2

    .line 2108
    .line 2109
    aget-boolean v5, v25, v18

    .line 2110
    .line 2111
    if-eqz v5, :cond_6e

    .line 2112
    .line 2113
    const/4 v5, 0x0

    .line 2114
    const/4 v10, 0x0

    .line 2115
    const/4 v11, 0x0

    .line 2116
    :goto_50
    if-ge v5, v3, :cond_6c

    .line 2117
    .line 2118
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2119
    .line 2120
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2121
    .line 2122
    .line 2123
    move-result-object v0

    .line 2124
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2125
    .line 2126
    move/from16 v26, v3

    .line 2127
    .line 2128
    iget v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 2129
    .line 2130
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2131
    .line 2132
    .line 2133
    move-result v27

    .line 2134
    add-int v3, v27, v3

    .line 2135
    .line 2136
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    .line 2137
    .line 2138
    .line 2139
    move-result v11

    .line 2140
    iget v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 2141
    .line 2142
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2143
    .line 2144
    .line 2145
    move-result v0

    .line 2146
    add-int/2addr v0, v3

    .line 2147
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    .line 2148
    .line 2149
    .line 2150
    move-result v10

    .line 2151
    add-int/lit8 v5, v5, 0x1

    .line 2152
    .line 2153
    move/from16 v3, v26

    .line 2154
    .line 2155
    const/16 v0, 0x8

    .line 2156
    .line 2157
    goto :goto_50

    .line 2158
    :cond_6c
    move/from16 v26, v3

    .line 2159
    .line 2160
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 2161
    .line 2162
    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    .line 2163
    .line 2164
    .line 2165
    move-result v0

    .line 2166
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 2167
    .line 2168
    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    .line 2169
    .line 2170
    .line 2171
    move-result v3

    .line 2172
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2173
    .line 2174
    if-ne v8, v5, :cond_6d

    .line 2175
    .line 2176
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2177
    .line 2178
    .line 2179
    move-result v10

    .line 2180
    if-ge v10, v0, :cond_6d

    .line 2181
    .line 2182
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 2183
    .line 2184
    .line 2185
    const/16 v17, 0x0

    .line 2186
    .line 2187
    aput-object v5, v20, v17

    .line 2188
    .line 2189
    const/4 v13, 0x1

    .line 2190
    const/4 v14, 0x1

    .line 2191
    :cond_6d
    if-ne v7, v5, :cond_70

    .line 2192
    .line 2193
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2194
    .line 2195
    .line 2196
    move-result v0

    .line 2197
    if-ge v0, v3, :cond_70

    .line 2198
    .line 2199
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 2200
    .line 2201
    .line 2202
    const/16 v16, 0x1

    .line 2203
    .line 2204
    aput-object v5, v20, v16

    .line 2205
    .line 2206
    const/4 v13, 0x1

    .line 2207
    const/4 v14, 0x1

    .line 2208
    goto :goto_51

    .line 2209
    :cond_6e
    move/from16 v26, v3

    .line 2210
    .line 2211
    goto :goto_51

    .line 2212
    :cond_6f
    move/from16 v26, v3

    .line 2213
    .line 2214
    const/16 v18, 0x2

    .line 2215
    .line 2216
    :cond_70
    :goto_51
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 2217
    .line 2218
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2219
    .line 2220
    .line 2221
    move-result v3

    .line 2222
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 2223
    .line 2224
    .line 2225
    move-result v0

    .line 2226
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2227
    .line 2228
    .line 2229
    move-result v3

    .line 2230
    if-le v0, v3, :cond_71

    .line 2231
    .line 2232
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 2233
    .line 2234
    .line 2235
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2236
    .line 2237
    const/16 v17, 0x0

    .line 2238
    .line 2239
    aput-object v0, v20, v17

    .line 2240
    .line 2241
    const/4 v13, 0x1

    .line 2242
    const/4 v14, 0x1

    .line 2243
    :cond_71
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 2244
    .line 2245
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2246
    .line 2247
    .line 2248
    move-result v3

    .line 2249
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 2250
    .line 2251
    .line 2252
    move-result v0

    .line 2253
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2254
    .line 2255
    .line 2256
    move-result v3

    .line 2257
    if-le v0, v3, :cond_72

    .line 2258
    .line 2259
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 2260
    .line 2261
    .line 2262
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2263
    .line 2264
    const/4 v5, 0x1

    .line 2265
    aput-object v0, v20, v5

    .line 2266
    .line 2267
    move v13, v5

    .line 2268
    move v14, v13

    .line 2269
    goto :goto_52

    .line 2270
    :cond_72
    const/4 v5, 0x1

    .line 2271
    :goto_52
    if-nez v13, :cond_74

    .line 2272
    .line 2273
    const/16 v17, 0x0

    .line 2274
    .line 2275
    aget-object v0, v20, v17

    .line 2276
    .line 2277
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2278
    .line 2279
    if-ne v0, v3, :cond_73

    .line 2280
    .line 2281
    if-lez v2, :cond_73

    .line 2282
    .line 2283
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2284
    .line 2285
    .line 2286
    move-result v0

    .line 2287
    if-le v0, v2, :cond_73

    .line 2288
    .line 2289
    iput-boolean v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 2290
    .line 2291
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2292
    .line 2293
    aput-object v0, v20, v17

    .line 2294
    .line 2295
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 2296
    .line 2297
    .line 2298
    move v13, v5

    .line 2299
    move v14, v13

    .line 2300
    :cond_73
    aget-object v0, v20, v5

    .line 2301
    .line 2302
    if-ne v0, v3, :cond_74

    .line 2303
    .line 2304
    if-lez v4, :cond_74

    .line 2305
    .line 2306
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2307
    .line 2308
    .line 2309
    move-result v0

    .line 2310
    if-le v0, v4, :cond_74

    .line 2311
    .line 2312
    iput-boolean v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 2313
    .line 2314
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2315
    .line 2316
    aput-object v0, v20, v5

    .line 2317
    .line 2318
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 2319
    .line 2320
    .line 2321
    const/16 v0, 0x8

    .line 2322
    .line 2323
    const/4 v13, 0x1

    .line 2324
    const/4 v14, 0x1

    .line 2325
    goto :goto_53

    .line 2326
    :cond_74
    const/16 v0, 0x8

    .line 2327
    .line 2328
    :goto_53
    if-le v15, v0, :cond_75

    .line 2329
    .line 2330
    const/4 v14, 0x0

    .line 2331
    :cond_75
    move v0, v15

    .line 2332
    move-object/from16 v10, v22

    .line 2333
    .line 2334
    move/from16 v11, v24

    .line 2335
    .line 2336
    move/from16 v3, v26

    .line 2337
    .line 2338
    const/16 v5, 0x40

    .line 2339
    .line 2340
    goto/16 :goto_44

    .line 2341
    .line 2342
    :cond_76
    iput-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2343
    .line 2344
    if-eqz v13, :cond_77

    .line 2345
    .line 2346
    const/16 v17, 0x0

    .line 2347
    .line 2348
    aput-object v8, v20, v17

    .line 2349
    .line 2350
    const/16 v16, 0x1

    .line 2351
    .line 2352
    aput-object v7, v20, v16

    .line 2353
    .line 2354
    :cond_77
    iget-object v0, v6, Landroidx/constraintlayout/core/LinearSystem;->mCache:Lcom/caverock/androidsvg/SVG;

    .line 2355
    .line 2356
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->resetSolverVariables(Lcom/caverock/androidsvg/SVG;)V

    .line 2357
    .line 2358
    .line 2359
    return-void
.end method

.method public final optimizeFor(I)Z
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-ne p0, p1, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->reset()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final resetSolverVariables(Lcom/caverock/androidsvg/SVG;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetSolverVariables(Lcom/caverock/androidsvg/SVG;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetSolverVariables(Lcom/caverock/androidsvg/SVG;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final updateFromRuns(ZZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromRuns(ZZ)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 20
    .line 21
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromRuns(ZZ)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method
