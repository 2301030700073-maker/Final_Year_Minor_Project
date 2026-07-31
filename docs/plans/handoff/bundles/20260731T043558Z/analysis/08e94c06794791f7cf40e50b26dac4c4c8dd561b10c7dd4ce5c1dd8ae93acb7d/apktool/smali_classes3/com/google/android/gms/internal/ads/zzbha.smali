.class public final Lcom/google/android/gms/internal/ads/zzbha;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbge;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbge;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzbge;

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzbge;

.field public static final zze:Lcom/google/android/gms/internal/ads/zzbge;

.field public static final zzf:Lcom/google/android/gms/internal/ads/zzbge;

.field public static final zzg:Lcom/google/android/gms/internal/ads/zzbge;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "gads:adapter_initialization:red_button"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbha;->zza:Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:adapter_settings:red_button"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbha;->zzb:Lcom/google/android/gms/internal/ads/zzbge;

    .line 3
    const-string v0, "gads:ads_service_force_stop:red_button"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:banner_refresh_sequential_caching:red_button"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbha;->zzc:Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:ad_serving:enabled"

    .line 5
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:ad_preloading:enabled"

    .line 6
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:adaptive_banner:fail_invalid_ad_size"

    .line 7
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbha;->zzd:Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:sdk_use_dynamic_module"

    .line 8
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:signal_adapters:red_button"

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbha;->zze:Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:use_non_templated_client_sdkcore:enabled"

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbha;->zzf:Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:use_non_templated_mediation_client_sdkcore:enabled"

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbha;->zzg:Lcom/google/android/gms/internal/ads/zzbge;

    return-void
.end method
