.class public final Lorg/openintents/openpgp/util/OpenPgpServiceConnection$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;


# direct methods
.method public constructor <init>(Lorg/openintents/openpgp/util/OpenPgpServiceConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection$1;->this$0:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    sget p1, Lorg/openintents/openpgp/IOpenPgpService2$Stub;->$r8$clinit:I

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string p1, "org.openintents.openpgp.IOpenPgpService2"

    .line 8
    .line 9
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    instance-of v0, p1, Lorg/openintents/openpgp/IOpenPgpService2;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p1, Lorg/openintents/openpgp/IOpenPgpService2;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    new-instance p1, Lorg/openintents/openpgp/IOpenPgpService2$Stub$Proxy;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p2, p1, Lorg/openintents/openpgp/IOpenPgpService2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 28
    .line 29
    :goto_0
    iget-object p0, p0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection$1;->this$0:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 30
    .line 31
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mService:Lorg/openintents/openpgp/IOpenPgpService2;

    .line 32
    .line 33
    iget-object p0, p0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mOnBoundListener:Lorg/openintents/openpgp/util/OpenPgpServiceConnection$OnBound;

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    invoke-interface {p0, p1}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection$OnBound;->onBound(Lorg/openintents/openpgp/IOpenPgpService2;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection$1;->this$0:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mService:Lorg/openintents/openpgp/IOpenPgpService2;

    .line 5
    .line 6
    return-void
.end method
