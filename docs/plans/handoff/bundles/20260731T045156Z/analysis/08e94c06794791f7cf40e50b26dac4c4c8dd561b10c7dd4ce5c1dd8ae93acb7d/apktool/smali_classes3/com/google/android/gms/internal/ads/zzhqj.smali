.class public final Lcom/google/android/gms/internal/ads/zzhqj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwm;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Ljava/security/PublicKey;

.field private final zzc:[B

.field private final zzd:[B

.field private final zze:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhqj;->zza:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x2at
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x70t
        0x3t
        0x21t
        0x0t
    .end array-data
.end method

.method private constructor <init>([B[B[BLjava/security/Provider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcy;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    array-length v0, p1

    .line 3
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqj;->zza:[B

    filled-new-array {v0, p1}, [[B

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhrm;->zza([[B)[B

    move-result-object p1

    .line 3
    invoke-direct {v1, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p1, "Ed25519"

    .line 6
    invoke-static {p1, p4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhqj;->zzb:Ljava/security/PublicKey;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhqj;->zzc:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhqj;->zzd:[B

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhqj;->zze:Ljava/security/Provider;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Given public key\'s length is not %s."

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

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhns;)Lcom/google/android/gms/internal/ads/zzgwm;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdc;->zza()Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhcy;->zza(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhqj;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhns;->zzd()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhns;->zze()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object v4

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhns;->zzf()Lcom/google/android/gms/internal/ads/zzhnl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnl;->zzc()Lcom/google/android/gms/internal/ads/zzhnk;

    move-result-object p0

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhnk;->zzc:Lcom/google/android/gms/internal/ads/zzhnk;

    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    new-array p0, v1, [B

    aput-byte v5, p0, v5

    goto :goto_0

    .line 8
    :cond_0
    new-array p0, v5, [B

    :goto_0
    invoke-direct {v2, v3, v4, p0, v0}, Lcom/google/android/gms/internal/ads/zzhqj;-><init>([B[B[BLjava/security/Provider;)V

    return-object v2

    .line 4
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use Ed25519 in FIPS-mode."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_2
    new-instance p0, Ljava/security/NoSuchProviderException;

    const-string v0, "Ed25519VerifyJce requires the Conscrypt provider."

    invoke-direct {p0, v0}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhqj;->zzc:[B

    array-length v1, v0

    array-length v2, p1

    add-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v3, :cond_2

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhgi;->zze([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhqj;->zze:Ljava/security/Provider;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhqj;->zzb:Ljava/security/PublicKey;

    const-string v3, "Ed25519"

    .line 6
    invoke-static {v3, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhqj;->zzd:[B

    .line 9
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 10
    :try_start_0
    invoke-virtual {v0, p1, v1, v4}, Ljava/security/Signature;->verify([BII)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return-void

    .line 11
    :catch_0
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Signature check failed."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature (output prefix mismatch)"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Invalid signature length: %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
