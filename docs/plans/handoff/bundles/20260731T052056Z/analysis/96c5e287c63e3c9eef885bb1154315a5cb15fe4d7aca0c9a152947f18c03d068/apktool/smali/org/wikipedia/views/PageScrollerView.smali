.class public final Lorg/wikipedia/views/PageScrollerView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000fB\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/wikipedia/views/PageScrollerView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lorg/wikipedia/views/PageScrollerView$Callback;",
        "callback",
        "Lorg/wikipedia/views/PageScrollerView$Callback;",
        "getCallback",
        "()Lorg/wikipedia/views/PageScrollerView$Callback;",
        "setCallback",
        "(Lorg/wikipedia/views/PageScrollerView$Callback;)V",
        "Callback",
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
.field public callback:Lorg/wikipedia/views/PageScrollerView$Callback;

.field public dragging:Z

.field public prevY:F

.field public startMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final getCallback()Lorg/wikipedia/views/PageScrollerView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/PageScrollerView;->callback:Lorg/wikipedia/views/PageScrollerView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

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
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq v0, v3, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_0
    iget-boolean v0, p0, Lorg/wikipedia/views/PageScrollerView;->dragging:Z

    .line 23
    .line 24
    if-eqz v0, :cond_7

    .line 25
    .line 26
    iput-boolean v2, p0, Lorg/wikipedia/views/PageScrollerView;->dragging:Z

    .line 27
    .line 28
    iget-object v0, p0, Lorg/wikipedia/views/PageScrollerView;->callback:Lorg/wikipedia/views/PageScrollerView$Callback;

    .line 29
    .line 30
    if-eqz v0, :cond_7

    .line 31
    .line 32
    check-cast v0, Lorg/wikipedia/media/AvPlayer;

    .line 33
    .line 34
    iget-object v0, v0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lorg/wikipedia/page/SidePanelHandler;

    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/wikipedia/page/SidePanelHandler;->hide()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-boolean v0, p0, Lorg/wikipedia/views/PageScrollerView;->dragging:Z

    .line 43
    .line 44
    if-eqz v0, :cond_7

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget v2, p0, Lorg/wikipedia/views/PageScrollerView;->prevY:F

    .line 51
    .line 52
    sub-float/2addr v0, v2

    .line 53
    iget-object v2, p0, Lorg/wikipedia/views/PageScrollerView;->callback:Lorg/wikipedia/views/PageScrollerView$Callback;

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    check-cast v2, Lorg/wikipedia/media/AvPlayer;

    .line 58
    .line 59
    iget-object v2, v2, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Lorg/wikipedia/page/SidePanelHandler;

    .line 62
    .line 63
    invoke-virtual {v2, v0, v1}, Lorg/wikipedia/page/SidePanelHandler;->onScrollerMoved(FZ)V

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput v0, p0, Lorg/wikipedia/views/PageScrollerView;->prevY:F

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    iget-boolean v0, p0, Lorg/wikipedia/views/PageScrollerView;->dragging:Z

    .line 77
    .line 78
    if-eqz v0, :cond_7

    .line 79
    .line 80
    iput-boolean v2, p0, Lorg/wikipedia/views/PageScrollerView;->dragging:Z

    .line 81
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    iget-wide v2, p0, Lorg/wikipedia/views/PageScrollerView;->startMillis:J

    .line 87
    .line 88
    sub-long/2addr v0, v2

    .line 89
    const-wide/16 v2, 0xfa

    .line 90
    .line 91
    cmp-long v0, v0, v2

    .line 92
    .line 93
    iget-object v1, p0, Lorg/wikipedia/views/PageScrollerView;->callback:Lorg/wikipedia/views/PageScrollerView$Callback;

    .line 94
    .line 95
    if-gez v0, :cond_4

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    if-eqz v1, :cond_7

    .line 99
    .line 100
    check-cast v1, Lorg/wikipedia/media/AvPlayer;

    .line 101
    .line 102
    iget-object v0, v1, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Lorg/wikipedia/page/SidePanelHandler;

    .line 105
    .line 106
    invoke-virtual {v0}, Lorg/wikipedia/page/SidePanelHandler;->hide()V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iput v0, p0, Lorg/wikipedia/views/PageScrollerView;->prevY:F

    .line 118
    .line 119
    iget-boolean v0, p0, Lorg/wikipedia/views/PageScrollerView;->dragging:Z

    .line 120
    .line 121
    if-nez v0, :cond_6

    .line 122
    .line 123
    iput-boolean v1, p0, Lorg/wikipedia/views/PageScrollerView;->dragging:Z

    .line 124
    .line 125
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 126
    .line 127
    .line 128
    move-result-wide v0

    .line 129
    iput-wide v0, p0, Lorg/wikipedia/views/PageScrollerView;->startMillis:J

    .line 130
    .line 131
    :cond_7
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    return p0
.end method

.method public final setCallback(Lorg/wikipedia/views/PageScrollerView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/views/PageScrollerView;->callback:Lorg/wikipedia/views/PageScrollerView$Callback;

    .line 2
    .line 3
    return-void
.end method
