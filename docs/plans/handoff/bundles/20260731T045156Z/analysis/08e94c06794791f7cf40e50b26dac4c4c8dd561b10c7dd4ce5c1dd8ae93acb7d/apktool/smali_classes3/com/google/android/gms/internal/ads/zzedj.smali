.class final Lcom/google/android/gms/internal/ads/zzedj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzguf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbwt;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbxc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeea;Lcom/google/android/gms/internal/ads/zzbxc;Lcom/google/android/gms/internal/ads/zzbwt;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzb:Lcom/google/android/gms/internal/ads/zzbxc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzedj;->zza:Lcom/google/android/gms/internal/ads/zzbwt;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzb:Lcom/google/android/gms/internal/ads/zzbxc;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzba;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/util/zzba;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxc;->zzf(Lcom/google/android/gms/ads/internal/util/zzba;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Service can\'t call client"

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedj;->zzb:Lcom/google/android/gms/internal/ads/zzbxc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedj;->zza:Lcom/google/android/gms/internal/ads/zzbwt;

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbxc;->zze(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbwt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Service can\'t call client"

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
