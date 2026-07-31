.class public final Lcom/google/common/base/Splitter;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final limit:I

.field public final strategy:Lokhttp3/ConnectionPool;

.field public final trimmer:Lcom/google/common/base/CharMatcher$FastMatcher;


# direct methods
.method public constructor <init>(Lokhttp3/ConnectionPool;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/base/CharMatcher$Any;->INSTANCE$1:Lcom/google/common/base/CharMatcher$Any;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/common/base/Splitter;->strategy:Lokhttp3/ConnectionPool;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher$FastMatcher;

    .line 9
    .line 10
    const p1, 0x7fffffff

    .line 11
    .line 12
    .line 13
    iput p1, p0, Lcom/google/common/base/Splitter;->limit:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final splitToList(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Lokhttp3/ConnectionPool;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/google/common/base/Splitter$1$1;

    .line 10
    .line 11
    invoke-direct {v1, v0, p0, p1}, Lcom/google/common/base/Splitter$1$1;-><init>(Lokhttp3/ConnectionPool;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    new-instance p0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1$1;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1$1;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
