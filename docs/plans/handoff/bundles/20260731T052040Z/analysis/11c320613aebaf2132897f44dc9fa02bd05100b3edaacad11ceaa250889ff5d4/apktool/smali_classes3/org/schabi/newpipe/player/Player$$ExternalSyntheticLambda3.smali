.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Landroid/widget/TextView;

    .line 8
    .line 9
    sget-object p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->instance:Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    new-instance p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;

    .line 14
    .line 15
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-boolean v0, p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->isLongPressed:Z

    .line 19
    .line 20
    sput-object p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->instance:Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;

    .line 21
    .line 22
    new-instance v0, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->longClickHandler:Landroid/os/Handler;

    .line 32
    .line 33
    :cond_0
    sget-object p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->instance:Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_0
    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayer;

    .line 40
    .line 41
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->clearVideoSurface()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_1
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 46
    .line 47
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->destroyPlayer()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->destroy()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_2
    check-cast p1, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    .line 55
    .line 56
    invoke-interface {p1}, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;->onViewCreated()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_3
    check-cast p1, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    .line 61
    .line 62
    invoke-interface {p1}, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;->onScreenRotationButtonClicked()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_4
    check-cast p1, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    .line 67
    .line 68
    invoke-interface {p1}, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;->hideSystemUiIfNeeded()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_5
    check-cast p1, Landroid/view/Window;

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const/16 v0, 0x700

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 87
    .line 88
    .line 89
    const/16 p0, 0x400

    .line 90
    .line 91
    invoke-virtual {p1, p0}, Landroid/view/Window;->clearFlags(I)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_6
    check-cast p1, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    .line 96
    .line 97
    invoke-interface {p1}, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;->onMoreOptionsLongClicked()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_7
    check-cast p1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 102
    .line 103
    const-wide/16 v0, 0x0

    .line 104
    .line 105
    invoke-virtual {p1, v0, v1, v0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_8
    check-cast p1, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;

    .line 110
    .line 111
    iget-object p0, p1, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;->notificationUtil:Lorg/schabi/newpipe/player/notification/NotificationUtil;

    .line 112
    .line 113
    iget-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 114
    .line 115
    if-nez p1, :cond_1

    .line 116
    .line 117
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotification()Landroidx/core/app/NotificationCompat$Builder;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iput-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 122
    .line 123
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->updateNotification()V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 127
    .line 128
    iget-object p1, p1, Lorg/schabi/newpipe/player/Player;->service:Lorg/schabi/newpipe/player/PlayerService;

    .line 129
    .line 130
    iget-object p0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 131
    .line 132
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-static {p1, p0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->startForeground(Lorg/schabi/newpipe/player/PlayerService;Landroid/app/Notification;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :pswitch_9
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 141
    .line 142
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPrepared()V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :pswitch_a
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 147
    .line 148
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->initPlayer()V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :pswitch_b
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 153
    .line 154
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->initPlayback()V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :pswitch_c
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 159
    .line 160
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPlayQueueEdited()V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :pswitch_d
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 165
    .line 166
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->smoothStopForImmediateReusing()V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :pswitch_e
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 171
    .line 172
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPlaying()V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :pswitch_f
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 177
    .line 178
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->destroyPlayer()V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :pswitch_10
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 183
    .line 184
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onBuffering()V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
