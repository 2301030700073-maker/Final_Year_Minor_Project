.class public final Lcom/google/android/gms/internal/ads/zzgyd;
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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgya;->zza:Lcom/google/android/gms/internal/ads/zzgya;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgxz;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgyd;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    const-class v0, Lcom/google/android/gms/internal/ads/zzgvm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhkw;->zzb:Lcom/google/android/gms/internal/ads/zzhkw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjn;->zze()Lcom/google/android/gms/internal/ads/zzhyh;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhef;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhkw;Lcom/google/android/gms/internal/ads/zzhyh;)Lcom/google/android/gms/internal/ads/zzgvu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgyd;->zzc:Lcom/google/android/gms/internal/ads/zzgvu;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyc;->zza:Lcom/google/android/gms/internal/ads/zzgyc;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgyd;->zzd:Lcom/google/android/gms/internal/ads/zzhet;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyb;->zza:Lcom/google/android/gms/internal/ads/zzgyb;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgyd;->zze:Lcom/google/android/gms/internal/ads/zzheq;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzgyd;->zzf:I

    return-void
.end method

.method public static zza(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget p0, Lcom/google/android/gms/internal/ads/zzgyd;->zzf:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhcy;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzhbi;->zza:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhfb;->zza()Lcom/google/android/gms/internal/ads/zzhfb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhbi;->zza(Lcom/google/android/gms/internal/ads/zzhfb;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhey;->zza()Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgyd;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhey;->zzb(Lcom/google/android/gms/internal/ads/zzhfp;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhex;->zza()Lcom/google/android/gms/internal/ads/zzhex;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "AES128_GCM"

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhae;->zza:Lcom/google/android/gms/internal/ads/zzgyg;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgye;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgye;-><init>([B)V

    const/16 v4, 0xc

    .line 10
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgye;->zzb(I)Lcom/google/android/gms/internal/ads/zzgye;

    const/16 v5, 0x10

    .line 11
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgye;->zza(I)Lcom/google/android/gms/internal/ads/zzgye;

    .line 12
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgye;->zzc(I)Lcom/google/android/gms/internal/ads/zzgye;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzgyf;->zzc:Lcom/google/android/gms/internal/ads/zzgyf;

    .line 13
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgye;->zzd(Lcom/google/android/gms/internal/ads/zzgyf;)Lcom/google/android/gms/internal/ads/zzgye;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgye;->zze()Lcom/google/android/gms/internal/ads/zzgyg;

    move-result-object v2

    const-string v7, "AES128_GCM_RAW"

    .line 15
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AES256_GCM"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzhae;->zzb:Lcom/google/android/gms/internal/ads/zzgyg;

    .line 16
    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgye;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgye;-><init>([B)V

    .line 17
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgye;->zzb(I)Lcom/google/android/gms/internal/ads/zzgye;

    const/16 v3, 0x20

    .line 18
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgye;->zza(I)Lcom/google/android/gms/internal/ads/zzgye;

    .line 19
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgye;->zzc(I)Lcom/google/android/gms/internal/ads/zzgye;

    .line 20
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgye;->zzd(Lcom/google/android/gms/internal/ads/zzgyf;)Lcom/google/android/gms/internal/ads/zzgye;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgye;->zze()Lcom/google/android/gms/internal/ads/zzgyg;

    move-result-object v2

    const-string v3, "AES256_GCM_RAW"

    .line 22
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhex;->zzd(Ljava/util/Map;)V

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzheu;->zza()Lcom/google/android/gms/internal/ads/zzheu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgyd;->zzd:Lcom/google/android/gms/internal/ads/zzhet;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgyg;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzheu;->zzb(Lcom/google/android/gms/internal/ads/zzhet;Ljava/lang/Class;)V

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhes;->zza()Lcom/google/android/gms/internal/ads/zzhes;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgyd;->zze:Lcom/google/android/gms/internal/ads/zzheq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgyg;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhes;->zzb(Lcom/google/android/gms/internal/ads/zzheq;Ljava/lang/Class;)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdw;->zza()Lcom/google/android/gms/internal/ads/zzhdw;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgyd;->zzc:Lcom/google/android/gms/internal/ads/zzgvu;

    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhdw;->zzf(Lcom/google/android/gms/internal/ads/zzgvu;IZ)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
