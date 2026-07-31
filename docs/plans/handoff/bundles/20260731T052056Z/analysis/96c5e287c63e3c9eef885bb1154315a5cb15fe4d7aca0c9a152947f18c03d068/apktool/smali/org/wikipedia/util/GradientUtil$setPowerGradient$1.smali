.class public final Lorg/wikipedia/util/GradientUtil$setPowerGradient$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $stopColors:[I

.field public final synthetic $x0:F

.field public final synthetic $x1:F

.field public final synthetic $y0:F

.field public final synthetic $y1:F


# direct methods
.method public constructor <init>(FFFF[I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/util/GradientUtil$setPowerGradient$1;->$x0:F

    .line 2
    .line 3
    iput p2, p0, Lorg/wikipedia/util/GradientUtil$setPowerGradient$1;->$y0:F

    .line 4
    .line 5
    iput p3, p0, Lorg/wikipedia/util/GradientUtil$setPowerGradient$1;->$x1:F

    .line 6
    .line 7
    iput p4, p0, Lorg/wikipedia/util/GradientUtil$setPowerGradient$1;->$y1:F

    .line 8
    .line 9
    iput-object p5, p0, Lorg/wikipedia/util/GradientUtil$setPowerGradient$1;->$stopColors:[I

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final resize(II)Landroid/graphics/Shader;
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    iget v1, p0, Lorg/wikipedia/util/GradientUtil$setPowerGradient$1;->$x0:F

    .line 5
    .line 6
    mul-float/2addr v1, p1

    .line 7
    int-to-float p2, p2

    .line 8
    iget v2, p0, Lorg/wikipedia/util/GradientUtil$setPowerGradient$1;->$y0:F

    .line 9
    .line 10
    mul-float/2addr v2, p2

    .line 11
    iget v3, p0, Lorg/wikipedia/util/GradientUtil$setPowerGradient$1;->$x1:F

    .line 12
    .line 13
    mul-float/2addr v3, p1

    .line 14
    iget p1, p0, Lorg/wikipedia/util/GradientUtil$setPowerGradient$1;->$y1:F

    .line 15
    .line 16
    mul-float v4, p2, p1

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 20
    .line 21
    iget-object v5, p0, Lorg/wikipedia/util/GradientUtil$setPowerGradient$1;->$stopColors:[I

    .line 22
    .line 23
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method
