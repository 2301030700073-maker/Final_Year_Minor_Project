.class public final Lexpo/modules/image/Image;
.super Lexpo/modules/kotlin/sharedobjects/SharedRef;
.source "Image.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\n\u001a\u00020\u000bH\u0016R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/image/Image;",
        "Lexpo/modules/kotlin/sharedobjects/SharedRef;",
        "Landroid/graphics/drawable/Drawable;",
        "ref",
        "<init>",
        "(Landroid/graphics/drawable/Drawable;)V",
        "nativeRefType",
        "",
        "getNativeRefType",
        "()Ljava/lang/String;",
        "getAdditionalMemoryPressure",
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
.field private final nativeRefType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string v0, "ref"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 7
    invoke-direct {p0, p1, v0, v1, v0}, Lexpo/modules/kotlin/sharedobjects/SharedRef;-><init>(Ljava/lang/Object;Lexpo/modules/kotlin/RuntimeContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    const-string p1, "image"

    iput-object p1, p0, Lexpo/modules/image/Image;->nativeRefType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdditionalMemoryPressure()I
    .locals 2

    .line 11
    invoke-virtual {p0}, Lexpo/modules/image/Image;->getRef()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 12
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 13
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    return v0

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    mul-int/2addr v1, v0

    return v1
.end method

.method public getNativeRefType()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lexpo/modules/image/Image;->nativeRefType:Ljava/lang/String;

    return-object v0
.end method
