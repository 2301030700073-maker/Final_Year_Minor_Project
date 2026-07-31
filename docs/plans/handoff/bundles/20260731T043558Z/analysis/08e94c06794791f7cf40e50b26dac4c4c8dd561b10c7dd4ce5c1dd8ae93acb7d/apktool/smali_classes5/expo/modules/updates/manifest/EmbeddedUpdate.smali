.class public final Lexpo/modules/updates/manifest/EmbeddedUpdate;
.super Ljava/lang/Object;
.source "EmbeddedUpdate.kt"

# interfaces
.implements Lexpo/modules/updates/manifest/Update;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/manifest/EmbeddedUpdate$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmbeddedUpdate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmbeddedUpdate.kt\nexpo/modules/updates/manifest/EmbeddedUpdate\n+ 2 JSONObjectUtils.kt\nexpo/modules/jsonutils/JSONObjectUtilsKt\n*L\n1#1,95:1\n22#2,4:96\n9#2,9:100\n22#2,4:109\n9#2,9:113\n22#2,4:122\n9#2,9:126\n*S KotlinDebug\n*F\n+ 1 EmbeddedUpdate.kt\nexpo/modules/updates/manifest/EmbeddedUpdate\n*L\n53#1:96,4\n53#1:100,9\n54#1:109,4\n54#1:113,9\n56#1:122,4\n56#1:126,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000  2\u00020\u0001:\u0001 B;\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0011\u001a\u00020\u00128VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014R!\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00188VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0016\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001d\u001a\u00020\u001eX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lexpo/modules/updates/manifest/EmbeddedUpdate;",
        "Lexpo/modules/updates/manifest/Update;",
        "manifest",
        "Lexpo/modules/manifests/core/EmbeddedManifest;",
        "id",
        "Ljava/util/UUID;",
        "scopeKey",
        "",
        "commitTime",
        "Ljava/util/Date;",
        "runtimeVersion",
        "assets",
        "Lorg/json/JSONArray;",
        "<init>",
        "(Lexpo/modules/manifests/core/EmbeddedManifest;Ljava/util/UUID;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lorg/json/JSONArray;)V",
        "getManifest",
        "()Lexpo/modules/manifests/core/EmbeddedManifest;",
        "updateEntity",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "getUpdateEntity",
        "()Lexpo/modules/updates/db/entity/UpdateEntity;",
        "updateEntity$delegate",
        "Lkotlin/Lazy;",
        "assetEntityList",
        "",
        "Lexpo/modules/updates/db/entity/AssetEntity;",
        "getAssetEntityList",
        "()Ljava/util/List;",
        "assetEntityList$delegate",
        "isDevelopmentMode",
        "",
        "()Z",
        "Companion",
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
.field public static final Companion:Lexpo/modules/updates/manifest/EmbeddedUpdate$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final assetEntityList$delegate:Lkotlin/Lazy;

.field private final assets:Lorg/json/JSONArray;

.field private final commitTime:Ljava/util/Date;

.field private final id:Ljava/util/UUID;

.field private final isDevelopmentMode:Z

.field private final manifest:Lexpo/modules/manifests/core/EmbeddedManifest;

.field private final runtimeVersion:Ljava/lang/String;

.field private final scopeKey:Ljava/lang/String;

