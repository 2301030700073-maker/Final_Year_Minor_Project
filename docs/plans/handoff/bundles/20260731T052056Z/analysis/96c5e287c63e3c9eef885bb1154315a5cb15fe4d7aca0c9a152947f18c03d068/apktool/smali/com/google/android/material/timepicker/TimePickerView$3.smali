.class public final Lcom/google/android/material/timepicker/TimePickerView$3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$gestureDetector:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/google/android/material/timepicker/TimePickerView$3;->$r8$classId:I

    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView$3;->val$gestureDetector:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lokio/internal/DefaultSocket;Lorg/wikipedia/databinding/FragmentNewsBinding;)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    iput p1, p0, Lcom/google/android/material/timepicker/TimePickerView$3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView$3;->val$gestureDetector:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/material/timepicker/TimePickerView$3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerView$3;->val$gestureDetector:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lorg/wikipedia/databinding/FragmentNewsBinding;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    .line 14
    .line 15
    return v2

    .line 16
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    check-cast p0, Lcom/skydoves/balloon/Balloon;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/google/gson/GsonBuilder;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    if-ne p1, v4, :cond_0

    .line 34
    .line 35
    iget-boolean p1, v3, Lcom/skydoves/balloon/Balloon$Builder;->dismissWhenTouchOutside:Z

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->dismiss()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-ne p1, v1, :cond_2

    .line 48
    .line 49
    iget-object p1, v0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, Landroid/widget/FrameLayout;

    .line 52
    .line 53
    invoke-static {p1}, Lkotlin/uuid/UuidKt;->getViewPointOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 58
    .line 59
    int-to-float p1, p1

    .line 60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    cmpl-float p1, p1, v4

    .line 65
    .line 66
    if-gtz p1, :cond_1

    .line 67
    .line 68
    iget-object p1, v0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Landroid/widget/FrameLayout;

    .line 71
    .line 72
    invoke-static {p1}, Lkotlin/uuid/UuidKt;->getViewPointOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 77
    .line 78
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Landroid/widget/FrameLayout;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    add-int/2addr v0, p1

    .line 87
    int-to-float p1, v0

    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    cmpg-float p1, p1, p2

    .line 93
    .line 94
    if-gez p1, :cond_2

    .line 95
    .line 96
    :cond_1
    iget-boolean p1, v3, Lcom/skydoves/balloon/Balloon$Builder;->dismissWhenTouchOutside:Z

    .line 97
    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->dismiss()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    move v1, v2

    .line 105
    :cond_3
    :goto_0
    return v1

    .line 106
    :pswitch_1
    check-cast p0, Landroidx/appcompat/widget/ListPopupWindow;

    .line 107
    .line 108
    iget-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    .line 109
    .line 110
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 111
    .line 112
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    float-to-int v4, v4

    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    float-to-int p2, p2

    .line 128
    if-nez v3, :cond_4

    .line 129
    .line 130
    if-eqz p0, :cond_4

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_4

    .line 137
    .line 138
    if-ltz v4, :cond_4

    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-ge v4, v5, :cond_4

    .line 145
    .line 146
    if-ltz p2, :cond_4

    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-ge p2, p0, :cond_4

    .line 153
    .line 154
    const-wide/16 v3, 0xfa

    .line 155
    .line 156
    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    if-ne v3, v1, :cond_5

    .line 161
    .line 162
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    :goto_1
    return v2

    .line 166
    :pswitch_2
    check-cast p1, Landroid/widget/Checkable;

    .line 167
    .line 168
    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_6

    .line 173
    .line 174
    check-cast p0, Landroid/view/GestureDetector;

    .line 175
    .line 176
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    :cond_6
    return v2

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
