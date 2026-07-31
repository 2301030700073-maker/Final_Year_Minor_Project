.class Lcom/google/android/gms/internal/zznf$3;
.super Lcom/google/android/gms/internal/zzmd$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zznf;->insertSession(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/SessionInsertRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzalC:Lcom/google/android/gms/internal/zznf;

.field final synthetic zzalE:Lcom/google/android/gms/fitness/request/SessionInsertRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zznf;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/SessionInsertRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznf$3;->zzalC:Lcom/google/android/gms/internal/zznf;

    iput-object p3, p0, Lcom/google/android/gms/internal/zznf$3;->zzalE:Lcom/google/android/gms/fitness/request/SessionInsertRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzmd$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzmd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zznf$3;->zza(Lcom/google/android/gms/internal/zzmd;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmd;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzng;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzng;-><init>(Lcom/google/android/gms/common/api/zza$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmd;->zznM()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzmo;

    new-instance v2, Lcom/google/android/gms/fitness/request/SessionInsertRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zznf$3;->zzalE:Lcom/google/android/gms/fitness/request/SessionInsertRequest;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;-><init>(Lcom/google/android/gms/fitness/request/SessionInsertRequest;Lcom/google/android/gms/internal/zzmu;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/zzmo;->zza(Lcom/google/android/gms/fitness/request/SessionInsertRequest;)V

    return-void
.end method
