.class public final Lcom/google/android/exoplayer2/util/GlTextureInfo;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final UNSET:Lcom/google/android/exoplayer2/util/GlTextureInfo;


# instance fields
.field private final fboId:I

.field private final height:I

.field private isReleased:Z

.field private final rboId:I

.field private final texId:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/util/GlTextureInfo;

    .line 2
    .line 3
    const/4 v4, -0x1

    .line 4
    const/4 v5, -0x1

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, -0x1

    .line 7
    const/4 v3, -0x1

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/GlTextureInfo;-><init>(IIIII)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->UNSET:Lcom/google/android/exoplayer2/util/GlTextureInfo;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->texId:I

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->fboId:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->rboId:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->width:I

    .line 11
    .line 12
    iput p5, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->height:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getFboId()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->isReleased:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->fboId:I

    .line 9
    .line 10
    return p0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->isReleased:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->height:I

    .line 9
    .line 10
    return p0
.end method

.method public getRboId()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->isReleased:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->rboId:I

    .line 9
    .line 10
    return p0
.end method

.method public getTexId()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->isReleased:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->texId:I

    .line 9
    .line 10
    return p0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->isReleased:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->width:I

    .line 9
    .line 10
    return p0
.end method

.method public release()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->isReleased:Z

    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->texId:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->deleteTexture(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->fboId:I

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->deleteFbo(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget p0, p0, Lcom/google/android/exoplayer2/util/GlTextureInfo;->rboId:I

    .line 20
    .line 21
    if-eq p0, v1, :cond_2

    .line 22
    .line 23
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/GlUtil;->deleteRbo(I)V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method
