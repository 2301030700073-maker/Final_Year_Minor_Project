.class public Landroidx/core/util/Pools$SimplePool;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final pool:[Ljava/lang/Object;

.field public poolSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/core/util/Pools$SimplePool;->pool:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-lez p1, :cond_0

    .line 5
    .line 6
    new-array p1, p1, [Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/core/util/Pools$SimplePool;->pool:[Ljava/lang/Object;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "The max pool size must be > 0"

    .line 12
    .line 13
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/core/util/Pools$SimplePool;->poolSize:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/core/util/Pools$SimplePool;->pool:[Ljava/lang/Object;

    .line 9
    .line 10
    aget-object v3, v2, v0

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    aput-object v1, v2, v0

    .line 16
    .line 17
    iget v0, p0, Landroidx/core/util/Pools$SimplePool;->poolSize:I

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    iput v0, p0, Landroidx/core/util/Pools$SimplePool;->poolSize:I

    .line 22
    .line 23
    return-object v3

    .line 24
    :cond_0
    return-object v1
.end method

.method public release(Ljava/lang/Object;)V
    .locals 3

    .line 35
    iget v0, p0, Landroidx/core/util/Pools$SimplePool;->poolSize:I

    iget-object v1, p0, Landroidx/core/util/Pools$SimplePool;->pool:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 36
    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 37
    iput v0, p0, Landroidx/core/util/Pools$SimplePool;->poolSize:I

    :cond_0
    return-void
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/core/util/Pools$SimplePool;->poolSize:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    iget-object v3, p0, Landroidx/core/util/Pools$SimplePool;->pool:[Ljava/lang/Object;

    .line 6
    .line 7
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    aget-object v3, v3, v2

    .line 10
    .line 11
    if-eq v3, p1, :cond_0

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p0, "Already in the pool!"

    .line 17
    .line 18
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget v0, p0, Landroidx/core/util/Pools$SimplePool;->poolSize:I

    .line 23
    .line 24
    array-length v2, v3

    .line 25
    if-ge v0, v2, :cond_2

    .line 26
    .line 27
    aput-object p1, v3, v0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    add-int/2addr v0, p1

    .line 31
    iput v0, p0, Landroidx/core/util/Pools$SimplePool;->poolSize:I

    .line 32
    .line 33
    return p1

    .line 34
    :cond_2
    return v1
.end method
