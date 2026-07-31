.class public final Lexpo/modules/video/records/VideoSource;
.super Ljava/lang/Object;
.source "VideoSource.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002BW\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0016\u0008\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0008\u0010/\u001a\u00020\u000bH\u0002J\u0010\u00100\u001a\u0004\u0018\u0001012\u0006\u00102\u001a\u000203J\u000e\u00104\u001a\u0002052\u0006\u00102\u001a\u000203J\u001c\u00106\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u00102\u001a\u000203H\u0003R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R&\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0018\u0010\u0013\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR&\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001d\u0010\u0013\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R2\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\"\u0010\u0013\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R$\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\'\u0010\u0013\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001c\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008,\u0010\u0013\u001a\u0004\u0008-\u0010.\u00a8\u00067"
    }
    d2 = {
        "Lexpo/modules/video/records/VideoSource;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "uri",
        "Landroid/net/Uri;",
        "drm",
        "Lexpo/modules/video/records/DRMOptions;",
        "metadata",
        "Lexpo/modules/video/records/VideoMetadata;",
        "headers",
        "",
        "",
        "useCaching",
        "",
        "contentType",
        "Lexpo/modules/video/enums/ContentType;",
        "<init>",
        "(Landroid/net/Uri;Lexpo/modules/video/records/DRMOptions;Lexpo/modules/video/records/VideoMetadata;Ljava/util/Map;ZLexpo/modules/video/enums/ContentType;)V",
        "getUri$annotations",
        "()V",
        "getUri",
        "()Landroid/net/Uri;",
        "setUri",
        "(Landroid/net/Uri;)V",
        "getDrm$annotations",
        "getDrm",
        "()Lexpo/modules/video/records/DRMOptions;",
        "setDrm",
        "(Lexpo/modules/video/records/DRMOptions;)V",
        "getMetadata$annotations",
        "getMetadata",
        "()Lexpo/modules/video/records/VideoMetadata;",
        "setMetadata",
        "(Lexpo/modules/video/records/VideoMetadata;)V",
        "getHeaders$annotations",
        "getHeaders",
        "()Ljava/util/Map;",
        "setHeaders",
        "(Ljava/util/Map;)V",
        "getUseCaching$annotations",
        "getUseCaching",
        "()Z",
        "setUseCaching",
        "(Z)V",
        "getContentType$annotations",
        "getContentType",
        "()Lexpo/modules/video/enums/ContentType;",
        "toMediaId",
        "toMediaSource",
        "Landroidx/media3/exoplayer/source/MediaSource;",
        "context",
        "Landroid/content/Context;",
        "toMediaItem",
        "Landroidx/media3/common/MediaItem;",
        "parseLocalAssetId",
        "expo-video_release"
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
.field private final contentType:Lexpo/modules/video/enums/ContentType;

.field private drm:Lexpo/modules/video/records/DRMOptions;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Lexpo/modules/video/records/VideoMetadata;

.field private uri:Landroid/net/Uri;

.field private useCaching:Z


# direct methods
.method public static synthetic $r8$lambda$ohoIY8kZSzVQdVNM3Nu_svdFvnY(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lexpo/modules/video/records/VideoSource;->toMediaId$lambda$1(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v7nqPZqRCsHiSJLZdr_5zZRsxps(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lexpo/modules/video/records/VideoSource;->toMediaId$lambda$0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lexpo/modules/video/records/VideoSource;-><init>(Landroid/net/Uri;Lexpo/modules/video/records/DRMOptions;Lexpo/modules/video/records/VideoMetadata;Ljava/util/Map;ZLexpo/modules/video/enums/ContentType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lexpo/modules/video/records/DRMOptions;Lexpo/modules/video/records/VideoMetadata;Ljava/util/Map;ZLexpo/modules/video/enums/ContentType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lexpo/modules/video/records/DRMOptions;",
            "Lexpo/modules/video/records/VideoMetadata;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lexpo/modules/video/enums/ContentType;",
            ")V"
        }
    .end annotation

    const-string v0, "contentType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lexpo/modules/video/records/VideoSource;->uri:Landroid/net/Uri;

    .line 25
    iput-object p2, p0, Lexpo/modules/video/records/VideoSource;->drm:Lexpo/modules/video/records/DRMOptions;

    .line 26
    iput-object p3, p0, Lexpo/modules/video/records/VideoSource;->metadata:Lexpo/modules/video/records/VideoMetadata;

    .line 27
    iput-object p4, p0, Lexpo/modules/video/records/VideoSource;->headers:Ljava/util/Map;

    .line 28
    iput-boolean p5, p0, Lexpo/modules/video/records/VideoSource;->useCaching:Z

    .line 29
    iput-object p6, p0, Lexpo/modules/video/records/VideoSource;->contentType:Lexpo/modules/video/enums/ContentType;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Lexpo/modules/video/records/DRMOptions;Lexpo/modules/video/records/VideoMetadata;Ljava/util/Map;ZLexpo/modules/video/enums/ContentType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p8, v0

    goto :goto_0

    :cond_0
    move-object p8, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, p4

    :goto_3
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    :cond_4
    move v3, p5

    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    .line 29
    sget-object p6, Lexpo/modules/video/enums/ContentType;->AUTO:Lexpo/modules/video/enums/ContentType;

    :cond_5
    move-object p7, p6

    move-object p1, p0

    move-object p2, p8

    move-object p3, v1

    move-object p4, v2

    move-object p5, v0

    move p6, v3

    .line 23
    invoke-direct/range {p1 .. p7}, Lexpo/modules/video/records/VideoSource;-><init>(Landroid/net/Uri;Lexpo/modules/video/records/DRMOptions;Lexpo/modules/video/records/VideoMetadata;Ljava/util/Map;ZLexpo/modules/video/enums/ContentType;)V

    return-void
.end method

.method public static synthetic getContentType$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getDrm$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getHeaders$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getMetadata$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getUri$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getUseCaching$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method private final parseLocalAssetId(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    .locals 4

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v2, "raw"

    .line 89
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 91
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 92
    const-string v2, "android.resource"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 93
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 95
    new-instance v1, Landroidx/media3/datasource/DataSpec;

    invoke-direct {v1, v0}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;)V

    .line 96
    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource;

    invoke-direct {v0, p2}, Landroidx/media3/datasource/RawResourceDataSource;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v0, v1}, Landroidx/media3/datasource/RawResourceDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    .line 98
    invoke-virtual {v0}, Landroidx/media3/datasource/RawResourceDataSource;->getUri()Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 100
    const-string v0, "Error parsing local asset id, falling back to original uri"

    check-cast p2, Ljava/lang/Throwable;

    const-string v1, "ExpoVideo"

    invoke-static {v1, v0, p2}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object p1
.end method

.method private final toMediaId()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 32
    iget-object v1, v0, Lexpo/modules/video/records/VideoSource;->uri:Landroid/net/Uri;

    .line 33
    iget-object v2, v0, Lexpo/modules/video/records/VideoSource;->headers:Ljava/util/Map;

    .line 34
    iget-object v3, v0, Lexpo/modules/video/records/VideoSource;->drm:Lexpo/modules/video/records/DRMOptions;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lexpo/modules/video/records/DRMOptions;->getType()Lexpo/modules/video/enums/DRMType;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 35
    :goto_0
    iget-object v5, v0, Lexpo/modules/video/records/VideoSource;->drm:Lexpo/modules/video/records/DRMOptions;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lexpo/modules/video/records/DRMOptions;->getLicenseServer()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v4

    .line 36
    :goto_1
    iget-object v6, v0, Lexpo/modules/video/records/VideoSource;->drm:Lexpo/modules/video/records/DRMOptions;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lexpo/modules/video/records/DRMOptions;->getMultiKey()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v4

    .line 37
    :goto_2
    iget-object v7, v0, Lexpo/modules/video/records/VideoSource;->drm:Lexpo/modules/video/records/DRMOptions;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lexpo/modules/video/records/DRMOptions;->getHeaders()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_3

    move-object v8, v7

    check-cast v8, Ljava/lang/Iterable;

    new-instance v14, Lexpo/modules/video/records/VideoSource$$ExternalSyntheticLambda0;

    invoke-direct {v14}, Lexpo/modules/video/records/VideoSource$$ExternalSyntheticLambda0;-><init>()V

    const/16 v15, 0x1f

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object v7, v4

    .line 38
    :goto_3
    iget-object v8, v0, Lexpo/modules/video/records/VideoSource;->drm:Lexpo/modules/video/records/DRMOptions;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lexpo/modules/video/records/DRMOptions;->getHeaders()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    if-eqz v8, :cond_4

    move-object v9, v8

    check-cast v9, Ljava/lang/Iterable;

    new-instance v15, Lexpo/modules/video/records/VideoSource$$ExternalSyntheticLambda1;

    invoke-direct {v15}, Lexpo/modules/video/records/VideoSource$$ExternalSyntheticLambda1;-><init>()V

    const/16 v16, 0x1f

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object v8, v4

    .line 39
    :goto_4
    iget-object v9, v0, Lexpo/modules/video/records/VideoSource;->metadata:Lexpo/modules/video/records/VideoMetadata;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lexpo/modules/video/records/VideoMetadata;->getTitle()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_5
    move-object v9, v4

    .line 40
    :goto_5
    iget-object v10, v0, Lexpo/modules/video/records/VideoSource;->metadata:Lexpo/modules/video/records/VideoMetadata;

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lexpo/modules/video/records/VideoMetadata;->getArtist()Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_6
    move-object v10, v4

    .line 41
    :goto_6
    iget-object v11, v0, Lexpo/modules/video/records/VideoSource;->metadata:Lexpo/modules/video/records/VideoMetadata;

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lexpo/modules/video/records/VideoMetadata;->getArtwork()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 42
    :cond_7
    iget-object v11, v0, Lexpo/modules/video/records/VideoSource;->contentType:Lexpo/modules/video/enums/ContentType;

    invoke-virtual {v11}, Lexpo/modules/video/enums/ContentType;->getValue()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "uri:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "Headers: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DrmType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DrmLicenseServer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DrmMultiKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DRMHeadersKeys:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}DRMHeadersValues:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}NotificationDataTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NotificationDataSecondaryText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NotificationDataArtwork:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ContentType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final toMediaId$lambda$0(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final toMediaId$lambda$1(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final getContentType()Lexpo/modules/video/enums/ContentType;
    .locals 1

    .line 29
    iget-object v0, p0, Lexpo/modules/video/records/VideoSource;->contentType:Lexpo/modules/video/enums/ContentType;

    return-object v0
.end method

.method public final getDrm()Lexpo/modules/video/records/DRMOptions;
    .locals 1

    .line 25
    iget-object v0, p0, Lexpo/modules/video/records/VideoSource;->drm:Lexpo/modules/video/records/DRMOptions;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lexpo/modules/video/records/VideoSource;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getMetadata()Lexpo/modules/video/records/VideoMetadata;
    .locals 1

    .line 26
    iget-object v0, p0, Lexpo/modules/video/records/VideoSource;->metadata:Lexpo/modules/video/records/VideoMetadata;

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 24
    iget-object v0, p0, Lexpo/modules/video/records/VideoSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getUseCaching()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lexpo/modules/video/records/VideoSource;->useCaching:Z

    return v0
.end method

.method public final setDrm(Lexpo/modules/video/records/DRMOptions;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lexpo/modules/video/records/VideoSource;->drm:Lexpo/modules/video/records/DRMOptions;

    return-void
.end method

.method public final setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lexpo/modules/video/records/VideoSource;->headers:Ljava/util/Map;

    return-void
.end method

.method public final setMetadata(Lexpo/modules/video/records/VideoMetadata;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lexpo/modules/video/records/VideoSource;->metadata:Lexpo/modules/video/records/VideoMetadata;

    return-void
.end method

.method public final setUri(Landroid/net/Uri;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lexpo/modules/video/records/VideoSource;->uri:Landroid/net/Uri;

    return-void
.end method

.method public final setUseCaching(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lexpo/modules/video/records/VideoSource;->useCaching:Z

    return-void
.end method

.method public final toMediaItem(Landroid/content/Context;)Landroidx/media3/common/MediaItem;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 53
    iget-object v1, p0, Lexpo/modules/video/records/VideoSource;->uri:Landroid/net/Uri;

    invoke-direct {p0, v1, p1}, Lexpo/modules/video/records/VideoSource;->parseLocalAssetId(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    .line 54
    iget-object p1, p0, Lexpo/modules/video/records/VideoSource;->contentType:Lexpo/modules/video/enums/ContentType;

    invoke-virtual {p1}, Lexpo/modules/video/enums/ContentType;->toMimeTypeString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    .line 57
    :cond_0
    iget-object p1, p0, Lexpo/modules/video/records/VideoSource;->drm:Lexpo/modules/video/records/DRMOptions;

    if-eqz p1, :cond_2

    .line 58
    invoke-virtual {p1}, Lexpo/modules/video/records/DRMOptions;->getType()Lexpo/modules/video/enums/DRMType;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/video/enums/DRMType;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {p1}, Lexpo/modules/video/records/DRMOptions;->toDRMConfiguration()Landroidx/media3/common/MediaItem$DrmConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaItem$Builder;->setDrmConfiguration(Landroidx/media3/common/MediaItem$DrmConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Lexpo/modules/video/UnsupportedDRMTypeException;

    invoke-virtual {p1}, Lexpo/modules/video/records/DRMOptions;->getType()Lexpo/modules/video/enums/DRMType;

    move-result-object p1

    invoke-direct {v0, p1}, Lexpo/modules/video/UnsupportedDRMTypeException;-><init>(Lexpo/modules/video/enums/DRMType;)V

    throw v0

    .line 65
    :cond_2
    :goto_0
    new-instance p1, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {p1}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    .line 66
    iget-object v1, p0, Lexpo/modules/video/records/VideoSource;->metadata:Lexpo/modules/video/records/VideoMetadata;

    if-eqz v1, :cond_3

    .line 67
    invoke-virtual {v1}, Lexpo/modules/video/records/VideoMetadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 68
    invoke-virtual {v1}, Lexpo/modules/video/records/VideoMetadata;->getArtist()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 69
    invoke-virtual {v1}, Lexpo/modules/video/records/VideoMetadata;->getArtwork()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 70
    invoke-virtual {p1, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setArtworkUri(Landroid/net/Uri;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 73
    :cond_3
    invoke-virtual {p1}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object p1

    .line 64
    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaItem$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaItem$Builder;

    .line 76
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final toMediaSource(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lexpo/modules/video/records/VideoSource;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_0
    invoke-static {p1, p0}, Lexpo/modules/video/DataSourceUtilsKt;->buildExpoVideoMediaSource(Landroid/content/Context;Lexpo/modules/video/records/VideoSource;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p1

    return-object p1
.end method
