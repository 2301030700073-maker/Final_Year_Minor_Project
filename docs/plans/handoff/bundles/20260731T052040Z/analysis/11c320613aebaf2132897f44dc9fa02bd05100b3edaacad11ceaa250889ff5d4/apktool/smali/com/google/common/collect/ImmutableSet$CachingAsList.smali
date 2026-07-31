.class public abstract Lcom/google/common/collect/ImmutableSet$CachingAsList;
.super Lcom/google/common/collect/ImmutableSet;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public transient asList:Lcom/google/common/collect/ImmutableList;


# virtual methods
.method public final asList()Lcom/google/common/collect/ImmutableList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$CachingAsList;->asList:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$CachingAsList;->createAsList()Lcom/google/common/collect/ImmutableList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$CachingAsList;->asList:Lcom/google/common/collect/ImmutableList;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/RegularImmutableAsList;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableAsList;-><init>(Lcom/google/common/collect/ImmutableCollection;[Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
