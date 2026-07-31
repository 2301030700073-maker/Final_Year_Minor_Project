.class public final Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000fB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;",
        "callback",
        "Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;",
        "getCallback",
        "()Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;",
        "setCallback",
        "(Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;)V",
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


# static fields
.field public static CHILD_VIEW_SCROLLED:Z

.field public static final SWIPE_SLOP_X:I

.field public static final SWIPE_SLOP_Y:I


# instance fields
.field public callback:Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;

.field public initialX:F

.field public initialY:F

.field public maybeSwiping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/high16 v0, 0x42000000    # 32.0f

    .line 2
    .line 3
    invoke-static {v0}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->SWIPE_SLOP_Y:I

    .line 8
    .line 9
    const/high16 v0, 0x42c80000    # 100.0f

    .line 10
    .line 11
    invoke-static {v0}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->SWIPE_SLOP_X:I

    .line 16
    .line 17
    return-void
.end method

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
    return-void
.end method


# virtual methods
.method public final getCallback()Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->callback:Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

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
    sget-boolean v1, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->CHILD_VIEW_SCROLLED:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sput-boolean v2, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->CHILD_VIEW_SCROLLED:Z

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iput v1, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->initialX:F

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->initialY:F

    .line 26
    .line 27
    :cond_0
    const/4 v1, 0x1

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->initialX:F

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->initialY:F

    .line 41
    .line 42
    iput-boolean v1, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->maybeSwiping:Z

    .line 43
    .line 44
    return v2

    .line 45
    :cond_1
    if-eq v0, v1, :cond_b

    .line 46
    .line 47
    const/4 v3, 0x3

    .line 48
    if-ne v0, v3, :cond_2

    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_2
    const/4 v4, 0x2

    .line 53
    if-ne v0, v4, :cond_a

    .line 54
    .line 55
    iget-boolean v0, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->maybeSwiping:Z

    .line 56
    .line 57
    if-eqz v0, :cond_a

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget v4, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->initialY:F

    .line 64
    .line 65
    sub-float/2addr v0, v4

    .line 66
    float-to-int v0, v0

    .line 67
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    sget v4, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->SWIPE_SLOP_Y:I

    .line 72
    .line 73
    if-le v0, v4, :cond_3

    .line 74
    .line 75
    iput-boolean v2, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->maybeSwiping:Z

    .line 76
    .line 77
    return v2

    .line 78
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget v4, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->initialX:F

    .line 83
    .line 84
    sub-float/2addr v0, v4

    .line 85
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    sget v4, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->SWIPE_SLOP_X:I

    .line 90
    .line 91
    int-to-float v4, v4

    .line 92
    cmpl-float v0, v0, v4

    .line 93
    .line 94
    if-lez v0, :cond_a

    .line 95
    .line 96
    iput-boolean v2, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->maybeSwiping:Z

    .line 97
    .line 98
    iget-object v0, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->callback:Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;

    .line 99
    .line 100
    if-eqz v0, :cond_a

    .line 101
    .line 102
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v4, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 107
    .line 108
    .line 109
    new-instance v3, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda7;

    .line 110
    .line 111
    invoke-direct {v3, p0, v4, v1}, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda7;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 115
    .line 116
    .line 117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    const v4, 0x800003

    .line 126
    .line 127
    .line 128
    const v5, 0x800005

    .line 129
    .line 130
    .line 131
    if-ne v3, v1, :cond_5

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    iget p0, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->initialX:F

    .line 138
    .line 139
    cmpl-float p0, p1, p0

    .line 140
    .line 141
    if-lez p0, :cond_6

    .line 142
    .line 143
    :cond_4
    move v4, v5

    .line 144
    goto :goto_0

    .line 145
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    iget p0, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->initialX:F

    .line 150
    .line 151
    cmpl-float p0, p1, p0

    .line 152
    .line 153
    if-lez p0, :cond_4

    .line 154
    .line 155
    :cond_6
    :goto_0
    check-cast v0, Lorg/wikipedia/page/PageActivity;

    .line 156
    .line 157
    iget-object p0, v0, Lorg/wikipedia/page/PageActivity;->currentActionModes:Ljava/util/LinkedHashSet;

    .line 158
    .line 159
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-eqz p0, :cond_a

    .line 164
    .line 165
    if-ne v4, v5, :cond_a

    .line 166
    .line 167
    iget-object p0, v0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 168
    .line 169
    const/4 p1, 0x0

    .line 170
    const-string v3, "pageFragment"

    .line 171
    .line 172
    if-eqz p0, :cond_9

    .line 173
    .line 174
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 175
    .line 176
    if-eqz p0, :cond_7

    .line 177
    .line 178
    const-string v4, "toc_swipe"

    .line 179
    .line 180
    invoke-virtual {p0, v4}, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->submitEvent(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :cond_7
    iget-object p0, v0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 184
    .line 185
    if-eqz p0, :cond_8

    .line 186
    .line 187
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getSidePanelHandler()Lorg/wikipedia/page/SidePanelHandler;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    iget-object p1, p0, Lorg/wikipedia/page/SidePanelHandler;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 192
    .line 193
    iget-object v0, p1, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v0, Landroidx/drawerlayout/widget/FixedDrawerLayout;

    .line 196
    .line 197
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityPageBinding;->sidePanelContainer:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast p1, Landroid/widget/FrameLayout;

    .line 200
    .line 201
    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    const/4 p1, -0x1

    .line 205
    iput p1, p0, Lorg/wikipedia/page/SidePanelHandler;->currentItemSelected:I

    .line 206
    .line 207
    const/4 p1, 0x0

    .line 208
    invoke-virtual {p0, p1, v2}, Lorg/wikipedia/page/SidePanelHandler;->onScrollerMoved(FZ)V

    .line 209
    .line 210
    .line 211
    iget-object p0, p0, Lorg/wikipedia/page/SidePanelHandler;->articleTocInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;

    .line 212
    .line 213
    if-eqz p0, :cond_a

    .line 214
    .line 215
    iget p1, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->numOpens:I

    .line 216
    .line 217
    add-int/2addr p1, v1

    .line 218
    iput p1, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->numOpens:I

    .line 219
    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 221
    .line 222
    .line 223
    move-result-wide v0

    .line 224
    iput-wide v0, p0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent;->lastScrollStartMillis:J

    .line 225
    .line 226
    return v2

    .line 227
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p1

    .line 231
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p1

    .line 235
    :cond_a
    return v2

    .line 236
    :cond_b
    :goto_1
    iput-boolean v2, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->maybeSwiping:Z

    .line 237
    .line 238
    return v2
.end method

.method public final setCallback(Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->callback:Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;

    .line 2
    .line 3
    return-void
.end method
