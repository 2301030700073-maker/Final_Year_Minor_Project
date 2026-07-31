.class public final Lexpo/modules/updates/manifest/UpdateFactory;
.super Ljava/lang/Object;
.source "UpdateFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J(\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/updates/manifest/UpdateFactory;",
        "",
        "<init>",
        "()V",
        "getUpdate",
        "Lexpo/modules/updates/manifest/Update;",
        "manifestJson",
        "Lorg/json/JSONObject;",
        "responseHeaderData",
        "Lexpo/modules/updates/manifest/ResponseHeaderData;",
        "extensions",
        "configuration",
        "Lexpo/modules/updates/UpdatesConfiguration;",
        "getEmbeddedUpdate",
        "Lexpo/modules/updates/manifest/EmbeddedUpdate;",
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
.field public static final INSTANCE:Lexpo/modules/updates/manifest/UpdateFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/updates/manifest/UpdateFactory;

    invoke-direct {v0}, Lexpo/modules/updates/manifest/UpdateFactory;-><init>()V

    sput-object v0, Lexpo/modules/updates/manifest/UpdateFactory;->INSTANCE:Lexpo/modules/updates/manifest/UpdateFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmbeddedUpdate(Lorg/json/JSONObject;Lexpo/modules/updates/UpdatesConfiguration;)Lexpo/modules/updates/manifest/EmbeddedUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "manifestJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->Companion:Lexpo/modules/updates/manifest/EmbeddedUpdate$Companion;

    new-instance v1, Lexpo/modules/manifests/core/EmbeddedManifest;

    invoke-direct {v1, p1}, Lexpo/modules/manifests/core/EmbeddedManifest;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1, p2}, Lexpo/modules/updates/manifest/EmbeddedUpdate$Companion;->fromEmbeddedManifest(Lexpo/modules/manifests/core/EmbeddedManifest;Lexpo/modules/updates/UpdatesConfiguration;)Lexpo/modules/updates/manifest/EmbeddedUpdate;

    move-result-object p1

    return-object p1
.end method

.method public final getUpdate(Lorg/json/JSONObject;Lexpo/modules/updates/manifest/ResponseHeaderData;Lorg/json/JSONObject;Lexpo/modules/updates/UpdatesConfiguration;)Lexpo/modules/updates/manifest/Update;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "manifestJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseHeaderData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Lexpo/modules/updates/manifest/ResponseHeaderData;->getProtocolVersion()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 21
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unsupported expo-protocol-version: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    :goto_0
    sget-object p2, Lexpo/modules/updates/manifest/ExpoUpdatesUpdate;->Companion:Lexpo/modules/updates/manifest/ExpoUpdatesUpdate$Companion;

    new-instance v0, Lexpo/modules/manifests/core/ExpoUpdatesManifest;

    invoke-direct {v0, p1}, Lexpo/modules/manifests/core/ExpoUpdatesManifest;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p2, v0, p3, p4}, Lexpo/modules/updates/manifest/ExpoUpdatesUpdate$Companion;->fromExpoUpdatesManifest(Lexpo/modules/manifests/core/ExpoUpdatesManifest;Lorg/json/JSONObject;Lexpo/modules/updates/UpdatesConfiguration;)Lexpo/modules/updates/manifest/ExpoUpdatesUpdate;

    move-result-object p1

    check-cast p1, Lexpo/modules/updates/manifest/Update;

    return-object p1

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Legacy manifests are no longer supported"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
