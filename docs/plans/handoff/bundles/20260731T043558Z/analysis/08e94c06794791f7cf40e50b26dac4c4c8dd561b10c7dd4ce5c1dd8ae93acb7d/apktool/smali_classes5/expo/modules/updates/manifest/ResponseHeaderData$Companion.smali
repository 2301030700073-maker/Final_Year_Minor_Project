.class public final Lexpo/modules/updates/manifest/ResponseHeaderData$Companion;
.super Ljava/lang/Object;
.source "ResponseHeaderData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/manifest/ResponseHeaderData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005R\u0018\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lexpo/modules/updates/manifest/ResponseHeaderData$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "Ljava/lang/String;",
        "headerDictionaryToJSONObject",
        "Lorg/json/JSONObject;",
        "headerDictionary",
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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/updates/manifest/ResponseHeaderData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final headerDictionaryToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    .line 48
    const-string v0, "Failed to parse manifest header content"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 49
    new-instance v2, Lexpo/modules/structuredheaders/Parser;

    invoke-direct {v2, p1}, Lexpo/modules/structuredheaders/Parser;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 51
    :try_start_0
    invoke-virtual {v2}, Lexpo/modules/structuredheaders/Parser;->parseDictionary()Lexpo/modules/structuredheaders/Dictionary;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lexpo/modules/structuredheaders/Dictionary;->get()Ljava/util/Map;

    move-result-object v2

    .line 53
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 54
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lexpo/modules/structuredheaders/ListElement;

    .line 56
    instance-of v6, v5, Lexpo/modules/structuredheaders/StringItem;

    if-nez v6, :cond_1

    instance-of v6, v5, Lexpo/modules/structuredheaders/BooleanItem;

    if-nez v6, :cond_1

    instance-of v6, v5, Lexpo/modules/structuredheaders/NumberItem;

    if-eqz v6, :cond_0

    .line 57
    :cond_1
    check-cast v5, Lexpo/modules/structuredheaders/Item;

    invoke-interface {v5}, Lexpo/modules/structuredheaders/Item;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lexpo/modules/structuredheaders/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception v1

    .line 64
    invoke-static {}, Lexpo/modules/updates/manifest/ResponseHeaderData;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v2, v0, v1}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    :catch_1
    move-exception v1

    .line 61
    invoke-static {}, Lexpo/modules/updates/manifest/ResponseHeaderData;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v2, v0, v1}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method
