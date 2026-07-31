.class public final Lexpo/modules/image/records/Source$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/image/records/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static getPixelCount(Lexpo/modules/image/records/Source;)D
    .locals 4

    .line 31
    invoke-interface {p0}, Lexpo/modules/image/records/Source;->getWidth()I

    move-result v0

    invoke-interface {p0}, Lexpo/modules/image/records/Source;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    invoke-interface {p0}, Lexpo/modules/image/records/Source;->getScale()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-interface {p0}, Lexpo/modules/image/records/Source;->getScale()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static usesPlaceholderContentFit(Lexpo/modules/image/records/Source;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
