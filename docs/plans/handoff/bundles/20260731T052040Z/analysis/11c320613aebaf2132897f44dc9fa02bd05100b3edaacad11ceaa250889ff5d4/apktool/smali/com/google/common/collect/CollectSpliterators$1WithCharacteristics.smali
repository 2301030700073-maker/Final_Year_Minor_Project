.class public final Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/util/Spliterator;


# instance fields
.field public final delegate:Lj$/util/Spliterator$OfInt;

.field public final synthetic val$extraCharacteristics:I

.field public final synthetic val$function:Ljava/util/function/IntFunction;


# direct methods
.method public constructor <init>(Lj$/util/Spliterator$OfInt;Ljava/util/function/IntFunction;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->val$function:Ljava/util/function/IntFunction;

    .line 5
    .line 6
    iput p3, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->val$extraCharacteristics:I

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->delegate:Lj$/util/Spliterator$OfInt;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->val$extraCharacteristics:I

    .line 2
    .line 3
    or-int/lit16 p0, p0, 0x4050

    .line 4
    .line 5
    return p0
.end method

.method public final estimateSize()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->delegate:Lj$/util/Spliterator$OfInt;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/Spliterator;->estimateSize()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->val$function:Ljava/util/function/IntFunction;

    .line 5
    .line 6
    invoke-direct {v0, p1, v2, v1}, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->delegate:Lj$/util/Spliterator$OfInt;

    .line 10
    .line 11
    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-interface {p0, v0}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m()V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public synthetic getExactSizeIfKnown()J
    .locals 2

    .line 1
    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->val$function:Ljava/util/function/IntFunction;

    .line 5
    .line 6
    invoke-direct {v0, p1, v2, v1}, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->delegate:Lj$/util/Spliterator$OfInt;

    .line 10
    .line 11
    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->delegate:Lj$/util/Spliterator$OfInt;

    .line 2
    .line 3
    invoke-interface {v0}, Lj$/util/Spliterator$OfInt;->trySplit()Lj$/util/Spliterator$OfInt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance v1, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->val$function:Ljava/util/function/IntFunction;

    .line 14
    .line 15
    iget p0, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->val$extraCharacteristics:I

    .line 16
    .line 17
    invoke-direct {v1, v0, v2, p0}, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;-><init>(Lj$/util/Spliterator$OfInt;Ljava/util/function/IntFunction;I)V

    .line 18
    .line 19
    .line 20
    return-object v1
.end method
