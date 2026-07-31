.class public final Lcoil3/compose/RealSubcomposeAsyncImageScope;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/foundation/layout/BoxScope;


# instance fields
.field public final alignment:Landroidx/compose/ui/Alignment;

.field public final contentDescription:Ljava/lang/String;

.field public final contentScale:Landroidx/compose/ui/layout/ContentScale;

.field public final painter:Lcoil3/compose/AsyncImagePainter;

.field public final parentScope:Landroidx/compose/foundation/layout/BoxScope;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/BoxScope;Lcoil3/compose/AsyncImagePainter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->parentScope:Landroidx/compose/foundation/layout/BoxScope;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->painter:Lcoil3/compose/AsyncImagePainter;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->contentDescription:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->alignment:Landroidx/compose/ui/Alignment;

    .line 11
    .line 12
    iput-object p5, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 2
    .line 3
    iget-object p0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->parentScope:Landroidx/compose/foundation/layout/BoxScope;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

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
    instance-of v1, p1, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    check-cast p1, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    .line 12
    .line 13
    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->parentScope:Landroidx/compose/foundation/layout/BoxScope;

    .line 14
    .line 15
    iget-object v3, p1, Lcoil3/compose/RealSubcomposeAsyncImageScope;->parentScope:Landroidx/compose/foundation/layout/BoxScope;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->painter:Lcoil3/compose/AsyncImagePainter;

    .line 25
    .line 26
    iget-object v3, p1, Lcoil3/compose/RealSubcomposeAsyncImageScope;->painter:Lcoil3/compose/AsyncImagePainter;

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->contentDescription:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lcoil3/compose/RealSubcomposeAsyncImageScope;->contentDescription:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->alignment:Landroidx/compose/ui/Alignment;

    .line 43
    .line 44
    iget-object v3, p1, Lcoil3/compose/RealSubcomposeAsyncImageScope;->alignment:Landroidx/compose/ui/Alignment;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_5
    iget-object p0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 54
    .line 55
    iget-object p1, p1, Lcoil3/compose/RealSubcomposeAsyncImageScope;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 56
    .line 57
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_6

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_6
    const/high16 p0, 0x3f800000    # 1.0f

    .line 65
    .line 66
    invoke-static {p0, p0}, Ljava/lang/Float;->compare(FF)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_7

    .line 71
    .line 72
    :goto_0
    return v2

    .line 73
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->parentScope:Landroidx/compose/foundation/layout/BoxScope;

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
    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->painter:Lcoil3/compose/AsyncImagePainter;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->contentDescription:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    add-int/2addr v1, v0

    .line 29
    mul-int/lit8 v1, v1, 0x1f

    .line 30
    .line 31
    iget-object v0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->alignment:Landroidx/compose/ui/Alignment;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v0, v1

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object p0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    add-int/2addr p0, v0

    .line 47
    mul-int/lit8 p0, p0, 0x1f

    .line 48
    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    add-int/2addr v0, p0

    .line 56
    mul-int/lit16 v0, v0, 0x3c1

    .line 57
    .line 58
    add-int/lit16 v0, v0, 0x4cf

    .line 59
    .line 60
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RealSubcomposeAsyncImageScope(parentScope="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->parentScope:Landroidx/compose/foundation/layout/BoxScope;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", painter="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->painter:Lcoil3/compose/AsyncImagePainter;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", contentDescription="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->contentDescription:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", alignment="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->alignment:Landroidx/compose/ui/Alignment;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", contentScale="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcoil3/compose/RealSubcomposeAsyncImageScope;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ", alpha=1.0, colorFilter=null, clipToBounds=true)"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
