.class public final Lexpo/modules/updates/UpdatesConfigurationOverride$Companion;
.super Ljava/lang/Object;
.source "UpdatesConfigurationOverride.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/UpdatesConfigurationOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdatesConfigurationOverride.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdatesConfigurationOverride.kt\nexpo/modules/updates/UpdatesConfigurationOverride$Companion\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,58:1\n462#2:59\n412#2:60\n1246#3,4:61\n*S KotlinDebug\n*F\n+ 1 UpdatesConfigurationOverride.kt\nexpo/modules/updates/UpdatesConfigurationOverride$Companion\n*L\n50#1:59\n50#1:60\n50#1:61,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u000bJ\u001f\u0010\u000c\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0008H\u0000\u00a2\u0006\u0002\u0008\u000fJ\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/updates/UpdatesConfigurationOverride$Companion;",
        "",
        "<init>",
        "()V",
        "UPDATES_PREFS_FILE",
        "",
        "UPDATES_PREFS_KEY_UPDATES_CONFIGURATION_OVERRIDE",
        "load",
        "Lexpo/modules/updates/UpdatesConfigurationOverride;",
        "context",
        "Landroid/content/Context;",
        "load$expo_updates_release",
        "save",
        "",
        "configOverride",
        "save$expo_updates_release",
        "fromJSONObject",
        "json",
        "Lorg/json/JSONObject;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/updates/UpdatesConfigurationOverride$Companion;-><init>()V

    return-void
.end method

.method private final fromJSONObject(Lorg/json/JSONObject;)Lexpo/modules/updates/UpdatesConfigurationOverride;
    .locals 4

    .line 48
    const-string v0, "requestHeaders"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "getJSONObject(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {v0}, Lexpo/modules/manifests/core/JSONObjectExtensionKt;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 60
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 61
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 62
    check-cast v2, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Lexpo/modules/updates/UpdatesConfigurationOverride;

    .line 52
    const-string v2, "updateUrl"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "parse(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {v0, p1, v1}, Lexpo/modules/updates/UpdatesConfigurationOverride;-><init>(Landroid/net/Uri;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final load$expo_updates_release(Landroid/content/Context;)Lexpo/modules/updates/UpdatesConfigurationOverride;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const-string v0, "dev.expo.updates.prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 29
    const-string v1, "updatesConfigOverride"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 31
    sget-object v0, Lexpo/modules/updates/UpdatesConfigurationOverride;->Companion:Lexpo/modules/updates/UpdatesConfigurationOverride$Companion;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lexpo/modules/updates/UpdatesConfigurationOverride$Companion;->fromJSONObject(Lorg/json/JSONObject;)Lexpo/modules/updates/UpdatesConfigurationOverride;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final save$expo_updates_release(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfigurationOverride;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const-string v0, "dev.expo.updates.prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 37
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 38
    const-string v0, "updatesConfigOverride"

    if-eqz p2, :cond_0

    .line 39
    invoke-static {p2}, Lexpo/modules/updates/UpdatesConfigurationOverride;->access$toJSONObject(Lexpo/modules/updates/UpdatesConfigurationOverride;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
