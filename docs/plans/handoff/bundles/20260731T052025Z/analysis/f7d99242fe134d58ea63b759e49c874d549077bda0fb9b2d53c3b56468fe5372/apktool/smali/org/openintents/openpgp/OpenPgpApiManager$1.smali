.class public final Lorg/openintents/openpgp/OpenPgpApiManager$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/openintents/openpgp/util/OpenPgpServiceConnection$OnBound;


# instance fields
.field public final synthetic this$0:Lorg/openintents/openpgp/OpenPgpApiManager;


# direct methods
.method public constructor <init>(Lorg/openintents/openpgp/OpenPgpApiManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/openintents/openpgp/OpenPgpApiManager$1;->this$0:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBound(Lorg/openintents/openpgp/IOpenPgpService2;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/openintents/openpgp/OpenPgpApiManager$1;->this$0:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1, p1}, Lorg/openintents/openpgp/util/OpenPgpApi;-><init>(Landroid/content/Context;Lorg/openintents/openpgp/IOpenPgpService2;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/openintents/openpgp/OpenPgpApiManager;->refreshConnection()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "error connecting to crypto provider!"

    .line 5
    .line 6
    invoke-static {p1, v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->ERROR:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/openintents/openpgp/OpenPgpApiManager$1;->this$0:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/OpenPgpApiManager;->setOpenPgpProviderState(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;->ConnectionFailed:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/OpenPgpApiManager;->callbackOpenPgpProviderError(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
