.class public final Lexpo/modules/updates/loader/FileDownloader$parseMultipartRemoteUpdateResponse$3;
.super Ljava/lang/Object;
.source "FileDownloader.kt"

# interfaces
.implements Lexpo/modules/updates/loader/FileDownloader$ParseManifestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/loader/FileDownloader;->parseMultipartRemoteUpdateResponse(Lokhttp3/Response;Lokhttp3/ResponseBody;Lexpo/modules/updates/manifest/ResponseHeaderData;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;)V
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
        "expo/modules/updates/loader/FileDownloader$parseMultipartRemoteUpdateResponse$3",
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

.field final synthetic $didError:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $maybeFinish:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $parseManifestResponse:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/updates/loader/FileDownloader$parseMultipartRemoteUpdateResponse$3;->$didError:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lexpo/modules/updates/loader/FileDownloader$parseMultipartRemoteUpdateResponse$3;->$callback:Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;

    iput-object p3, p0, Lexpo/modules/updates/loader/FileDownloader$parseMultipartRemoteUpdateResponse$3;->$parseManifestResponse:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lexpo/modules/updates/loader/FileDownloader$parseMultipartRemoteUpdateResponse$3;->$maybeFinish:Lkotlin/jvm/functions/Function0;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader$parseMultipartRemoteUpdateResponse$3;->$didError:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader$parseMultipartRemoteUpdateResponse$3;->$didError:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 312
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader$parseMultipartRemoteUpdateResponse$3;->$callback:Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;

    invoke-interface {v0, p1}, Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;)V
    .locals 1

    const-string v0, "manifestUpdateResponsePart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader$parseMultipartRemoteUpdateResponse$3;->$parseManifestResponse:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 317
    iget-object p1, p0, Lexpo/modules/updates/loader/FileDownloader$parseMultipartRemoteUpdateResponse$3;->$maybeFinish:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
