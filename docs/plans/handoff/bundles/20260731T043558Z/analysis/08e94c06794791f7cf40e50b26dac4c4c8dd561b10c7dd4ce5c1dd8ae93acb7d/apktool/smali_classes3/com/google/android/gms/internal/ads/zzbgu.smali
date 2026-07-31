.class public final Lcom/google/android/gms/internal/ads/zzbgu;
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

.field public static final zzh:Lcom/google/android/gms/internal/ads/zzbge;

.field public static final zzi:Lcom/google/android/gms/internal/ads/zzbge;

.field public static final zzj:Lcom/google/android/gms/internal/ads/zzbge;

.field public static final zzk:Lcom/google/android/gms/internal/ads/zzbge;

.field public static final zzl:Lcom/google/android/gms/internal/ads/zzbge;

.field public static final zzm:Lcom/google/android/gms/internal/ads/zzbge;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "gads:disable_adapter_flag_shared_pref_listener_v2:enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgu;->zza:Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:disable_flag_shared_pref_listener_v2:enabled"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgu;->zzb:Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:enable_adapter_flags:enabled"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgu;->zzc:Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:include_package_name_v2:enabled"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgu;->zzd:Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:js_flags:mf"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgu;->zze:Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:js_flags:update_interval"

    const-wide/32 v2, 0xdbba00

    .line 6
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbge;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgu;->zzf:Lcom/google/android/gms/internal/ads/zzbge;

    .line 7
    const-string v0, "gads:persist_js_flag:ars"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgu;->zzg:Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:persist_js_flag:as"

    .line 8
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:persist_js_flag:scar"

    .line 9
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgu;->zzh:Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:read_local_flags_v2:enabled"

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgu;->zzi:Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:read_local_flags_cld_v2:enabled"

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgu;->zzj:Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:write_local_flags_cld_v2:enabled"

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgu;->zzk:Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:write_local_flags_client_v2:enabled"

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgu;->zzl:Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:write_local_flags_service_v2:enabled"

    .line 14
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgu;->zzm:Lcom/google/android/gms/internal/ads/zzbge;

    return-void
.end method
