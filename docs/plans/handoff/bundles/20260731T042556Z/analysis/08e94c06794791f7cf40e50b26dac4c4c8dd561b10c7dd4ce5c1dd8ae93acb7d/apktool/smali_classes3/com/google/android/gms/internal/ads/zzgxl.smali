.class public final Lcom/google/android/gms/internal/ads/zzgxl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhfp;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgvu;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhet;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzheq;

.field private static final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxk;->zza:Lcom/google/android/gms/internal/ads/zzgxk;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgxh;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxl;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    const-class v0, Lcom/google/android/gms/internal/ads/zzgvm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhkw;->zzb:Lcom/google/android/gms/internal/ads/zzhkw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhix;->zzg()Lcom/google/android/gms/internal/ads/zzhyh;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhef;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhkw;Lcom/google/android/gms/internal/ads/zzhyh;)Lcom/google/android/gms/internal/ads/zzgvu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxl;->zzc:Lcom/google/android/gms/internal/ads/zzgvu;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxj;->zza:Lcom/google/android/gms/internal/ads/zzgxj;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxl;->zzd:Lcom/google/android/gms/internal/ads/zzhet;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxi;->zza:Lcom/google/android/gms/internal/ads/zzgxi;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxl;->zze:Lcom/google/android/gms/internal/ads/zzheq;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzgxl;->zzf:I

    return-void
.end method

.method public static zza(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget p0, Lcom/google/android/gms/internal/ads/zzgxl;->zzf:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhcy;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzhaw;->zza:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhfb;->zza()Lcom/google/android/gms/internal/ads/zzhfb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhaw;->zza(Lcom/google/android/gms/internal/ads/zzhfb;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhey;->zza()Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgxl;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhey;->zzb(Lcom/google/android/gms/internal/ads/zzhfp;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhex;->zza()Lcom/google/android/gms/internal/ads/zzhex;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "AES128_CTR_HMAC_SHA256"

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhae;->zze:Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgxm;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgxm;-><init>([B)V

    const/16 v4, 0x10

    .line 10
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgxm;->zza(I)Lcom/google/android/gms/internal/ads/zzgxm;

    const/16 v5, 0x20

    .line 11
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgxm;->zzb(I)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 12
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgxm;->zzd(I)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 13
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgxm;->zzc(I)Lcom/google/android/gms/internal/ads/zzgxm;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzgxn;->zzc:Lcom/google/android/gms/internal/ads/zzgxn;

    .line 14
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgxm;->zzf(Lcom/google/android/gms/internal/ads/zzgxn;)Lcom/google/android/gms/internal/ads/zzgxm;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzgxo;->zzc:Lcom/google/android/gms/internal/ads/zzgxo;

    .line 15
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgxm;->zze(Lcom/google/android/gms/internal/ads/zzgxo;)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxm;->zzg()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v2

    const-string v8, "AES128_CTR_HMAC_SHA256_RAW"

    .line 17
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AES256_CTR_HMAC_SHA256"

    sget-object v8, Lcom/google/android/gms/internal/ads/zzhae;->zzf:Lcom/google/android/gms/internal/ads/zzgxp;

    .line 18
    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgxm;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgxm;-><init>([B)V

    .line 19
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgxm;->zza(I)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 20
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgxm;->zzb(I)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 21
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgxm;->zzd(I)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 22
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgxm;->zzc(I)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 23
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgxm;->zzf(Lcom/google/android/gms/internal/ads/zzgxn;)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 24
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgxm;->zze(Lcom/google/android/gms/internal/ads/zzgxo;)Lcom/google/android/gms/internal/ads/zzgxm;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxm;->zzg()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v2

    const-string v3, "AES256_CTR_HMAC_SHA256_RAW"

    .line 26
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhex;->zzd(Ljava/util/Map;)V

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzheu;->zza()Lcom/google/android/gms/internal/ads/zzheu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgxl;->zzd:Lcom/google/android/gms/internal/ads/zzhet;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzheu;->zzb(Lcom/google/android/gms/internal/ads/zzhet;Ljava/lang/Class;)V

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhes;->zza()Lcom/google/android/gms/internal/ads/zzhes;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgxl;->zze:Lcom/google/android/gms/internal/ads/zzheq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhes;->zzb(Lcom/google/android/gms/internal/ads/zzheq;Ljava/lang/Class;)V

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdw;->zza()Lcom/google/android/gms/internal/ads/zzhdw;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgxl;->zzc:Lcom/google/android/gms/internal/ads/zzgvu;

    const/4 v2, 0x1

    .line 31
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhdw;->zzf(Lcom/google/android/gms/internal/ads/zzgvu;IZ)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-CTR-HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
