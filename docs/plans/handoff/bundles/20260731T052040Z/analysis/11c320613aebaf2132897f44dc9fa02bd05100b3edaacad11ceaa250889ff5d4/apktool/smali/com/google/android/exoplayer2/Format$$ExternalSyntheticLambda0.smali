.class public final synthetic Lcom/google/android/exoplayer2/Format$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic m()Landroid/media/metrics/LogSessionId;
    .locals 1

    .line 1
    sget-object v0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/Tracks$Group;->$r8$lambda$-5U4Vd2ct8VgoPhf6SgLr2Y-c2Y(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Tracks$Group;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/Tracks;->$r8$lambda$vYA5RM9DVNv_S8EIm2h75eWpGro(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Tracks;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :pswitch_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/Timeline$Window;->$r8$lambda$yqk5n84OlDC9DTin4ovqV23B95c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_3
    invoke-static {p1}, Lcom/google/android/exoplayer2/Timeline$Period;->$r8$lambda$r5_vvqa8cJhSPTKK5g5S1F0sadY(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :pswitch_4
    invoke-static {p1}, Lcom/google/android/exoplayer2/Timeline;->$r8$lambda$NGYAVvH1DGQT2uzF-d9G1CZ35pM(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :pswitch_5
    invoke-static {p1}, Lcom/google/android/exoplayer2/ThumbRating;->$r8$lambda$gjbcDhYZsg12wwvfvBSOoM0KvOQ(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/ThumbRating;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_6
    invoke-static {p1}, Lcom/google/android/exoplayer2/StarRating;->$r8$lambda$3U-PcXNC6yMkWYB4Djn0NvTHj24(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/StarRating;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :pswitch_7
    invoke-static {p1}, Lcom/google/android/exoplayer2/Rating;->$r8$lambda$3EoLwxJB4A25pAog2x-OLUUC2nk(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Rating;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :pswitch_8
    invoke-static {p1}, Lcom/google/android/exoplayer2/Player$PositionInfo;->$r8$lambda$Y6x1WIS9rGRZELX3_b0HE2QA1H4(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Player$PositionInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_9
    invoke-static {p1}, Lcom/google/android/exoplayer2/Player$Commands;->$r8$lambda$1MjYvs9QC6Ez5KfGcBxwgv5lWak(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Player$Commands;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_a
    invoke-static {p1}, Lcom/google/android/exoplayer2/PlaybackParameters;->$r8$lambda$Emm-7RfmlhRqcQf5RbiZCuXgDco(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_b
    new-instance p0, Lcom/google/android/exoplayer2/PlaybackException;

    .line 62
    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/PlaybackException;-><init>(Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_c
    invoke-static {p1}, Lcom/google/android/exoplayer2/PercentageRating;->$r8$lambda$O1AKYYBs0J_c1Ii_0sR8NCl4HfI(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/PercentageRating;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :pswitch_d
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata;->$r8$lambda$u6CJUeKuPZwcnS-T9ZbIffzh_jU(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaMetadata;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :pswitch_e
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->$r8$lambda$nYnhip21U5ox6ugd5TXEves4Z6I(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :pswitch_f
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->$r8$lambda$_-kiwWpfj1qO-PokPkATPl1ogjo(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :pswitch_10
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/StreamKey;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/offline/StreamKey;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :pswitch_11
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->$r8$lambda$ao7PcXmyqriERRSM5ToUtyIayLw(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :pswitch_12
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->$r8$lambda$SLcz1FXubVQ03pQY35SwlBIwYYM(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :pswitch_13
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->$r8$lambda$LWLNpx1CEgzVE8RmN-n3qH8o4f4(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :pswitch_14
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->$r8$lambda$aJWhmzO8-cRmnRmTwTOr0EZQejY(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :pswitch_15
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->$r8$lambda$dCi6oJEm_9YlC4rxMqZ6EISWjY0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :pswitch_16
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->$r8$lambda$S__QVsutFC117zAPgt_KKJAKcRY(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :pswitch_17
    invoke-static {p1}, Lcom/google/android/exoplayer2/HeartRating;->$r8$lambda$_r106e6zya8q8-i_eKUnQWRolPk(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/HeartRating;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :pswitch_18
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->$r8$lambda$1XKy3W7SelM_FKalWARGEC-f72M(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0

    .line 132
    :pswitch_19
    invoke-static {p1}, Lcom/google/android/exoplayer2/DeviceInfo;->$r8$lambda$Wbhor1IfAYAk9tLi9wfehF2yekg(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/DeviceInfo;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0

    .line 137
    :pswitch_1a
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format;->$r8$lambda$X-7nl7LhRRR7vAUSsFRuS_B99As(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Format;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_0
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
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player$Listener;->onRenderedFirstFrame()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->$r8$lambda$dx25bHsIfY8dRrSaGf2Kpws1Vss(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
