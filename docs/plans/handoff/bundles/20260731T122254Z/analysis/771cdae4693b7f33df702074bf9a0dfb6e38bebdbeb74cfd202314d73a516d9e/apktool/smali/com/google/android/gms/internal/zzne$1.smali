.class Lcom/google/android/gms/internal/zzne$1;
.super Lcom/google/android/gms/internal/zzmc$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzne;->findDataSources(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataSourcesRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzmc$zza<",
        "Lcom/google/android/gms/fitness/result/DataSourcesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzalr:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

.field final synthetic zzals:Lcom/google/android/gms/internal/zzne;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzne;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataSourcesRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzne$1;->zzals:Lcom/google/android/gms/internal/zzne;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzne$1;->zzalr:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzmc$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzne$1;->zzG(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataSourcesResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzG(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataSourcesResult;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/DataSourcesResult;->zzL(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataSourcesResult;

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

    check-cast p1, Lcom/google/android/gms/internal/zzmc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzne$1;->zza(Lcom/google/android/gms/internal/zzmc;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmc;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzne$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzne$zzb;-><init>(Lcom/google/android/gms/common/api/zza$zzb;Lcom/google/android/gms/internal/zzne$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmc;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmc;->zznM()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzmn;

    new-instance v2, Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzne$1;->zzalr:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;-><init>(Lcom/google/android/gms/fitness/request/DataSourcesRequest;Lcom/google/android/gms/internal/zzmg;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/zzmn;->zza(Lcom/google/android/gms/fitness/request/DataSourcesRequest;)V

    return-void
.end method
