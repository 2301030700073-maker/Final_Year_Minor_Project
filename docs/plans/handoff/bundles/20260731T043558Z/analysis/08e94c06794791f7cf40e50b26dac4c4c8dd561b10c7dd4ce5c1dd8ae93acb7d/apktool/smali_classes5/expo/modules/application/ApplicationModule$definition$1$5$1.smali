.class public final Lexpo/modules/application/ApplicationModule$definition$1$5$1;
.super Ljava/lang/Object;
.source "ApplicationModule.kt"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/application/ApplicationModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "expo/modules/application/ApplicationModule$definition$1$5$1",
        "Lcom/android/installreferrer/api/InstallReferrerStateListener;",
        "onInstallReferrerSetupFinished",
        "",
        "responseCode",
        "",
        "onInstallReferrerServiceDisconnected",
        "expo-application_release"
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
.field final synthetic $installReferrer:Ljava/lang/StringBuilder;

.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field final synthetic $referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClient;Ljava/lang/StringBuilder;Lexpo/modules/kotlin/Promise;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    iput-object p2, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$installReferrer:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$promise:Lexpo/modules/kotlin/Promise;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 4

    .line 90
    iget-object v0, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$promise:Lexpo/modules/kotlin/Promise;

    const-string v1, "Connection to install referrer service was lost."

    const/4 v2, 0x0

    const-string v3, "ERR_APPLICATION_INSTALL_REFERRER_SERVICE_DISCONNECTED"

    invoke-interface {v0, v3, v1, v2}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 5

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 65
    const-string v1, "General error retrieving the install referrer: response code "

    const-string v2, "ERR_APPLICATION_INSTALL_REFERRER"

    const/4 v3, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$promise:Lexpo/modules/kotlin/Promise;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1, v3}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$promise:Lexpo/modules/kotlin/Promise;

    const-string v0, "ERR_APPLICATION_INSTALL_REFERRER_UNAVAILABLE"

    const-string v1, "The current Play Store app doesn\'t provide the installation referrer API, or the Play Store may not be installed."

    invoke-interface {p1, v0, v1, v3}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$promise:Lexpo/modules/kotlin/Promise;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1, v3}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 69
    :cond_2
    :try_start_0
    iget-object p1, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$installReferrer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    iget-object p1, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$promise:Lexpo/modules/kotlin/Promise;

    iget-object v0, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$installReferrer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/String;)V

    .line 86
    :goto_0
    iget-object p1, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    return-void

    :catch_0
    move-exception p1

    .line 72
    iget-object v0, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$promise:Lexpo/modules/kotlin/Promise;

    const-string v1, "RemoteException getting install referrer information. This may happen if the process hosting the remote object is no longer available."

    check-cast p1, Ljava/lang/Throwable;

    const-string v2, "ERR_APPLICATION_INSTALL_REFERRER_REMOTE_EXCEPTION"

    invoke-interface {v0, v2, v1, p1}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
