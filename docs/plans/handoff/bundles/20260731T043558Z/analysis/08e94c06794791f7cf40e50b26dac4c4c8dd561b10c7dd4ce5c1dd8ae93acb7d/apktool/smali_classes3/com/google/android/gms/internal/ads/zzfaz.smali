.class final synthetic Lcom/google/android/gms/internal/ads/zzfaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfba;

.field private final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfba;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zza:Lcom/google/android/gms/internal/ads/zzfba;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zza:Lcom/google/android/gms/internal/ads/zzfba;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfba;->zze:Lcom/google/android/gms/internal/ads/zzfbe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbe;->zzi()Lcom/google/android/gms/internal/ads/zzfbu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfbu;->zzdN(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
