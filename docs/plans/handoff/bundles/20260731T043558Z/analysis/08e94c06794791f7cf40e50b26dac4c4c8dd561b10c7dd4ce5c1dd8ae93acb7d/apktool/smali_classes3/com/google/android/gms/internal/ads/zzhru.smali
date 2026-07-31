.class public final Lcom/google/android/gms/internal/ads/zzhru;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgvm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhsk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgwi;

.field private final zzc:I

.field private final zzd:[B


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhsk;Lcom/google/android/gms/internal/ads/zzgwi;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhru;->zza:Lcom/google/android/gms/internal/ads/zzhsk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhru;->zzb:Lcom/google/android/gms/internal/ads/zzgwi;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhru;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhru;->zzd:[B

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgxh;)Lcom/google/android/gms/internal/ads/zzgvm;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhru;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhrf;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxh;->zze()Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhtb;->zzc(Lcom/google/android/gms/internal/ads/zzgwn;)[B

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxh;->zzg()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgxp;->zzf()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhrf;-><init>([BI)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhsp;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzhso;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxh;->zzg()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgxp;->zzh()Lcom/google/android/gms/internal/ads/zzgxn;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxh;->zzf()Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzhtb;->zzc(Lcom/google/android/gms/internal/ads/zzgwn;)[B

    move-result-object v6

    const-string v7, "HMAC"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhso;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxh;->zzg()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgxp;->zze()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhsp;-><init>(Lcom/google/android/gms/internal/ads/zzhik;I)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxh;->zzg()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgxp;->zze()I

    move-result v3

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxh;->zzc()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/gms/internal/ads/zzhru;-><init>(Lcom/google/android/gms/internal/ads/zzhsk;Lcom/google/android/gms/internal/ads/zzgwi;I[B)V

    return-object v0
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhru;->zzd:[B

    array-length v1, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhru;->zzc:I

    array-length v3, v0

    add-int v4, v2, v3

    if-lt v1, v4, :cond_3

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhgi;->zze([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    sub-int v0, v1, v2

    .line 5
    invoke-static {p1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 6
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [B

    :cond_0
    const/16 v0, 0x8

    .line 7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v3, p2

    int-to-long v3, v3

    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhru;->zzb:Lcom/google/android/gms/internal/ads/zzgwi;

    filled-new-array {p2, v2, v0}, [[B

    move-result-object p2

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhrm;->zza([[B)[B

    move-result-object p2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhsp;

    .line 9
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzhsp;->zzc([B)[B

    move-result-object p2

    .line 10
    invoke-static {p2, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhru;->zza:Lcom/google/android/gms/internal/ads/zzhsk;

    .line 11
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzhsk;->zza([B)[B

    move-result-object p1

    return-object p1

    .line 12
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (ciphertext too short)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
