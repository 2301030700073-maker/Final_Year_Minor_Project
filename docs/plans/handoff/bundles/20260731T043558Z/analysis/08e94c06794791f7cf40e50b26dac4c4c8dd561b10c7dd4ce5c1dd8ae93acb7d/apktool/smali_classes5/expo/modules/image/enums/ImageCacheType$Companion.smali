.class public final Lexpo/modules/image/enums/ImageCacheType$Companion;
.super Ljava/lang/Object;
.source "ImageCacheType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/image/enums/ImageCacheType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageCacheType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageCacheType.kt\nexpo/modules/image/enums/ImageCacheType$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,15:1\n295#2,2:16\n*S KotlinDebug\n*F\n+ 1 ImageCacheType.kt\nexpo/modules/image/enums/ImageCacheType$Companion\n*L\n12#1:16,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/image/enums/ImageCacheType$Companion;",
        "",
        "<init>",
        "()V",
        "fromNativeValue",
        "Lexpo/modules/image/enums/ImageCacheType;",
        "value",
        "Lcom/bumptech/glide/load/DataSource;",
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
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/image/enums/ImageCacheType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromNativeValue(Lcom/bumptech/glide/load/DataSource;)Lexpo/modules/image/enums/ImageCacheType;
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lexpo/modules/image/enums/ImageCacheType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lexpo/modules/image/enums/ImageCacheType;

    .line 12
    invoke-static {v2}, Lexpo/modules/image/enums/ImageCacheType;->access$getDataSources$p(Lexpo/modules/image/enums/ImageCacheType;)[Lcom/bumptech/glide/load/DataSource;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lexpo/modules/image/enums/ImageCacheType;

    if-nez v1, :cond_2

    sget-object v1, Lexpo/modules/image/enums/ImageCacheType;->NONE:Lexpo/modules/image/enums/ImageCacheType;

    :cond_2
    return-object v1
.end method
