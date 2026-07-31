.class public final Lcom/skydoves/landscapist/coil3/CoilImageState$Success;
.super Lcom/skydoves/landscapist/coil3/CoilImageState;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skydoves/landscapist/coil3/CoilImageState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final dataSource:Lcom/skydoves/landscapist/DataSource;

.field private final image:Lcoil3/Image;


# direct methods
.method public constructor <init>(Lcoil3/Image;Lcom/skydoves/landscapist/DataSource;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/skydoves/landscapist/coil3/CoilImageState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;->image:Lcoil3/Image;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;->dataSource:Lcom/skydoves/landscapist/DataSource;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic copy$default(Lcom/skydoves/landscapist/coil3/CoilImageState$Success;Lcoil3/Image;Lcom/skydoves/landscapist/DataSource;ILjava/lang/Object;)Lcom/skydoves/landscapist/coil3/CoilImageState$Success;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;->image:Lcoil3/Image;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;->dataSource:Lcom/skydoves/landscapist/DataSource;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;->copy(Lcoil3/Image;Lcom/skydoves/landscapist/DataSource;)Lcom/skydoves/landscapist/coil3/CoilImageState$Success;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Lcoil3/Image;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;->image:Lcoil3/Image;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Lcom/skydoves/landscapist/DataSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;->dataSource:Lcom/skydoves/landscapist/DataSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Lcoil3/Image;Lcom/skydoves/landscapist/DataSource;)Lcom/skydoves/landscapist/coil3/CoilImageState$Success;
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;-><init>(Lcoil3/Image;Lcom/skydoves/landscapist/DataSource;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
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
    instance-of v1, p1, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;->image:Lcoil3/Image;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;->image:Lcoil3/Image;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;->dataSource:Lcom/skydoves/landscapist/DataSource;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;->dataSource:Lcom/skydoves/landscapist/DataSource;

    .line 27
    .line 28
    if-eq p0, p1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public final getDataSource()Lcom/skydoves/landscapist/DataSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;->dataSource:Lcom/skydoves/landscapist/DataSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getImage()Lcoil3/Image;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;->image:Lcoil3/Image;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getImageBitmap(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;->image:Lcoil3/Image;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const p0, -0x4d34ebb3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const v0, 0x609b3234

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, p2}, Lcom/skydoves/landscapist/coil3/PlatformsKt;->toImageBitmap(Lcoil3/Image;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;->image:Lcoil3/Image;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;->dataSource:Lcom/skydoves/landscapist/DataSource;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    add-int/2addr p0, v0

    .line 20
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;->image:Lcoil3/Image;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/CoilImageState$Success;->dataSource:Lcom/skydoves/landscapist/DataSource;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Success(image="

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, ", dataSource="

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
