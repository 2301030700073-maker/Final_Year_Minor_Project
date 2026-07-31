.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->$r8$lambda$Z9NUWa_6QXYrw0QqdfsKlmwIjME(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->$r8$lambda$bOGazydcqPog978vb_g5q9jwMzI(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :pswitch_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->$r8$lambda$jNFyOnL11Ub_hDLTi6yxZquXOOw(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_2
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->$r8$lambda$X2_mf1HQvcGu0T_SxEgrzZuFpjU(Landroid/content/Context;)Lcom/google/android/exoplayer2/RenderersFactory;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :pswitch_3
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->$r8$lambda$c7ckL0smTA3bpmiGzJBPoUjDcO8(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_4
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->$r8$lambda$4qhvUKIRrN-DysIrv45HiMI7TtI(Landroid/content/Context;)Lcom/google/android/exoplayer2/RenderersFactory;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
