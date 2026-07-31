.class final Lcom/google/android/gms/internal/ads/zzemw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcca;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfgf;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzffu;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzend;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzemy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzemy;Lcom/google/android/gms/internal/ads/zzcca;Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzend;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemw;->zza:Lcom/google/android/gms/internal/ads/zzcca;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzemw;->zzb:Lcom/google/android/gms/internal/ads/zzfgf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzemw;->zzc:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzemw;->zzd:Lcom/google/android/gms/internal/ads/zzend;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemw;->zze:Lcom/google/android/gms/internal/ads/zzemy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemw;->zzd:Lcom/google/android/gms/internal/ads/zzend;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemw;->zze:Lcom/google/android/gms/internal/ads/zzemy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzemy;->zzd()Lcom/google/android/gms/internal/ads/zzenh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzemw;->zzb:Lcom/google/android/gms/internal/ads/zzfgf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzemw;->zzc:Lcom/google/android/gms/internal/ads/zzffu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzemw;->zza:Lcom/google/android/gms/internal/ads/zzcca;

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/google/android/gms/internal/ads/zzenh;->zza(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzend;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzcca;->zzc(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method
