.class Lorg/mozilla/javascript/optimizer/Block$FatBlock;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/optimizer/Block;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FatBlock"
.end annotation


# instance fields
.field private final predecessors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/mozilla/javascript/optimizer/Block$FatBlock;",
            ">;"
        }
    .end annotation
.end field

.field realBlock:Lorg/mozilla/javascript/optimizer/Block;

.field private final successors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/mozilla/javascript/optimizer/Block$FatBlock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->successors:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->predecessors:Ljava/util/HashSet;

    .line 17
    .line 18
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;-><init>()V

    return-void
.end method

.method private static reduceToArray(Ljava/util/Set;)[Lorg/mozilla/javascript/optimizer/Block;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/mozilla/javascript/optimizer/Block$FatBlock;",
            ">;)[",
            "Lorg/mozilla/javascript/optimizer/Block;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    new-array v0, v0, [Lorg/mozilla/javascript/optimizer/Block;

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    .line 29
    .line 30
    add-int/lit8 v3, v1, 0x1

    .line 31
    .line 32
    iget-object v2, v2, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->realBlock:Lorg/mozilla/javascript/optimizer/Block;

    .line 33
    .line 34
    aput-object v2, v0, v1

    .line 35
    .line 36
    move v1, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v0

    .line 39
    :cond_1
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method


# virtual methods
.method public addPredecessor(Lorg/mozilla/javascript/optimizer/Block$FatBlock;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->predecessors:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addSuccessor(Lorg/mozilla/javascript/optimizer/Block$FatBlock;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->successors:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getPredecessors()[Lorg/mozilla/javascript/optimizer/Block;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->predecessors:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-static {p0}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->reduceToArray(Ljava/util/Set;)[Lorg/mozilla/javascript/optimizer/Block;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getSuccessors()[Lorg/mozilla/javascript/optimizer/Block;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->successors:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-static {p0}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->reduceToArray(Ljava/util/Set;)[Lorg/mozilla/javascript/optimizer/Block;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
