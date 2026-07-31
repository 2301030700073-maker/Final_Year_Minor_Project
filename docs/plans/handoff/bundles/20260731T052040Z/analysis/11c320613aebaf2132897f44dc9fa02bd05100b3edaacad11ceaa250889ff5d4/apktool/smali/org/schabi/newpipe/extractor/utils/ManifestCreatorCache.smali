.class public final Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private clearFactor:D

.field private final concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/io/Serializable;",
            "Lorg/schabi/newpipe/extractor/utils/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private maximumSize:I


# direct methods
.method public static synthetic $r8$lambda$dgKJRGSyQryYCxjm027ZJTCLp4w(Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;Ljava/util/Map$Entry;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    .line 8
    .line 9
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 10
    .line 11
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    .line 12
    .line 13
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final containsKey(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/utils/Pair;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 8
    .line 9
    return-object p0
.end method

.method public final keepNewestEntries(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sub-int/2addr v0, p1

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;

    .line 20
    .line 21
    invoke-direct {v2, v0, p1}, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;-><init>(ILjava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;

    .line 28
    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    int-to-double v0, v1

    .line 20
    iget-wide v2, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    .line 21
    .line 22
    mul-double/2addr v0, v2

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    long-to-int v0, v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 32
    :goto_0
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->keepNewestEntries(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 38
    .line 39
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1, p2}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 55
    .line 56
    return-void
.end method

.method public final setMaximumSize()V
    .locals 6

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    .line 2
    .line 3
    const/16 v1, 0x1f4

    .line 4
    .line 5
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const-wide v2, 0x407f400000000000L    # 500.0

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    iget-wide v4, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    .line 21
    .line 22
    mul-double/2addr v2, v4

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    long-to-int v0, v2

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 32
    :goto_0
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->keepNewestEntries(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iput v1, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    .line 36
    .line 37
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    .line 2
    .line 3
    iget v2, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v4, "ManifestCreatorCache[clearFactor="

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ", maximumSize="

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", concurrentHashMap="

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, "]"

    .line 34
    .line 35
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
