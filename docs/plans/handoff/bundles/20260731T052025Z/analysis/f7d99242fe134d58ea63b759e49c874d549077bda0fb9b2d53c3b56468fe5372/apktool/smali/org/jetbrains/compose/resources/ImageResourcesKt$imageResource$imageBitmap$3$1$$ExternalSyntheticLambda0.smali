.class public final synthetic Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    new-instance v0, Lorg/jetbrains/compose/resources/ImageCache$Bitmap;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 11
    .line 12
    .line 13
    iget v2, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1$$ExternalSyntheticLambda0;->f$0:I

    .line 14
    .line 15
    iget p0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1$$ExternalSyntheticLambda0;->f$1:I

    .line 16
    .line 17
    if-le v2, p0, :cond_0

    .line 18
    .line 19
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 20
    .line 21
    iput p0, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 22
    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    array-length v2, p1

    .line 25
    invoke-static {p1, p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p1}, Lorg/jetbrains/compose/resources/ImageCache$Bitmap;-><init>(Landroidx/compose/ui/graphics/AndroidImageBitmap;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method
