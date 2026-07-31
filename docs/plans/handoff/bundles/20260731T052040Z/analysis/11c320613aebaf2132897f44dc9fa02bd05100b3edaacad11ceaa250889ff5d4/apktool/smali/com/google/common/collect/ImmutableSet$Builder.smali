.class public final Lcom/google/common/collect/ImmutableSet$Builder;
.super Lcom/google/common/collect/Maps;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public forceCopy:Z

.field public impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;->INSTANCE:Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/Maps;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->add$1(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final add$1(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->forceCopy:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 14
    .line 15
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->copy()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->forceCopy:Z

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 36
    .line 37
    return-void
.end method

.method public final build()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->forceCopy:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->review()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->build()Lcom/google/common/collect/ImmutableSet;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
