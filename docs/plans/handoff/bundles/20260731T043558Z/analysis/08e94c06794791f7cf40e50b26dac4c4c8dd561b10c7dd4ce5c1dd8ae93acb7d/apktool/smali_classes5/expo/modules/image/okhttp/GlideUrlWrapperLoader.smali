.class public final Lexpo/modules/image/okhttp/GlideUrlWrapperLoader;
.super Ljava/lang/Object;
.source "GlideUrlWrapperLoader.kt"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/image/okhttp/GlideUrlWrapperLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Lexpo/modules/image/okhttp/GlideUrlWrapper;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J0\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/image/okhttp/GlideUrlWrapperLoader;",
        "Lcom/bumptech/glide/load/model/ModelLoader;",
        "Lexpo/modules/image/okhttp/GlideUrlWrapper;",
        "Ljava/io/InputStream;",
        "commonClient",
        "Lokhttp3/OkHttpClient;",
        "<init>",
        "(Lokhttp3/OkHttpClient;)V",
        "buildLoadData",
        "Lcom/bumptech/glide/load/model/ModelLoader$LoadData;",
        "model",
        "width",
        "",
        "height",
        "options",
        "Lcom/bumptech/glide/load/Options;",
        "handles",
        "",
        "Factory",
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
.method public static synthetic $r8$lambda$PHbya5kpxVUXOoksj5eKYnxgfAY(Lexpo/modules/image/okhttp/GlideUrlWrapper;JJZ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lexpo/modules/image/okhttp/GlideUrlWrapperLoader;->buildLoadData$lambda$1$lambda$0(Lexpo/modules/image/okhttp/GlideUrlWrapper;JJZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$juRaK0_CUlKQnqVa91yiYH2qPww(Lexpo/modules/image/okhttp/GlideUrlWrapper;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/image/okhttp/GlideUrlWrapperLoader;->buildLoadData$lambda$1(Lexpo/modules/image/okhttp/GlideUrlWrapper;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 1

    const-string v0, "commonClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lexpo/modules/image/okhttp/GlideUrlWrapperLoader;->commonClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private static final buildLoadData$lambda$1(Lexpo/modules/image/okhttp/GlideUrlWrapper;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/facebook/react/modules/network/ProgressResponseBody;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    .line 30
    new-instance v2, Lexpo/modules/image/okhttp/GlideUrlWrapperLoader$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lexpo/modules/image/okhttp/GlideUrlWrapperLoader$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/image/okhttp/GlideUrlWrapper;)V

    .line 31
    invoke-direct {v1, p1, v2}, Lcom/facebook/react/modules/network/ProgressResponseBody;-><init>(Lokhttp3/ResponseBody;Lcom/facebook/react/modules/network/ProgressListener;)V

    check-cast v1, Lokhttp3/ResponseBody;

    .line 30
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private static final buildLoadData$lambda$1$lambda$0(Lexpo/modules/image/okhttp/GlideUrlWrapper;JJZ)V
    .locals 6

    .line 32
    invoke-virtual {p0}, Lexpo/modules/image/okhttp/GlideUrlWrapper;->getProgressListener()Lexpo/modules/image/events/OkHttpProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lexpo/modules/image/events/OkHttpProgressListener;->onProgress(JJZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public buildLoadData(Lexpo/modules/image/okhttp/GlideUrlWrapper;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/image/okhttp/GlideUrlWrapper;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader;

    .line 23
    iget-object v1, p0, Lexpo/modules/image/okhttp/GlideUrlWrapperLoader;->commonClient:Lokhttp3/OkHttpClient;

    .line 24
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 25
    new-instance v2, Lexpo/modules/image/okhttp/GlideUrlWrapperLoader$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lexpo/modules/image/okhttp/GlideUrlWrapperLoader$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/image/okhttp/GlideUrlWrapper;)V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    check-cast v1, Lokhttp3/Call$Factory;

    .line 22
    invoke-direct {v0, v1}, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader;-><init>(Lokhttp3/Call$Factory;)V

    .line 41
    invoke-virtual {p1}, Lexpo/modules/image/okhttp/GlideUrlWrapper;->getGlideUrl()Lcom/bumptech/glide/load/model/GlideUrl;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader;->buildLoadData(Lcom/bumptech/glide/load/model/GlideUrl;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0

    .line 13
    check-cast p1, Lexpo/modules/image/okhttp/GlideUrlWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lexpo/modules/image/okhttp/GlideUrlWrapperLoader;->buildLoadData(Lexpo/modules/image/okhttp/GlideUrlWrapper;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public handles(Lexpo/modules/image/okhttp/GlideUrlWrapper;)Z
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    check-cast p1, Lexpo/modules/image/okhttp/GlideUrlWrapper;

    invoke-virtual {p0, p1}, Lexpo/modules/image/okhttp/GlideUrlWrapperLoader;->handles(Lexpo/modules/image/okhttp/GlideUrlWrapper;)Z

    move-result p1

    return p1
.end method
