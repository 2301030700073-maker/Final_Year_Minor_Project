.class public final Lexpo/modules/updates/utils/AndroidResourceAssetUtils;
.super Ljava/lang/Object;
.source "AndroidResourceAssetUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/utils/AndroidResourceAssetUtils$AndroidResourceAsset;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidResourceAssetUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidResourceAssetUtils.kt\nexpo/modules/updates/utils/AndroidResourceAssetUtils\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,121:1\n29#2:122\n*S KotlinDebug\n*F\n+ 1 AndroidResourceAssetUtils.kt\nexpo/modules/updates/utils/AndroidResourceAssetUtils\n*L\n91#1:122\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u001bB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005J\u0016\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005J \u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0005H\u0007J\u0016\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u000c\u001a\u00020\u0005J\u0017\u0010\u0017\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002\u00a2\u0006\u0002\u0010\u001aR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lexpo/modules/updates/utils/AndroidResourceAssetUtils;",
        "",
        "<init>",
        "()V",
        "ANDROID_EMBEDDED_URL_BASE_ASSET",
        "",
        "ANDROID_EMBEDDED_URL_BASE_RESOURCE",
        "createEmbeddedFilenameForAsset",
        "asset",
        "Lexpo/modules/updates/db/entity/AssetEntity;",
        "isAndroidResourceAsset",
        "",
        "filePath",
        "isAndroidAssetExisted",
        "context",
        "Landroid/content/Context;",
        "name",
        "isAndroidResourceExisted",
        "resourceFolder",
        "resourceFilename",
        "isAndroidAssetOrResourceExisted",
        "parseAndroidResponseAssetFromPath",
        "Lexpo/modules/updates/utils/AndroidResourceAssetUtils$AndroidResourceAsset;",
        "getDrawableSuffix",
        "scale",
        "",
        "(Ljava/lang/Float;)Ljava/lang/String;",
        "AndroidResourceAsset",
        "expo-updates_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ANDROID_EMBEDDED_URL_BASE_ASSET:Ljava/lang/String; = "file:///android_asset/"

.field private static final ANDROID_EMBEDDED_URL_BASE_RESOURCE:Ljava/lang/String; = "file:///android_res/"

.field public static final INSTANCE:Lexpo/modules/updates/utils/AndroidResourceAssetUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/updates/utils/AndroidResourceAssetUtils;

    invoke-direct {v0}, Lexpo/modules/updates/utils/AndroidResourceAssetUtils;-><init>()V

    sput-object v0, Lexpo/modules/updates/utils/AndroidResourceAssetUtils;->INSTANCE:Lexpo/modules/updates/utils/AndroidResourceAssetUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDrawableSuffix(Ljava/lang/Float;)Ljava/lang/String;
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 111
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "-ldpi"

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 112
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "-mdpi"

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 113
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "-hdpi"

    goto :goto_0

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    .line 114
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "-xhdpi"

    goto :goto_0

    :cond_3
    const/high16 v0, 0x40400000    # 3.0f

    .line 115
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "-xxhdpi"

    goto :goto_0

    :cond_4
    const/high16 v0, 0x40800000    # 4.0f

    .line 116
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "-xxxhdpi"

    goto :goto_0

    .line 117
    :cond_5
    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final createEmbeddedFilenameForAsset(Lexpo/modules/updates/db/entity/AssetEntity;)Ljava/lang/String;
    .locals 5

    const-string v0, "asset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getFileExtension$expo_updates_release()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getEmbeddedAssetFilename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getEmbeddedAssetFilename()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:///android_asset/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getResourcesFolder()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getResourcesFilename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getResourcesFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getScale()Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v2}, Lexpo/modules/updates/utils/AndroidResourceAssetUtils;->getDrawableSuffix(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getResourcesFilename()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file:///android_res/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final isAndroidAssetExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isAndroidAssetOrResourceExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p2}, Lexpo/modules/updates/utils/AndroidResourceAssetUtils;->parseAndroidResponseAssetFromPath(Ljava/lang/String;)Lexpo/modules/updates/utils/AndroidResourceAssetUtils$AndroidResourceAsset;

    move-result-object p2

    invoke-virtual {p2}, Lexpo/modules/updates/utils/AndroidResourceAssetUtils$AndroidResourceAsset;->component1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lexpo/modules/updates/utils/AndroidResourceAssetUtils$AndroidResourceAsset;->component2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lexpo/modules/updates/utils/AndroidResourceAssetUtils$AndroidResourceAsset;->component3()Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0, p1, v0}, Lexpo/modules/updates/utils/AndroidResourceAssetUtils;->isAndroidAssetExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 70
    invoke-virtual {p0, p1, v1, p2}, Lexpo/modules/updates/utils/AndroidResourceAssetUtils;->isAndroidResourceExisted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isAndroidResourceAsset(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const-string v0, "file:///android_res/"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const-string v0, "file:///android_asset/"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final isAndroidResourceExisted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceFolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceFilename"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {v0, p3, p2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final parseAndroidResponseAssetFromPath(Ljava/lang/String;)Lexpo/modules/updates/utils/AndroidResourceAssetUtils$AndroidResourceAsset;
    .locals 5

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    const-string v0, "file:///android_res/"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x3

    if-lt v1, v4, :cond_0

    const/4 p1, 0x1

    .line 97
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "get(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    const/16 v4, 0x2d

    invoke-static {p1, v4, v3, v2, v3}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-static {v4, v1, v0}, Lkotlin/text/StringsKt;->substringBeforeLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Lexpo/modules/updates/utils/AndroidResourceAssetUtils$AndroidResourceAsset;

    invoke-direct {v1, v3, p1, v0}, Lexpo/modules/updates/utils/AndroidResourceAssetUtils$AndroidResourceAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 94
    :cond_0
    new-instance v0, Lexpo/modules/core/errors/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid resource file path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lexpo/modules/core/errors/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    const-string v0, "file:///android_asset/"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2f

    .line 103
    invoke-static {p1, v0, v3, v2, v3}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 104
    new-instance v0, Lexpo/modules/updates/utils/AndroidResourceAssetUtils$AndroidResourceAsset;

    invoke-direct {v0, p1, v3, v3}, Lexpo/modules/updates/utils/AndroidResourceAssetUtils$AndroidResourceAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 106
    :cond_2
    new-instance p1, Lexpo/modules/updates/utils/AndroidResourceAssetUtils$AndroidResourceAsset;

    invoke-direct {p1, v3, v3, v3}, Lexpo/modules/updates/utils/AndroidResourceAssetUtils$AndroidResourceAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
