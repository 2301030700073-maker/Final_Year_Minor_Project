.class public abstract Lorg/jsoup/select/StructuralEvaluator;
.super Lorg/jsoup/select/Evaluator;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final evaluator:Lorg/jsoup/select/Evaluator;

.field public final threadMemo:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

.field public wantsNodes:Z


# direct methods
.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-direct {v1, v0, v2}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;-><init>(Ljava/util/function/Supplier;I)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lorg/jsoup/select/StructuralEvaluator;->threadMemo:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/jsoup/select/Evaluator;->wantsNodes()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput-boolean p1, p0, Lorg/jsoup/select/StructuralEvaluator;->wantsNodes:Z

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public abstract evaluateMatch(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z
.end method

.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/StructuralEvaluator;->evaluateMatch(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/LeafNode;)Z
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/StructuralEvaluator;->evaluateMatch(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z

    move-result p0

    return p0
.end method

.method public final memoMatches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator;->threadMemo:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Map;

    .line 8
    .line 9
    new-instance v1, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/16 v2, 0xb

    .line 12
    .line 13
    invoke-direct {v1, v2}, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/Map;

    .line 21
    .line 22
    new-instance v1, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, p0, p1, v2}, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p2, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator;->threadMemo:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator;->reset()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final wantsNodes()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/jsoup/select/StructuralEvaluator;->wantsNodes:Z

    .line 2
    .line 3
    return p0
.end method
