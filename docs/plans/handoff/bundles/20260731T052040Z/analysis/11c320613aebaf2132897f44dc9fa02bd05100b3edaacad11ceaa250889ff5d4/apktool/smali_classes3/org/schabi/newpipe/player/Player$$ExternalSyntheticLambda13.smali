.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda13;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda13;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda13;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda13;->f$2:I

    .line 2
    .line 3
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 4
    .line 5
    iget v1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda13;->f$0:I

    .line 6
    .line 7
    iget p0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda13;->f$1:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, p0, v0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onUpdateProgress(III)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
