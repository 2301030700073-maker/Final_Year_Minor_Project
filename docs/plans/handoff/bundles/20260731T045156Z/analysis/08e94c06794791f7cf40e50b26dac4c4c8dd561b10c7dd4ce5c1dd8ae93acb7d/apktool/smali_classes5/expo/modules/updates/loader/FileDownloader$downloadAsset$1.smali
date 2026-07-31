.class public final Lexpo/modules/updates/loader/FileDownloader$downloadAsset$1;
.super Ljava/lang/Object;
.source "FileDownloader.kt"

# interfaces
.implements Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/loader/FileDownloader;->downloadAsset(Lexpo/modules/updates/db/entity/AssetEntity;Ljava/io/File;Lorg/json/JSONObject;Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "expo/modules/updates/loader/FileDownloader$downloadAsset$1",
        "Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;",
        "onFailure",
        "",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onSuccess",
        "file",
        "Ljava/io/File;",
        "hash",
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


# instance fields
.field final synthetic $asset:Lexpo/modules/updates/db/entity/AssetEntity;

.field final synthetic $callback:Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;

.field final synthetic $filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;Lexpo/modules/updates/db/entity/AssetEntity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAsset$1;->$callback:Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;

    iput-object p2, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAsset$1;->$asset:Lexpo/modules/updates/db/entity/AssetEntity;

    iput-object p3, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAsset$1;->$filename:Ljava/lang/String;

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAsset$1;->$callback:Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;

    iget-object v1, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAsset$1;->$asset:Lexpo/modules/updates/db/entity/AssetEntity;

    invoke-interface {v0, p1, v1}, Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;->onFailure(Ljava/lang/Exception;Lexpo/modules/updates/db/entity/AssetEntity;)V

    return-void
.end method

.method public onSuccess(Ljava/io/File;[B)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "hash"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    iget-object p1, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAsset$1;->$asset:Lexpo/modules/updates/db/entity/AssetEntity;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setDownloadTime(Ljava/util/Date;)V

    .line 481
    iget-object p1, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAsset$1;->$asset:Lexpo/modules/updates/db/entity/AssetEntity;

    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAsset$1;->$filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setRelativePath(Ljava/lang/String;)V

    .line 482
    iget-object p1, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAsset$1;->$asset:Lexpo/modules/updates/db/entity/AssetEntity;

    invoke-virtual {p1, p2}, Lexpo/modules/updates/db/entity/AssetEntity;->setHash([B)V

    .line 483
    iget-object p1, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAsset$1;->$callback:Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;

    iget-object p2, p0, Lexpo/modules/updates/loader/FileDownloader$downloadAsset$1;->$asset:Lexpo/modules/updates/db/entity/AssetEntity;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;->onSuccess(Lexpo/modules/updates/db/entity/AssetEntity;Z)V

    return-void
.end method
