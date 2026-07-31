.class Lcom/google/android/gms/internal/zzmz$6;
.super Lcom/google/android/gms/internal/zzlx$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmz;->listClaimedBleDevices(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzlx$zza<",
        "Lcom/google/android/gms/fitness/result/BleDevicesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzakY:Lcom/google/android/gms/internal/zzmz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmz;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmz$6;->zzakY:Lcom/google/android/gms/internal/zzmz;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzlx$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmz$6;->zzB(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzB(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/BleDevicesResult;->zzJ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzlx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmz$6;->zza(Lcom/google/android/gms/internal/zzlx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzlx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzmz$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzmz$zza;-><init>(Lcom/google/android/gms/common/api/zza$zzb;Lcom/google/android/gms/internal/zzmz$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzlx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzlx;->zznM()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzmi;

    new-instance v2, Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;-><init>(Lcom/google/android/gms/internal/zzni;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/zzmi;->zza(Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;)V

    return-void
.end method
