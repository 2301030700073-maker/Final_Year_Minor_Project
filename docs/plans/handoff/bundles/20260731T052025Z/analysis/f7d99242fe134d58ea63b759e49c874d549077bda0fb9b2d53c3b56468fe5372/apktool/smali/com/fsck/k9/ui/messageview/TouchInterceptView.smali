.class public final Lcom/fsck/k9/ui/messageview/TouchInterceptView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public initialRawX:I

.field public initialRawY:I

.field public initialX:F

.field public initialY:F

.field public final touchSlop:I

.field public final webViewRect:Landroid/graphics/Rect;

.field public final webViewScreenLocation:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/fsck/k9/ui/messageview/TouchInterceptView;->touchSlop:I

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    new-array p1, p1, [I

    .line 19
    .line 20
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/TouchInterceptView;->webViewScreenLocation:[I

    .line 21
    .line 22
    new-instance p1, Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/TouchInterceptView;->webViewRect:Landroid/graphics/Rect;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f090293

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/webkit/WebView;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    const v1, 0x7f0902af

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/widget/ScrollView;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x0

    .line 43
    if-eqz v3, :cond_7

    .line 44
    .line 45
    const/4 v5, 0x2

    .line 46
    const/4 v6, 0x1

    .line 47
    if-eq v3, v5, :cond_4

    .line 48
    .line 49
    const/4 v0, 0x5

    .line 50
    if-eq v3, v0, :cond_3

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_3
    invoke-interface {v2, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_4
    iget v3, p0, Lcom/fsck/k9/ui/messageview/TouchInterceptView;->initialX:F

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    sub-float/2addr v3, v5

    .line 66
    iget v5, p0, Lcom/fsck/k9/ui/messageview/TouchInterceptView;->initialY:F

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    sub-float/2addr v5, v7

    .line 73
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    iget v9, p0, Lcom/fsck/k9/ui/messageview/TouchInterceptView;->touchSlop:I

    .line 82
    .line 83
    int-to-float v9, v9

    .line 84
    cmpl-float v10, v8, v9

    .line 85
    .line 86
    if-lez v10, :cond_6

    .line 87
    .line 88
    cmpl-float v10, v8, v7

    .line 89
    .line 90
    if-lez v10, :cond_6

    .line 91
    .line 92
    float-to-int v5, v5

    .line 93
    invoke-virtual {v1, v5}, Landroid/view/View;->canScrollVertically(I)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_5

    .line 98
    .line 99
    invoke-virtual {v0, v5}, Landroid/view/View;->canScrollVertically(I)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    :cond_5
    invoke-interface {v2, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_6
    cmpl-float v1, v7, v9

    .line 110
    .line 111
    if-lez v1, :cond_8

    .line 112
    .line 113
    cmpl-float v1, v7, v8

    .line 114
    .line 115
    if-lez v1, :cond_8

    .line 116
    .line 117
    float-to-int v1, v3

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_8

    .line 123
    .line 124
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/TouchInterceptView;->webViewRect:Landroid/graphics/Rect;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 127
    .line 128
    .line 129
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/TouchInterceptView;->webViewScreenLocation:[I

    .line 130
    .line 131
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 132
    .line 133
    .line 134
    aget v0, v3, v4

    .line 135
    .line 136
    aget v3, v3, v6

    .line 137
    .line 138
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 139
    .line 140
    .line 141
    iget v0, p0, Lcom/fsck/k9/ui/messageview/TouchInterceptView;->initialRawX:I

    .line 142
    .line 143
    iget v3, p0, Lcom/fsck/k9/ui/messageview/TouchInterceptView;->initialRawY:I

    .line 144
    .line 145
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_8

    .line 150
    .line 151
    invoke-interface {v2, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iput v0, p0, Lcom/fsck/k9/ui/messageview/TouchInterceptView;->initialX:F

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iput v0, p0, Lcom/fsck/k9/ui/messageview/TouchInterceptView;->initialY:F

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    float-to-int v0, v0

    .line 172
    iput v0, p0, Lcom/fsck/k9/ui/messageview/TouchInterceptView;->initialRawX:I

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    float-to-int v0, v0

    .line 179
    iput v0, p0, Lcom/fsck/k9/ui/messageview/TouchInterceptView;->initialRawY:I

    .line 180
    .line 181
    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 182
    .line 183
    .line 184
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    return p0
.end method
