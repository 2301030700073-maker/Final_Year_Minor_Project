.class public final Lcoil3/compose/AsyncImagePainter$Input;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final imageLoader:Lcoil3/RealImageLoader;

.field public final modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

.field public final request:Lcoil3/request/ImageRequest;


# direct methods
.method public constructor <init>(Lcoil3/RealImageLoader;Lcoil3/request/ImageRequest;Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter$Input;->imageLoader:Lcoil3/RealImageLoader;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/compose/AsyncImagePainter$Input;->request:Lcoil3/request/ImageRequest;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/compose/AsyncImagePainter$Input;->modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcoil3/compose/AsyncImagePainter$Input;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    check-cast p1, Lcoil3/compose/AsyncImagePainter$Input;

    .line 9
    .line 10
    iget-object v0, p1, Lcoil3/compose/AsyncImagePainter$Input;->imageLoader:Lcoil3/RealImageLoader;

    .line 11
    .line 12
    iget-object v1, p0, Lcoil3/compose/AsyncImagePainter$Input;->imageLoader:Lcoil3/RealImageLoader;

    .line 13
    .line 14
    if-eq v1, v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p1, Lcoil3/compose/AsyncImagePainter$Input;->modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 18
    .line 19
    iget-object v1, p0, Lcoil3/compose/AsyncImagePainter$Input;->modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 20
    .line 21
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter$Input;->request:Lcoil3/request/ImageRequest;

    .line 28
    .line 29
    iget-object p1, p1, Lcoil3/compose/AsyncImagePainter$Input;->request:Lcoil3/request/ImageRequest;

    .line 30
    .line 31
    invoke-virtual {v1, p0, p1}, Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    :goto_0
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/compose/AsyncImagePainter$Input;->imageLoader:Lcoil3/RealImageLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcoil3/compose/AsyncImagePainter$Input;->modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int/2addr v2, v0

    .line 16
    mul-int/lit8 v2, v2, 0x1f

    .line 17
    .line 18
    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter$Input;->request:Lcoil3/request/ImageRequest;

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;->hashCode(Ljava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    add-int/2addr p0, v2

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Input(imageLoader="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcoil3/compose/AsyncImagePainter$Input;->imageLoader:Lcoil3/RealImageLoader;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", request="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcoil3/compose/AsyncImagePainter$Input;->request:Lcoil3/request/ImageRequest;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", modelEqualityDelegate="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter$Input;->modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, ")"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
