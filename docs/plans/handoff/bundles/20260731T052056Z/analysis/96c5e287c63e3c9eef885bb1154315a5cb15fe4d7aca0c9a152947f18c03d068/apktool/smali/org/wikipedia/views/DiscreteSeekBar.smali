.class public final Lorg/wikipedia/views/DiscreteSeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R$\u0010\t\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00088F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/wikipedia/views/DiscreteSeekBar;",
        "Landroidx/appcompat/widget/AppCompatSeekBar;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "value",
        "getValue",
        "()I",
        "setValue",
        "(I)V",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final centerDrawable:Landroid/graphics/drawable/Drawable;

.field public final isRtl:Z

.field public final minNumber:I

.field public final tickDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p2, :cond_2

    .line 10
    .line 11
    sget-object v2, Lorg/wikipedia/R$styleable;->DiscreteSeekBar:[I

    .line 12
    .line 13
    invoke-virtual {p1, p2, v2, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iput v2, p0, Lorg/wikipedia/views/DiscreteSeekBar;->minNumber:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sub-int/2addr v3, v2

    .line 28
    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-static {p1, v2}, Lkotlin/TuplesKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iput-object v2, p0, Lorg/wikipedia/views/DiscreteSeekBar;->tickDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    :cond_0
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-static {p1, v2}, Lkotlin/TuplesKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lorg/wikipedia/views/DiscreteSeekBar;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-ne p1, v0, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    move v0, v1

    .line 75
    :goto_0
    iput-boolean v0, p0, Lorg/wikipedia/views/DiscreteSeekBar;->isRtl:Z

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 78
    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final drawTickMarks(Landroid/graphics/Canvas;ZZ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lorg/wikipedia/views/DiscreteSeekBar;->minNumber:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    const/4 v2, 0x1

    .line 9
    iget-object v3, p0, Lorg/wikipedia/views/DiscreteSeekBar;->tickDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-eqz v3, :cond_2

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ltz v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    div-int/lit8 v4, v4, 0x2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v4, v2

    .line 27
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-ltz v5, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    div-int/lit8 v5, v5, 0x2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v5, v2

    .line 41
    :goto_1
    neg-int v6, v4

    .line 42
    neg-int v7, v5

    .line 43
    invoke-virtual {v3, v6, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object v4, p0, Lorg/wikipedia/views/DiscreteSeekBar;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    if-eqz v4, :cond_5

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-ltz v5, :cond_3

    .line 55
    .line 56
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    div-int/lit8 v5, v5, 0x2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move v5, v2

    .line 64
    :goto_2
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-ltz v6, :cond_4

    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    div-int/lit8 v2, v2, 0x2

    .line 75
    .line 76
    :cond_4
    neg-int v6, v5

    .line 77
    neg-int v7, v2

    .line 78
    invoke-virtual {v4, v6, v7, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 79
    .line 80
    .line 81
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    sub-int/2addr v2, v5

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    sub-int/2addr v2, v5

    .line 95
    int-to-float v2, v2

    .line 96
    sub-int v5, v0, v1

    .line 97
    .line 98
    int-to-float v5, v5

    .line 99
    div-float/2addr v2, v5

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    :try_start_0
    iget-boolean v6, p0, Lorg/wikipedia/views/DiscreteSeekBar;->isRtl:Z

    .line 105
    .line 106
    if-eqz v6, :cond_6

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    div-int/lit8 v6, v6, 0x2

    .line 113
    .line 114
    int-to-float v6, v6

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    div-int/lit8 v7, v7, 0x2

    .line 120
    .line 121
    int-to-float v7, v7

    .line 122
    const/high16 v8, -0x40800000    # -1.0f

    .line 123
    .line 124
    const/high16 v9, 0x3f800000    # 1.0f

    .line 125
    .line 126
    invoke-virtual {p1, v8, v9, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    goto :goto_5

    .line 132
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    int-to-float v6, v6

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    div-int/lit8 v7, v7, 0x2

    .line 142
    .line 143
    int-to-float v7, v7

    .line 144
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 145
    .line 146
    .line 147
    if-gt v1, v0, :cond_9

    .line 148
    .line 149
    :goto_4
    if-eqz p3, :cond_7

    .line 150
    .line 151
    invoke-virtual {p0}, Lorg/wikipedia/views/DiscreteSeekBar;->getValue()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-le v1, v6, :cond_7

    .line 156
    .line 157
    if-eqz v3, :cond_7

    .line 158
    .line 159
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    .line 161
    .line 162
    :cond_7
    if-eqz p2, :cond_8

    .line 163
    .line 164
    if-nez v1, :cond_8

    .line 165
    .line 166
    if-eqz v4, :cond_8

    .line 167
    .line 168
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 169
    .line 170
    .line 171
    :cond_8
    const/4 v6, 0x0

    .line 172
    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .line 174
    .line 175
    if-eq v1, v0, :cond_9

    .line 176
    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_9
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :goto_5
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 185
    .line 186
    .line 187
    throw p0
.end method

.method public final getValue()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget p0, p0, Lorg/wikipedia/views/DiscreteSeekBar;->minNumber:I

    .line 6
    .line 7
    add-int/2addr v0, p0

    .line 8
    return v0
.end method

.method public final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/views/DiscreteSeekBar;->getValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/views/DiscreteSeekBar;->drawTickMarks(Landroid/graphics/Canvas;ZZ)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v0, v1}, Lorg/wikipedia/views/DiscreteSeekBar;->drawTickMarks(Landroid/graphics/Canvas;ZZ)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, v1, v1}, Lorg/wikipedia/views/DiscreteSeekBar;->drawTickMarks(Landroid/graphics/Canvas;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :goto_0
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p1
.end method

.method public final setValue(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/views/DiscreteSeekBar;->minNumber:I

    .line 2
    .line 3
    sub-int/2addr p1, v0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
