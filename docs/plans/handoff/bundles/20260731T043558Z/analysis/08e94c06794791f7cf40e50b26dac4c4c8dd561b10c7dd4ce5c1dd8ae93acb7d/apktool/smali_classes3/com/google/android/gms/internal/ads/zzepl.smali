.class final synthetic Lcom/google/android/gms/internal/ads/zzepl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzepn;

.field private final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzepn;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepl;->zza:Lcom/google/android/gms/internal/ads/zzepn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepl;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepl;->zza:Lcom/google/android/gms/internal/ads/zzepn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzepn;->zze:Lcom/google/android/gms/internal/ads/zzepq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzepq;->zzf()Lcom/google/android/gms/internal/ads/zzepg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzepg;->zze()Lcom/google/android/gms/internal/ads/zzcyr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepl;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcyr;->zzdN(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
