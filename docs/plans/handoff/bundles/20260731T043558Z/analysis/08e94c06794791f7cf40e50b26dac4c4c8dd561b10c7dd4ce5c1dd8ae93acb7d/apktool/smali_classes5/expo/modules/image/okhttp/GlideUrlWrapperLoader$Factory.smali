.class public final Lexpo/modules/image/okhttp/GlideUrlWrapperLoader$Factory;
.super Ljava/lang/Object;
.source "GlideUrlWrapperLoader.kt"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/image/okhttp/GlideUrlWrapperLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Lexpo/modules/image/okhttp/GlideUrlWrapper;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001c\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/image/okhttp/GlideUrlWrapperLoader$Factory;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory;",
        "Lexpo/modules/image/okhttp/GlideUrlWrapper;",
        "Ljava/io/InputStream;",
        "commonClient",
        "Lokhttp3/OkHttpClient;",
        "<init>",
        "(Lokhttp3/OkHttpClient;)V",
        "build",
        "Lcom/bumptech/glide/load/model/ModelLoader;",
        "multiFactory",
        "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
        "teardown",
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
.field private final commonClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 1

    const-string v0, "commonClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lexpo/modules/image/okhttp/GlideUrlWrapperLoader$Factory;->commonClient:Lokhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lexpo/modules/image/okhttp/GlideUrlWrapper;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-string v0, "multiFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance p1, Lexpo/modules/image/okhttp/GlideUrlWrapperLoader;

    iget-object v0, p0, Lexpo/modules/image/okhttp/GlideUrlWrapperLoader$Factory;->commonClient:Lokhttp3/OkHttpClient;

    invoke-direct {p1, v0}, Lexpo/modules/image/okhttp/GlideUrlWrapperLoader;-><init>(Lokhttp3/OkHttpClient;)V

    check-cast p1, Lcom/bumptech/glide/load/model/ModelLoader;

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
