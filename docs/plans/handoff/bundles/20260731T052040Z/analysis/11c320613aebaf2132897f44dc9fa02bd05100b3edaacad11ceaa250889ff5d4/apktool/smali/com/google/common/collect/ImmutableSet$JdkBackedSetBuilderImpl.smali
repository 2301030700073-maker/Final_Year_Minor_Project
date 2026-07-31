.class public final Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;
.super Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final delegate:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;-><init>(Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    .line 5
    .line 6
    new-instance v0, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/common/collect/Maps;->capacity(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->delegate:Ljava/util/HashSet;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    :goto_0
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    .line 19
    .line 20
    if-ge p1, v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->delegate:Ljava/util/HashSet;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, [Ljava/lang/Object;

    .line 27
    .line 28
    aget-object v1, v1, p1

    .line 29
    .line 30
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->delegate:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->addDedupedElement(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-object p0
.end method

.method public final build()Lcom/google/common/collect/ImmutableSet;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/google/common/collect/JdkBackedImmutableSet;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, [Ljava/lang/Object;

    .line 13
    .line 14
    iget v2, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    .line 15
    .line 16
    invoke-static {v2, v1}, Lcom/google/common/collect/ImmutableList;->asImmutableList(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object p0, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->delegate:Ljava/util/HashSet;

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/JdkBackedImmutableSet;-><init>(Ljava/util/HashSet;Lcom/google/common/collect/ImmutableList;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    aget-object p0, p0, v0

    .line 32
    .line 33
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    sget v0, Lcom/google/common/collect/ImmutableSet;->$r8$clinit:I

    .line 37
    .line 38
    new-instance v0, Lcom/google/common/collect/SingletonImmutableSet;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_1
    sget p0, Lcom/google/common/collect/ImmutableSet;->$r8$clinit:I

    .line 45
    .line 46
    sget-object p0, Lcom/google/common/collect/RegularImmutableSet;->EMPTY:Lcom/google/common/collect/RegularImmutableSet;

    .line 47
    .line 48
    return-object p0
.end method

.method public final copy()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;-><init>(Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
