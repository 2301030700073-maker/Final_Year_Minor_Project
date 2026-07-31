.class final synthetic Lcom/google/android/gms/internal/ads/zzgwd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwa;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgwe;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzhel;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgwe;Lcom/google/android/gms/internal/ads/zzhel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwd;->zza:Lcom/google/android/gms/internal/ads/zzgwe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgwd;->zzb:Lcom/google/android/gms/internal/ads/zzhel;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzgwc;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhew;->zza()Lcom/google/android/gms/internal/ads/zzhew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhew;->zzb()Lcom/google/android/gms/internal/ads/zzhen;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwd;->zza:Lcom/google/android/gms/internal/ads/zzgwe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgwd;->zzb:Lcom/google/android/gms/internal/ads/zzhel;

    const-string v2, "keyset_handle"

    const-string v3, "get_key"

    .line 2
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhen;->zza(Lcom/google/android/gms/internal/ads/zzhed;Lcom/google/android/gms/internal/ads/zzhel;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhem;

    return-void
.end method
