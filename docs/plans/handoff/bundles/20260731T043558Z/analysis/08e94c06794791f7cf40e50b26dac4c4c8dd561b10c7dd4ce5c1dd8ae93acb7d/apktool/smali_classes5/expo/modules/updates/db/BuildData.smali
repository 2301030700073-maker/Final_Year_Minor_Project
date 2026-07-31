.class public final Lexpo/modules/updates/db/BuildData;
.super Ljava/lang/Object;
.source "BuildData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002R\u001a\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\r0\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/updates/db/BuildData;",
        "",
        "<init>",
        "()V",
        "ensureBuildDataIsConsistent",
        "",
        "updatesConfiguration",
        "Lexpo/modules/updates/UpdatesConfiguration;",
        "database",
        "Lexpo/modules/updates/db/UpdatesDatabase;",
        "clearAllUpdatesFromDatabase",
        "clearManifestMetadataFromDatabase",
        "isBuildDataConsistent",
        "",
        "databaseBuildData",
        "Lorg/json/JSONObject;",
        "setBuildDataInDatabase",
        "getBuildDataFromDatabase",
        "scopeKey",
        "",
        "getBuildDataFromConfig",
        "defaultBuildData",
        "",
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
.field public static final INSTANCE:Lexpo/modules/updates/db/BuildData;

.field private static final defaultBuildData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/db/BuildData;

    invoke-direct {v0}, Lexpo/modules/updates/db/BuildData;-><init>()V

    sput-object v0, Lexpo/modules/updates/db/BuildData;->INSTANCE:Lexpo/modules/updates/db/BuildData;

    const/4 v0, 0x1

    .line 97
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "hasEmbeddedUpdate"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lexpo/modules/updates/db/BuildData;->defaultBuildData:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getBuildDataFromConfig(Lexpo/modules/updates/UpdatesConfiguration;)Lorg/json/JSONObject;
    .locals 4

    .line 82
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 83
    invoke-virtual {p1}, Lexpo/modules/updates/UpdatesConfiguration;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 85
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 86
    invoke-virtual {p1}, Lexpo/modules/updates/UpdatesConfiguration;->getUpdateUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "updateUrl"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v2, "requestHeaders"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v0, "hasEmbeddedUpdate"

    invoke-virtual {p1}, Lexpo/modules/updates/UpdatesConfiguration;->getHasEmbeddedUpdate()Z

    move-result p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v1
.end method


# virtual methods
.method public final clearAllUpdatesFromDatabase(Lexpo/modules/updates/db/UpdatesDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lexpo/modules/updates/db/UpdatesDatabase;->updateDao()Lexpo/modules/updates/db/dao/UpdateDao;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/updates/db/dao/UpdateDao;->loadAllUpdates()Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lexpo/modules/updates/db/UpdatesDatabase;->updateDao()Lexpo/modules/updates/db/dao/UpdateDao;

    move-result-object p1

    invoke-virtual {p1, v0}, Lexpo/modules/updates/db/dao/UpdateDao;->deleteUpdates(Ljava/util/List;)V

    return-void
.end method

.method public final clearManifestMetadataFromDatabase(Lexpo/modules/updates/db/UpdatesDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lexpo/modules/updates/manifest/ManifestMetadata;->INSTANCE:Lexpo/modules/updates/manifest/ManifestMetadata;

    invoke-virtual {v0, p1}, Lexpo/modules/updates/manifest/ManifestMetadata;->clearMetadataForBuildDataClearOperation(Lexpo/modules/updates/db/UpdatesDatabase;)V

    return-void
.end method

.method public final ensureBuildDataIsConsistent(Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/UpdatesDatabase;)V
    .locals 1

    const-string v0, "updatesConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "database"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lexpo/modules/updates/UpdatesConfiguration;->getScopeKey()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p0, p2, v0}, Lexpo/modules/updates/db/BuildData;->getBuildDataFromDatabase(Lexpo/modules/updates/db/UpdatesDatabase;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0, p2, p1}, Lexpo/modules/updates/db/BuildData;->setBuildDataInDatabase(Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/UpdatesConfiguration;)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0, p1, v0}, Lexpo/modules/updates/db/BuildData;->isBuildDataConsistent(Lexpo/modules/updates/UpdatesConfiguration;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    invoke-virtual {p0, p2}, Lexpo/modules/updates/db/BuildData;->clearAllUpdatesFromDatabase(Lexpo/modules/updates/db/UpdatesDatabase;)V

    .line 41
    invoke-virtual {p0, p2}, Lexpo/modules/updates/db/BuildData;->clearManifestMetadataFromDatabase(Lexpo/modules/updates/db/UpdatesDatabase;)V

    .line 42
    invoke-virtual {p0, p2, p1}, Lexpo/modules/updates/db/BuildData;->setBuildDataInDatabase(Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/UpdatesConfiguration;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getBuildDataFromDatabase(Lexpo/modules/updates/db/UpdatesDatabase;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lexpo/modules/updates/db/UpdatesDatabase;->jsonDataDao()Lexpo/modules/updates/db/dao/JSONDataDao;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->STATIC_BUILD_DATA:Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    invoke-virtual {p1, v1, p2}, Lexpo/modules/updates/db/dao/JSONDataDao;->loadJSONStringForKey(Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 78
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public final isBuildDataConsistent(Lexpo/modules/updates/UpdatesConfiguration;Lorg/json/JSONObject;)Z
    .locals 1

    const-string v0, "updatesConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "databaseBuildData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lexpo/modules/updates/db/BuildData;->defaultBuildData:Ljava/util/Map;

    invoke-direct {p0, p1}, Lexpo/modules/updates/db/BuildData;->getBuildDataFromConfig(Lexpo/modules/updates/UpdatesConfiguration;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lexpo/modules/manifests/core/JSONObjectExtensionKt;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 60
    invoke-static {p2}, Lexpo/modules/manifests/core/JSONObjectExtensionKt;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 61
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final setBuildDataInDatabase(Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/UpdatesConfiguration;)V
    .locals 3

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p2}, Lexpo/modules/updates/db/BuildData;->getBuildDataFromConfig(Lexpo/modules/updates/UpdatesConfiguration;)Lorg/json/JSONObject;

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Lexpo/modules/updates/db/UpdatesDatabase;->jsonDataDao()Lexpo/modules/updates/db/dao/JSONDataDao;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    sget-object v1, Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;->STATIC_BUILD_DATA:Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;

    .line 71
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Lexpo/modules/updates/UpdatesConfiguration;->getScopeKey()Ljava/lang/String;

    move-result-object p2

    .line 69
    invoke-virtual {p1, v1, v0, p2}, Lexpo/modules/updates/db/dao/JSONDataDao;->setJSONStringForKey(Lexpo/modules/updates/db/dao/JSONDataDao$JSONDataKey;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
