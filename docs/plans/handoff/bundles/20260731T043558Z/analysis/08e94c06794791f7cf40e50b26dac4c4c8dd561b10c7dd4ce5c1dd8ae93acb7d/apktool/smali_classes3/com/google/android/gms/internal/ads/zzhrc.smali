.class public final Lcom/google/android/gms/internal/ads/zzhrc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwl;


# static fields
.field private static final zza:[B

.field private static final zzb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhrc;->zza:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhrc;->zzb:[B

    return-void
.end method

.method private constructor <init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/google/android/gms/internal/ads/zzhpd;Lcom/google/android/gms/internal/ads/zzhpd;I[B[BLjava/security/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x2

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzhcy;->zza(I)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p5

    invoke-virtual {p5}, Ljava/math/BigInteger;->bitLength()I

    move-result p5

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzhsx;->zzc(I)V

    .line 4
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhsx;->zzd(Ljava/math/BigInteger;)V

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhrd;->zzc(Lcom/google/android/gms/internal/ads/zzhpd;)Ljava/lang/String;

    .line 6
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzhrd;->zzd(Lcom/google/android/gms/internal/ads/zzhpd;Lcom/google/android/gms/internal/ads/zzhpd;I)Ljava/security/spec/PSSParameterSpec;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Cannot use RSA PSS in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhph;)Lcom/google/android/gms/internal/ads/zzgwl;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhrd;->zzb()Ljava/security/Provider;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 2
    const-string v0, "RSA"

    .line 3
    invoke-static {v0, v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhph;->zzd()Lcom/google/android/gms/internal/ads/zzhpf;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhph;->zze()Lcom/google/android/gms/internal/ads/zzhpj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhpj;->zzd()Ljava/math/BigInteger;

    move-result-object v9

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhpf;->zzd()Ljava/math/BigInteger;

    move-result-object v10

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhph;->zzh()Lcom/google/android/gms/internal/ads/zzhta;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhta;->zzb(Lcom/google/android/gms/internal/ads/zzgwn;)Ljava/math/BigInteger;

    move-result-object v11

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhph;->zzf()Lcom/google/android/gms/internal/ads/zzhta;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhta;->zzb(Lcom/google/android/gms/internal/ads/zzgwn;)Ljava/math/BigInteger;

    move-result-object v12

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhph;->zzg()Lcom/google/android/gms/internal/ads/zzhta;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhta;->zzb(Lcom/google/android/gms/internal/ads/zzgwn;)Ljava/math/BigInteger;

    move-result-object v13

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhph;->zzi()Lcom/google/android/gms/internal/ads/zzhta;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhta;->zzb(Lcom/google/android/gms/internal/ads/zzgwn;)Ljava/math/BigInteger;

    move-result-object v14

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhph;->zzj()Lcom/google/android/gms/internal/ads/zzhta;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhta;->zzb(Lcom/google/android/gms/internal/ads/zzgwn;)Ljava/math/BigInteger;

    move-result-object v15

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhph;->zzk()Lcom/google/android/gms/internal/ads/zzhta;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhta;->zzb(Lcom/google/android/gms/internal/ads/zzgwn;)Ljava/math/BigInteger;

    move-result-object v16

    move-object v8, v2

    invoke-direct/range {v8 .. v16}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 14
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/RSAPrivateCrtKey;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzhrc;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhpf;->zzf()Lcom/google/android/gms/internal/ads/zzhpd;

    move-result-object v3

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhpf;->zzg()Lcom/google/android/gms/internal/ads/zzhpd;

    move-result-object v4

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhpf;->zzh()I

    move-result v5

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhph;->zze()Lcom/google/android/gms/internal/ads/zzhpj;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhpr;->zze()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object v6

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhpf;->zze()Lcom/google/android/gms/internal/ads/zzhpe;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhpe;->zzc:Lcom/google/android/gms/internal/ads/zzhpe;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrc;->zzb:[B

    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrc;->zza:[B

    :goto_0
    move-object v9, v0

    move-object v0, v8

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzhrc;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/google/android/gms/internal/ads/zzhpd;Lcom/google/android/gms/internal/ads/zzhpd;I[B[BLjava/security/Provider;)V

    return-object v8

    .line 2
    :cond_1
    new-instance v0, Ljava/security/NoSuchProviderException;

    const-string v1, "RSA SSA PSS using Conscrypt is not supported."

    invoke-direct {v0, v1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final zza([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method
