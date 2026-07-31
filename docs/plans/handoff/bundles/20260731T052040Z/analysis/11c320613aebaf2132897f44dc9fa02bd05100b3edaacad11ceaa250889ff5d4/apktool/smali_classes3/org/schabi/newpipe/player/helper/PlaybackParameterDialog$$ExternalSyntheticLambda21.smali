.class public final synthetic Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

.field public final synthetic f$1:Ljava/util/function/DoubleConsumer;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Ljava/util/function/DoubleConsumer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;->f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;->f$1:Ljava/util/function/DoubleConsumer;

    .line 7
    .line 8
    iput p3, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;->f$0:Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    .line 2
    .line 3
    iget-wide v0, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/text/UStringsKt;->percentToSemitones(D)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;->f$2:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    const/16 v1, -0xc

    .line 13
    .line 14
    const/16 v2, 0xc

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lokhttp3/Cookie$Companion;->clamp(III)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-double v0, v0

    .line 21
    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    .line 22
    .line 23
    div-double/2addr v0, v2

    .line 24
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 25
    .line 26
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$ExternalSyntheticLambda21;->f$1:Ljava/util/function/DoubleConsumer;

    .line 31
    .line 32
    invoke-interface {p0, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->updateCallback()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
