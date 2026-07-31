.class public final synthetic Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/util/text/TextEllipsizer;

.field public final synthetic f$1:Ljava/util/function/Consumer;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/util/text/TextEllipsizer;Ljava/util/function/Consumer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/util/text/TextEllipsizer;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/Consumer;

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda3;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/Consumer;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/util/text/TextEllipsizer;

    .line 9
    .line 10
    iget-boolean v0, p1, Lorg/schabi/newpipe/util/text/TextEllipsizer;->isEllipsized:Z

    .line 11
    .line 12
    iget-boolean p0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda3;->f$2:Z

    .line 13
    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p1, Lorg/schabi/newpipe/util/text/TextEllipsizer;->stateChangeListener:Ljava/util/function/Consumer;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
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
