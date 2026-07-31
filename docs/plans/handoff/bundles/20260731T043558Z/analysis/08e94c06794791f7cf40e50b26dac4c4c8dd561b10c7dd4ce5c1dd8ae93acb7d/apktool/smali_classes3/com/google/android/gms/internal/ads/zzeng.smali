.class final Lcom/google/android/gms/internal/ads/zzeng;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdhx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzenh;Lcom/google/android/gms/internal/ads/zzdhx;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeng;->zza:Lcom/google/android/gms/internal/ads/zzdhx;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeng;->zza:Lcom/google/android/gms/internal/ads/zzdhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhx;->zzc()Lcom/google/android/gms/internal/ads/zzcym;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcym;->onAdClicked()V

    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeng;->zza:Lcom/google/android/gms/internal/ads/zzdhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhx;->zzd()Lcom/google/android/gms/internal/ads/zzczg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzczg;->zza()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhx;->zze()Lcom/google/android/gms/internal/ads/zzdgx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgx;->zza()V

    return-void
.end method
