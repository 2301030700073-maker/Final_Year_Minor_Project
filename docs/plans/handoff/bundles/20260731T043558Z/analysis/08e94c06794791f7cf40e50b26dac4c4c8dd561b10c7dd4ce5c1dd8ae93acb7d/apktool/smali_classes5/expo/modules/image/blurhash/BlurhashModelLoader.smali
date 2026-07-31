.class public final Lexpo/modules/image/blurhash/BlurhashModelLoader;
.super Ljava/lang/Object;
.source "BlurhashModelLoader.kt"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Lexpo/modules/image/blurhash/BlurhashModel;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0002H\u0016J.\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J?\u0010\u0010\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u0002H\u00112\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u0002H\u00110\u0017H\u0002\u00a2\u0006\u0002\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lexpo/modules/image/blurhash/BlurhashModelLoader;",
        "Lcom/bumptech/glide/load/model/ModelLoader;",
        "Lexpo/modules/image/blurhash/BlurhashModel;",
        "Landroid/graphics/Bitmap;",
        "<init>",
        "()V",
        "handles",
        "",
        "model",
        "buildLoadData",
        "Lcom/bumptech/glide/load/model/ModelLoader$LoadData;",
        "width",
        "",
        "height",
        "options",
        "Lcom/bumptech/glide/load/Options;",
        "getPath",
        "T",
        "uri",
        "Landroid/net/Uri;",
        "index",
        "default",
        "converter",
        "Lkotlin/Function1;",
        "",
        "(Landroid/net/Uri;ILjava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
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


# direct methods
.method public static synthetic $r8$lambda$FbAUhklWfE-HeNuni3wQS-16ftU(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lexpo/modules/image/blurhash/BlurhashModelLoader;->buildLoadData$lambda$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final buildLoadData$lambda$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getPath(Landroid/net/Uri;ILjava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "ITT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const-string v0, "getPathSegments(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    return-object p3

    .line 27
    :cond_0
    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public buildLoadData(Lexpo/modules/image/blurhash/BlurhashModel;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/image/blurhash/BlurhashModel;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-string p2, "model"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "options"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lexpo/modules/image/blurhash/BlurhashModel;->getUri()Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lexpo/modules/image/blurhash/BlurhashModelLoader$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lexpo/modules/image/blurhash/BlurhashModelLoader$$ExternalSyntheticLambda0;-><init>()V

    const/4 p4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p4, v0, p3}, Lexpo/modules/image/blurhash/BlurhashModelLoader;->getPath(Landroid/net/Uri;ILjava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 19
    new-instance p3, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 20
    new-instance p4, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-direct {p4, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    check-cast p4, Lcom/bumptech/glide/load/Key;

    .line 21
    new-instance v0, Lexpo/modules/image/blurhash/BlurHashFetcher;

    invoke-virtual {p1}, Lexpo/modules/image/blurhash/BlurhashModel;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lexpo/modules/image/blurhash/BlurhashModel;->getHeight()I

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p2, v1, p1, v2}, Lexpo/modules/image/blurhash/BlurHashFetcher;-><init>(Ljava/lang/String;IIF)V

    check-cast v0, Lcom/bumptech/glide/load/data/DataFetcher;

    .line 19
    invoke-direct {p3, p4, v0}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p3
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0

    .line 9
    check-cast p1, Lexpo/modules/image/blurhash/BlurhashModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lexpo/modules/image/blurhash/BlurhashModelLoader;->buildLoadData(Lexpo/modules/image/blurhash/BlurhashModel;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public handles(Lexpo/modules/image/blurhash/BlurhashModel;)Z
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 9
    check-cast p1, Lexpo/modules/image/blurhash/BlurhashModel;

    invoke-virtual {p0, p1}, Lexpo/modules/image/blurhash/BlurhashModelLoader;->handles(Lexpo/modules/image/blurhash/BlurhashModel;)Z

    move-result p1

    return p1
.end method
