.class public final synthetic Lorg/schabi/newpipe/player/helper/AudioReactor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/helper/AudioReactor;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/helper/AudioReactor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/AudioReactor$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/helper/AudioReactor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/AudioReactor$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/helper/AudioReactor;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/AudioReactor;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Float;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
