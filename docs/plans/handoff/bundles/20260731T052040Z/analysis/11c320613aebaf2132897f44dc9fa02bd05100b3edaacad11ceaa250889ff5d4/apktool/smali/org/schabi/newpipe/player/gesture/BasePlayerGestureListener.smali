.class public abstract Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final Companion:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener$Companion;


# instance fields
.field public final binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

.field public doubleTapControls:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

.field public final doubleTapDelay:J

.field public final doubleTapHandler:Landroid/os/Handler;

.field public isDoubleTapping:Z

.field public final player:Lorg/schabi/newpipe/player/Player;

.field public final playerUi:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->Companion:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener$Companion;

    .line 7
    .line 8
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 5
    .line 6
    iget-object v0, p1, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->player:Lorg/schabi/newpipe/player/Player;

    .line 12
    .line 13
    iget-object p1, p1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 19
    .line 20
    const-wide/16 v0, 0x226

    .line 21
    .line 22
    iput-wide v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapDelay:J

    .line 23
    .line 24
    new-instance p1, Landroid/os/Handler;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapHandler:Landroid/os/Handler;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public abstract getDisplayPortion(Landroid/view/MotionEvent;)Lorg/schabi/newpipe/player/gesture/DisplayPortion;
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getDisplayPortion(Landroid/view/MotionEvent;)Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 9
    .line 10
    iget-boolean v2, v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isSomePopupMenuVisible:Z

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v3, v4, v3, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object v2, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->LEFT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    if-eq v0, v2, :cond_2

    .line 23
    .line 24
    sget-object v2, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->RIGHT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    .line 25
    .line 26
    if-ne v0, v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sget-object p1, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->MIDDLE:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    .line 30
    .line 31
    if-ne v0, p1, :cond_3

    .line 32
    .line 33
    iget-object p0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->player:Lorg/schabi/newpipe/player/Player;

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->playPause()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v1, v3, v4, v3, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapping:Z

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    iput-boolean v5, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapping:Z

    .line 53
    .line 54
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapHandler:Landroid/os/Handler;

    .line 55
    .line 56
    const-string v1, "doubleTap"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    new-instance v2, Landroidx/lifecycle/LiveData$1;

    .line 62
    .line 63
    const/16 v3, 0x15

    .line 64
    .line 65
    invoke-direct {v2, p0, v3}, Landroidx/lifecycle/LiveData$1;-><init>(Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    const-wide/16 v3, 0x226

    .line 69
    .line 70
    invoke-static {v0, v2, v1, v3, v4}, Landroidx/work/OperationKt;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapControls:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getDisplayPortion(Landroid/view/MotionEvent;)Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    iput-boolean p0, v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->initTap:Z

    .line 82
    .line 83
    iget-object p0, v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->secondsView:Lorg/schabi/newpipe/views/player/SecondsView;

    .line 84
    .line 85
    invoke-virtual {p0}, Lorg/schabi/newpipe/views/player/SecondsView;->stopAnimation()V

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_1
    return v5
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-boolean v1, v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapping:Z

    .line 7
    .line 8
    if-eqz v1, :cond_17

    .line 9
    .line 10
    iget-wide v1, v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapDelay:J

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v1, v1, v4

    .line 15
    .line 16
    if-lez v1, :cond_17

    .line 17
    .line 18
    iget-object v1, v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapControls:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    .line 19
    .line 20
    if-eqz v1, :cond_16

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->getDisplayPortion(Landroid/view/MotionEvent;)Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v11, v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->secondsView:Lorg/schabi/newpipe/views/player/SecondsView;

    .line 27
    .line 28
    iget-object v2, v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->performListener:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 29
    .line 30
    if-eqz v2, :cond_16

    .line 31
    .line 32
    iget-object v2, v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 35
    .line 36
    iget-object v4, v2, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 37
    .line 38
    invoke-virtual {v4}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/4 v6, 0x0

    .line 43
    const-string v12, "doubleTap"

    .line 44
    .line 45
    sget-object v7, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->NONE:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    .line 46
    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    iget-object v0, v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playerGestureListener:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    .line 50
    .line 51
    iput-boolean v6, v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapping:Z

    .line 52
    .line 53
    iget-object v2, v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapHandler:Landroid/os/Handler;

    .line 54
    .line 55
    invoke-virtual {v2, v12}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapControls:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->onDoubleTapFinished()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    sget-object v2, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->LEFT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    .line 67
    .line 68
    if-ne v0, v2, :cond_2

    .line 69
    .line 70
    iget-object v0, v4, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 71
    .line 72
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    const-wide/16 v8, 0x1f4

    .line 77
    .line 78
    cmp-long v0, v4, v8

    .line 79
    .line 80
    if-gez v0, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    sget-object v7, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->BACKWARD:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    sget-object v2, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->RIGHT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    .line 87
    .line 88
    if-ne v0, v2, :cond_4

    .line 89
    .line 90
    iget v0, v4, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 91
    .line 92
    const/16 v2, 0x80

    .line 93
    .line 94
    if-eq v0, v2, :cond_4

    .line 95
    .line 96
    iget-object v0, v4, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 97
    .line 98
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    .line 99
    .line 100
    .line 101
    move-result-wide v8

    .line 102
    iget-object v0, v4, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 103
    .line 104
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    cmp-long v0, v8, v4

    .line 109
    .line 110
    if-ltz v0, :cond_3

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    sget-object v7, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->FORWARD:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    .line 114
    .line 115
    :cond_4
    :goto_0
    invoke-virtual {v7}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->getDirectionAsBoolean()Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_16

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iget-boolean v2, v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->initTap:Z

    .line 126
    .line 127
    if-eqz v2, :cond_6

    .line 128
    .line 129
    iget-boolean v2, v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->wasForwarding:Z

    .line 130
    .line 131
    if-eq v2, v0, :cond_5

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_5
    const/4 v3, 0x1

    .line 135
    goto/16 :goto_8

    .line 136
    .line 137
    :cond_6
    :goto_1
    invoke-virtual {v11, v6}, Lorg/schabi/newpipe/views/player/SecondsView;->setSeconds(I)V

    .line 138
    .line 139
    .line 140
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 141
    .line 142
    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 143
    .line 144
    .line 145
    iget-object v4, v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->rootConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 146
    .line 147
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    const/4 v7, 0x7

    .line 155
    const/4 v8, 0x6

    .line 156
    if-eqz v0, :cond_7

    .line 157
    .line 158
    move v9, v8

    .line 159
    goto :goto_2

    .line 160
    :cond_7
    move v9, v7

    .line 161
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    iget-object v13, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 166
    .line 167
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    const/4 v14, -0x1

    .line 172
    if-eqz v10, :cond_9

    .line 173
    .line 174
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 183
    .line 184
    if-nez v5, :cond_8

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_8
    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 188
    .line 189
    const/high16 v10, -0x80000000

    .line 190
    .line 191
    packed-switch v9, :pswitch_data_0

    .line 192
    .line 193
    .line 194
    const-string/jumbo v0, "unknown constraint"

    .line 195
    .line 196
    .line 197
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return v6

    .line 201
    :pswitch_0
    const/high16 v9, -0x40800000    # -1.0f

    .line 202
    .line 203
    iput v9, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 204
    .line 205
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 206
    .line 207
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :pswitch_1
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 211
    .line 212
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 213
    .line 214
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 215
    .line 216
    iput v10, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :pswitch_2
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 220
    .line 221
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 222
    .line 223
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 224
    .line 225
    iput v10, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :pswitch_3
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 229
    .line 230
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 231
    .line 232
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 233
    .line 234
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 235
    .line 236
    iput v10, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :pswitch_4
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 240
    .line 241
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 242
    .line 243
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 244
    .line 245
    iput v10, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :pswitch_5
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 249
    .line 250
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 251
    .line 252
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 253
    .line 254
    iput v10, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :pswitch_6
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 258
    .line 259
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 260
    .line 261
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 262
    .line 263
    iput v10, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :pswitch_7
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 267
    .line 268
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 269
    .line 270
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 271
    .line 272
    iput v10, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 273
    .line 274
    :cond_9
    :goto_3
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    if-eqz v0, :cond_a

    .line 279
    .line 280
    move v9, v7

    .line 281
    goto :goto_4

    .line 282
    :cond_a
    move v9, v8

    .line 283
    :goto_4
    if-eqz v0, :cond_b

    .line 284
    .line 285
    move v10, v7

    .line 286
    goto :goto_5

    .line 287
    :cond_b
    move v10, v8

    .line 288
    :goto_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v15

    .line 292
    invoke-virtual {v13, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v15

    .line 296
    if-nez v15, :cond_c

    .line 297
    .line 298
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object v15

    .line 302
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 303
    .line 304
    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v13, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    :cond_c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 319
    .line 320
    if-nez v3, :cond_d

    .line 321
    .line 322
    goto :goto_6

    .line 323
    :cond_d
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 324
    .line 325
    const-string v5, "right to "

    .line 326
    .line 327
    const-string v13, " undefined"

    .line 328
    .line 329
    packed-switch v9, :pswitch_data_1

    .line 330
    .line 331
    .line 332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 333
    .line 334
    invoke-static {v9}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-static {v10}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string v1, " to "

    .line 351
    .line 352
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v1, " unknown"

    .line 359
    .line 360
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw v0

    .line 371
    :pswitch_8
    if-ne v10, v7, :cond_e

    .line 372
    .line 373
    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 374
    .line 375
    iput v14, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 376
    .line 377
    goto :goto_6

    .line 378
    :cond_e
    if-ne v10, v8, :cond_f

    .line 379
    .line 380
    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 381
    .line 382
    iput v14, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 383
    .line 384
    goto :goto_6

    .line 385
    :cond_f
    invoke-static {v10}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-static {v0, v13, v5}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    return v6

    .line 393
    :pswitch_9
    if-ne v10, v8, :cond_10

    .line 394
    .line 395
    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 396
    .line 397
    iput v14, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 398
    .line 399
    goto :goto_6

    .line 400
    :cond_10
    if-ne v10, v7, :cond_15

    .line 401
    .line 402
    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 403
    .line 404
    iput v14, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 405
    .line 406
    :goto_6
    invoke-virtual {v11}, Lorg/schabi/newpipe/views/player/SecondsView;->stopAnimation()V

    .line 407
    .line 408
    .line 409
    iget-boolean v3, v11, Lorg/schabi/newpipe/views/player/SecondsView;->animationsEnabled:Z

    .line 410
    .line 411
    if-eqz v3, :cond_11

    .line 412
    .line 413
    iget-object v3, v11, Lorg/schabi/newpipe/views/player/SecondsView;->firstAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 414
    .line 415
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 416
    .line 417
    .line 418
    goto :goto_7

    .line 419
    :cond_11
    iget-object v3, v11, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    .line 420
    .line 421
    iget-object v5, v3, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    .line 422
    .line 423
    const/high16 v6, 0x3f800000    # 1.0f

    .line 424
    .line 425
    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 426
    .line 427
    .line 428
    iget-object v5, v3, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    .line 429
    .line 430
    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 431
    .line 432
    .line 433
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    .line 434
    .line 435
    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 436
    .line 437
    .line 438
    :goto_7
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 439
    .line 440
    .line 441
    const/4 v2, 0x0

    .line 442
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 446
    .line 447
    .line 448
    iget-object v2, v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->circleClipTapView:Lorg/schabi/newpipe/views/player/CircleClipTapView;

    .line 449
    .line 450
    xor-int/lit8 v3, v0, 0x1

    .line 451
    .line 452
    iget-boolean v4, v2, Lorg/schabi/newpipe/views/player/CircleClipTapView;->isLeft:Z

    .line 453
    .line 454
    if-eq v4, v3, :cond_12

    .line 455
    .line 456
    iput-boolean v3, v2, Lorg/schabi/newpipe/views/player/CircleClipTapView;->isLeft:Z

    .line 457
    .line 458
    invoke-virtual {v2}, Lorg/schabi/newpipe/views/player/CircleClipTapView;->updatePathShape()V

    .line 459
    .line 460
    .line 461
    :cond_12
    invoke-virtual {v11, v0}, Lorg/schabi/newpipe/views/player/SecondsView;->setForwarding(Z)V

    .line 462
    .line 463
    .line 464
    iput-boolean v0, v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->wasForwarding:Z

    .line 465
    .line 466
    iget-boolean v2, v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->initTap:Z

    .line 467
    .line 468
    if-nez v2, :cond_5

    .line 469
    .line 470
    const/4 v3, 0x1

    .line 471
    iput-boolean v3, v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->initTap:Z

    .line 472
    .line 473
    :goto_8
    iget-object v2, v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->performListener:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 474
    .line 475
    if-eqz v2, :cond_13

    .line 476
    .line 477
    iget-object v2, v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 478
    .line 479
    check-cast v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 480
    .line 481
    iget-object v2, v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 482
    .line 483
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->fastSeekOverlay:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    .line 484
    .line 485
    const/4 v9, 0x0

    .line 486
    const/16 v10, 0x1c

    .line 487
    .line 488
    const-wide/16 v4, 0x1c2

    .line 489
    .line 490
    const/4 v6, 0x0

    .line 491
    const-wide/16 v7, 0x0

    .line 492
    .line 493
    invoke-static/range {v2 .. v10}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 494
    .line 495
    .line 496
    :cond_13
    invoke-virtual {v11}, Lorg/schabi/newpipe/views/player/SecondsView;->getSeconds()I

    .line 497
    .line 498
    .line 499
    move-result v2

    .line 500
    iget-object v4, v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->seekSecondsSupplier:Lkotlin/jvm/functions/Function0;

    .line 501
    .line 502
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v4

    .line 506
    check-cast v4, Ljava/lang/Number;

    .line 507
    .line 508
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 509
    .line 510
    .line 511
    move-result v4

    .line 512
    add-int/2addr v4, v2

    .line 513
    invoke-virtual {v11, v4}, Lorg/schabi/newpipe/views/player/SecondsView;->setSeconds(I)V

    .line 514
    .line 515
    .line 516
    iget-object v1, v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->performListener:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 517
    .line 518
    if-eqz v1, :cond_18

    .line 519
    .line 520
    iget-object v1, v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 523
    .line 524
    iget-object v2, v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playerGestureListener:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    .line 525
    .line 526
    const/4 v4, 0x1

    .line 527
    iput-boolean v4, v2, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapping:Z

    .line 528
    .line 529
    iget-object v4, v2, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapHandler:Landroid/os/Handler;

    .line 530
    .line 531
    invoke-virtual {v4, v12}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    new-instance v5, Landroidx/lifecycle/LiveData$1;

    .line 535
    .line 536
    const/16 v6, 0x15

    .line 537
    .line 538
    invoke-direct {v5, v2, v6}, Landroidx/lifecycle/LiveData$1;-><init>(Ljava/lang/Object;I)V

    .line 539
    .line 540
    .line 541
    const-wide/16 v6, 0x226

    .line 542
    .line 543
    invoke-static {v4, v5, v12, v6, v7}, Landroidx/work/OperationKt;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 544
    .line 545
    .line 546
    iget-object v1, v1, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 547
    .line 548
    if-eqz v0, :cond_14

    .line 549
    .line 550
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 551
    .line 552
    .line 553
    invoke-static {v1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->retrieveSeekDurationFromPreferences(Lorg/schabi/newpipe/player/Player;)I

    .line 554
    .line 555
    .line 556
    move-result v0

    .line 557
    int-to-long v4, v0

    .line 558
    iget-object v0, v1, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 559
    .line 560
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    .line 561
    .line 562
    .line 563
    move-result-wide v6

    .line 564
    add-long/2addr v6, v4

    .line 565
    invoke-virtual {v1, v6, v7}, Lorg/schabi/newpipe/player/Player;->seekTo(J)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->triggerProgressUpdate()V

    .line 569
    .line 570
    .line 571
    return v3

    .line 572
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    invoke-static {v1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->retrieveSeekDurationFromPreferences(Lorg/schabi/newpipe/player/Player;)I

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    neg-int v0, v0

    .line 580
    int-to-long v4, v0

    .line 581
    iget-object v0, v1, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 582
    .line 583
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    .line 584
    .line 585
    .line 586
    move-result-wide v6

    .line 587
    add-long/2addr v6, v4

    .line 588
    invoke-virtual {v1, v6, v7}, Lorg/schabi/newpipe/player/Player;->seekTo(J)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->triggerProgressUpdate()V

    .line 592
    .line 593
    .line 594
    return v3

    .line 595
    :cond_15
    invoke-static {v10}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    invoke-static {v0, v13, v5}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    return v6

    .line 603
    :pswitch_a
    invoke-static {v10}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    invoke-static {v0, v13, v5}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    return v6

    .line 611
    :pswitch_b
    invoke-static {v10}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    invoke-static {v0, v13, v5}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    return v6

    .line 619
    :pswitch_c
    invoke-static {v10}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-static {v0, v13, v5}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    return v6

    .line 627
    :pswitch_d
    invoke-static {v10}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    invoke-static {v0, v13, v5}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    return v6

    .line 635
    :pswitch_e
    const-string v0, "left to "

    .line 636
    .line 637
    invoke-static {v10}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    invoke-static {v1, v13, v0}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    return v6

    .line 645
    :cond_16
    const/4 v3, 0x1

    .line 646
    goto :goto_9

    .line 647
    :cond_17
    const/4 v3, 0x1

    .line 648
    invoke-virtual/range {p0 .. p1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->onDownNotDoubleTapping(Landroid/view/MotionEvent;)Z

    .line 649
    .line 650
    .line 651
    move-result v1

    .line 652
    if-eqz v1, :cond_18

    .line 653
    .line 654
    invoke-super/range {p0 .. p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    .line 655
    .line 656
    .line 657
    move-result v0

    .line 658
    return v0

    .line 659
    :cond_18
    :goto_9
    return v3

    .line 660
    nop

    .line 661
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public onDownNotDoubleTapping(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onSingleTap()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isControlsVisible()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-wide/16 v4, 0x96

    .line 12
    .line 13
    invoke-virtual {v0, v4, v5, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->player:Lorg/schabi/newpipe/player/Player;

    .line 18
    .line 19
    iget p0, p0, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 20
    .line 21
    const/16 v1, 0x80

    .line 22
    .line 23
    if-ne p0, v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showControls(J)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showControlsThenHide()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->gestureDetector:Landroid/view/GestureDetector;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0
.end method
