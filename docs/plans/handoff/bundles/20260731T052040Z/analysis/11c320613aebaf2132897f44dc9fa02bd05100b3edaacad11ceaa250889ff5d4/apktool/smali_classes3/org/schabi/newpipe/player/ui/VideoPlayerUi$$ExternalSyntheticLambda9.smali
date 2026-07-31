.class public final synthetic Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-wide p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda9;->f$1:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iget-wide v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda9;->f$1:J

    .line 4
    .line 5
    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v3, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 11
    .line 12
    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->$r8$lambda$4Ri-0gqhdQVJ3lQ2Ocyt3Pmpp4A(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;J)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 17
    .line 18
    const-wide/16 v4, 0x12c

    .line 19
    .line 20
    invoke-virtual {v3, v4, v5, v1, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    check-cast v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iget-wide v6, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda9;->f$1:J

    .line 28
    .line 29
    invoke-virtual {v3, v6, v7, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showHideShadow(JZ)V

    .line 30
    .line 31
    .line 32
    iget-object p0, v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 33
    .line 34
    iget-object v4, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    .line 35
    .line 36
    new-instance v11, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;

    .line 37
    .line 38
    const/16 p0, 0xe

    .line 39
    .line 40
    invoke-direct {v11, v3, p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 41
    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    sget-object v8, Lorg/schabi/newpipe/ktx/AnimationType;->ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 45
    .line 46
    const-wide/16 v9, 0x0

    .line 47
    .line 48
    invoke-static/range {v4 .. v11}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
