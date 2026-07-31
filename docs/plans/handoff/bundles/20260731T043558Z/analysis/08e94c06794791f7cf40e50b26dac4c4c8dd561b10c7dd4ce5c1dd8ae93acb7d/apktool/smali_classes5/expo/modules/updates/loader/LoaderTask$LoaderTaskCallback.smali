.class public interface abstract Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;
.super Ljava/lang/Object;
.source "LoaderTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/loader/LoaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoaderTaskCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\u0003H&J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0011H&J\u0008\u0010\u0012\u001a\u00020\u0003H\u0016J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0003H\u0016J(\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001bH\u0016J*\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u000e\u0010!\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006H&\u00a8\u0006\""
    }
    d2 = {
        "Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;",
        "",
        "onFailure",
        "",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onSuccess",
        "launcher",
        "Lexpo/modules/updates/launcher/Launcher;",
        "isUpToDate",
        "",
        "onFinishedAllLoading",
        "onCachedUpdateLoaded",
        "update",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "onRemoteUpdateManifestResponseUpdateLoaded",
        "Lexpo/modules/updates/manifest/Update;",
        "onRemoteCheckForUpdateStarted",
        "onRemoteCheckForUpdateFinished",
        "result",
        "Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;",
        "onRemoteUpdateLoadStarted",
        "onRemoteUpdateAssetLoaded",
        "asset",
        "Lexpo/modules/updates/db/entity/AssetEntity;",
        "successfulAssetCount",
        "",
        "failedAssetCount",
        "totalAssetCount",
        "onRemoteUpdateFinished",
        "status",
        "Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;",
        "exception",
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


# virtual methods
.method public abstract onCachedUpdateLoaded(Lexpo/modules/updates/db/entity/UpdateEntity;)Z
.end method

.method public abstract onFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onFinishedAllLoading()V
.end method

.method public abstract onRemoteCheckForUpdateFinished(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;)V
.end method

.method public abstract onRemoteCheckForUpdateStarted()V
.end method

.method public abstract onRemoteUpdateAssetLoaded(Lexpo/modules/updates/db/entity/AssetEntity;III)V
.end method

.method public abstract onRemoteUpdateFinished(Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;Lexpo/modules/updates/db/entity/UpdateEntity;Ljava/lang/Exception;)V
.end method

.method public abstract onRemoteUpdateLoadStarted()V
.end method

.method public abstract onRemoteUpdateManifestResponseUpdateLoaded(Lexpo/modules/updates/manifest/Update;)V
.end method

.method public abstract onSuccess(Lexpo/modules/updates/launcher/Launcher;Z)V
.end method
