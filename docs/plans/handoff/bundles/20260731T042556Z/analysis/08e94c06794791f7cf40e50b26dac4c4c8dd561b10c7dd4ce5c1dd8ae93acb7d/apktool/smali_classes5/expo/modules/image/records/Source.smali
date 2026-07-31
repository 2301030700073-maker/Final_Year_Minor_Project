.class public interface abstract Lexpo/modules/image/records/Source;
.super Ljava/lang/Object;
.source "SourceMap.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/image/records/Source$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u0012\u0010\u0008\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000b\u0082\u0001\u0002\u0016\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/image/records/Source;",
        "",
        "width",
        "",
        "getWidth",
        "()I",
        "height",
        "getHeight",
        "scale",
        "",
        "getScale",
        "()D",
        "pixelCount",
        "getPixelCount",
        "createGlideModelProvider",
        "Lexpo/modules/image/GlideModelProvider;",
        "context",
        "Landroid/content/Context;",
        "createGlideOptions",
        "Lcom/bumptech/glide/request/RequestOptions;",
        "usesPlaceholderContentFit",
        "",
        "Lexpo/modules/image/records/DecodedSource;",
        "Lexpo/modules/image/records/SourceMap;",
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


# virtual methods
.method public abstract createGlideModelProvider(Landroid/content/Context;)Lexpo/modules/image/GlideModelProvider;
.end method

.method public abstract createGlideOptions(Landroid/content/Context;)Lcom/bumptech/glide/request/RequestOptions;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getPixelCount()D
.end method

.method public abstract getScale()D
.end method

.method public abstract getWidth()I
.end method

.method public abstract usesPlaceholderContentFit()Z
.end method
