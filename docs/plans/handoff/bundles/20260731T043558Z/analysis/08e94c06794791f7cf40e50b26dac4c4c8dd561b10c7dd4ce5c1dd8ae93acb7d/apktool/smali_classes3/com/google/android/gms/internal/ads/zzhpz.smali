.class public final Lcom/google/android/gms/internal/ads/zzhpz;
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

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhpz;->zza:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhpz;->zzb:[B

    return-void
.end method

.method private constructor <init>(Ljava/security/interfaces/ECPrivateKey;Lcom/google/android/gms/internal/ads/zzhsi;Lcom/google/android/gms/internal/ads/zzhrs;[B[BLjava/security/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhcy;->zza(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhsw;->zza(Lcom/google/android/gms/internal/ads/zzhsi;)Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use ECDSA in FIPS-mode, as BoringCrypto is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhnd;)Lcom/google/android/gms/internal/ads/zzgwl;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdc;->zza()Ljava/security/Provider;

    move-result-object v6

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqa;->zza:Lcom/google/android/gms/internal/ads/zzhdp;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnd;->zzd()Lcom/google/android/gms/internal/ads/zzhnb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhnb;->zze()Lcom/google/android/gms/internal/ads/zzhmy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhdp;->zzb(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhsi;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqa;->zzb:Lcom/google/android/gms/internal/ads/zzhdp;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnd;->zzd()Lcom/google/android/gms/internal/ads/zzhnb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhnb;->zzc()Lcom/google/android/gms/internal/ads/zzhmz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhdp;->zzb(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhrs;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqa;->zzc:Lcom/google/android/gms/internal/ads/zzhdp;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnd;->zzd()Lcom/google/android/gms/internal/ads/zzhnb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhnb;->zzd()Lcom/google/android/gms/internal/ads/zzhmx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhdp;->zzb(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhrr;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhrt;->zzb(Lcom/google/android/gms/internal/ads/zzhrr;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnd;->zzf()Lcom/google/android/gms/internal/ads/zzhta;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzhta;->zzb(Lcom/google/android/gms/internal/ads/zzgwn;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    const-string v0, "EC"

    if-eqz v6, :cond_0

    .line 9
    invoke-static {v0, v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_0
    sget-object v4, Lcom/google/android/gms/internal/ads/zzhrz;->zzf:Lcom/google/android/gms/internal/ads/zzhrz;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzhrz;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    .line 11
    :goto_0
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzhpz;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnd;->zze()Lcom/google/android/gms/internal/ads/zzhnf;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhpr;->zze()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object v4

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnd;->zzd()Lcom/google/android/gms/internal/ads/zzhnb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnb;->zzf()Lcom/google/android/gms/internal/ads/zzhna;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhna;->zzc:Lcom/google/android/gms/internal/ads/zzhna;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhpz;->zzb:[B

    goto :goto_1

    .line 15
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhpz;->zza:[B

    :goto_1
    move-object v5, p0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzhpz;-><init>(Ljava/security/interfaces/ECPrivateKey;Lcom/google/android/gms/internal/ads/zzhsi;Lcom/google/android/gms/internal/ads/zzhrs;[B[BLjava/security/Provider;)V

    return-object v7
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
