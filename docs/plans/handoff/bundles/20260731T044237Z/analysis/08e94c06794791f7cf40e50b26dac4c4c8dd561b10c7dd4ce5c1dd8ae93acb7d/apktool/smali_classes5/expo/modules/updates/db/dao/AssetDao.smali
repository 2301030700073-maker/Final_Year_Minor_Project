.class public abstract Lexpo/modules/updates/db/dao/AssetDao;
.super Ljava/lang/Object;
.source "AssetDao.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetDao.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetDao.kt\nexpo/modules/updates/db/dao/AssetDao\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n1#2:177\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\'\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H%J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH%J\u0018\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fH%J\u0008\u0010\u0010\u001a\u00020\tH%J\u0008\u0010\u0011\u001a\u00020\tH%J\u0008\u0010\u0012\u001a\u00020\tH%J\u0008\u0010\u0013\u001a\u00020\tH%J\u000e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0015H%J\u0008\u0010\u0016\u001a\u00020\tH%J\u0018\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H%J\u000e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0015H\'J\u0016\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00152\u0006\u0010\u001c\u001a\u00020\u000fH\'J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u0007H\'J\u001e\u0010\u001e\u001a\u00020\t2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00152\u0006\u0010 \u001a\u00020!H\u0017J\u0012\u0010\"\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0016\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u0007J \u0010&\u001a\u00020\'2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\'H\u0017J\u000e\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0015H\u0017J\u0015\u0010*\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001\u00a2\u0006\u0002\u0008+J\u0015\u0010,\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0001\u00a2\u0006\u0002\u0008-\u00a8\u0006."
    }
    d2 = {
        "Lexpo/modules/updates/db/dao/AssetDao;",
        "",
        "<init>",
        "()V",
        "insertAssetInternal",
        "",
        "asset",
        "Lexpo/modules/updates/db/entity/AssetEntity;",
        "insertUpdateAssetInternal",
        "",
        "updateAsset",
        "Lexpo/modules/updates/db/entity/UpdateAssetEntity;",
        "setUpdateLaunchAssetInternal",
        "assetId",
        "updateId",
        "Ljava/util/UUID;",
        "markAllAssetsForDeletionInternal",
        "unMarkUsedAssetsFromDeletionInternal",
        "unMarkUsedLaunchAssetsFromDeletionInternal",
        "unMarkDuplicateUsedAssetsFromDeletionInternal",
        "loadAssetsMarkedForDeletionInternal",
        "",
        "deleteAssetsMarkedForDeletionInternal",
        "loadAssetWithKeyInternal",
        "key",
        "",
        "loadAllAssets",
        "loadAssetsForUpdate",
        "id",
        "assetEntity",
        "insertAssets",
        "assets",
        "update",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "loadAssetWithKey",
        "mergeAndUpdateAsset",
        "existingEntity",
        "newEntity",
        "addExistingAssetToUpdate",
        "",
        "isLaunchAsset",
        "deleteUnusedAssets",
        "insertAssetForTest",
        "insertAssetForTest$expo_updates_release",
        "insertUpdateAssetForTest",
        "insertUpdateAssetForTest$expo_updates_release",
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
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addExistingAssetToUpdate(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/AssetEntity;Z)Z
    .locals 3

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lexpo/modules/updates/db/dao/AssetDao;->loadAssetWithKey(Ljava/lang/String;)Lexpo/modules/updates/db/entity/AssetEntity;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 142
    :cond_0
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getId()J

    move-result-wide v0

    .line 143
    new-instance p2, Lexpo/modules/updates/db/entity/UpdateAssetEntity;

    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/UpdateEntity;->getId()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {p2, v2, v0, v1}, Lexpo/modules/updates/db/entity/UpdateAssetEntity;-><init>(Ljava/util/UUID;J)V

    invoke-virtual {p0, p2}, Lexpo/modules/updates/db/dao/AssetDao;->insertUpdateAssetInternal(Lexpo/modules/updates/db/entity/UpdateAssetEntity;)V

    if-eqz p3, :cond_1

    .line 145
    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/UpdateEntity;->getId()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lexpo/modules/updates/db/dao/AssetDao;->setUpdateLaunchAssetInternal(JLjava/util/UUID;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected abstract deleteAssetsMarkedForDeletionInternal()V
.end method

.method public deleteUnusedAssets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/AssetEntity;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lexpo/modules/updates/db/dao/AssetDao;->markAllAssetsForDeletionInternal()V

    .line 157
    invoke-virtual {p0}, Lexpo/modules/updates/db/dao/AssetDao;->unMarkUsedAssetsFromDeletionInternal()V

    .line 158
    invoke-virtual {p0}, Lexpo/modules/updates/db/dao/AssetDao;->unMarkUsedLaunchAssetsFromDeletionInternal()V

    .line 160
    invoke-virtual {p0}, Lexpo/modules/updates/db/dao/AssetDao;->unMarkDuplicateUsedAssetsFromDeletionInternal()V

    .line 161
    invoke-virtual {p0}, Lexpo/modules/updates/db/dao/AssetDao;->loadAssetsMarkedForDeletionInternal()Ljava/util/List;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lexpo/modules/updates/db/dao/AssetDao;->deleteAssetsMarkedForDeletionInternal()V

    return-object v0
.end method

.method public final insertAssetForTest$expo_updates_release(Lexpo/modules/updates/db/entity/AssetEntity;)J
    .locals 2

    const-string v0, "asset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, p1}, Lexpo/modules/updates/db/dao/AssetDao;->insertAssetInternal(Lexpo/modules/updates/db/entity/AssetEntity;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract insertAssetInternal(Lexpo/modules/updates/db/entity/AssetEntity;)J
.end method

.method public insertAssets(Ljava/util/List;Lexpo/modules/updates/db/entity/UpdateEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/AssetEntity;",
            ">;",
            "Lexpo/modules/updates/db/entity/UpdateEntity;",
            ")V"
        }
    .end annotation

    const-string v0, "assets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "update"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/updates/db/entity/AssetEntity;

    .line 83
    invoke-virtual {p0, v0}, Lexpo/modules/updates/db/dao/AssetDao;->insertAssetInternal(Lexpo/modules/updates/db/entity/AssetEntity;)J

    move-result-wide v1

    .line 84
    new-instance v3, Lexpo/modules/updates/db/entity/UpdateAssetEntity;

    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lexpo/modules/updates/db/entity/UpdateAssetEntity;-><init>(Ljava/util/UUID;J)V

    invoke-virtual {p0, v3}, Lexpo/modules/updates/db/dao/AssetDao;->insertUpdateAssetInternal(Lexpo/modules/updates/db/entity/UpdateAssetEntity;)V

    .line 85
    invoke-virtual {v0}, Lexpo/modules/updates/db/entity/AssetEntity;->isLaunchAsset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lexpo/modules/updates/db/dao/AssetDao;->setUpdateLaunchAssetInternal(JLjava/util/UUID;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final insertUpdateAssetForTest$expo_updates_release(Lexpo/modules/updates/db/entity/UpdateAssetEntity;)V
    .locals 1

    const-string v0, "updateAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, p1}, Lexpo/modules/updates/db/dao/AssetDao;->insertUpdateAssetInternal(Lexpo/modules/updates/db/entity/UpdateAssetEntity;)V

    return-void
.end method

.method protected abstract insertUpdateAssetInternal(Lexpo/modules/updates/db/entity/UpdateAssetEntity;)V
.end method

.method public abstract loadAllAssets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/AssetEntity;",
            ">;"
        }
    .end annotation
.end method

.method public final loadAssetWithKey(Ljava/lang/String;)Lexpo/modules/updates/db/entity/AssetEntity;
    .locals 3

    .line 92
    invoke-virtual {p0, p1}, Lexpo/modules/updates/db/dao/AssetDao;->loadAssetWithKeyInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/updates/db/entity/AssetEntity;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 95
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getRelativePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    sget-object v1, Lexpo/modules/updates/utils/AndroidResourceAssetUtils;->INSTANCE:Lexpo/modules/updates/utils/AndroidResourceAssetUtils;

    invoke-virtual {v1, v0}, Lexpo/modules/updates/utils/AndroidResourceAssetUtils;->parseAndroidResponseAssetFromPath(Ljava/lang/String;)Lexpo/modules/updates/utils/AndroidResourceAssetUtils$AndroidResourceAsset;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lexpo/modules/updates/utils/AndroidResourceAssetUtils$AndroidResourceAsset;->component1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lexpo/modules/updates/utils/AndroidResourceAssetUtils$AndroidResourceAsset;->component2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lexpo/modules/updates/utils/AndroidResourceAssetUtils$AndroidResourceAsset;->component3()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p1, v1}, Lexpo/modules/updates/db/entity/AssetEntity;->setEmbeddedAssetFilename(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v2}, Lexpo/modules/updates/db/entity/AssetEntity;->setResourcesFolder(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setResourcesFilename(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method protected abstract loadAssetWithKeyInternal(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/AssetEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadAssetsForUpdate(Ljava/util/UUID;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/AssetEntity;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract loadAssetsMarkedForDeletionInternal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/AssetEntity;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract markAllAssetsForDeletionInternal()V
.end method

.method public final mergeAndUpdateAsset(Lexpo/modules/updates/db/entity/AssetEntity;Lexpo/modules/updates/db/entity/AssetEntity;)V
    .locals 4

    const-string v0, "existingEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newEntity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getUrl()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setUrl(Landroid/net/Uri;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 113
    :goto_0
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getExtraRequestHeaders()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 115
    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getExtraRequestHeaders()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getExtraRequestHeaders()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 117
    :cond_2
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getExtraRequestHeaders()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setExtraRequestHeaders(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    .line 122
    invoke-virtual {p0, p1}, Lexpo/modules/updates/db/dao/AssetDao;->updateAsset(Lexpo/modules/updates/db/entity/AssetEntity;)V

    .line 126
    :cond_4
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->isLaunchAsset()Z

    move-result v0

    invoke-virtual {p1, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setLaunchAsset(Z)V

    .line 128
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getEmbeddedAssetFilename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setEmbeddedAssetFilename(Ljava/lang/String;)V

    .line 129
    :cond_5
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getResourcesFilename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setResourcesFilename(Ljava/lang/String;)V

    .line 130
    :cond_6
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getResourcesFolder()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setResourcesFolder(Ljava/lang/String;)V

    .line 131
    :cond_7
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getScale()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setScale(Ljava/lang/Float;)V

    .line 132
    :cond_8
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getScales()[Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p1, p2}, Lexpo/modules/updates/db/entity/AssetEntity;->setScales([Ljava/lang/Float;)V

    :cond_9
    return-void
.end method

.method protected abstract setUpdateLaunchAssetInternal(JLjava/util/UUID;)V
.end method

.method protected abstract unMarkDuplicateUsedAssetsFromDeletionInternal()V
.end method

.method protected abstract unMarkUsedAssetsFromDeletionInternal()V
.end method

.method protected abstract unMarkUsedLaunchAssetsFromDeletionInternal()V
.end method

.method public abstract updateAsset(Lexpo/modules/updates/db/entity/AssetEntity;)V
.end method
