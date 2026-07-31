.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Lcom/google/common/util/concurrent/AsyncFunction;
.implements Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/google/android/exoplayer2/Tracks;

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    .line 11
    .line 12
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->$r8$lambda$rk0wWr9yp8mV6J__-COD3zKeqwA(Lcom/google/android/exoplayer2/Tracks;Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Lcom/google/android/exoplayer2/video/VideoSize;

    .line 17
    .line 18
    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->$r8$lambda$oa40AwJkhMw5EmkFQNDJW0CwAzo(Lcom/google/android/exoplayer2/video/VideoSize;Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    check-cast p0, Lcom/google/android/exoplayer2/DeviceInfo;

    .line 25
    .line 26
    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    .line 27
    .line 28
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->$r8$lambda$5cQF-AUkmQwLSe0Uomgpxp8A0eM(Lcom/google/android/exoplayer2/DeviceInfo;Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_2
    check-cast p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 33
    .line 34
    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    .line 35
    .line 36
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->$r8$lambda$2ZqjH8teb5hUV2HTJRkYSAf2ZeI(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_3
    check-cast p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    .line 41
    .line 42
    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    .line 43
    .line 44
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->$r8$lambda$ns2sUkVpOGfop5Tb89ALDNj8qcA(Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_4
    check-cast p0, Lcom/google/android/exoplayer2/text/CueGroup;

    .line 49
    .line 50
    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    .line 51
    .line 52
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->$r8$lambda$OJbj5v29Kon1ai5QFW9cJA_kpZk(Lcom/google/android/exoplayer2/text/CueGroup;Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_5
    check-cast p0, Ljava/util/List;

    .line 57
    .line 58
    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    .line 59
    .line 60
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->$r8$lambda$-3vmozDMWNItTa66VvCLeYGKAAA(Ljava/util/List;Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_6
    check-cast p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 65
    .line 66
    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    .line 67
    .line 68
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->$r8$lambda$w-T8OIA9tN_KM85o88uVZqQC8r4(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_7
    check-cast p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 73
    .line 74
    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    .line 75
    .line 76
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->$r8$lambda$OXtS4AM5bwf8AQyFqyhDHCj2ifI(Lcom/google/android/exoplayer2/audio/AudioAttributes;Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
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

.method public invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->$r8$lambda$wS-Y5LfnuJPc9T5JBCUWRVq7foM(Lcom/google/android/exoplayer2/SimpleBasePlayer;Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/util/FlagSet;)V

    return-void
.end method
