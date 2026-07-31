.class public final Lexpo/modules/image/BlurhashModelProvider;
.super Ljava/lang/Object;
.source "GlideModelProvider.kt"

# interfaces
.implements Lexpo/modules/image/GlideModelProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0016J\t\u0010\u000b\u001a\u00020\u0003H\u00c2\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c2\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c2\u0003J\'\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/image/BlurhashModelProvider;",
        "Lexpo/modules/image/GlideModelProvider;",
        "uri",
        "Landroid/net/Uri;",
        "width",
        "",
        "height",
        "<init>",
        "(Landroid/net/Uri;II)V",
        "getGlideModel",
        "Lexpo/modules/image/blurhash/BlurhashModel;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "expo-image_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final height:I

.field private final uri:Landroid/net/Uri;

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;II)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lexpo/modules/image/BlurhashModelProvider;->uri:Landroid/net/Uri;

    .line 41
    iput p2, p0, Lexpo/modules/image/BlurhashModelProvider;->width:I

    .line 42
    iput p3, p0, Lexpo/modules/image/BlurhashModelProvider;->height:I

    return-void
.end method

.method private final component1()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lexpo/modules/image/BlurhashModelProvider;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method private final component2()I
    .locals 1

    iget v0, p0, Lexpo/modules/image/BlurhashModelProvider;->width:I

    return v0
.end method

.method private final component3()I
    .locals 1

    iget v0, p0, Lexpo/modules/image/BlurhashModelProvider;->height:I

    return v0
.end method

.method public static synthetic copy$default(Lexpo/modules/image/BlurhashModelProvider;Landroid/net/Uri;IIILjava/lang/Object;)Lexpo/modules/image/BlurhashModelProvider;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lexpo/modules/image/BlurhashModelProvider;->uri:Landroid/net/Uri;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lexpo/modules/image/BlurhashModelProvider;->width:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lexpo/modules/image/BlurhashModelProvider;->height:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/image/BlurhashModelProvider;->copy(Landroid/net/Uri;II)Lexpo/modules/image/BlurhashModelProvider;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Landroid/net/Uri;II)Lexpo/modules/image/BlurhashModelProvider;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/image/BlurhashModelProvider;

    invoke-direct {v0, p1, p2, p3}, Lexpo/modules/image/BlurhashModelProvider;-><init>(Landroid/net/Uri;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/image/BlurhashModelProvider;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/image/BlurhashModelProvider;

    iget-object v1, p0, Lexpo/modules/image/BlurhashModelProvider;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lexpo/modules/image/BlurhashModelProvider;->uri:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lexpo/modules/image/BlurhashModelProvider;->width:I

    iget v3, p1, Lexpo/modules/image/BlurhashModelProvider;->width:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lexpo/modules/image/BlurhashModelProvider;->height:I

    iget p1, p1, Lexpo/modules/image/BlurhashModelProvider;->height:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getGlideModel()Lexpo/modules/image/blurhash/BlurhashModel;
    .locals 4

    .line 44
    new-instance v0, Lexpo/modules/image/blurhash/BlurhashModel;

    iget-object v1, p0, Lexpo/modules/image/BlurhashModelProvider;->uri:Landroid/net/Uri;

    iget v2, p0, Lexpo/modules/image/BlurhashModelProvider;->width:I

    iget v3, p0, Lexpo/modules/image/BlurhashModelProvider;->height:I

    invoke-direct {v0, v1, v2, v3}, Lexpo/modules/image/blurhash/BlurhashModel;-><init>(Landroid/net/Uri;II)V

    return-object v0
.end method

.method public bridge synthetic getGlideModel()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lexpo/modules/image/BlurhashModelProvider;->getGlideModel()Lexpo/modules/image/blurhash/BlurhashModel;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lexpo/modules/image/BlurhashModelProvider;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lexpo/modules/image/BlurhashModelProvider;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lexpo/modules/image/BlurhashModelProvider;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lexpo/modules/image/BlurhashModelProvider;->uri:Landroid/net/Uri;

    iget v1, p0, Lexpo/modules/image/BlurhashModelProvider;->width:I

    iget v2, p0, Lexpo/modules/image/BlurhashModelProvider;->height:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BlurhashModelProvider(uri="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", width="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
