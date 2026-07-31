.class public abstract Lorg/jsoup/select/StructuralEvaluator;
.super Lorg/jsoup/select/Evaluator;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final evaluator:Lorg/jsoup/select/Evaluator;

.field public final threadMemo:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;


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
    const/16 v1, 0x9

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;-><init>(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 12
    .line 13
    const/4 v2, 0x5

    .line 14
    invoke-direct {v1, v0, v2}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;-><init>(Ljava/util/function/Supplier;I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lorg/jsoup/select/StructuralEvaluator;->threadMemo:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 18
    .line 19
    iput-object p1, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final memoMatches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 2

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
    sget-object v1, Lorg/jsoup/internal/Functions;->IdentityMapFunction:Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/Map;

    .line 16
    .line 17
    new-instance v1, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda1;-><init>(Lorg/jsoup/select/StructuralEvaluator;Lorg/jsoup/nodes/Element;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p2, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public final reset()V
    .locals 1

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
    check-cast v0, Ljava/util/IdentityHashMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator;->reset()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
