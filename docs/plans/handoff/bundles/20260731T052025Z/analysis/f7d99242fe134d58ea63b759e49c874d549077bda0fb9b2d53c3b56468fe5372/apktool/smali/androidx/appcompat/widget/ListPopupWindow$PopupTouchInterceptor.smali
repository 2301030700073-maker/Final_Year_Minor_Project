.class public final Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/ListPopupWindow;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->$r8$classId:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    packed-switch v3, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v6, 0x0

    .line 19
    if-nez v3, :cond_3

    .line 20
    .line 21
    instance-of v7, v1, Landroid/view/ViewGroup;

    .line 22
    .line 23
    if-eqz v7, :cond_2

    .line 24
    .line 25
    move-object v7, v1

    .line 26
    check-cast v7, Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    float-to-int v8, v8

    .line 33
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    float-to-int v9, v9

    .line 38
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    const v11, 0x7fffffff

    .line 43
    .line 44
    .line 45
    move v12, v4

    .line 46
    move-object v13, v6

    .line 47
    :goto_0
    if-ge v12, v10, :cond_1

    .line 48
    .line 49
    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v14

    .line 53
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    .line 54
    .line 55
    .line 56
    move-result v15

    .line 57
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result v16

    .line 61
    div-int/lit8 v16, v16, 0x2

    .line 62
    .line 63
    add-int v16, v16, v15

    .line 64
    .line 65
    sub-int v15, v8, v16

    .line 66
    .line 67
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    .line 68
    .line 69
    .line 70
    move-result v16

    .line 71
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v17

    .line 75
    div-int/lit8 v17, v17, 0x2

    .line 76
    .line 77
    add-int v17, v17, v16

    .line 78
    .line 79
    sub-int v16, v9, v17

    .line 80
    .line 81
    mul-int/2addr v15, v15

    .line 82
    mul-int v16, v16, v16

    .line 83
    .line 84
    add-int v15, v16, v15

    .line 85
    .line 86
    if-le v11, v15, :cond_0

    .line 87
    .line 88
    move-object v13, v14

    .line 89
    move v11, v15

    .line 90
    :cond_0
    add-int/lit8 v12, v12, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    iput-object v13, v0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Ljava/lang/Object;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iput-object v6, v0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Ljava/lang/Object;

    .line 97
    .line 98
    :cond_3
    :goto_1
    iget-object v7, v0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v7, Landroid/view/View;

    .line 101
    .line 102
    if-nez v7, :cond_4

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    sub-int/2addr v4, v8

    .line 114
    int-to-float v4, v4

    .line 115
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    sub-int/2addr v1, v8

    .line 124
    int-to-float v1, v1

    .line 125
    invoke-virtual {v2, v4, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    neg-float v4, v4

    .line 133
    neg-float v1, v1

    .line 134
    invoke-virtual {v2, v4, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 135
    .line 136
    .line 137
    if-eq v3, v5, :cond_6

    .line 138
    .line 139
    const/4 v1, 0x3

    .line 140
    if-ne v3, v1, :cond_5

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    :goto_2
    move v4, v7

    .line 144
    goto :goto_4

    .line 145
    :cond_6
    :goto_3
    iput-object v6, v0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Ljava/lang/Object;

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :goto_4
    return v4

    .line 149
    :pswitch_0
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v0, Landroidx/appcompat/widget/ListPopupWindow;

    .line 152
    .line 153
    iget-object v1, v0, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    .line 154
    .line 155
    iget-object v3, v0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 156
    .line 157
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 158
    .line 159
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    float-to-int v7, v7

    .line 168
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    float-to-int v2, v2

    .line 173
    if-nez v6, :cond_7

    .line 174
    .line 175
    if-eqz v0, :cond_7

    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    if-eqz v8, :cond_7

    .line 182
    .line 183
    if-ltz v7, :cond_7

    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 186
    .line 187
    .line 188
    move-result v8

    .line 189
    if-ge v7, v8, :cond_7

    .line 190
    .line 191
    if-ltz v2, :cond_7

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-ge v2, v0, :cond_7

    .line 198
    .line 199
    const-wide/16 v5, 0xfa

    .line 200
    .line 201
    invoke-virtual {v3, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_7
    if-ne v6, v5, :cond_8

    .line 206
    .line 207
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    .line 209
    .line 210
    :cond_8
    :goto_5
    return v4

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
