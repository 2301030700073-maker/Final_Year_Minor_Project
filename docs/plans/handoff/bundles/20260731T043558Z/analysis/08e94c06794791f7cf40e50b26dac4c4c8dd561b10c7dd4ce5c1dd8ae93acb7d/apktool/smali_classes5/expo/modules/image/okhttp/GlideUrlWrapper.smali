.class public final Lexpo/modules/image/okhttp/GlideUrlWrapper;
.super Ljava/lang/Object;
.source "ExpoImageOkHttpClientGlideModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/image/okhttp/GlideUrlWrapper;",
        "",
        "glideUrl",
        "Lcom/bumptech/glide/load/model/GlideUrl;",
        "<init>",
        "(Lcom/bumptech/glide/load/model/GlideUrl;)V",
        "getGlideUrl",
        "()Lcom/bumptech/glide/load/model/GlideUrl;",
        "progressListener",
        "Lexpo/modules/image/events/OkHttpProgressListener;",
        "getProgressListener",
        "()Lexpo/modules/image/events/OkHttpProgressListener;",
        "setProgressListener",
        "(Lexpo/modules/image/events/OkHttpProgressListener;)V",
        "toString",
        "",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

.field private progressListener:Lexpo/modules/image/events/OkHttpProgressListener;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/GlideUrl;)V
    .locals 1

    const-string v0, "glideUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/image/okhttp/GlideUrlWrapper;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/image/okhttp/GlideUrlWrapper;Lcom/bumptech/glide/load/model/GlideUrl;ILjava/lang/Object;)Lexpo/modules/image/okhttp/GlideUrlWrapper;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lexpo/modules/image/okhttp/GlideUrlWrapper;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    :cond_0
    invoke-virtual {p0, p1}, Lexpo/modules/image/okhttp/GlideUrlWrapper;->copy(Lcom/bumptech/glide/load/model/GlideUrl;)Lexpo/modules/image/okhttp/GlideUrlWrapper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/bumptech/glide/load/model/GlideUrl;
    .locals 1

    iget-object v0, p0, Lexpo/modules/image/okhttp/GlideUrlWrapper;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    return-object v0
.end method

.method public final copy(Lcom/bumptech/glide/load/model/GlideUrl;)Lexpo/modules/image/okhttp/GlideUrlWrapper;
    .locals 1

    const-string v0, "glideUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/image/okhttp/GlideUrlWrapper;

    invoke-direct {v0, p1}, Lexpo/modules/image/okhttp/GlideUrlWrapper;-><init>(Lcom/bumptech/glide/load/model/GlideUrl;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/image/okhttp/GlideUrlWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/image/okhttp/GlideUrlWrapper;

    iget-object v1, p0, Lexpo/modules/image/okhttp/GlideUrlWrapper;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    iget-object p1, p1, Lexpo/modules/image/okhttp/GlideUrlWrapper;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getGlideUrl()Lcom/bumptech/glide/load/model/GlideUrl;
    .locals 1

    .line 63
    iget-object v0, p0, Lexpo/modules/image/okhttp/GlideUrlWrapper;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    return-object v0
.end method

.method public final getProgressListener()Lexpo/modules/image/events/OkHttpProgressListener;
    .locals 1

    .line 64
    iget-object v0, p0, Lexpo/modules/image/okhttp/GlideUrlWrapper;->progressListener:Lexpo/modules/image/events/OkHttpProgressListener;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lexpo/modules/image/okhttp/GlideUrlWrapper;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/model/GlideUrl;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setProgressListener(Lexpo/modules/image/events/OkHttpProgressListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lexpo/modules/image/okhttp/GlideUrlWrapper;->progressListener:Lexpo/modules/image/events/OkHttpProgressListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    iget-object v0, p0, Lexpo/modules/image/okhttp/GlideUrlWrapper;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/model/GlideUrl;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
