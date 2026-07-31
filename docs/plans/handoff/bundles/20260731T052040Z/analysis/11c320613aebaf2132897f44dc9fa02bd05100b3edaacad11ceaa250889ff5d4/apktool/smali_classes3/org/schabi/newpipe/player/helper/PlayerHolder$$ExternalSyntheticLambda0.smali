.class public final synthetic Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x18

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-wide v0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    .line 23
    .line 24
    iget-wide v2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 25
    .line 26
    cmpl-double p1, v0, v2

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdateTempo(D)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->setAndUpdatePitch(D)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->updateCallback()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void

    .line 44
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 45
    .line 46
    check-cast p1, Lorg/schabi/newpipe/player/Player;

    .line 47
    .line 48
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->internalListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 49
    .line 50
    iput-object p0, p1, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 51
    .line 52
    iget-object p0, p1, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 53
    .line 54
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 55
    .line 56
    invoke-direct {v0, v2}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p1, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 63
    .line 64
    if-eqz p0, :cond_1

    .line 65
    .line 66
    iget-object v0, p1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object p0, p1, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    .line 74
    .line 75
    if-eqz p0, :cond_2

    .line 76
    .line 77
    iget-object v0, p1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-interface {p0, v0}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    invoke-direct {v0, p1, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/Player;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->notifyPlaybackUpdateToListeners()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->triggerProgressUpdate()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 104
    .line 105
    check-cast p1, Lorg/schabi/newpipe/player/Player;

    .line 106
    .line 107
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->serviceConnection:Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;

    .line 108
    .line 109
    iget-object v4, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    .line 110
    .line 111
    if-eqz v4, :cond_6

    .line 112
    .line 113
    if-nez p1, :cond_3

    .line 114
    .line 115
    check-cast v4, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 116
    .line 117
    iput-object v1, v4, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 118
    .line 119
    iget-object p0, v4, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 120
    .line 121
    if-eqz p0, :cond_6

    .line 122
    .line 123
    invoke-virtual {v4}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->restoreDefaultBrightness()V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_3
    iget-boolean v1, v0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->playAfterConnect:Z

    .line 128
    .line 129
    check-cast v4, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 130
    .line 131
    invoke-virtual {v4, p1, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->onPlayerConnected(Lorg/schabi/newpipe/player/Player;Z)V

    .line 132
    .line 133
    .line 134
    iput-boolean v3, v0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->playAfterConnect:Z

    .line 135
    .line 136
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->internalListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 137
    .line 138
    iput-object p0, p1, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 139
    .line 140
    iget-object p0, p1, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 141
    .line 142
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 143
    .line 144
    invoke-direct {v0, v2}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    .line 148
    .line 149
    .line 150
    iget-object p0, p1, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 151
    .line 152
    if-eqz p0, :cond_4

    .line 153
    .line 154
    iget-object v0, p1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 155
    .line 156
    if-eqz v0, :cond_4

    .line 157
    .line 158
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 159
    .line 160
    .line 161
    :cond_4
    iget-object p0, p1, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    .line 162
    .line 163
    if-eqz p0, :cond_5

    .line 164
    .line 165
    iget-object v0, p1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 166
    .line 167
    if-eqz v0, :cond_5

    .line 168
    .line 169
    invoke-interface {p0, v0}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 170
    .line 171
    .line 172
    :cond_5
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda0;

    .line 177
    .line 178
    invoke-direct {v0, p1, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/Player;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->notifyPlaybackUpdateToListeners()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->triggerProgressUpdate()V

    .line 188
    .line 189
    .line 190
    :cond_6
    :goto_0
    return-void

    .line 191
    :pswitch_2
    check-cast p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 192
    .line 193
    check-cast p1, Lorg/schabi/newpipe/player/Player;

    .line 194
    .line 195
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->internalListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 196
    .line 197
    iget-object v0, p1, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 198
    .line 199
    if-ne v0, p0, :cond_7

    .line 200
    .line 201
    iput-object v1, p1, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 202
    .line 203
    :cond_7
    return-void

    .line 204
    nop

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;->$r8$classId:I

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
