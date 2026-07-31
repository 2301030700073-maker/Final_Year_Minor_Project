.class public final synthetic Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;
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
    iput p1, p0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;->$r8$classId:I

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
    .locals 6

    .line 1
    iget p0, p0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/16 v0, 0x100

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPaused()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onCompleted()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 27
    .line 28
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onRenderedFirstFrame()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_2
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->setupAfterIntent()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_3
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 39
    .line 40
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onBlocked()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_4
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 45
    .line 46
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onFragmentListenerSet()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_5
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 51
    .line 52
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPausedSeek()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_6
    check-cast p1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 57
    .line 58
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isControlsVisible()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_0

    .line 63
    .line 64
    invoke-virtual {p1, v2, v3, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void

    .line 68
    :pswitch_7
    check-cast p1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 69
    .line 70
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->closeItemsList()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_8
    check-cast p1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 75
    .line 76
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->checkLandscape()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_9
    check-cast p1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 81
    .line 82
    sget-object p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 83
    .line 84
    invoke-virtual {p1, v2, v3, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_a
    check-cast p1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 89
    .line 90
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->toggleFullscreen()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_b
    check-cast p1, Landroid/view/View;

    .line 95
    .line 96
    sget-object p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :pswitch_c
    check-cast p1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 103
    .line 104
    sget-object p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 105
    .line 106
    iget-boolean p0, p1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 107
    .line 108
    if-eqz p0, :cond_1

    .line 109
    .line 110
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->toggleFullscreen()V

    .line 111
    .line 112
    .line 113
    :cond_1
    return-void

    .line 114
    :pswitch_d
    check-cast p1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 115
    .line 116
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->removeViewFromParent()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_e
    check-cast p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 121
    .line 122
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->saveImmediate()V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_f
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 127
    .line 128
    const/16 p0, 0x40

    .line 129
    .line 130
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_10
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 135
    .line 136
    const/4 p0, 0x2

    .line 137
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_11
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_12
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 148
    .line 149
    invoke-virtual {p1, v5}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_13
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_14
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 160
    .line 161
    invoke-virtual {p1, v5}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_15
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 166
    .line 167
    invoke-virtual {p1, v4}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :pswitch_16
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 172
    .line 173
    invoke-virtual {p1, v5}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_17
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 178
    .line 179
    invoke-virtual {p1, v4}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :pswitch_18
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 184
    .line 185
    const/16 p0, 0x400

    .line 186
    .line 187
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_19
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 192
    .line 193
    const/16 p0, 0x200

    .line 194
    .line 195
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :pswitch_1a
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 200
    .line 201
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :pswitch_1b
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 206
    .line 207
    const/16 p0, 0x80

    .line 208
    .line 209
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :pswitch_1c
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 214
    .line 215
    invoke-virtual {p1, v4}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
    iget v0, p0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;->$r8$classId:I

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
