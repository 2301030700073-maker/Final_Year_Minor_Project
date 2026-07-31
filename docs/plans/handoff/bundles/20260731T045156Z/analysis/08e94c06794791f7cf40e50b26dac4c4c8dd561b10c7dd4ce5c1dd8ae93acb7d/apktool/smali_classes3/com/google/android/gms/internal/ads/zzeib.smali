.class final Lcom/google/android/gms/internal/ads/zzeib;
.super Lcom/google/android/gms/internal/ads/zzbss;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzehn;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzehn;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbss;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeib;->zza:Lcom/google/android/gms/internal/ads/zzehn;

    return-void
.end method


# virtual methods
.method public final zze()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeib;->zza:Lcom/google/android/gms/internal/ads/zzehn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzehn;->zzc:Lcom/google/android/gms/internal/ads/zzczy;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeiz;->zzj()V

    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeib;->zza:Lcom/google/android/gms/internal/ads/zzehn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzehn;->zzc:Lcom/google/android/gms/internal/ads/zzczy;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeiz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeiz;->zzw(ILjava/lang/String;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeib;->zza:Lcom/google/android/gms/internal/ads/zzehn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzehn;->zzc:Lcom/google/android/gms/internal/ads/zzczy;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeiz;->zzx(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
