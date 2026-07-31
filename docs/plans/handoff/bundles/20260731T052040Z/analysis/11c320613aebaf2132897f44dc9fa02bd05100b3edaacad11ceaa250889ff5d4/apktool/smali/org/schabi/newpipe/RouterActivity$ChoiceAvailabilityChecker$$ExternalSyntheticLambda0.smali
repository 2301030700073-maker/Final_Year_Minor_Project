.class public final synthetic Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic and(Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/IntPredicate$-CC;->$default$and(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public synthetic negate()Ljava/util/function/IntPredicate;
    .locals 0

    .line 1
    invoke-static {p0}, Lj$/util/function/IntPredicate$-CC;->$default$negate(Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public synthetic or(Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/IntPredicate$-CC;->$default$or(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final test(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity$ChoiceAvailabilityChecker$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->isAvailableAndSelected(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
