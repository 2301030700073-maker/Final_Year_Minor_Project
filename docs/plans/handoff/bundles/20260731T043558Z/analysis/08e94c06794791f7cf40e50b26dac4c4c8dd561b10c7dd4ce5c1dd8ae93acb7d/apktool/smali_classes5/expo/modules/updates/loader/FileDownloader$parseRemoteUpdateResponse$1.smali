.class public final Lexpo/modules/updates/loader/FileDownloader$parseRemoteUpdateResponse$1;
.super Ljava/lang/Object;
.source "FileDownloader.kt"

# interfaces
.implements Lexpo/modules/updates/loader/FileDownloader$ParseManifestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/loader/FileDownloader;->parseRemoteUpdateResponse$expo_updates_release(Lokhttp3/Response;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "expo/modules/updates/loader/FileDownloader$parseRemoteUpdateResponse$1",
        "Lexpo/modules/updates/loader/FileDownloader$ParseManifestCallback;",
        "onFailure",
        "",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onSuccess",
        "manifestUpdateResponsePart",
        "Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;",
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
.field final synthetic $callback:Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;

.field final synthetic $responseHeaderData:Lexpo/modules/updates/manifest/ResponseHeaderData;


# direct methods
.method constructor <init>(Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;Lexpo/modules/updates/manifest/ResponseHeaderData;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/updates/loader/FileDownloader$parseRemoteUpdateResponse$1;->$callback:Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;

    iput-object p2, p0, Lexpo/modules/updates/loader/FileDownloader$parseRemoteUpdateResponse$1;->$responseHeaderData:Lexpo/modules/updates/manifest/ResponseHeaderData;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader$parseRemoteUpdateResponse$1;->$callback:Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;

    invoke-interface {v0, p1}, Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;)V
    .locals 4

    const-string v0, "manifestUpdateResponsePart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader$parseRemoteUpdateResponse$1;->$callback:Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;

    .line 165
    new-instance v1, Lexpo/modules/updates/loader/UpdateResponse;

    .line 166
    iget-object v2, p0, Lexpo/modules/updates/loader/FileDownloader$parseRemoteUpdateResponse$1;->$responseHeaderData:Lexpo/modules/updates/manifest/ResponseHeaderData;

    const/4 v3, 0x0

    .line 165
    invoke-direct {v1, v2, p1, v3}, Lexpo/modules/updates/loader/UpdateResponse;-><init>(Lexpo/modules/updates/manifest/ResponseHeaderData;Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;Lexpo/modules/updates/loader/UpdateResponsePart$DirectiveUpdateResponsePart;)V

    .line 164
    invoke-interface {v0, v1}, Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;->onSuccess(Lexpo/modules/updates/loader/UpdateResponse;)V

    return-void
.end method
