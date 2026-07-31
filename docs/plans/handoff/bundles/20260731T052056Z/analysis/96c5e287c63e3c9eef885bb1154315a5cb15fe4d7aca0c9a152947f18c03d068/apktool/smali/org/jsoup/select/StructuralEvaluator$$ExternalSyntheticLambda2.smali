.class public final synthetic Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/jsoup/select/StructuralEvaluator;

.field public final synthetic f$1:Lorg/jsoup/nodes/Element;


# direct methods
.method public synthetic constructor <init>(Lorg/jsoup/select/StructuralEvaluator;Lorg/jsoup/nodes/Element;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;->f$0:Lorg/jsoup/select/StructuralEvaluator;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;->f$1:Lorg/jsoup/nodes/Element;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lorg/jsoup/nodes/Node;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;->f$0:Lorg/jsoup/select/StructuralEvaluator;

    .line 4
    .line 5
    iget-object v0, v0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;->f$1:Lorg/jsoup/nodes/Element;

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
