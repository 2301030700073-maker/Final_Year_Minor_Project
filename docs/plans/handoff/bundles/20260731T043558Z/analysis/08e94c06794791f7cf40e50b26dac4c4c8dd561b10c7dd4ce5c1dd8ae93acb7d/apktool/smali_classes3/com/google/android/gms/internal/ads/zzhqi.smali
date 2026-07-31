.class public final Lcom/google/android/gms/internal/ads/zzhqi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwl;


# static fields
.field private static final zza:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhqi;->zza:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x2et
        0x2t
        0x1t
        0x0t
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x70t
        0x4t
        0x22t
        0x4t
        0x20t
    .end array-data
.end method

.method private constructor <init>([B[B[BLjava/security/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhcy;->zza(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    array-length p2, p1

    .line 3
    new-instance p3, Ljava/security/spec/PKCS8EncodedKeySpec;

    const/16 v0, 0x20

    if-ne p2, v0, :cond_0

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzhqi;->zza:[B

    filled-new-array {p2, p1}, [[B

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhrm;->zza([[B)[B

    move-result-object p1

    .line 3
    invoke-direct {p3, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p1, "Ed25519"

    .line 6
    invoke-static {p1, p4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Given private key\'s length is not %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use Ed25519 in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhnm;)Lcom/google/android/gms/internal/ads/zzgwl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdc;->zza()Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhqi;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnm;->zzf()Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhtb;->zzc(Lcom/google/android/gms/internal/ads/zzgwn;)[B

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnm;->zze()Lcom/google/android/gms/internal/ads/zzhns;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhpr;->zze()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnm;->zzd()Lcom/google/android/gms/internal/ads/zzhnl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnl;->zzc()Lcom/google/android/gms/internal/ads/zzhnk;

    move-result-object p0

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhnk;->zzc:Lcom/google/android/gms/internal/ads/zzhnk;

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [B

    aput-byte v4, p0, v4

    goto :goto_0

    .line 6
    :cond_0
    new-array p0, v4, [B

    :goto_0
    invoke-direct {v1, v2, v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzhqi;-><init>([B[B[BLjava/security/Provider;)V

    return-object v1

    .line 2
    :cond_1
    new-instance p0, Ljava/security/NoSuchProviderException;

    const-string v0, "Ed25519SignJce requires the Conscrypt provider."

    invoke-direct {p0, v0}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw p0
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
