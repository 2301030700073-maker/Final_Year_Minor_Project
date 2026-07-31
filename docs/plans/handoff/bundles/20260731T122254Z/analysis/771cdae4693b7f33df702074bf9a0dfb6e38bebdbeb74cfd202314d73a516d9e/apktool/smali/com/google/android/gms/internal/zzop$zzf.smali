.class final Lcom/google/android/gms/internal/zzop$zzf;
.super Lcom/google/android/gms/internal/zzoo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzf"
.end annotation


# instance fields
.field private final zzOs:Lcom/google/android/gms/common/api/zza$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/zza$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaFx:Lcom/google/android/gms/common/api/zzi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/zzi<",
            "Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/zza$zzb;Lcom/google/android/gms/common/api/zzi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zza$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/common/api/zzi<",
            "Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoo;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/zza$zzb;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzop$zzf;->zzOs:Lcom/google/android/gms/common/api/zza$zzb;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/zzi;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzop$zzf;->zzaFx:Lcom/google/android/gms/common/api/zzi;

    return-void
.end method


# virtual methods
.method public onEndpointFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzop$zzf;->zzaFx:Lcom/google/android/gms/common/api/zzi;

    new-instance v7, Lcom/google/android/gms/internal/zzop$zzf$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzop$zzf$1;-><init>(Lcom/google/android/gms/internal/zzop$zzf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/google/android/gms/common/api/zzi;->zza(Lcom/google/android/gms/common/api/zzi$zzb;)V

    return-void
.end method

.method public onEndpointLost(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzop$zzf;->zzaFx:Lcom/google/android/gms/common/api/zzi;

    new-instance v1, Lcom/google/android/gms/internal/zzop$zzf$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzop$zzf$2;-><init>(Lcom/google/android/gms/internal/zzop$zzf;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zzi;->zza(Lcom/google/android/gms/common/api/zzi$zzb;)V

    return-void
.end method

.method public zzhX(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzop$zzf;->zzOs:Lcom/google/android/gms/common/api/zza$zzb;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/zza$zzb;->zzm(Ljava/lang/Object;)V

    return-void
.end method