.field private final updateEntity$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$DvfrdU0OmAYscMS32-6HZocPBc8(Lexpo/modules/updates/manifest/EmbeddedUpdate;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lexpo/modules/updates/manifest/EmbeddedUpdate;->assetEntityList_delegate$lambda$4(Lexpo/modules/updates/manifest/EmbeddedUpdate;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rmmbV6X-9bSx9BwuuLhHEs2TvbI(Lexpo/modules/updates/manifest/EmbeddedUpdate;)Lexpo/modules/updates/db/entity/UpdateEntity;
    .locals 0

    invoke-static {p0}, Lexpo/modules/updates/manifest/EmbeddedUpdate;->updateEntity_delegate$lambda$1(Lexpo/modules/updates/manifest/EmbeddedUpdate;)Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/manifest/EmbeddedUpdate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/manifest/EmbeddedUpdate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->Companion:Lexpo/modules/updates/manifest/EmbeddedUpdate$Companion;

    .line 79
    const-string v0, "EmbeddedUpdate"

    sput-object v0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lexpo/modules/manifests/core/EmbeddedManifest;Ljava/util/UUID;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->manifest:Lexpo/modules/manifests/core/EmbeddedManifest;

    .line 23
    iput-object p2, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->id:Ljava/util/UUID;

    .line 24
    iput-object p3, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->scopeKey:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->commitTime:Ljava/util/Date;

    .line 26
    iput-object p5, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->runtimeVersion:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->assets:Lorg/json/JSONArray;

    .line 29
    new-instance p1, Lexpo/modules/updates/manifest/EmbeddedUpdate$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lexpo/modules/updates/manifest/EmbeddedUpdate$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/updates/manifest/EmbeddedUpdate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->updateEntity$delegate:Lkotlin/Lazy;

    .line 35
    new-instance p1, Lexpo/modules/updates/manifest/EmbeddedUpdate$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lexpo/modules/updates/manifest/EmbeddedUpdate$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/updates/manifest/EmbeddedUpdate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->assetEntityList$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lexpo/modules/manifests/core/EmbeddedManifest;Ljava/util/UUID;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lorg/json/JSONArray;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lexpo/modules/updates/manifest/EmbeddedUpdate;-><init>(Lexpo/modules/manifests/core/EmbeddedManifest;Ljava/util/UUID;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method private static final assetEntityList_delegate$lambda$4(Lexpo/modules/updates/manifest/EmbeddedUpdate;)Ljava/util/List;
    .locals 13

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 38
    iget-object v1, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->id:Ljava/util/UUID;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bundle-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    new-instance v2, Lexpo/modules/updates/db/entity/AssetEntity;

    const-string v3, "js"

    invoke-direct {v2, v1, v3}, Lexpo/modules/updates/db/entity/AssetEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v2, v1}, Lexpo/modules/updates/db/entity/AssetEntity;->setLaunchAsset(Z)V

    .line 41
    const-string v3, "index.android.bundle"

    invoke-virtual {v2, v3}, Lexpo/modules/updates/db/entity/AssetEntity;->setEmbeddedAssetFilename(Ljava/lang/String;)V

    .line 43
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v2, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->assets:Lorg/json/JSONArray;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_27

    .line 45
    iget-object v2, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->assets:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_27

    .line 47
    :try_start_0
    iget-object v5, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->assets:Lorg/json/JSONArray;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 48
    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 49
    new-instance v7, Lexpo/modules/updates/db/entity/AssetEntity;

    .line 50
    const-string v8, "packagerHash"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 49
    invoke-direct {v7, v8, v6}, Lexpo/modules/updates/db/entity/AssetEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v6, "resourcesFilename"

    .line 96
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x0

    const-string v10, "null cannot be cast to non-null type kotlin.String"

    if-nez v8, :cond_0

    move-object v6, v9

    goto/16 :goto_1

    .line 99
    :cond_0
    :try_start_1
    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 101
    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 102
    :cond_2
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_1

    .line 103
    :cond_3
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    .line 104
    :cond_4
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    .line 105
    :cond_5
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    .line 106
    :cond_6
    const-class v11, Lorg/json/JSONArray;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_7

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_7
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 107
    :cond_8
    const-class v11, Lorg/json/JSONObject;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_9

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_9
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 108
    :cond_a
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_26

    check-cast v6, Ljava/lang/String;

    .line 53
    :goto_1
    invoke-virtual {v7, v6}, Lexpo/modules/updates/db/entity/AssetEntity;->setResourcesFilename(Ljava/lang/String;)V

    .line 54
    const-string v6, "resourcesFolder"

    .line 109
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    move-object v6, v9

    goto/16 :goto_2

    .line 112
    :cond_b
    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 114
    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    goto/16 :goto_2

    :cond_c
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    :cond_d
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_2

    .line 116
    :cond_e
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_2

    .line 117
    :cond_f
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_2

    .line 118
    :cond_10
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_2

    .line 119
    :cond_11
    const-class v11, Lorg/json/JSONArray;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_12

    check-cast v6, Ljava/lang/String;

    goto :goto_2

    :cond_12
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 120
    :cond_13
    const-class v11, Lorg/json/JSONObject;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_14

    check-cast v6, Ljava/lang/String;

    goto :goto_2

    :cond_14
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 121
    :cond_15
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_25

    check-cast v6, Ljava/lang/String;

    .line 54
    :goto_2
    invoke-virtual {v7, v6}, Lexpo/modules/updates/db/entity/AssetEntity;->setResourcesFolder(Ljava/lang/String;)V

    .line 56
    const-string v6, "scales"

    .line 122
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_16

    goto/16 :goto_4

    .line 125
    :cond_16
    const-class v8, Lorg/json/JSONArray;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 127
    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v10, "null cannot be cast to non-null type org.json.JSONArray"

    if-eqz v9, :cond_18

    :try_start_2
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_17

    check-cast v6, Lorg/json/JSONArray;

    :goto_3
    move-object v9, v6

    goto/16 :goto_4

    :cond_17
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 128
    :cond_18
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    goto :goto_3

    .line 129
    :cond_19
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    goto :goto_3

    .line 130
    :cond_1a
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    goto :goto_3

    .line 131
    :cond_1b
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    goto :goto_3

    .line 132
    :cond_1c
    const-class v9, Lorg/json/JSONArray;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_1d

    goto :goto_3

    :cond_1d
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 133
    :cond_1e
    const-class v9, Lorg/json/JSONObject;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_1f

    check-cast v6, Lorg/json/JSONArray;

    goto/16 :goto_3

    :cond_1f
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    :cond_20
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_24

    check-cast v6, Lorg/json/JSONArray;

    goto/16 :goto_3

    :goto_4
    if-eqz v9, :cond_23

    .line 59
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-le v6, v1, :cond_23

    .line 60
    const-string v6, "scale"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v5}, Lexpo/modules/updates/db/entity/AssetEntity;->setScale(Ljava/lang/Float;)V

    .line 61
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v6, v5, [Ljava/lang/Float;

    move v8, v3

    :goto_5
    if-ge v8, v5, :cond_21

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 62
    :cond_21
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v8, v3

    :goto_6
    if-ge v8, v5, :cond_22

    .line 63
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 65
    :cond_22
    invoke-virtual {v7, v6}, Lexpo/modules/updates/db/entity/AssetEntity;->setScales([Ljava/lang/Float;)V

    .line 67
    :cond_23
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 134
    :cond_24
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 121
    :cond_25
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 108
    :cond_26
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v5

    .line 69
    sget-object v6, Lexpo/modules/updates/manifest/EmbeddedUpdate;->TAG:Ljava/lang/String;

    const-string v7, "Could not read asset from manifest"

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v6, v7, v5}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_27
    return-object v0
.end method

.method private static final updateEntity_delegate$lambda$1(Lexpo/modules/updates/manifest/EmbeddedUpdate;)Lexpo/modules/updates/db/entity/UpdateEntity;
    .locals 7

    .line 30
    new-instance v6, Lexpo/modules/updates/db/entity/UpdateEntity;

    iget-object v1, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->id:Ljava/util/UUID;

    iget-object v2, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->commitTime:Ljava/util/Date;

    iget-object v3, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->runtimeVersion:Ljava/lang/String;

    iget-object v4, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->scopeKey:Ljava/lang/String;

    invoke-virtual {p0}, Lexpo/modules/updates/manifest/EmbeddedUpdate;->getManifest()Lexpo/modules/manifests/core/EmbeddedManifest;

    move-result-object p0

    invoke-virtual {p0}, Lexpo/modules/manifests/core/EmbeddedManifest;->getRawJson()Lorg/json/JSONObject;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lexpo/modules/updates/db/entity/UpdateEntity;-><init>(Ljava/util/UUID;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 31
    sget-object p0, Lexpo/modules/updates/db/enums/UpdateStatus;->EMBEDDED:Lexpo/modules/updates/db/enums/UpdateStatus;

    invoke-virtual {v6, p0}, Lexpo/modules/updates/db/entity/UpdateEntity;->setStatus(Lexpo/modules/updates/db/enums/UpdateStatus;)V

    return-object v6
.end method


# virtual methods
.method public getAssetEntityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/AssetEntity;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->assetEntityList$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getManifest()Lexpo/modules/manifests/core/EmbeddedManifest;
    .locals 1

    .line 22
    iget-object v0, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->manifest:Lexpo/modules/manifests/core/EmbeddedManifest;

    return-object v0
.end method

.method public bridge synthetic getManifest()Lexpo/modules/manifests/core/Manifest;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lexpo/modules/updates/manifest/EmbeddedUpdate;->getManifest()Lexpo/modules/manifests/core/EmbeddedManifest;

    move-result-object v0

    check-cast v0, Lexpo/modules/manifests/core/Manifest;

    return-object v0
.end method

.method public getUpdateEntity()Lexpo/modules/updates/db/entity/UpdateEntity;
    .locals 1

    .line 29
    iget-object v0, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->updateEntity$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/updates/db/entity/UpdateEntity;

    return-object v0
.end method

.method public isDevelopmentMode()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lexpo/modules/updates/manifest/EmbeddedUpdate;->isDevelopmentMode:Z

    return v0
.end method
