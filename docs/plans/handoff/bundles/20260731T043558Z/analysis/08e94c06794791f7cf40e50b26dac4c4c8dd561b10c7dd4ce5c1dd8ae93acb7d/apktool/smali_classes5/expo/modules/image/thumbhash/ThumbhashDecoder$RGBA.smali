.class public final Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;
.super Ljava/lang/Object;
.source "ThumbhashDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/image/thumbhash/ThumbhashDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RGBA"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000cR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\n\"\u0004\u0008\u0010\u0010\u000cR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\n\"\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;",
        "",
        "r",
        "",
        "g",
        "b",
        "a",
        "<init>",
        "(FFFF)V",
        "getR",
        "()F",
        "setR",
        "(F)V",
        "getG",
        "setG",
        "getB",
        "setB",
        "getA",
        "setA",
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
.field private a:F

.field private b:F

.field private g:F

.field private r:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;->r:F

    iput p2, p0, Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;->g:F

    iput p3, p0, Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;->b:F

    iput p4, p0, Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;->a:F

    return-void
.end method


# virtual methods
.method public final getA()F
    .locals 1

    .line 304
    iget v0, p0, Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;->a:F

    return v0
.end method

.method public final getB()F
    .locals 1

    .line 304
    iget v0, p0, Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;->b:F

    return v0
.end method

.method public final getG()F
    .locals 1

    .line 304
    iget v0, p0, Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;->g:F

    return v0
.end method

.method public final getR()F
    .locals 1

    .line 304
    iget v0, p0, Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;->r:F

    return v0
.end method

.method public final setA(F)V
    .locals 0

    .line 304
    iput p1, p0, Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;->a:F

    return-void
.end method

.method public final setB(F)V
    .locals 0

    .line 304
    iput p1, p0, Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;->b:F

    return-void
.end method

.method public final setG(F)V
    .locals 0

    .line 304
    iput p1, p0, Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;->g:F

    return-void
.end method

.method public final setR(F)V
    .locals 0

    .line 304
    iput p1, p0, Lexpo/modules/image/thumbhash/ThumbhashDecoder$RGBA;->r:F

    return-void
.end method
