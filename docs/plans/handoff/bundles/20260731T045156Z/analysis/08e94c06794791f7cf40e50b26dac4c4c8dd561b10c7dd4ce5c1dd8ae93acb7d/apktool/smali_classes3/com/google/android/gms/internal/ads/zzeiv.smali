.class final Lcom/google/android/gms/internal/ads/zzeiv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdjl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcca;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzffu;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzeix;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeix;Lcom/google/android/gms/internal/ads/zzcca;Lcom/google/android/gms/internal/ads/zzffu;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeiv;->zza:Lcom/google/android/gms/internal/ads/zzcca;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeiv;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeiv;->zzc:Lcom/google/android/gms/internal/ads/zzeix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzczb;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzb()Lcom/google/android/gms/ads/internal/overlay/zzn;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeiv;->zza:Lcom/google/android/gms/internal/ads/zzcca;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcca;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzeiv;->zzc:Lcom/google/android/gms/internal/ads/zzeix;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzeix;->zzd()Lcom/google/android/gms/internal/ads/zzdvi;

    move-result-object p3

    const/4 v0, 0x1

    .line 3
    invoke-static {p2, p1, v0, p3}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdvi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzffu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiv;->zzb:Lcom/google/android/gms/internal/ads/zzffu;

    return-object v0
.end method
