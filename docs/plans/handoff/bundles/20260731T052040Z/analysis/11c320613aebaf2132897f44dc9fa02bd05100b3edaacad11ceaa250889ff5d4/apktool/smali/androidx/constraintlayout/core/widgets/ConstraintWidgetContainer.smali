.class public final Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
.super Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final mBasicMeasureSolver:Lorg/acra/util/ProcessFinisher;

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
    new-instance v0, Lorg/acra/util/ProcessFinisher;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lorg/acra/util/ProcessFinisher;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Lorg/acra/util/ProcessFinisher;

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
    .locals 9

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
    if-eq v0, v2, :cond_14

    .line 12
    .line 13
    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 14
    .line 15
    if-nez v0, :cond_14

    .line 16
    .line 17
    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto/16 :goto_9

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    .line 24
    .line 25
    aget v2, v0, v3

    .line 26
    .line 27
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    aget v0, v0, v2

    .line 31
    .line 32
    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

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
    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    .line 51
    .line 52
    const/4 v4, 0x3

    .line 53
    if-ne v0, v4, :cond_2

    .line 54
    .line 55
    move v0, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move v0, v3

    .line 58
    :goto_0
    iget v5, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    .line 59
    .line 60
    if-ne v5, v4, :cond_3

    .line 61
    .line 62
    move v4, v2

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move v4, v3

    .line 65
    :goto_1
    const/4 v5, 0x0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 69
    .line 70
    cmpl-float v6, v6, v5

    .line 71
    .line 72
    if-lez v6, :cond_4

    .line 73
    .line 74
    move v6, v2

    .line 75
    goto :goto_2

    .line 76
    :cond_4
    move v6, v3

    .line 77
    :goto_2
    if-eqz v4, :cond_5

    .line 78
    .line 79
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 80
    .line 81
    cmpl-float v5, v7, v5

    .line 82
    .line 83
    if-lez v5, :cond_5

    .line 84
    .line 85
    move v5, v2

    .line 86
    goto :goto_3

    .line 87
    :cond_5
    move v5, v3

    .line 88
    :goto_3
    const/4 v7, 0x2

    .line 89
    if-eqz v0, :cond_7

    .line 90
    .line 91
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-eqz v8, :cond_7

    .line 96
    .line 97
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 98
    .line 99
    if-nez v8, :cond_7

    .line 100
    .line 101
    if-nez v6, :cond_7

    .line 102
    .line 103
    iput v7, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    .line 104
    .line 105
    if-eqz v4, :cond_6

    .line 106
    .line 107
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 108
    .line 109
    if-nez v0, :cond_6

    .line 110
    .line 111
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    .line 112
    .line 113
    :cond_6
    move v0, v3

    .line 114
    :cond_7
    if-eqz v4, :cond_9

    .line 115
    .line 116
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    if-eqz v8, :cond_9

    .line 121
    .line 122
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 123
    .line 124
    if-nez v8, :cond_9

    .line 125
    .line 126
    if-nez v5, :cond_9

    .line 127
    .line 128
    iput v7, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    .line 129
    .line 130
    if-eqz v0, :cond_8

    .line 131
    .line 132
    iget v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 133
    .line 134
    if-nez v4, :cond_8

    .line 135
    .line 136
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    .line 137
    .line 138
    :cond_8
    move v4, v3

    .line 139
    :cond_9
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-eqz v8, :cond_a

    .line 144
    .line 145
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    .line 146
    .line 147
    move v0, v3

    .line 148
    :cond_a
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-eqz v8, :cond_b

    .line 153
    .line 154
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    .line 155
    .line 156
    move v4, v3

    .line 157
    :cond_b
    const/4 v8, 0x4

    .line 158
    if-eqz v6, :cond_e

    .line 159
    .line 160
    aget v6, v1, v3

    .line 161
    .line 162
    if-ne v6, v8, :cond_c

    .line 163
    .line 164
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_c
    if-nez v4, :cond_e

    .line 168
    .line 169
    iget v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    .line 170
    .line 171
    if-ne v4, v2, :cond_d

    .line 172
    .line 173
    iget v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_d
    iput v7, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    .line 177
    .line 178
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 179
    .line 180
    .line 181
    iget v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 182
    .line 183
    :goto_4
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    .line 184
    .line 185
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 186
    .line 187
    int-to-float v4, v4

    .line 188
    mul-float/2addr v6, v4

    .line 189
    float-to-int v4, v6

    .line 190
    iput v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 191
    .line 192
    :cond_e
    :goto_5
    if-eqz v5, :cond_12

    .line 193
    .line 194
    aget v1, v1, v2

    .line 195
    .line 196
    if-ne v1, v8, :cond_f

    .line 197
    .line 198
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_f
    if-nez v0, :cond_12

    .line 202
    .line 203
    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    .line 204
    .line 205
    if-ne v0, v2, :cond_10

    .line 206
    .line 207
    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_10
    iput v7, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    .line 211
    .line 212
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 213
    .line 214
    .line 215
    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 216
    .line 217
    :goto_6
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    .line 218
    .line 219
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 220
    .line 221
    iget v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 222
    .line 223
    const/4 v5, -0x1

    .line 224
    if-ne v1, v5, :cond_11

    .line 225
    .line 226
    int-to-float v0, v0

    .line 227
    div-float/2addr v0, v4

    .line 228
    float-to-int v0, v0

    .line 229
    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 230
    .line 231
    goto :goto_7

    .line 232
    :cond_11
    int-to-float v0, v0

    .line 233
    mul-float/2addr v4, v0

    .line 234
    float-to-int v0, v4

    .line 235
    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 236
    .line 237
    :cond_12
    :goto_7
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 238
    .line 239
    .line 240
    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 241
    .line 242
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 243
    .line 244
    .line 245
    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 246
    .line 247
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 248
    .line 249
    .line 250
    iget-boolean p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 251
    .line 252
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHasBaseline:Z

    .line 253
    .line 254
    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 255
    .line 256
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 257
    .line 258
    if-lez p1, :cond_13

    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_13
    move v2, v3

    .line 262
    :goto_8
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHasBaseline:Z

    .line 263
    .line 264
    iput v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 265
    .line 266
    return-void

    .line 267
    :cond_14
    :goto_9
    iput v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 268
    .line 269
    iput v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 270
    .line 271
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
    check-cast p2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 22
    .line 23
    :cond_0
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 24
    .line 25
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 26
    .line 27
    new-instance v2, Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    iget-boolean v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 31
    .line 32
    invoke-direct {v2, p1, v3, v4}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    .line 33
    .line 34
    .line 35
    aput-object v2, p2, v1

    .line 36
    .line 37
    add-int/2addr v1, v0

    .line 38
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    if-ne p2, v0, :cond_3

    .line 42
    .line 43
    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 44
    .line 45
    add-int/2addr p2, v0

    .line 46
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 47
    .line 48
    array-length v2, v1

    .line 49
    if-lt p2, v2, :cond_2

    .line 50
    .line 51
    array-length p2, v1

    .line 52
    mul-int/lit8 p2, p2, 0x2

    .line 53
    .line 54
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 59
    .line 60
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 61
    .line 62
    :cond_2
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 63
    .line 64
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 65
    .line 66
    new-instance v2, Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 67
    .line 68
    iget-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 69
    .line 70
    invoke-direct {v2, p1, v0, v3}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    .line 71
    .line 72
    .line 73
    aput-object v2, p2, v1

    .line 74
    .line 75
    add-int/2addr v1, v0

    .line 76
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 77
    .line 78
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
    const/4 v3, 0x2

    .line 45
    if-eqz v4, :cond_8

    .line 46
    .line 47
    move v4, v2

    .line 48
    :goto_1
    if-ge v4, v1, :cond_8

    .line 49
    .line 50
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 57
    .line 58
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 59
    .line 60
    if-eqz v7, :cond_7

    .line 61
    .line 62
    check-cast v6, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 63
    .line 64
    move v7, v2

    .line 65
    :goto_2
    iget v8, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    .line 66
    .line 67
    if-ge v7, v8, :cond_7

    .line 68
    .line 69
    iget-object v8, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 70
    .line 71
    aget-object v8, v8, v7

    .line 72
    .line 73
    iget-boolean v9, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 74
    .line 75
    if-nez v9, :cond_2

    .line 76
    .line 77
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-nez v9, :cond_2

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_2
    iget v9, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 85
    .line 86
    if-eqz v9, :cond_5

    .line 87
    .line 88
    if-ne v9, v5, :cond_3

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_3
    if-eq v9, v3, :cond_4

    .line 92
    .line 93
    const/4 v10, 0x3

    .line 94
    if-ne v9, v10, :cond_6

    .line 95
    .line 96
    :cond_4
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 97
    .line 98
    aput-boolean v5, v8, v5

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_5
    :goto_3
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 102
    .line 103
    aput-boolean v5, v8, v2

    .line 104
    .line 105
    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_8
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidgetsToAdd:Ljava/util/HashSet;

    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 114
    .line 115
    .line 116
    move v6, v2

    .line 117
    :goto_5
    if-ge v6, v1, :cond_a

    .line 118
    .line 119
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    instance-of v8, v7, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 131
    .line 132
    if-eqz v8, :cond_9

    .line 133
    .line 134
    invoke-virtual {v7, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 135
    .line 136
    .line 137
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_a
    :goto_6
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-lez v6, :cond_d

    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-nez v8, :cond_c

    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    if-ne v6, v7, :cond_a

    .line 165
    .line 166
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    if-eqz v7, :cond_b

    .line 175
    .line 176
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 181
    .line 182
    invoke-virtual {v7, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 183
    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_b
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 187
    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    check-cast p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 195
    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2()V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_d
    sget-boolean v4, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    .line 204
    .line 205
    if-eqz v4, :cond_11

    .line 206
    .line 207
    new-instance v9, Ljava/util/HashSet;

    .line 208
    .line 209
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 210
    .line 211
    .line 212
    move v4, v2

    .line 213
    :goto_8
    if-ge v4, v1, :cond_f

    .line 214
    .line 215
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 222
    .line 223
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 227
    .line 228
    if-nez v7, :cond_e

    .line 229
    .line 230
    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    :cond_e
    add-int/lit8 v4, v4, 0x1

    .line 234
    .line 235
    goto :goto_8

    .line 236
    :cond_f
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    .line 237
    .line 238
    aget v1, v1, v2

    .line 239
    .line 240
    if-ne v1, v3, :cond_10

    .line 241
    .line 242
    move v10, v2

    .line 243
    goto :goto_9

    .line 244
    :cond_10
    move v10, v5

    .line 245
    :goto_9
    const/4 v11, 0x0

    .line 246
    move-object v7, p0

    .line 247
    move-object v6, p0

    .line 248
    move-object v8, p1

    .line 249
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    if-eqz p1, :cond_17

    .line 261
    .line 262
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 267
    .line 268
    invoke-static {v6, v8, p1}, Landroidx/constraintlayout/core/widgets/Chain;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 272
    .line 273
    .line 274
    goto :goto_a

    .line 275
    :cond_11
    move-object v6, p0

    .line 276
    move-object v8, p1

    .line 277
    move p0, v2

    .line 278
    :goto_b
    if-ge p0, v1, :cond_17

    .line 279
    .line 280
    iget-object p1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 287
    .line 288
    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 289
    .line 290
    if-eqz v4, :cond_15

    .line 291
    .line 292
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    .line 293
    .line 294
    aget v7, v4, v2

    .line 295
    .line 296
    aget v4, v4, v5

    .line 297
    .line 298
    if-ne v7, v3, :cond_12

    .line 299
    .line 300
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(I)V

    .line 301
    .line 302
    .line 303
    :cond_12
    if-ne v4, v3, :cond_13

    .line 304
    .line 305
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(I)V

    .line 306
    .line 307
    .line 308
    :cond_13
    invoke-virtual {p1, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 309
    .line 310
    .line 311
    if-ne v7, v3, :cond_14

    .line 312
    .line 313
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(I)V

    .line 314
    .line 315
    .line 316
    :cond_14
    if-ne v4, v3, :cond_16

    .line 317
    .line 318
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(I)V

    .line 319
    .line 320
    .line 321
    goto :goto_c

    .line 322
    :cond_15
    invoke-static {v6, v8, p1}, Landroidx/constraintlayout/core/widgets/Chain;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 323
    .line 324
    .line 325
    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 326
    .line 327
    if-nez v4, :cond_16

    .line 328
    .line 329
    invoke-virtual {p1, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 330
    .line 331
    .line 332
    :cond_16
    :goto_c
    add-int/lit8 p0, p0, 0x1

    .line 333
    .line 334
    goto :goto_b

    .line 335
    :cond_17
    iget p0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 336
    .line 337
    const/4 p1, 0x0

    .line 338
    if-lez p0, :cond_18

    .line 339
    .line 340
    invoke-static {v6, v8, p1, v2}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    .line 341
    .line 342
    .line 343
    :cond_18
    iget p0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 344
    .line 345
    if-lez p0, :cond_19

    .line 346
    .line 347
    invoke-static {v6, v8, p1, v5}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    .line 348
    .line 349
    .line 350
    :cond_19
    return-void
.end method

.method public final directMeasureWithOrientation(IZ)Z
    .locals 12

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
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)I

    .line 18
    .line 19
    .line 20
    move-result v5

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
    const/4 v8, 0x2

    .line 32
    if-eq v3, v8, :cond_0

    .line 33
    .line 34
    if-ne v5, v8, :cond_4

    .line 35
    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    if-eqz v10, :cond_2

    .line 45
    .line 46
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 51
    .line 52
    iget v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 53
    .line 54
    if-ne v11, p1, :cond_1

    .line 55
    .line 56
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    if-nez v10, :cond_1

    .line 61
    .line 62
    move p2, v2

    .line 63
    :cond_2
    if-nez p1, :cond_3

    .line 64
    .line 65
    if-eqz p2, :cond_4

    .line 66
    .line 67
    if-ne v3, v8, :cond_4

    .line 68
    .line 69
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1, v2}, Lokio/FileMetadata;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 77
    .line 78
    .line 79
    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 80
    .line 81
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    invoke-virtual {p2, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    if-eqz p2, :cond_4

    .line 92
    .line 93
    if-ne v5, v8, :cond_4

    .line 94
    .line 95
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1, v4}, Lokio/FileMetadata;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 103
    .line 104
    .line 105
    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 106
    .line 107
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 108
    .line 109
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    invoke-virtual {p2, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_0
    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    .line 117
    .line 118
    const/4 v8, 0x4

    .line 119
    if-nez p1, :cond_6

    .line 120
    .line 121
    aget p2, p2, v2

    .line 122
    .line 123
    if-eq p2, v4, :cond_5

    .line 124
    .line 125
    if-ne p2, v8, :cond_7

    .line 126
    .line 127
    :cond_5
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    add-int/2addr p2, v6

    .line 132
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 133
    .line 134
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 135
    .line 136
    invoke-virtual {v7, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 137
    .line 138
    .line 139
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 140
    .line 141
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 142
    .line 143
    sub-int/2addr p2, v6

    .line 144
    invoke-virtual {v7, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 145
    .line 146
    .line 147
    :goto_1
    move p2, v4

    .line 148
    goto :goto_3

    .line 149
    :cond_6
    aget p2, p2, v4

    .line 150
    .line 151
    if-eq p2, v4, :cond_8

    .line 152
    .line 153
    if-ne p2, v8, :cond_7

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_7
    move p2, v2

    .line 157
    goto :goto_3

    .line 158
    :cond_8
    :goto_2
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    add-int/2addr p2, v7

    .line 163
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 164
    .line 165
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 166
    .line 167
    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 168
    .line 169
    .line 170
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 171
    .line 172
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 173
    .line 174
    sub-int/2addr p2, v7

    .line 175
    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :goto_3
    invoke-virtual {p0}, Lokio/FileMetadata;->measureWidgets()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-eqz v6, :cond_b

    .line 191
    .line 192
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 197
    .line 198
    iget v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 199
    .line 200
    if-eq v7, p1, :cond_9

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_9
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 204
    .line 205
    if-ne v7, v1, :cond_a

    .line 206
    .line 207
    iget-boolean v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mResolved:Z

    .line 208
    .line 209
    if-nez v7, :cond_a

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_a
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->applyToWidget()V

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    :cond_c
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_11

    .line 225
    .line 226
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 231
    .line 232
    iget v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 233
    .line 234
    if-eq v6, p1, :cond_d

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_d
    if-nez p2, :cond_e

    .line 238
    .line 239
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 240
    .line 241
    if-ne v6, v1, :cond_e

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_e
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 245
    .line 246
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 247
    .line 248
    if-nez v6, :cond_f

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_f
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 252
    .line 253
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 254
    .line 255
    if-nez v6, :cond_10

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_10
    instance-of v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 259
    .line 260
    if-nez v6, :cond_c

    .line 261
    .line 262
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 263
    .line 264
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 265
    .line 266
    if-nez v0, :cond_c

    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_11
    move v2, v4

    .line 270
    :goto_6
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(I)V

    .line 274
    .line 275
    .line 276
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
    .locals 33

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
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    aget v7, v5, v6

    .line 38
    .line 39
    aget v8, v5, v2

    .line 40
    .line 41
    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPass:I

    .line 42
    .line 43
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 44
    .line 45
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

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
    aget v14, v5, v2

    .line 60
    .line 61
    aget v15, v5, v6

    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetFinalResolution()V

    .line 64
    .line 65
    .line 66
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v13

    .line 72
    :goto_0
    if-ge v2, v13, :cond_0

    .line 73
    .line 74
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v18

    .line 78
    check-cast v18, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 79
    .line 80
    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetFinalResolution()V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 87
    .line 88
    if-ne v14, v6, :cond_1

    .line 89
    .line 90
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    const/4 v6, 0x0

    .line 95
    invoke-virtual {v1, v6, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    const/4 v6, 0x0

    .line 100
    invoke-virtual {v12, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 101
    .line 102
    .line 103
    iput v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 104
    .line 105
    :goto_1
    const/4 v6, 0x0

    .line 106
    const/4 v14, 0x0

    .line 107
    const/16 v19, 0x0

    .line 108
    .line 109
    :goto_2
    const/high16 v20, 0x3f000000    # 0.5f

    .line 110
    .line 111
    if-ge v6, v13, :cond_7

    .line 112
    .line 113
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v21

    .line 117
    move-object/from16 v22, v5

    .line 118
    .line 119
    move-object/from16 v5, v21

    .line 120
    .line 121
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 122
    .line 123
    move/from16 v21, v6

    .line 124
    .line 125
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 126
    .line 127
    if-eqz v6, :cond_6

    .line 128
    .line 129
    check-cast v5, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 130
    .line 131
    iget v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 132
    .line 133
    move/from16 v23, v14

    .line 134
    .line 135
    const/4 v14, 0x1

    .line 136
    if-ne v6, v14, :cond_5

    .line 137
    .line 138
    iget v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 139
    .line 140
    const/4 v14, -0x1

    .line 141
    if-eq v6, v14, :cond_2

    .line 142
    .line 143
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_2
    iget v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 148
    .line 149
    if-eq v6, v14, :cond_3

    .line 150
    .line 151
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_3

    .line 156
    .line 157
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    iget v14, v5, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 162
    .line 163
    sub-int/2addr v6, v14

    .line 164
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_3
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    if-eqz v6, :cond_4

    .line 173
    .line 174
    iget v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 175
    .line 176
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 177
    .line 178
    .line 179
    move-result v14

    .line 180
    int-to-float v14, v14

    .line 181
    mul-float/2addr v6, v14

    .line 182
    add-float v6, v6, v20

    .line 183
    .line 184
    float-to-int v6, v6

    .line 185
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 186
    .line 187
    .line 188
    :cond_4
    :goto_3
    const/16 v23, 0x1

    .line 189
    .line 190
    :cond_5
    move/from16 v14, v23

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_6
    move/from16 v23, v14

    .line 194
    .line 195
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 196
    .line 197
    if-eqz v6, :cond_5

    .line 198
    .line 199
    check-cast v5, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 200
    .line 201
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    if-nez v5, :cond_5

    .line 206
    .line 207
    move/from16 v14, v23

    .line 208
    .line 209
    const/16 v19, 0x1

    .line 210
    .line 211
    :goto_4
    add-int/lit8 v6, v21, 0x1

    .line 212
    .line 213
    move-object/from16 v5, v22

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_7
    move-object/from16 v22, v5

    .line 217
    .line 218
    move/from16 v23, v14

    .line 219
    .line 220
    if-eqz v23, :cond_a

    .line 221
    .line 222
    const/4 v5, 0x0

    .line 223
    :goto_5
    if-ge v5, v13, :cond_a

    .line 224
    .line 225
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 230
    .line 231
    instance-of v14, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 232
    .line 233
    if-eqz v14, :cond_9

    .line 234
    .line 235
    check-cast v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 236
    .line 237
    iget v14, v6, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 238
    .line 239
    move/from16 v21, v5

    .line 240
    .line 241
    const/4 v5, 0x1

    .line 242
    if-ne v14, v5, :cond_8

    .line 243
    .line 244
    const/4 v5, 0x0

    .line 245
    invoke-static {v5, v6, v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    .line 246
    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_8
    :goto_6
    const/4 v5, 0x0

    .line 250
    goto :goto_7

    .line 251
    :cond_9
    move/from16 v21, v5

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :goto_7
    add-int/lit8 v6, v21, 0x1

    .line 255
    .line 256
    move v5, v6

    .line 257
    goto :goto_5

    .line 258
    :cond_a
    const/4 v5, 0x0

    .line 259
    invoke-static {v5, v1, v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    .line 260
    .line 261
    .line 262
    if-eqz v19, :cond_c

    .line 263
    .line 264
    const/4 v5, 0x0

    .line 265
    :goto_8
    if-ge v5, v13, :cond_c

    .line 266
    .line 267
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 272
    .line 273
    instance-of v14, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 274
    .line 275
    if-eqz v14, :cond_b

    .line 276
    .line 277
    check-cast v6, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 278
    .line 279
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 280
    .line 281
    .line 282
    move-result v14

    .line 283
    if-nez v14, :cond_b

    .line 284
    .line 285
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    .line 286
    .line 287
    .line 288
    move-result v14

    .line 289
    if-eqz v14, :cond_b

    .line 290
    .line 291
    const/4 v14, 0x1

    .line 292
    invoke-static {v14, v6, v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    .line 293
    .line 294
    .line 295
    goto :goto_9

    .line 296
    :cond_b
    const/4 v14, 0x1

    .line 297
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 298
    .line 299
    goto :goto_8

    .line 300
    :cond_c
    const/4 v14, 0x1

    .line 301
    if-ne v15, v14, :cond_d

    .line 302
    .line 303
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    const/4 v6, 0x0

    .line 308
    invoke-virtual {v1, v6, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 309
    .line 310
    .line 311
    goto :goto_a

    .line 312
    :cond_d
    const/4 v6, 0x0

    .line 313
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 314
    .line 315
    .line 316
    iput v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 317
    .line 318
    :goto_a
    const/4 v5, 0x0

    .line 319
    const/4 v6, 0x0

    .line 320
    const/4 v14, 0x0

    .line 321
    :goto_b
    if-ge v5, v13, :cond_13

    .line 322
    .line 323
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v15

    .line 327
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 328
    .line 329
    move/from16 v19, v5

    .line 330
    .line 331
    instance-of v5, v15, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 332
    .line 333
    if-eqz v5, :cond_11

    .line 334
    .line 335
    check-cast v15, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 336
    .line 337
    iget v5, v15, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 338
    .line 339
    if-nez v5, :cond_12

    .line 340
    .line 341
    iget v5, v15, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 342
    .line 343
    const/4 v6, -0x1

    .line 344
    if-eq v5, v6, :cond_e

    .line 345
    .line 346
    invoke-virtual {v15, v5}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 347
    .line 348
    .line 349
    goto :goto_c

    .line 350
    :cond_e
    iget v5, v15, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 351
    .line 352
    if-eq v5, v6, :cond_f

    .line 353
    .line 354
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    if-eqz v5, :cond_f

    .line 359
    .line 360
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 361
    .line 362
    .line 363
    move-result v5

    .line 364
    iget v6, v15, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 365
    .line 366
    sub-int/2addr v5, v6

    .line 367
    invoke-virtual {v15, v5}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 368
    .line 369
    .line 370
    goto :goto_c

    .line 371
    :cond_f
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    if-eqz v5, :cond_10

    .line 376
    .line 377
    iget v5, v15, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 378
    .line 379
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 380
    .line 381
    .line 382
    move-result v6

    .line 383
    int-to-float v6, v6

    .line 384
    mul-float/2addr v5, v6

    .line 385
    add-float v5, v5, v20

    .line 386
    .line 387
    float-to-int v5, v5

    .line 388
    invoke-virtual {v15, v5}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 389
    .line 390
    .line 391
    :cond_10
    :goto_c
    const/4 v6, 0x1

    .line 392
    goto :goto_d

    .line 393
    :cond_11
    instance-of v5, v15, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 394
    .line 395
    if-eqz v5, :cond_12

    .line 396
    .line 397
    check-cast v15, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 398
    .line 399
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 400
    .line 401
    .line 402
    move-result v5

    .line 403
    const/4 v15, 0x1

    .line 404
    if-ne v5, v15, :cond_12

    .line 405
    .line 406
    const/4 v14, 0x1

    .line 407
    :cond_12
    :goto_d
    add-int/lit8 v5, v19, 0x1

    .line 408
    .line 409
    goto :goto_b

    .line 410
    :cond_13
    if-eqz v6, :cond_15

    .line 411
    .line 412
    const/4 v5, 0x0

    .line 413
    :goto_e
    if-ge v5, v13, :cond_15

    .line 414
    .line 415
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 420
    .line 421
    instance-of v15, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 422
    .line 423
    if-eqz v15, :cond_14

    .line 424
    .line 425
    check-cast v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 426
    .line 427
    iget v15, v6, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 428
    .line 429
    if-nez v15, :cond_14

    .line 430
    .line 431
    const/4 v15, 0x1

    .line 432
    invoke-static {v15, v6, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    .line 433
    .line 434
    .line 435
    :cond_14
    add-int/lit8 v5, v5, 0x1

    .line 436
    .line 437
    goto :goto_e

    .line 438
    :cond_15
    const/4 v6, 0x0

    .line 439
    invoke-static {v6, v1, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    .line 440
    .line 441
    .line 442
    if-eqz v14, :cond_17

    .line 443
    .line 444
    const/4 v5, 0x0

    .line 445
    :goto_f
    if-ge v5, v13, :cond_17

    .line 446
    .line 447
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v6

    .line 451
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 452
    .line 453
    instance-of v14, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 454
    .line 455
    if-eqz v14, :cond_16

    .line 456
    .line 457
    check-cast v6, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 458
    .line 459
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 460
    .line 461
    .line 462
    move-result v14

    .line 463
    const/4 v15, 0x1

    .line 464
    if-ne v14, v15, :cond_16

    .line 465
    .line 466
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    .line 467
    .line 468
    .line 469
    move-result v14

    .line 470
    if-eqz v14, :cond_16

    .line 471
    .line 472
    invoke-static {v15, v6, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    .line 473
    .line 474
    .line 475
    :cond_16
    add-int/lit8 v5, v5, 0x1

    .line 476
    .line 477
    goto :goto_f

    .line 478
    :cond_17
    const/4 v5, 0x0

    .line 479
    :goto_10
    if-ge v5, v13, :cond_1b

    .line 480
    .line 481
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 486
    .line 487
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 488
    .line 489
    .line 490
    move-result v14

    .line 491
    if-eqz v14, :cond_1a

    .line 492
    .line 493
    invoke-static {v6}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 494
    .line 495
    .line 496
    move-result v14

    .line 497
    if-eqz v14, :cond_1a

    .line 498
    .line 499
    sget-object v14, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->sMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 500
    .line 501
    invoke-static {v6, v9, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 502
    .line 503
    .line 504
    instance-of v14, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 505
    .line 506
    if-eqz v14, :cond_19

    .line 507
    .line 508
    move-object v14, v6

    .line 509
    check-cast v14, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 510
    .line 511
    iget v14, v14, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 512
    .line 513
    if-nez v14, :cond_18

    .line 514
    .line 515
    const/4 v14, 0x0

    .line 516
    invoke-static {v14, v6, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    .line 517
    .line 518
    .line 519
    goto :goto_11

    .line 520
    :cond_18
    const/4 v14, 0x0

    .line 521
    invoke-static {v14, v6, v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    .line 522
    .line 523
    .line 524
    goto :goto_11

    .line 525
    :cond_19
    const/4 v14, 0x0

    .line 526
    invoke-static {v14, v6, v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    .line 527
    .line 528
    .line 529
    invoke-static {v14, v6, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    .line 530
    .line 531
    .line 532
    :cond_1a
    :goto_11
    add-int/lit8 v5, v5, 0x1

    .line 533
    .line 534
    goto :goto_10

    .line 535
    :cond_1b
    const/4 v2, 0x0

    .line 536
    :goto_12
    if-ge v2, v3, :cond_1f

    .line 537
    .line 538
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 539
    .line 540
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 545
    .line 546
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 547
    .line 548
    .line 549
    move-result v6

    .line 550
    if-eqz v6, :cond_1d

    .line 551
    .line 552
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 553
    .line 554
    if-nez v6, :cond_1d

    .line 555
    .line 556
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 557
    .line 558
    if-nez v6, :cond_1d

    .line 559
    .line 560
    const/4 v6, 0x0

    .line 561
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)I

    .line 562
    .line 563
    .line 564
    move-result v9

    .line 565
    const/4 v15, 0x1

    .line 566
    invoke-virtual {v5, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)I

    .line 567
    .line 568
    .line 569
    move-result v6

    .line 570
    const/4 v10, 0x3

    .line 571
    if-ne v9, v10, :cond_1c

    .line 572
    .line 573
    iget v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 574
    .line 575
    if-eq v9, v15, :cond_1c

    .line 576
    .line 577
    if-ne v6, v10, :cond_1c

    .line 578
    .line 579
    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 580
    .line 581
    if-eq v6, v15, :cond_1c

    .line 582
    .line 583
    goto :goto_13

    .line 584
    :cond_1c
    new-instance v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 585
    .line 586
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 587
    .line 588
    .line 589
    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 590
    .line 591
    invoke-static {v5, v9, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 592
    .line 593
    .line 594
    :cond_1d
    :goto_13
    add-int/lit8 v2, v2, 0x1

    .line 595
    .line 596
    goto :goto_12

    .line 597
    :cond_1e
    move-object/from16 v22, v5

    .line 598
    .line 599
    :cond_1f
    const/4 v5, 0x2

    .line 600
    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 601
    .line 602
    if-le v3, v5, :cond_20

    .line 603
    .line 604
    if-eq v8, v5, :cond_21

    .line 605
    .line 606
    if-ne v7, v5, :cond_20

    .line 607
    .line 608
    goto :goto_15

    .line 609
    :cond_20
    :goto_14
    move-object/from16 v31, v12

    .line 610
    .line 611
    goto/16 :goto_3b

    .line 612
    .line 613
    :cond_21
    :goto_15
    iget v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 614
    .line 615
    const/16 v13, 0x400

    .line 616
    .line 617
    invoke-static {v10, v13}, Landroidx/constraintlayout/core/widgets/Chain;->enabled(II)Z

    .line 618
    .line 619
    .line 620
    move-result v10

    .line 621
    if-eqz v10, :cond_20

    .line 622
    .line 623
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 624
    .line 625
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 626
    .line 627
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 628
    .line 629
    .line 630
    move-result v14

    .line 631
    const/4 v15, 0x0

    .line 632
    :goto_16
    if-ge v15, v14, :cond_23

    .line 633
    .line 634
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v19

    .line 638
    move-object/from16 v2, v19

    .line 639
    .line 640
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 641
    .line 642
    const/16 v17, 0x0

    .line 643
    .line 644
    aget v5, v22, v17

    .line 645
    .line 646
    const/16 v18, 0x1

    .line 647
    .line 648
    aget v6, v22, v18

    .line 649
    .line 650
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    .line 651
    .line 652
    move-object/from16 v23, v2

    .line 653
    .line 654
    aget v2, v23, v17

    .line 655
    .line 656
    move/from16 v24, v15

    .line 657
    .line 658
    aget v15, v23, v18

    .line 659
    .line 660
    invoke-static {v5, v6, v2, v15}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->validInGroup(IIII)Z

    .line 661
    .line 662
    .line 663
    move-result v2

    .line 664
    if-nez v2, :cond_22

    .line 665
    .line 666
    goto :goto_14

    .line 667
    :cond_22
    add-int/lit8 v15, v24, 0x1

    .line 668
    .line 669
    const/4 v5, 0x2

    .line 670
    goto :goto_16

    .line 671
    :cond_23
    const/4 v2, 0x0

    .line 672
    const/4 v5, 0x0

    .line 673
    const/4 v6, 0x0

    .line 674
    const/4 v15, 0x0

    .line 675
    const/16 v23, 0x0

    .line 676
    .line 677
    const/16 v24, 0x0

    .line 678
    .line 679
    const/16 v25, 0x0

    .line 680
    .line 681
    :goto_17
    if-ge v2, v14, :cond_36

    .line 682
    .line 683
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v26

    .line 687
    move/from16 v27, v2

    .line 688
    .line 689
    move-object/from16 v2, v26

    .line 690
    .line 691
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 692
    .line 693
    move-object/from16 v26, v5

    .line 694
    .line 695
    const/16 v17, 0x0

    .line 696
    .line 697
    aget v5, v22, v17

    .line 698
    .line 699
    move-object/from16 v28, v6

    .line 700
    .line 701
    const/16 v18, 0x1

    .line 702
    .line 703
    aget v6, v22, v18

    .line 704
    .line 705
    move-object/from16 v29, v15

    .line 706
    .line 707
    iget-object v15, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    .line 708
    .line 709
    move-object/from16 v30, v15

    .line 710
    .line 711
    aget v15, v30, v17

    .line 712
    .line 713
    move-object/from16 v31, v12

    .line 714
    .line 715
    aget v12, v30, v18

    .line 716
    .line 717
    invoke-static {v5, v6, v15, v12}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->validInGroup(IIII)Z

    .line 718
    .line 719
    .line 720
    move-result v5

    .line 721
    if-nez v5, :cond_24

    .line 722
    .line 723
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 724
    .line 725
    invoke-static {v2, v10, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 726
    .line 727
    .line 728
    :cond_24
    instance-of v5, v2, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 729
    .line 730
    if-eqz v5, :cond_29

    .line 731
    .line 732
    move-object v6, v2

    .line 733
    check-cast v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 734
    .line 735
    iget v12, v6, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 736
    .line 737
    if-nez v12, :cond_26

    .line 738
    .line 739
    if-nez v29, :cond_25

    .line 740
    .line 741
    new-instance v12, Ljava/util/ArrayList;

    .line 742
    .line 743
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .line 745
    .line 746
    move-object v15, v12

    .line 747
    goto :goto_18

    .line 748
    :cond_25
    move-object/from16 v15, v29

    .line 749
    .line 750
    :goto_18
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    goto :goto_19

    .line 754
    :cond_26
    move-object/from16 v15, v29

    .line 755
    .line 756
    :goto_19
    iget v12, v6, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 757
    .line 758
    move/from16 v30, v5

    .line 759
    .line 760
    const/4 v5, 0x1

    .line 761
    if-ne v12, v5, :cond_28

    .line 762
    .line 763
    if-nez v26, :cond_27

    .line 764
    .line 765
    new-instance v5, Ljava/util/ArrayList;

    .line 766
    .line 767
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .line 769
    .line 770
    goto :goto_1a

    .line 771
    :cond_27
    move-object/from16 v5, v26

    .line 772
    .line 773
    :goto_1a
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    goto :goto_1b

    .line 777
    :cond_28
    move-object/from16 v5, v26

    .line 778
    .line 779
    goto :goto_1b

    .line 780
    :cond_29
    move/from16 v30, v5

    .line 781
    .line 782
    move-object/from16 v5, v26

    .line 783
    .line 784
    move-object/from16 v15, v29

    .line 785
    .line 786
    :goto_1b
    instance-of v6, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 787
    .line 788
    if-eqz v6, :cond_31

    .line 789
    .line 790
    instance-of v6, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 791
    .line 792
    if-eqz v6, :cond_2e

    .line 793
    .line 794
    move-object v6, v2

    .line 795
    check-cast v6, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 796
    .line 797
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 798
    .line 799
    .line 800
    move-result v12

    .line 801
    if-nez v12, :cond_2b

    .line 802
    .line 803
    if-nez v28, :cond_2a

    .line 804
    .line 805
    new-instance v12, Ljava/util/ArrayList;

    .line 806
    .line 807
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .line 809
    .line 810
    goto :goto_1c

    .line 811
    :cond_2a
    move-object/from16 v12, v28

    .line 812
    .line 813
    :goto_1c
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    :goto_1d
    move-object/from16 v26, v5

    .line 817
    .line 818
    goto :goto_1e

    .line 819
    :cond_2b
    move-object/from16 v12, v28

    .line 820
    .line 821
    goto :goto_1d

    .line 822
    :goto_1e
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 823
    .line 824
    .line 825
    move-result v5

    .line 826
    move-object/from16 v32, v10

    .line 827
    .line 828
    const/4 v10, 0x1

    .line 829
    if-ne v5, v10, :cond_2d

    .line 830
    .line 831
    if-nez v23, :cond_2c

    .line 832
    .line 833
    new-instance v5, Ljava/util/ArrayList;

    .line 834
    .line 835
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 836
    .line 837
    .line 838
    goto :goto_1f

    .line 839
    :cond_2c
    move-object/from16 v5, v23

    .line 840
    .line 841
    :goto_1f
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    .line 843
    .line 844
    move-object/from16 v23, v5

    .line 845
    .line 846
    :cond_2d
    move-object v6, v12

    .line 847
    goto :goto_21

    .line 848
    :cond_2e
    move-object/from16 v26, v5

    .line 849
    .line 850
    move-object/from16 v32, v10

    .line 851
    .line 852
    move-object v5, v2

    .line 853
    check-cast v5, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 854
    .line 855
    if-nez v28, :cond_2f

    .line 856
    .line 857
    new-instance v6, Ljava/util/ArrayList;

    .line 858
    .line 859
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .line 861
    .line 862
    goto :goto_20

    .line 863
    :cond_2f
    move-object/from16 v6, v28

    .line 864
    .line 865
    :goto_20
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    .line 867
    .line 868
    if-nez v23, :cond_30

    .line 869
    .line 870
    new-instance v23, Ljava/util/ArrayList;

    .line 871
    .line 872
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 873
    .line 874
    .line 875
    :cond_30
    move-object/from16 v10, v23

    .line 876
    .line 877
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    .line 879
    .line 880
    move-object/from16 v23, v10

    .line 881
    .line 882
    goto :goto_21

    .line 883
    :cond_31
    move-object/from16 v26, v5

    .line 884
    .line 885
    move-object/from16 v32, v10

    .line 886
    .line 887
    move-object/from16 v6, v28

    .line 888
    .line 889
    :goto_21
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 890
    .line 891
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 892
    .line 893
    if-nez v5, :cond_33

    .line 894
    .line 895
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 896
    .line 897
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 898
    .line 899
    if-nez v5, :cond_33

    .line 900
    .line 901
    if-nez v30, :cond_33

    .line 902
    .line 903
    instance-of v5, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 904
    .line 905
    if-nez v5, :cond_33

    .line 906
    .line 907
    if-nez v24, :cond_32

    .line 908
    .line 909
    new-instance v24, Ljava/util/ArrayList;

    .line 910
    .line 911
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 912
    .line 913
    .line 914
    :cond_32
    move-object/from16 v5, v24

    .line 915
    .line 916
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    .line 918
    .line 919
    move-object/from16 v24, v5

    .line 920
    .line 921
    :cond_33
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 922
    .line 923
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 924
    .line 925
    if-nez v5, :cond_35

    .line 926
    .line 927
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 928
    .line 929
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 930
    .line 931
    if-nez v5, :cond_35

    .line 932
    .line 933
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 934
    .line 935
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 936
    .line 937
    if-nez v5, :cond_35

    .line 938
    .line 939
    if-nez v30, :cond_35

    .line 940
    .line 941
    instance-of v5, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 942
    .line 943
    if-nez v5, :cond_35

    .line 944
    .line 945
    if-nez v25, :cond_34

    .line 946
    .line 947
    new-instance v25, Ljava/util/ArrayList;

    .line 948
    .line 949
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 950
    .line 951
    .line 952
    :cond_34
    move-object/from16 v5, v25

    .line 953
    .line 954
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    .line 956
    .line 957
    move-object/from16 v25, v5

    .line 958
    .line 959
    :cond_35
    add-int/lit8 v2, v27, 0x1

    .line 960
    .line 961
    move-object/from16 v5, v26

    .line 962
    .line 963
    move-object/from16 v12, v31

    .line 964
    .line 965
    move-object/from16 v10, v32

    .line 966
    .line 967
    goto/16 :goto_17

    .line 968
    .line 969
    :cond_36
    move-object/from16 v26, v5

    .line 970
    .line 971
    move-object/from16 v28, v6

    .line 972
    .line 973
    move-object/from16 v31, v12

    .line 974
    .line 975
    move-object/from16 v29, v15

    .line 976
    .line 977
    new-instance v2, Ljava/util/ArrayList;

    .line 978
    .line 979
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 980
    .line 981
    .line 982
    if-eqz v26, :cond_37

    .line 983
    .line 984
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 985
    .line 986
    .line 987
    move-result-object v5

    .line 988
    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 989
    .line 990
    .line 991
    move-result v6

    .line 992
    if-eqz v6, :cond_37

    .line 993
    .line 994
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 995
    .line 996
    .line 997
    move-result-object v6

    .line 998
    check-cast v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 999
    .line 1000
    const/4 v10, 0x0

    .line 1001
    const/4 v12, 0x0

    .line 1002
    invoke-static {v6, v12, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1003
    .line 1004
    .line 1005
    goto :goto_22

    .line 1006
    :cond_37
    const/4 v10, 0x0

    .line 1007
    const/4 v12, 0x0

    .line 1008
    if-eqz v28, :cond_38

    .line 1009
    .line 1010
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v5

    .line 1014
    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1015
    .line 1016
    .line 1017
    move-result v6

    .line 1018
    if-eqz v6, :cond_38

    .line 1019
    .line 1020
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v6

    .line 1024
    check-cast v6, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 1025
    .line 1026
    invoke-static {v6, v12, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v15

    .line 1030
    invoke-virtual {v6, v12, v15, v2}, Landroidx/constraintlayout/core/widgets/Barrier;->addDependents(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v15, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->cleanup(Ljava/util/ArrayList;)V

    .line 1034
    .line 1035
    .line 1036
    const/4 v10, 0x0

    .line 1037
    const/4 v12, 0x0

    .line 1038
    goto :goto_23

    .line 1039
    :cond_38
    const/4 v5, 0x2

    .line 1040
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v6

    .line 1044
    iget-object v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1045
    .line 1046
    if-eqz v5, :cond_39

    .line 1047
    .line 1048
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v5

    .line 1052
    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1053
    .line 1054
    .line 1055
    move-result v6

    .line 1056
    if-eqz v6, :cond_39

    .line 1057
    .line 1058
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v6

    .line 1062
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1063
    .line 1064
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1065
    .line 1066
    const/4 v10, 0x0

    .line 1067
    const/4 v12, 0x0

    .line 1068
    invoke-static {v6, v12, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1069
    .line 1070
    .line 1071
    goto :goto_24

    .line 1072
    :cond_39
    const/4 v5, 0x4

    .line 1073
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v5

    .line 1077
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1078
    .line 1079
    if-eqz v5, :cond_3a

    .line 1080
    .line 1081
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v5

    .line 1085
    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1086
    .line 1087
    .line 1088
    move-result v6

    .line 1089
    if-eqz v6, :cond_3a

    .line 1090
    .line 1091
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v6

    .line 1095
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1096
    .line 1097
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1098
    .line 1099
    const/4 v10, 0x0

    .line 1100
    const/4 v12, 0x0

    .line 1101
    invoke-static {v6, v12, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1102
    .line 1103
    .line 1104
    goto :goto_25

    .line 1105
    :cond_3a
    const/4 v5, 0x7

    .line 1106
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v6

    .line 1110
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1111
    .line 1112
    if-eqz v6, :cond_3b

    .line 1113
    .line 1114
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v6

    .line 1118
    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1119
    .line 1120
    .line 1121
    move-result v10

    .line 1122
    if-eqz v10, :cond_3b

    .line 1123
    .line 1124
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v10

    .line 1128
    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1129
    .line 1130
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1131
    .line 1132
    const/4 v12, 0x0

    .line 1133
    const/4 v15, 0x0

    .line 1134
    invoke-static {v10, v15, v2, v12}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1135
    .line 1136
    .line 1137
    goto :goto_26

    .line 1138
    :cond_3b
    const/4 v12, 0x0

    .line 1139
    const/4 v15, 0x0

    .line 1140
    if-eqz v24, :cond_3c

    .line 1141
    .line 1142
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v6

    .line 1146
    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1147
    .line 1148
    .line 1149
    move-result v10

    .line 1150
    if-eqz v10, :cond_3c

    .line 1151
    .line 1152
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v10

    .line 1156
    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1157
    .line 1158
    invoke-static {v10, v15, v2, v12}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1159
    .line 1160
    .line 1161
    goto :goto_27

    .line 1162
    :cond_3c
    if-eqz v29, :cond_3d

    .line 1163
    .line 1164
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v6

    .line 1168
    :goto_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1169
    .line 1170
    .line 1171
    move-result v10

    .line 1172
    if-eqz v10, :cond_3d

    .line 1173
    .line 1174
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v10

    .line 1178
    check-cast v10, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 1179
    .line 1180
    const/4 v15, 0x1

    .line 1181
    invoke-static {v10, v15, v2, v12}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1182
    .line 1183
    .line 1184
    goto :goto_28

    .line 1185
    :cond_3d
    const/4 v15, 0x1

    .line 1186
    if-eqz v23, :cond_3e

    .line 1187
    .line 1188
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v6

    .line 1192
    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1193
    .line 1194
    .line 1195
    move-result v10

    .line 1196
    if-eqz v10, :cond_3e

    .line 1197
    .line 1198
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v10

    .line 1202
    check-cast v10, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 1203
    .line 1204
    invoke-static {v10, v15, v2, v12}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v5

    .line 1208
    invoke-virtual {v10, v15, v5, v2}, Landroidx/constraintlayout/core/widgets/Barrier;->addDependents(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v5, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->cleanup(Ljava/util/ArrayList;)V

    .line 1212
    .line 1213
    .line 1214
    const/4 v5, 0x7

    .line 1215
    const/4 v12, 0x0

    .line 1216
    const/4 v15, 0x1

    .line 1217
    goto :goto_29

    .line 1218
    :cond_3e
    const/4 v10, 0x3

    .line 1219
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v5

    .line 1223
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1224
    .line 1225
    if-eqz v5, :cond_3f

    .line 1226
    .line 1227
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v5

    .line 1231
    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1232
    .line 1233
    .line 1234
    move-result v6

    .line 1235
    if-eqz v6, :cond_3f

    .line 1236
    .line 1237
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v6

    .line 1241
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1242
    .line 1243
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1244
    .line 1245
    const/4 v10, 0x0

    .line 1246
    const/4 v15, 0x1

    .line 1247
    invoke-static {v6, v15, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1248
    .line 1249
    .line 1250
    goto :goto_2a

    .line 1251
    :cond_3f
    const/4 v5, 0x6

    .line 1252
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v5

    .line 1256
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1257
    .line 1258
    if-eqz v5, :cond_40

    .line 1259
    .line 1260
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v5

    .line 1264
    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1265
    .line 1266
    .line 1267
    move-result v6

    .line 1268
    if-eqz v6, :cond_40

    .line 1269
    .line 1270
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v6

    .line 1274
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1275
    .line 1276
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1277
    .line 1278
    const/4 v10, 0x0

    .line 1279
    const/4 v15, 0x1

    .line 1280
    invoke-static {v6, v15, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1281
    .line 1282
    .line 1283
    goto :goto_2b

    .line 1284
    :cond_40
    const/4 v5, 0x5

    .line 1285
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v6

    .line 1289
    iget-object v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1290
    .line 1291
    if-eqz v5, :cond_41

    .line 1292
    .line 1293
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v5

    .line 1297
    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1298
    .line 1299
    .line 1300
    move-result v6

    .line 1301
    if-eqz v6, :cond_41

    .line 1302
    .line 1303
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v6

    .line 1307
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1308
    .line 1309
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1310
    .line 1311
    const/4 v10, 0x0

    .line 1312
    const/4 v15, 0x1

    .line 1313
    invoke-static {v6, v15, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1314
    .line 1315
    .line 1316
    goto :goto_2c

    .line 1317
    :cond_41
    const/4 v5, 0x7

    .line 1318
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(I)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v5

    .line 1322
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1323
    .line 1324
    if-eqz v5, :cond_42

    .line 1325
    .line 1326
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v5

    .line 1330
    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1331
    .line 1332
    .line 1333
    move-result v6

    .line 1334
    if-eqz v6, :cond_42

    .line 1335
    .line 1336
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v6

    .line 1340
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1341
    .line 1342
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1343
    .line 1344
    const/4 v10, 0x0

    .line 1345
    const/4 v15, 0x1

    .line 1346
    invoke-static {v6, v15, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1347
    .line 1348
    .line 1349
    goto :goto_2d

    .line 1350
    :cond_42
    const/4 v10, 0x0

    .line 1351
    const/4 v15, 0x1

    .line 1352
    if-eqz v25, :cond_43

    .line 1353
    .line 1354
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v5

    .line 1358
    :goto_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1359
    .line 1360
    .line 1361
    move-result v6

    .line 1362
    if-eqz v6, :cond_43

    .line 1363
    .line 1364
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v6

    .line 1368
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1369
    .line 1370
    invoke-static {v6, v15, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1371
    .line 1372
    .line 1373
    goto :goto_2e

    .line 1374
    :cond_43
    const/4 v5, 0x0

    .line 1375
    :goto_2f
    if-ge v5, v14, :cond_4a

    .line 1376
    .line 1377
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v6

    .line 1381
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1382
    .line 1383
    iget-object v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    .line 1384
    .line 1385
    const/16 v17, 0x0

    .line 1386
    .line 1387
    aget v12, v10, v17

    .line 1388
    .line 1389
    move/from16 v18, v15

    .line 1390
    .line 1391
    const/4 v15, 0x3

    .line 1392
    if-ne v12, v15, :cond_48

    .line 1393
    .line 1394
    aget v10, v10, v18

    .line 1395
    .line 1396
    if-ne v10, v15, :cond_48

    .line 1397
    .line 1398
    iget v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    .line 1399
    .line 1400
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1401
    .line 1402
    .line 1403
    move-result v12

    .line 1404
    const/4 v15, 0x0

    .line 1405
    :goto_30
    if-ge v15, v12, :cond_45

    .line 1406
    .line 1407
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v23

    .line 1411
    move/from16 v24, v5

    .line 1412
    .line 1413
    move-object/from16 v5, v23

    .line 1414
    .line 1415
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1416
    .line 1417
    move/from16 v23, v12

    .line 1418
    .line 1419
    iget v12, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mId:I

    .line 1420
    .line 1421
    if-ne v10, v12, :cond_44

    .line 1422
    .line 1423
    goto :goto_31

    .line 1424
    :cond_44
    add-int/lit8 v15, v15, 0x1

    .line 1425
    .line 1426
    move/from16 v12, v23

    .line 1427
    .line 1428
    move/from16 v5, v24

    .line 1429
    .line 1430
    goto :goto_30

    .line 1431
    :cond_45
    move/from16 v24, v5

    .line 1432
    .line 1433
    const/4 v5, 0x0

    .line 1434
    :goto_31
    iget v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    .line 1435
    .line 1436
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1437
    .line 1438
    .line 1439
    move-result v10

    .line 1440
    const/4 v12, 0x0

    .line 1441
    :goto_32
    if-ge v12, v10, :cond_47

    .line 1442
    .line 1443
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v15

    .line 1447
    check-cast v15, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1448
    .line 1449
    move/from16 v23, v10

    .line 1450
    .line 1451
    iget v10, v15, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mId:I

    .line 1452
    .line 1453
    if-ne v6, v10, :cond_46

    .line 1454
    .line 1455
    goto :goto_33

    .line 1456
    :cond_46
    add-int/lit8 v12, v12, 0x1

    .line 1457
    .line 1458
    move/from16 v10, v23

    .line 1459
    .line 1460
    goto :goto_32

    .line 1461
    :cond_47
    const/4 v15, 0x0

    .line 1462
    :goto_33
    if-eqz v5, :cond_49

    .line 1463
    .line 1464
    if-eqz v15, :cond_49

    .line 1465
    .line 1466
    const/4 v6, 0x0

    .line 1467
    invoke-virtual {v5, v6, v15}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    .line 1468
    .line 1469
    .line 1470
    const/4 v6, 0x2

    .line 1471
    iput v6, v15, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mOrientation:I

    .line 1472
    .line 1473
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1474
    .line 1475
    .line 1476
    goto :goto_34

    .line 1477
    :cond_48
    move/from16 v24, v5

    .line 1478
    .line 1479
    :cond_49
    :goto_34
    add-int/lit8 v5, v24, 0x1

    .line 1480
    .line 1481
    const/4 v15, 0x1

    .line 1482
    goto :goto_2f

    .line 1483
    :cond_4a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1484
    .line 1485
    .line 1486
    move-result v5

    .line 1487
    const/4 v15, 0x1

    .line 1488
    if-gt v5, v15, :cond_4b

    .line 1489
    .line 1490
    goto/16 :goto_3b

    .line 1491
    .line 1492
    :cond_4b
    const/4 v6, 0x0

    .line 1493
    aget v5, v22, v6

    .line 1494
    .line 1495
    const/4 v10, 0x2

    .line 1496
    if-ne v5, v10, :cond_4f

    .line 1497
    .line 1498
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v5

    .line 1502
    move v10, v6

    .line 1503
    const/4 v12, 0x0

    .line 1504
    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1505
    .line 1506
    .line 1507
    move-result v13

    .line 1508
    if-eqz v13, :cond_4e

    .line 1509
    .line 1510
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v13

    .line 1514
    check-cast v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1515
    .line 1516
    iget v14, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mOrientation:I

    .line 1517
    .line 1518
    if-ne v14, v15, :cond_4c

    .line 1519
    .line 1520
    goto :goto_35

    .line 1521
    :cond_4c
    invoke-virtual {v13, v9, v6}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->measureWrap(Landroidx/constraintlayout/core/LinearSystem;I)I

    .line 1522
    .line 1523
    .line 1524
    move-result v14

    .line 1525
    if-le v14, v10, :cond_4d

    .line 1526
    .line 1527
    move-object v12, v13

    .line 1528
    move v10, v14

    .line 1529
    :cond_4d
    const/4 v6, 0x0

    .line 1530
    goto :goto_35

    .line 1531
    :cond_4e
    if-eqz v12, :cond_4f

    .line 1532
    .line 1533
    invoke-virtual {v1, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(I)V

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 1537
    .line 1538
    .line 1539
    goto :goto_36

    .line 1540
    :cond_4f
    const/4 v12, 0x0

    .line 1541
    :goto_36
    aget v5, v22, v15

    .line 1542
    .line 1543
    const/4 v6, 0x2

    .line 1544
    if-ne v5, v6, :cond_53

    .line 1545
    .line 1546
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v2

    .line 1550
    const/4 v5, 0x0

    .line 1551
    const/4 v6, 0x0

    .line 1552
    :cond_50
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1553
    .line 1554
    .line 1555
    move-result v10

    .line 1556
    if-eqz v10, :cond_52

    .line 1557
    .line 1558
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1559
    .line 1560
    .line 1561
    move-result-object v10

    .line 1562
    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1563
    .line 1564
    iget v13, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->mOrientation:I

    .line 1565
    .line 1566
    if-nez v13, :cond_51

    .line 1567
    .line 1568
    goto :goto_37

    .line 1569
    :cond_51
    invoke-virtual {v10, v9, v15}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->measureWrap(Landroidx/constraintlayout/core/LinearSystem;I)I

    .line 1570
    .line 1571
    .line 1572
    move-result v13

    .line 1573
    if-le v13, v5, :cond_50

    .line 1574
    .line 1575
    move-object v6, v10

    .line 1576
    move v5, v13

    .line 1577
    goto :goto_37

    .line 1578
    :cond_52
    if-eqz v6, :cond_53

    .line 1579
    .line 1580
    invoke-virtual {v1, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(I)V

    .line 1581
    .line 1582
    .line 1583
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 1584
    .line 1585
    .line 1586
    goto :goto_38

    .line 1587
    :cond_53
    const/4 v6, 0x0

    .line 1588
    :goto_38
    if-nez v12, :cond_54

    .line 1589
    .line 1590
    if-eqz v6, :cond_59

    .line 1591
    .line 1592
    :cond_54
    const/4 v6, 0x2

    .line 1593
    if-ne v8, v6, :cond_56

    .line 1594
    .line 1595
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1596
    .line 1597
    .line 1598
    move-result v2

    .line 1599
    if-ge v0, v2, :cond_55

    .line 1600
    .line 1601
    if-lez v0, :cond_55

    .line 1602
    .line 1603
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 1604
    .line 1605
    .line 1606
    const/4 v15, 0x1

    .line 1607
    iput-boolean v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 1608
    .line 1609
    goto :goto_39

    .line 1610
    :cond_55
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1611
    .line 1612
    .line 1613
    move-result v0

    .line 1614
    :cond_56
    :goto_39
    const/4 v6, 0x2

    .line 1615
    if-ne v7, v6, :cond_58

    .line 1616
    .line 1617
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1618
    .line 1619
    .line 1620
    move-result v2

    .line 1621
    if-ge v4, v2, :cond_57

    .line 1622
    .line 1623
    if-lez v4, :cond_57

    .line 1624
    .line 1625
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 1626
    .line 1627
    .line 1628
    const/4 v15, 0x1

    .line 1629
    iput-boolean v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 1630
    .line 1631
    goto :goto_3a

    .line 1632
    :cond_57
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1633
    .line 1634
    .line 1635
    move-result v4

    .line 1636
    :cond_58
    :goto_3a
    move v2, v0

    .line 1637
    const/4 v0, 0x1

    .line 1638
    goto :goto_3c

    .line 1639
    :cond_59
    :goto_3b
    move v2, v0

    .line 1640
    const/4 v0, 0x0

    .line 1641
    :goto_3c
    const/16 v5, 0x40

    .line 1642
    .line 1643
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1644
    .line 1645
    .line 1646
    move-result v6

    .line 1647
    if-nez v6, :cond_5b

    .line 1648
    .line 1649
    const/16 v6, 0x80

    .line 1650
    .line 1651
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1652
    .line 1653
    .line 1654
    move-result v6

    .line 1655
    if-eqz v6, :cond_5a

    .line 1656
    .line 1657
    goto :goto_3d

    .line 1658
    :cond_5a
    const/4 v6, 0x0

    .line 1659
    goto :goto_3e

    .line 1660
    :cond_5b
    :goto_3d
    const/4 v6, 0x1

    .line 1661
    :goto_3e
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1662
    .line 1663
    .line 1664
    const/4 v12, 0x0

    .line 1665
    iput-boolean v12, v9, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    .line 1666
    .line 1667
    iget v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 1668
    .line 1669
    if-eqz v10, :cond_5c

    .line 1670
    .line 1671
    if-eqz v6, :cond_5c

    .line 1672
    .line 1673
    const/4 v15, 0x1

    .line 1674
    iput-boolean v15, v9, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    .line 1675
    .line 1676
    goto :goto_3f

    .line 1677
    :cond_5c
    const/4 v15, 0x1

    .line 1678
    :goto_3f
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1679
    .line 1680
    aget v10, v22, v12

    .line 1681
    .line 1682
    const/4 v13, 0x2

    .line 1683
    if-eq v10, v13, :cond_5e

    .line 1684
    .line 1685
    aget v10, v22, v15

    .line 1686
    .line 1687
    if-ne v10, v13, :cond_5d

    .line 1688
    .line 1689
    goto :goto_40

    .line 1690
    :cond_5d
    move v10, v12

    .line 1691
    goto :goto_41

    .line 1692
    :cond_5e
    :goto_40
    const/4 v10, 0x1

    .line 1693
    :goto_41
    iput v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 1694
    .line 1695
    iput v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 1696
    .line 1697
    const/4 v12, 0x0

    .line 1698
    :goto_42
    if-ge v12, v3, :cond_60

    .line 1699
    .line 1700
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1701
    .line 1702
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v13

    .line 1706
    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1707
    .line 1708
    instance-of v14, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 1709
    .line 1710
    if-eqz v14, :cond_5f

    .line 1711
    .line 1712
    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 1713
    .line 1714
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->layout()V

    .line 1715
    .line 1716
    .line 1717
    :cond_5f
    add-int/lit8 v12, v12, 0x1

    .line 1718
    .line 1719
    goto :goto_42

    .line 1720
    :cond_60
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1721
    .line 1722
    .line 1723
    move-result v12

    .line 1724
    move v13, v0

    .line 1725
    const/4 v0, 0x0

    .line 1726
    const/4 v14, 0x1

    .line 1727
    :goto_43
    if-eqz v14, :cond_74

    .line 1728
    .line 1729
    const/16 v18, 0x1

    .line 1730
    .line 1731
    add-int/lit8 v15, v0, 0x1

    .line 1732
    .line 1733
    :try_start_0
    invoke-virtual {v9}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    .line 1734
    .line 1735
    .line 1736
    const/4 v5, 0x0

    .line 1737
    iput v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 1738
    .line 1739
    iput v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 1740
    .line 1741
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V

    .line 1742
    .line 1743
    .line 1744
    const/4 v0, 0x0

    .line 1745
    :goto_44
    if-ge v0, v3, :cond_61

    .line 1746
    .line 1747
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1748
    .line 1749
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v5

    .line 1753
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1754
    .line 1755
    invoke-virtual {v5, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V

    .line 1756
    .line 1757
    .line 1758
    add-int/lit8 v0, v0, 0x1

    .line 1759
    .line 1760
    goto :goto_44

    .line 1761
    :catch_0
    move-exception v0

    .line 1762
    move/from16 v23, v10

    .line 1763
    .line 1764
    const/4 v5, 0x0

    .line 1765
    const/4 v10, 0x5

    .line 1766
    goto/16 :goto_4b

    .line 1767
    .line 1768
    :cond_61
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChildrenToSolver(Landroidx/constraintlayout/core/LinearSystem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1769
    .line 1770
    .line 1771
    :try_start_1
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1772
    .line 1773
    if-eqz v0, :cond_62

    .line 1774
    .line 1775
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v0

    .line 1779
    if-eqz v0, :cond_62

    .line 1780
    .line 1781
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1782
    .line 1783
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v0

    .line 1787
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1788
    .line 1789
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1790
    .line 1791
    .line 1792
    move-result-object v5

    .line 1793
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1797
    move/from16 v23, v10

    .line 1798
    .line 1799
    const/4 v10, 0x0

    .line 1800
    const/4 v14, 0x5

    .line 1801
    :try_start_2
    invoke-virtual {v9, v0, v5, v10, v14}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1802
    .line 1803
    .line 1804
    const/4 v10, 0x0

    .line 1805
    iput-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1806
    .line 1807
    goto :goto_47

    .line 1808
    :catch_1
    move-exception v0

    .line 1809
    :goto_45
    const/4 v5, 0x0

    .line 1810
    const/4 v10, 0x5

    .line 1811
    :goto_46
    const/4 v14, 0x1

    .line 1812
    goto/16 :goto_4b

    .line 1813
    .line 1814
    :catch_2
    move-exception v0

    .line 1815
    move/from16 v23, v10

    .line 1816
    .line 1817
    goto :goto_45

    .line 1818
    :cond_62
    move/from16 v23, v10

    .line 1819
    .line 1820
    :goto_47
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1821
    .line 1822
    if-eqz v0, :cond_63

    .line 1823
    .line 1824
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v0

    .line 1828
    if-eqz v0, :cond_63

    .line 1829
    .line 1830
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1831
    .line 1832
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v0

    .line 1836
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1837
    .line 1838
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1839
    .line 1840
    invoke-virtual {v9, v5}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1841
    .line 1842
    .line 1843
    move-result-object v5

    .line 1844
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1845
    .line 1846
    .line 1847
    move-result-object v0

    .line 1848
    const/4 v10, 0x0

    .line 1849
    const/4 v14, 0x5

    .line 1850
    invoke-virtual {v9, v5, v0, v10, v14}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1851
    .line 1852
    .line 1853
    const/4 v10, 0x0

    .line 1854
    iput-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1855
    .line 1856
    :cond_63
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1857
    .line 1858
    if-eqz v0, :cond_64

    .line 1859
    .line 1860
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1861
    .line 1862
    .line 1863
    move-result-object v0

    .line 1864
    if-eqz v0, :cond_64

    .line 1865
    .line 1866
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1867
    .line 1868
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1869
    .line 1870
    .line 1871
    move-result-object v0

    .line 1872
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1873
    .line 1874
    move-object/from16 v5, v31

    .line 1875
    .line 1876
    :try_start_3
    invoke-virtual {v9, v5}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v10

    .line 1880
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1884
    move-object/from16 v31, v5

    .line 1885
    .line 1886
    const/4 v5, 0x0

    .line 1887
    const/4 v14, 0x5

    .line 1888
    :try_start_4
    invoke-virtual {v9, v0, v10, v5, v14}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1889
    .line 1890
    .line 1891
    const/4 v10, 0x0

    .line 1892
    iput-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1893
    .line 1894
    goto :goto_48

    .line 1895
    :catch_3
    move-exception v0

    .line 1896
    move-object/from16 v31, v5

    .line 1897
    .line 1898
    goto :goto_45

    .line 1899
    :cond_64
    :goto_48
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1900
    .line 1901
    if-eqz v0, :cond_65

    .line 1902
    .line 1903
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1904
    .line 1905
    .line 1906
    move-result-object v0

    .line 1907
    if-eqz v0, :cond_65

    .line 1908
    .line 1909
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1910
    .line 1911
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1912
    .line 1913
    .line 1914
    move-result-object v0

    .line 1915
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1916
    .line 1917
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1918
    .line 1919
    invoke-virtual {v9, v5}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1920
    .line 1921
    .line 1922
    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1923
    :try_start_5
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1924
    .line 1925
    .line 1926
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 1927
    const/4 v10, 0x5

    .line 1928
    const/4 v14, 0x0

    .line 1929
    :try_start_6
    invoke-virtual {v9, v5, v0, v14, v10}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1930
    .line 1931
    .line 1932
    const/4 v5, 0x0

    .line 1933
    :try_start_7
    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1934
    .line 1935
    goto :goto_4a

    .line 1936
    :catch_4
    move-exception v0

    .line 1937
    goto :goto_46

    .line 1938
    :catch_5
    move-exception v0

    .line 1939
    :goto_49
    const/4 v5, 0x0

    .line 1940
    goto/16 :goto_46

    .line 1941
    .line 1942
    :catch_6
    move-exception v0

    .line 1943
    const/4 v10, 0x5

    .line 1944
    goto :goto_49

    .line 1945
    :cond_65
    const/4 v5, 0x0

    .line 1946
    const/4 v10, 0x5

    .line 1947
    :goto_4a
    invoke-virtual {v9}, Landroidx/constraintlayout/core/LinearSystem;->minimize()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1948
    .line 1949
    .line 1950
    move-object/from16 v24, v11

    .line 1951
    .line 1952
    const/4 v14, 0x1

    .line 1953
    goto :goto_4c

    .line 1954
    :goto_4b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1955
    .line 1956
    .line 1957
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1958
    .line 1959
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1960
    .line 1961
    move-object/from16 v24, v11

    .line 1962
    .line 1963
    const-string v11, "EXCEPTION : "

    .line 1964
    .line 1965
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1966
    .line 1967
    .line 1968
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1969
    .line 1970
    .line 1971
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1972
    .line 1973
    .line 1974
    move-result-object v0

    .line 1975
    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1976
    .line 1977
    .line 1978
    :goto_4c
    sget-object v0, Landroidx/constraintlayout/core/widgets/Chain;->sFlags:[Z

    .line 1979
    .line 1980
    if-eqz v14, :cond_69

    .line 1981
    .line 1982
    const/16 v17, 0x0

    .line 1983
    .line 1984
    const/16 v19, 0x2

    .line 1985
    .line 1986
    aput-boolean v17, v0, v19

    .line 1987
    .line 1988
    const/16 v5, 0x40

    .line 1989
    .line 1990
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1991
    .line 1992
    .line 1993
    move-result v10

    .line 1994
    invoke-virtual {v1, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 1995
    .line 1996
    .line 1997
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1998
    .line 1999
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 2000
    .line 2001
    .line 2002
    move-result v11

    .line 2003
    const/4 v14, 0x0

    .line 2004
    const/16 v16, 0x0

    .line 2005
    .line 2006
    :goto_4d
    if-ge v14, v11, :cond_68

    .line 2007
    .line 2008
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2009
    .line 2010
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2011
    .line 2012
    .line 2013
    move-result-object v5

    .line 2014
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2015
    .line 2016
    invoke-virtual {v5, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 2017
    .line 2018
    .line 2019
    move-object/from16 v26, v0

    .line 2020
    .line 2021
    iget v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 2022
    .line 2023
    move/from16 v27, v10

    .line 2024
    .line 2025
    const/4 v10, -0x1

    .line 2026
    if-ne v0, v10, :cond_66

    .line 2027
    .line 2028
    iget v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    .line 2029
    .line 2030
    if-eq v0, v10, :cond_67

    .line 2031
    .line 2032
    :cond_66
    const/16 v16, 0x1

    .line 2033
    .line 2034
    :cond_67
    add-int/lit8 v14, v14, 0x1

    .line 2035
    .line 2036
    move-object/from16 v0, v26

    .line 2037
    .line 2038
    move/from16 v10, v27

    .line 2039
    .line 2040
    const/16 v5, 0x40

    .line 2041
    .line 2042
    goto :goto_4d

    .line 2043
    :cond_68
    move-object/from16 v26, v0

    .line 2044
    .line 2045
    const/4 v10, -0x1

    .line 2046
    goto :goto_4f

    .line 2047
    :cond_69
    move-object/from16 v26, v0

    .line 2048
    .line 2049
    const/4 v10, -0x1

    .line 2050
    invoke-virtual {v1, v9, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 2051
    .line 2052
    .line 2053
    const/4 v0, 0x0

    .line 2054
    :goto_4e
    if-ge v0, v3, :cond_6a

    .line 2055
    .line 2056
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2057
    .line 2058
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2059
    .line 2060
    .line 2061
    move-result-object v5

    .line 2062
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2063
    .line 2064
    invoke-virtual {v5, v9, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 2065
    .line 2066
    .line 2067
    add-int/lit8 v0, v0, 0x1

    .line 2068
    .line 2069
    goto :goto_4e

    .line 2070
    :cond_6a
    const/16 v16, 0x0

    .line 2071
    .line 2072
    :goto_4f
    const/16 v0, 0x8

    .line 2073
    .line 2074
    if-eqz v23, :cond_6d

    .line 2075
    .line 2076
    if-ge v15, v0, :cond_6d

    .line 2077
    .line 2078
    const/16 v19, 0x2

    .line 2079
    .line 2080
    aget-boolean v5, v26, v19

    .line 2081
    .line 2082
    if-eqz v5, :cond_6d

    .line 2083
    .line 2084
    const/4 v5, 0x0

    .line 2085
    const/4 v11, 0x0

    .line 2086
    const/4 v14, 0x0

    .line 2087
    :goto_50
    if-ge v5, v3, :cond_6b

    .line 2088
    .line 2089
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2090
    .line 2091
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2092
    .line 2093
    .line 2094
    move-result-object v10

    .line 2095
    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2096
    .line 2097
    iget v0, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 2098
    .line 2099
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2100
    .line 2101
    .line 2102
    move-result v27

    .line 2103
    add-int v0, v27, v0

    .line 2104
    .line 2105
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    .line 2106
    .line 2107
    .line 2108
    move-result v11

    .line 2109
    iget v0, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 2110
    .line 2111
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2112
    .line 2113
    .line 2114
    move-result v10

    .line 2115
    add-int/2addr v10, v0

    .line 2116
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    .line 2117
    .line 2118
    .line 2119
    move-result v14

    .line 2120
    add-int/lit8 v5, v5, 0x1

    .line 2121
    .line 2122
    const/16 v0, 0x8

    .line 2123
    .line 2124
    const/4 v10, -0x1

    .line 2125
    goto :goto_50

    .line 2126
    :cond_6b
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 2127
    .line 2128
    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    .line 2129
    .line 2130
    .line 2131
    move-result v0

    .line 2132
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 2133
    .line 2134
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    .line 2135
    .line 2136
    .line 2137
    move-result v5

    .line 2138
    const/4 v10, 0x2

    .line 2139
    if-ne v8, v10, :cond_6c

    .line 2140
    .line 2141
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2142
    .line 2143
    .line 2144
    move-result v11

    .line 2145
    if-ge v11, v0, :cond_6c

    .line 2146
    .line 2147
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 2148
    .line 2149
    .line 2150
    const/16 v17, 0x0

    .line 2151
    .line 2152
    aput v10, v22, v17

    .line 2153
    .line 2154
    const/4 v13, 0x1

    .line 2155
    const/16 v16, 0x1

    .line 2156
    .line 2157
    :cond_6c
    if-ne v7, v10, :cond_6d

    .line 2158
    .line 2159
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2160
    .line 2161
    .line 2162
    move-result v0

    .line 2163
    if-ge v0, v5, :cond_6d

    .line 2164
    .line 2165
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 2166
    .line 2167
    .line 2168
    const/16 v18, 0x1

    .line 2169
    .line 2170
    aput v10, v22, v18

    .line 2171
    .line 2172
    const/4 v13, 0x1

    .line 2173
    const/16 v16, 0x1

    .line 2174
    .line 2175
    :cond_6d
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 2176
    .line 2177
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2178
    .line 2179
    .line 2180
    move-result v5

    .line 2181
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 2182
    .line 2183
    .line 2184
    move-result v0

    .line 2185
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2186
    .line 2187
    .line 2188
    move-result v5

    .line 2189
    if-le v0, v5, :cond_6e

    .line 2190
    .line 2191
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 2192
    .line 2193
    .line 2194
    const/4 v5, 0x1

    .line 2195
    const/16 v17, 0x0

    .line 2196
    .line 2197
    aput v5, v22, v17

    .line 2198
    .line 2199
    move/from16 v16, v5

    .line 2200
    .line 2201
    move/from16 v18, v16

    .line 2202
    .line 2203
    goto :goto_51

    .line 2204
    :cond_6e
    const/4 v5, 0x1

    .line 2205
    move/from16 v18, v13

    .line 2206
    .line 2207
    :goto_51
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 2208
    .line 2209
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2210
    .line 2211
    .line 2212
    move-result v10

    .line 2213
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    .line 2214
    .line 2215
    .line 2216
    move-result v0

    .line 2217
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2218
    .line 2219
    .line 2220
    move-result v10

    .line 2221
    if-le v0, v10, :cond_6f

    .line 2222
    .line 2223
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 2224
    .line 2225
    .line 2226
    aput v5, v22, v5

    .line 2227
    .line 2228
    move v14, v5

    .line 2229
    move/from16 v16, v14

    .line 2230
    .line 2231
    goto :goto_52

    .line 2232
    :cond_6f
    move/from16 v14, v18

    .line 2233
    .line 2234
    :goto_52
    if-nez v14, :cond_72

    .line 2235
    .line 2236
    const/16 v17, 0x0

    .line 2237
    .line 2238
    aget v0, v22, v17

    .line 2239
    .line 2240
    const/4 v10, 0x2

    .line 2241
    if-ne v0, v10, :cond_70

    .line 2242
    .line 2243
    if-lez v2, :cond_70

    .line 2244
    .line 2245
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2246
    .line 2247
    .line 2248
    move-result v0

    .line 2249
    if-le v0, v2, :cond_70

    .line 2250
    .line 2251
    iput-boolean v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 2252
    .line 2253
    aput v5, v22, v17

    .line 2254
    .line 2255
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 2256
    .line 2257
    .line 2258
    move v14, v5

    .line 2259
    move/from16 v16, v14

    .line 2260
    .line 2261
    :cond_70
    aget v0, v22, v5

    .line 2262
    .line 2263
    const/4 v10, 0x2

    .line 2264
    if-ne v0, v10, :cond_71

    .line 2265
    .line 2266
    if-lez v4, :cond_71

    .line 2267
    .line 2268
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2269
    .line 2270
    .line 2271
    move-result v0

    .line 2272
    if-le v0, v4, :cond_71

    .line 2273
    .line 2274
    iput-boolean v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 2275
    .line 2276
    aput v5, v22, v5

    .line 2277
    .line 2278
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 2279
    .line 2280
    .line 2281
    const/16 v0, 0x8

    .line 2282
    .line 2283
    const/4 v13, 0x1

    .line 2284
    const/16 v16, 0x1

    .line 2285
    .line 2286
    goto :goto_54

    .line 2287
    :cond_71
    :goto_53
    move v13, v14

    .line 2288
    const/16 v0, 0x8

    .line 2289
    .line 2290
    goto :goto_54

    .line 2291
    :cond_72
    const/4 v10, 0x2

    .line 2292
    goto :goto_53

    .line 2293
    :goto_54
    if-le v15, v0, :cond_73

    .line 2294
    .line 2295
    const/4 v14, 0x0

    .line 2296
    goto :goto_55

    .line 2297
    :cond_73
    move/from16 v14, v16

    .line 2298
    .line 2299
    :goto_55
    move v0, v15

    .line 2300
    move/from16 v10, v23

    .line 2301
    .line 2302
    move-object/from16 v11, v24

    .line 2303
    .line 2304
    const/16 v5, 0x40

    .line 2305
    .line 2306
    goto/16 :goto_43

    .line 2307
    .line 2308
    :cond_74
    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2309
    .line 2310
    if-eqz v13, :cond_75

    .line 2311
    .line 2312
    const/16 v17, 0x0

    .line 2313
    .line 2314
    aput v8, v22, v17

    .line 2315
    .line 2316
    const/16 v18, 0x1

    .line 2317
    .line 2318
    aput v7, v22, v18

    .line 2319
    .line 2320
    :cond_75
    iget-object v0, v9, Landroidx/constraintlayout/core/LinearSystem;->mCache:Lorg/acra/util/ProcessFinisher;

    .line 2321
    .line 2322
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->resetSolverVariables(Lorg/acra/util/ProcessFinisher;)V

    .line 2323
    .line 2324
    .line 2325
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

.method public final resetSolverVariables(Lorg/acra/util/ProcessFinisher;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetSolverVariables(Lorg/acra/util/ProcessFinisher;)V

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
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetSolverVariables(Lorg/acra/util/ProcessFinisher;)V

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
