.class public Lorg/openintents/openpgp/util/OpenPgpServiceConnection;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/openpgp/util/OpenPgpServiceConnection$OnBound;
    }
.end annotation


# instance fields
.field public final mApplicationContext:Landroid/content/Context;

.field public final mOnBoundListener:Lorg/openintents/openpgp/util/OpenPgpServiceConnection$OnBound;

.field public final mProviderPackageName:Ljava/lang/String;

.field public mService:Lorg/openintents/openpgp/IOpenPgpService2;

.field public final mServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/openintents/openpgp/util/OpenPgpServiceConnection$OnBound;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection$1;-><init>(Lorg/openintents/openpgp/util/OpenPgpServiceConnection;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection$1;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mApplicationContext:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p2, p0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mProviderPackageName:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p3, p0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mOnBoundListener:Lorg/openintents/openpgp/util/OpenPgpServiceConnection$OnBound;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final bindToService()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mService:Lorg/openintents/openpgp/IOpenPgpService2;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mOnBoundListener:Lorg/openintents/openpgp/util/OpenPgpServiceConnection$OnBound;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v2, "org.openintents.openpgp.IOpenPgpService2"

    .line 10
    .line 11
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mProviderPackageName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mApplicationContext:Landroid/content/Context;

    .line 20
    .line 21
    iget-object p0, p0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection$1;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-virtual {v2, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    .line 32
    .line 33
    const-string v0, "bindService() returned false!"

    .line 34
    .line 35
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-interface {v1, p0}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection$OnBound;->onError(Ljava/lang/Exception;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-interface {v1, v0}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection$OnBound;->onBound(Lorg/openintents/openpgp/IOpenPgpService2;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    return-void
.end method
