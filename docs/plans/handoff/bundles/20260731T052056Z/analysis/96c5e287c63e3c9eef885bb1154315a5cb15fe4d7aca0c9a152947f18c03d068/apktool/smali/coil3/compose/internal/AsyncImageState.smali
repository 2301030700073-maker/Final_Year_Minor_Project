.class public final Lcoil3/compose/internal/AsyncImageState;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final imageLoader:Lcoil3/RealImageLoader;

.field public final model:Ljava/lang/Object;

.field public final modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;Lcoil3/RealImageLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/compose/internal/AsyncImageState;->model:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/compose/internal/AsyncImageState;->modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/compose/internal/AsyncImageState;->imageLoader:Lcoil3/RealImageLoader;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcoil3/compose/internal/AsyncImageState;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    check-cast p1, Lcoil3/compose/internal/AsyncImageState;

    .line 10
    .line 11
    iget-object v1, p1, Lcoil3/compose/internal/AsyncImageState;->modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 12
    .line 13
    iget-object v2, p0, Lcoil3/compose/internal/AsyncImageState;->modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcoil3/compose/internal/AsyncImageState;->model:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v3, p1, Lcoil3/compose/internal/AsyncImageState;->model:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v2, v1, v3}, Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object p0, p0, Lcoil3/compose/internal/AsyncImageState;->imageLoader:Lcoil3/RealImageLoader;

    .line 32
    .line 33
    iget-object p1, p1, Lcoil3/compose/internal/AsyncImageState;->imageLoader:Lcoil3/RealImageLoader;

    .line 34
    .line 35
    if-eq p0, p1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return v0

    .line 39
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/compose/internal/AsyncImageState;->modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    mul-int/lit8 v1, v1, 0x1f

    .line 8
    .line 9
    iget-object v2, p0, Lcoil3/compose/internal/AsyncImageState;->model:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;->hashCode(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object p0, p0, Lcoil3/compose/internal/AsyncImageState;->imageLoader:Lcoil3/RealImageLoader;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    add-int/2addr p0, v0

    .line 25
    return p0
.end method
