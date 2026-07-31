.class public final Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic val$anim:Landroidx/core/view/WindowInsetsAnimationCompat;

.field public final synthetic val$animationMask:I

.field public final synthetic val$startingInsets:Landroidx/core/view/WindowInsetsCompat;

.field public final synthetic val$targetInsets:Landroidx/core/view/WindowInsetsCompat;

.field public final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$anim:Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$targetInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$startingInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 9
    .line 10
    iput p4, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$animationMask:I

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$v:Landroid/view/View;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$anim:Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->setFraction(F)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->getInterpolatedFraction()F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    sget-object v1, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->SHOW_IME_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 17
    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v2, 0x24

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$targetInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 23
    .line 24
    if-lt v1, v2, :cond_0

    .line 25
    .line 26
    new-instance v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl36;

    .line 27
    .line 28
    invoke-direct {v1, v3}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl36;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/16 v2, 0x23

    .line 33
    .line 34
    if-lt v1, v2, :cond_1

    .line 35
    .line 36
    new-instance v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl35;

    .line 37
    .line 38
    invoke-direct {v1, v3}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl35;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/16 v2, 0x22

    .line 43
    .line 44
    if-lt v1, v2, :cond_2

    .line 45
    .line 46
    new-instance v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;

    .line 47
    .line 48
    invoke-direct {v1, v3}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/16 v2, 0x1f

    .line 53
    .line 54
    if-lt v1, v2, :cond_3

    .line 55
    .line 56
    new-instance v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl31;

    .line 57
    .line 58
    invoke-direct {v1, v3}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl31;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const/16 v2, 0x1e

    .line 63
    .line 64
    if-lt v1, v2, :cond_4

    .line 65
    .line 66
    new-instance v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;

    .line 67
    .line 68
    invoke-direct {v1, v3}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const/16 v2, 0x1d

    .line 73
    .line 74
    if-lt v1, v2, :cond_5

    .line 75
    .line 76
    new-instance v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;

    .line 77
    .line 78
    invoke-direct {v1, v3}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    new-instance v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;

    .line 83
    .line 84
    invoke-direct {v1, v3}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    const/4 v2, 0x1

    .line 88
    :goto_1
    const/16 v4, 0x200

    .line 89
    .line 90
    if-gt v2, v4, :cond_7

    .line 91
    .line 92
    iget v4, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$animationMask:I

    .line 93
    .line 94
    and-int/2addr v4, v2

    .line 95
    iget-object v5, v3, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 96
    .line 97
    if-nez v4, :cond_6

    .line 98
    .line 99
    invoke-virtual {v5, v2}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v1, v2, v4}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setInsets(ILandroidx/core/graphics/Insets;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    invoke-virtual {v5, v2}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    iget-object v5, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$startingInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 112
    .line 113
    iget-object v5, v5, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 114
    .line 115
    invoke-virtual {v5, v2}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    iget v6, v4, Landroidx/core/graphics/Insets;->left:I

    .line 120
    .line 121
    iget v7, v5, Landroidx/core/graphics/Insets;->left:I

    .line 122
    .line 123
    sub-int/2addr v6, v7

    .line 124
    int-to-float v6, v6

    .line 125
    const/high16 v7, 0x3f800000    # 1.0f

    .line 126
    .line 127
    sub-float/2addr v7, p1

    .line 128
    mul-float/2addr v6, v7

    .line 129
    float-to-double v8, v6

    .line 130
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 131
    .line 132
    add-double/2addr v8, v10

    .line 133
    double-to-int v6, v8

    .line 134
    iget v8, v4, Landroidx/core/graphics/Insets;->top:I

    .line 135
    .line 136
    iget v9, v5, Landroidx/core/graphics/Insets;->top:I

    .line 137
    .line 138
    sub-int/2addr v8, v9

    .line 139
    int-to-float v8, v8

    .line 140
    mul-float/2addr v8, v7

    .line 141
    float-to-double v8, v8

    .line 142
    add-double/2addr v8, v10

    .line 143
    double-to-int v8, v8

    .line 144
    iget v9, v4, Landroidx/core/graphics/Insets;->right:I

    .line 145
    .line 146
    iget v12, v5, Landroidx/core/graphics/Insets;->right:I

    .line 147
    .line 148
    sub-int/2addr v9, v12

    .line 149
    int-to-float v9, v9

    .line 150
    mul-float/2addr v9, v7

    .line 151
    float-to-double v12, v9

    .line 152
    add-double/2addr v12, v10

    .line 153
    double-to-int v9, v12

    .line 154
    iget v12, v4, Landroidx/core/graphics/Insets;->bottom:I

    .line 155
    .line 156
    iget v5, v5, Landroidx/core/graphics/Insets;->bottom:I

    .line 157
    .line 158
    sub-int/2addr v12, v5

    .line 159
    int-to-float v5, v12

    .line 160
    mul-float/2addr v5, v7

    .line 161
    float-to-double v12, v5

    .line 162
    add-double/2addr v12, v10

    .line 163
    double-to-int v5, v12

    .line 164
    invoke-static {v4, v6, v8, v9, v5}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v1, v2, v4}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setInsets(ILandroidx/core/graphics/Insets;)V

    .line 169
    .line 170
    .line 171
    :goto_2
    shl-int/lit8 v2, v2, 0x1

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_7
    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->build()Landroidx/core/view/WindowInsetsCompat;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$v:Landroid/view/View;

    .line 183
    .line 184
    invoke-static {p0, p1, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->dispatchOnProgress(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method
