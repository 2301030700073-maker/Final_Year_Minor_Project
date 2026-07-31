.class public final Lexpo/modules/image/okhttp/GlideUrlWithCustomCacheKey;
.super Lcom/bumptech/glide/load/model/GlideUrl;
.source "ExpoImageOkHttpClientGlideModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u000b\u001a\u00020\u0003H\u0002J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/image/okhttp/GlideUrlWithCustomCacheKey;",
        "Lcom/bumptech/glide/load/model/GlideUrl;",
        "uri",
        "",
        "headers",
        "Lcom/bumptech/glide/load/model/Headers;",
        "cacheKey",
        "<init>",
        "(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;Ljava/lang/String;)V",
        "hashCode",
        "",
        "getBaseCacheKey",
        "getCacheKey",
        "equals",
        "",
        "other",
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
.field private final cacheKey:Ljava/lang/String;

.field private hashCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;Ljava/lang/String;)V
    .locals 1

    const-string v0, "cacheKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    .line 25
    iput-object p3, p0, Lexpo/modules/image/okhttp/GlideUrlWithCustomCacheKey;->cacheKey:Ljava/lang/String;

    return-void
.end method

.method private final getBaseCacheKey()Ljava/lang/String;
    .locals 2

    .line 35
    invoke-super {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCacheKey(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 41
    instance-of v0, p1, Lexpo/modules/image/okhttp/GlideUrlWithCustomCacheKey;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 42
    invoke-direct {p0}, Lexpo/modules/image/okhttp/GlideUrlWithCustomCacheKey;->getBaseCacheKey()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lexpo/modules/image/okhttp/GlideUrlWithCustomCacheKey;

    invoke-direct {p1}, Lexpo/modules/image/okhttp/GlideUrlWithCustomCacheKey;->getBaseCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lexpo/modules/image/okhttp/GlideUrlWithCustomCacheKey;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lexpo/modules/image/okhttp/GlideUrlWithCustomCacheKey;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 43
    :cond_1
    instance-of v0, p1, Lcom/bumptech/glide/load/model/GlideUrl;

    if-eqz v0, :cond_3

    .line 44
    invoke-direct {p0}, Lexpo/modules/image/okhttp/GlideUrlWithCustomCacheKey;->getBaseCacheKey()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lexpo/modules/image/okhttp/GlideUrlWithCustomCacheKey;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/GlideUrl;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    return v2
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lexpo/modules/image/okhttp/GlideUrlWithCustomCacheKey;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 51
    iget v0, p0, Lexpo/modules/image/okhttp/GlideUrlWithCustomCacheKey;->hashCode:I

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lexpo/modules/image/okhttp/GlideUrlWithCustomCacheKey;->getBaseCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lexpo/modules/image/okhttp/GlideUrlWithCustomCacheKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    .line 53
    invoke-virtual {p0}, Lexpo/modules/image/okhttp/GlideUrlWithCustomCacheKey;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lexpo/modules/image/okhttp/GlideUrlWithCustomCacheKey;->hashCode:I

    .line 55
    :cond_0
    iget v0, p0, Lexpo/modules/image/okhttp/GlideUrlWithCustomCacheKey;->hashCode:I

    return v0
.end method
