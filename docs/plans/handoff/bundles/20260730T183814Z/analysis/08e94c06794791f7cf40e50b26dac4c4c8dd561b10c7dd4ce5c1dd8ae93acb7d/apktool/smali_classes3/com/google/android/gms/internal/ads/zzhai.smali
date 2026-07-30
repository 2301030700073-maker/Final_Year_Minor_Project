.class public final Lcom/google/android/gms/internal/ads/zzhai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzheq;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhfp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhah;->zza:Lcom/google/android/gms/internal/ads/zzhah;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhai;->zza:Lcom/google/android/gms/internal/ads/zzheq;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhag;->zza:Lcom/google/android/gms/internal/ads/zzhag;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhaf;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhai;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    return-void
.end method

.method public static zza(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget p0, Lcom/google/android/gms/internal/ads/zzhcl;->zza:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhfb;->zza()Lcom/google/android/gms/internal/ads/zzhfb;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhcl;->zza(Lcom/google/android/gms/internal/ads/zzhfb;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhex;->zza()Lcom/google/android/gms/internal/ads/zzhex;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    .line 4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "XAES_256_GCM_192_BIT_NONCE"

    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhae;->zzg:Lcom/google/android/gms/internal/ads/zzhak;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "XAES_256_GCM_192_BIT_NONCE_NO_PREFIX"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhae;->zzh:Lcom/google/android/gms/internal/ads/zzhak;

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "XAES_256_GCM_160_BIT_NONCE_NO_PREFIX"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhae;->zzi:Lcom/google/android/gms/internal/ads/zzhak;

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X_AES_GCM_8_BYTE_SALT_NO_PREFIX"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhae;->zzj:Lcom/google/android/gms/internal/ads/zzhak;

    .line 8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhex;->zzd(Ljava/util/Map;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhey;->zza()Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhai;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhey;->zzb(Lcom/google/android/gms/internal/ads/zzhfp;)V

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhes;->zza()Lcom/google/android/gms/internal/ads/zzhes;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhai;->zza:Lcom/google/android/gms/internal/ads/zzheq;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhak;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzhes;->zzb(Lcom/google/android/gms/internal/ads/zzheq;Ljava/lang/Class;)V

    return-void
.end method
