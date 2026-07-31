.class public final Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback$DefaultImpls;
.super Ljava/lang/Object;
.source "LoaderTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onRemoteCheckForUpdateFinished(Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;)V
    .locals 0

    const-string p0, "result"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onRemoteCheckForUpdateStarted(Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;)V
    .locals 0

    return-void
.end method

.method public static onRemoteUpdateAssetLoaded(Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;Lexpo/modules/updates/db/entity/AssetEntity;III)V
    .locals 0

    const-string p0, "asset"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onRemoteUpdateLoadStarted(Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;)V
    .locals 0

    return-void
.end method
