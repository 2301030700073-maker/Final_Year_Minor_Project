.class public abstract Lorg/wikipedia/views/LinearLayoutOverWebView;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public amountScrolled:I

.field public slopReached:Z

.field public startY:F

.field public touchSlop:I

.field public viewPressed:Z

.field public webView:Lorg/wikipedia/views/ObservableWebView;


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    and-int/lit16 v0, v0, 0xff

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_a

    .line 13
    .line 14
    if-eq v0, v1, :cond_9

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    const/4 v4, 0x3

    .line 18
    if-eq v0, v3, :cond_0

    .line 19
    .line 20
    if-eq v0, v4, :cond_9

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    iget-boolean v0, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->viewPressed:Z

    .line 25
    .line 26
    if-eqz v0, :cond_b

    .line 27
    .line 28
    iget-object v0, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const-string/jumbo v5, "webView"

    .line 32
    .line 33
    .line 34
    if-eqz v0, :cond_8

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    int-to-float v0, v0

    .line 41
    sget-object v6, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 42
    .line 43
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 62
    .line 63
    mul-float/2addr v0, v6

    .line 64
    float-to-int v0, v0

    .line 65
    iget-object v6, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 66
    .line 67
    if-eqz v6, :cond_7

    .line 68
    .line 69
    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    neg-int v6, v6

    .line 74
    iget-object v7, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 75
    .line 76
    if-eqz v7, :cond_6

    .line 77
    .line 78
    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    sub-int/2addr v0, v7

    .line 83
    iget-object v7, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 84
    .line 85
    if-eqz v7, :cond_5

    .line 86
    .line 87
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    sub-int/2addr v0, v7

    .line 92
    iget v7, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->startY:F

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    sub-float/2addr v7, v8

    .line 99
    float-to-int v7, v7

    .line 100
    if-le v7, v0, :cond_1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    move v0, v7

    .line 104
    :goto_0
    if-ge v6, v0, :cond_2

    .line 105
    .line 106
    move v6, v0

    .line 107
    :cond_2
    iget v0, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->amountScrolled:I

    .line 108
    .line 109
    add-int/2addr v0, v6

    .line 110
    iput v0, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->amountScrolled:I

    .line 111
    .line 112
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iget v7, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->touchSlop:I

    .line 117
    .line 118
    if-le v0, v7, :cond_3

    .line 119
    .line 120
    iget-boolean v0, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->slopReached:Z

    .line 121
    .line 122
    if-nez v0, :cond_3

    .line 123
    .line 124
    iput-boolean v1, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->slopReached:Z

    .line 125
    .line 126
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 131
    .line 132
    .line 133
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 134
    .line 135
    .line 136
    return v1

    .line 137
    :cond_3
    iget-boolean v0, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->slopReached:Z

    .line 138
    .line 139
    if-eqz v0, :cond_b

    .line 140
    .line 141
    iget-object v0, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 142
    .line 143
    if-eqz v0, :cond_4

    .line 144
    .line 145
    invoke-virtual {v0, v2, v6}, Landroid/view/View;->scrollBy(II)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_4
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v3

    .line 153
    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v3

    .line 157
    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v3

    .line 161
    :cond_7
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v3

    .line 165
    :cond_8
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v3

    .line 169
    :cond_9
    iput-boolean v2, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->viewPressed:Z

    .line 170
    .line 171
    iput-boolean v2, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->slopReached:Z

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_a
    iput-boolean v1, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->viewPressed:Z

    .line 175
    .line 176
    iput-boolean v2, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->slopReached:Z

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    iput v0, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->startY:F

    .line 183
    .line 184
    iput v2, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->amountScrolled:I

    .line 185
    .line 186
    :cond_b
    :goto_1
    iget-boolean v0, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->slopReached:Z

    .line 187
    .line 188
    if-nez v0, :cond_d

    .line 189
    .line 190
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    if-eqz p0, :cond_c

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_c
    return v2

    .line 198
    :cond_d
    :goto_2
    return v1
.end method

.method public final setWebView(Lorg/wikipedia/views/ObservableWebView;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->touchSlop:I

    .line 19
    .line 20
    return-void
.end method
