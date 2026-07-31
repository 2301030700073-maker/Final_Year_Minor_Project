.class public final Lexpo/modules/updates/manifest/EmbeddedUpdate$Companion;
.super Ljava/lang/Object;
.source "EmbeddedUpdate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/manifest/EmbeddedUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rR\u0018\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/updates/manifest/EmbeddedUpdate$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "Ljava/lang/String;",
        "fromEmbeddedManifest",
        "Lexpo/modules/updates/manifest/EmbeddedUpdate;",
        "manifest",
        "Lexpo/modules/manifests/core/EmbeddedManifest;",
        "configuration",
        "Lexpo/modules/updates/UpdatesConfiguration;",
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

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/updates/manifest/EmbeddedUpdate$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromEmbeddedManifest(Lexpo/modules/manifests/core/EmbeddedManifest;Lexpo/modules/updates/UpdatesConfiguration;)Lexpo/modules/updates/manifest/EmbeddedUpdate;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "manifest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lexpo/modules/updates/manifest/EmbeddedUpdate;

    .line 87
    invoke-virtual {p1}, Lexpo/modules/manifests/core/EmbeddedManifest;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    const-string v1, "fromString(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Lexpo/modules/updates/UpdatesConfiguration;->getScopeKey()Ljava/lang/String;

    move-result-object v4

    .line 89
    new-instance v5, Ljava/util/Date;

    invoke-virtual {p1}, Lexpo/modules/manifests/core/EmbeddedManifest;->getCommitTimeLong()J

    move-result-wide v1

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 90
    invoke-virtual {p2}, Lexpo/modules/updates/UpdatesConfiguration;->getRuntimeVersion()Ljava/lang/String;

    move-result-object v6

    .line 91
    invoke-virtual {p1}, Lexpo/modules/manifests/core/EmbeddedManifest;->getAssets()Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    .line 85
    invoke-direct/range {v1 .. v8}, Lexpo/modules/updates/manifest/EmbeddedUpdate;-><init>(Lexpo/modules/manifests/core/EmbeddedManifest;Ljava/util/UUID;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lorg/json/JSONArray;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
