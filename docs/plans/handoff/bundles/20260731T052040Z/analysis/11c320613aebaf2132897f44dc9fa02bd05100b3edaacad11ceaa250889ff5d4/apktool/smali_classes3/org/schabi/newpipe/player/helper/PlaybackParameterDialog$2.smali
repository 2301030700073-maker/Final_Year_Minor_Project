.class public final Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;
.super Lorg/schabi/newpipe/util/SimpleOnSeekBarChangeListener;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

.field public final synthetic val$newValueConsumer:Ljava/util/function/DoubleConsumer;

.field public final synthetic val$sliderStrategy:Lorg/schabi/newpipe/util/SliderStrategy;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;Lorg/schabi/newpipe/util/SliderStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;->this$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;->val$newValueConsumer:Ljava/util/function/DoubleConsumer;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;->val$sliderStrategy:Lorg/schabi/newpipe/util/SliderStrategy;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;->val$sliderStrategy:Lorg/schabi/newpipe/util/SliderStrategy;

    .line 4
    .line 5
    invoke-interface {p1, p2}, Lorg/schabi/newpipe/util/SliderStrategy;->valueOf(I)D

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    iget-object p3, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;->val$newValueConsumer:Ljava/util/function/DoubleConsumer;

    .line 10
    .line 11
    invoke-interface {p3, p1, p2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$2;->this$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->updateCallback()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
