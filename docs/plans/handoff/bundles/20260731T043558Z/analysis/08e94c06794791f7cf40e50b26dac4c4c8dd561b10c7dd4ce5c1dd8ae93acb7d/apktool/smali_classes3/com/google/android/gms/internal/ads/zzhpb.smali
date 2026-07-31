.class public final Lcom/google/android/gms/internal/ads/zzhpb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhfp;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhfp;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzgwk;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzgvu;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzheq;

.field private static final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhoy;->zza:Lcom/google/android/gms/internal/ads/zzhoy;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhov;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgwl;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhpb;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhpa;->zza:Lcom/google/android/gms/internal/ads/zzhpa;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhox;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgwm;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhfp;->zzd(Lcom/google/android/gms/internal/ads/zzhfo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhfp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhpb;->zzc:Lcom/google/android/gms/internal/ads/zzhfp;

    const-class v0, Lcom/google/android/gms/internal/ads/zzgwl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhmb;->zzl()Lcom/google/android/gms/internal/ads/zzhyh;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PrivateKey"

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhef;->zzf(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhyh;)Lcom/google/android/gms/internal/ads/zzgwk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhpb;->zzd:Lcom/google/android/gms/internal/ads/zzgwk;

    const-class v0, Lcom/google/android/gms/internal/ads/zzgwm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhkw;->zzd:Lcom/google/android/gms/internal/ads/zzhkw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhmd;->zzi()Lcom/google/android/gms/internal/ads/zzhyh;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PublicKey"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhef;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhkw;Lcom/google/android/gms/internal/ads/zzhyh;)Lcom/google/android/gms/internal/ads/zzgvu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhpb;->zze:Lcom/google/android/gms/internal/ads/zzgvu;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhoz;->zza:Lcom/google/android/gms/internal/ads/zzhoz;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhpb;->zzf:Lcom/google/android/gms/internal/ads/zzheq;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzhpb;->zzg:I

    return-void
.end method

.method public static zza(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget p0, Lcom/google/android/gms/internal/ads/zzhpb;->zzg:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhcy;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzhqs;->zza:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhfb;->zza()Lcom/google/android/gms/internal/ads/zzhfb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhqs;->zza(Lcom/google/android/gms/internal/ads/zzhfb;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhex;->zza()Lcom/google/android/gms/internal/ads/zzhex;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "RSA_SSA_PKCS1_3072_SHA256_F4"

    .line 7
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhoh;->zzh:Lcom/google/android/gms/internal/ads/zzhot;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhot;->zza:Ljava/math/BigInteger;

    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhoq;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhoq;-><init>([B)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhor;->zza:Lcom/google/android/gms/internal/ads/zzhor;

    .line 10
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhoq;->zzd(Lcom/google/android/gms/internal/ads/zzhor;)Lcom/google/android/gms/internal/ads/zzhoq;

    const/16 v4, 0xc00

    .line 11
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhoq;->zza(I)Lcom/google/android/gms/internal/ads/zzhoq;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhot;->zza:Ljava/math/BigInteger;

    .line 12
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhoq;->zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhoq;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhos;->zzd:Lcom/google/android/gms/internal/ads/zzhos;

    .line 13
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhoq;->zzc(Lcom/google/android/gms/internal/ads/zzhos;)Lcom/google/android/gms/internal/ads/zzhoq;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhoq;->zze()Lcom/google/android/gms/internal/ads/zzhot;

    move-result-object v2

    const-string v6, "RSA_SSA_PKCS1_3072_SHA256_F4_RAW"

    .line 15
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "RSA_SSA_PKCS1_3072_SHA256_F4_WITHOUT_PREFIX"

    sget-object v6, Lcom/google/android/gms/internal/ads/zzhoh;->zzi:Lcom/google/android/gms/internal/ads/zzhot;

    .line 16
    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "RSA_SSA_PKCS1_4096_SHA512_F4"

    sget-object v6, Lcom/google/android/gms/internal/ads/zzhoh;->zzj:Lcom/google/android/gms/internal/ads/zzhot;

    .line 17
    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhoq;

    .line 18
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhoq;-><init>([B)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhor;->zzc:Lcom/google/android/gms/internal/ads/zzhor;

    .line 19
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhoq;->zzd(Lcom/google/android/gms/internal/ads/zzhor;)Lcom/google/android/gms/internal/ads/zzhoq;

    const/16 v3, 0x1000

    .line 20
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhoq;->zza(I)Lcom/google/android/gms/internal/ads/zzhoq;

    .line 21
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhoq;->zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhoq;

    .line 22
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhoq;->zzc(Lcom/google/android/gms/internal/ads/zzhos;)Lcom/google/android/gms/internal/ads/zzhoq;

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhoq;->zze()Lcom/google/android/gms/internal/ads/zzhot;

    move-result-object v2

    const-string v3, "RSA_SSA_PKCS1_4096_SHA512_F4_RAW"

    .line 24
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhex;->zzd(Ljava/util/Map;)V

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhey;->zza()Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhpb;->zzb:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhey;->zzb(Lcom/google/android/gms/internal/ads/zzhfp;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhey;->zza()Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhpb;->zzc:Lcom/google/android/gms/internal/ads/zzhfp;

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhey;->zzb(Lcom/google/android/gms/internal/ads/zzhfp;)V

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhes;->zza()Lcom/google/android/gms/internal/ads/zzhes;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhpb;->zzf:Lcom/google/android/gms/internal/ads/zzheq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhot;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhes;->zzb(Lcom/google/android/gms/internal/ads/zzheq;Ljava/lang/Class;)V

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdw;->zza()Lcom/google/android/gms/internal/ads/zzhdw;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhpb;->zzd:Lcom/google/android/gms/internal/ads/zzgwk;

    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhdw;->zzf(Lcom/google/android/gms/internal/ads/zzgvu;IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdw;->zza()Lcom/google/android/gms/internal/ads/zzhdw;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhpb;->zze:Lcom/google/android/gms/internal/ads/zzgvu;

    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhdw;->zzf(Lcom/google/android/gms/internal/ads/zzgvu;IZ)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use RSA SSA PKCS1 in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
