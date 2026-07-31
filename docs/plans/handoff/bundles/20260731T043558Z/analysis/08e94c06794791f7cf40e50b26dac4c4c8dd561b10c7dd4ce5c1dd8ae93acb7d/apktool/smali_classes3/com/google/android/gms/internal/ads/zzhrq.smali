.class public final Lcom/google/android/gms/internal/ads/zzhrq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhsz;

.field private final zzb:[B

.field private final zzc:[B


# direct methods
.method private constructor <init>([B[B[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcy;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhsz;->zza([B)Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zza:Lcom/google/android/gms/internal/ads/zzhsz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zzb:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zzc:[B

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdj;->zzd()V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Given public key\'s length is not %s."

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    new-instance p2, Ljava/security/GeneralSecurityException;

    const-string p3, "Can not use Ed25519 in FIPS-mode."

    invoke-direct {p2, p3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhns;)Lcom/google/android/gms/internal/ads/zzgwm;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcy;->zza(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhqj;->zzb(Lcom/google/android/gms/internal/ads/zzhns;)Lcom/google/android/gms/internal/ads/zzgwm;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhrq;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhns;->zzd()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhns;->zze()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhns;->zzf()Lcom/google/android/gms/internal/ads/zzhnl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnl;->zzc()Lcom/google/android/gms/internal/ads/zzhnk;

    move-result-object p0

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhnk;->zzc:Lcom/google/android/gms/internal/ads/zzhnk;

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    new-array p0, v0, [B

    aput-byte v4, p0, v4

    goto :goto_0

    .line 7
    :cond_0
    new-array p0, v4, [B

    :goto_0
    invoke-direct {v1, v2, v3, p0}, Lcom/google/android/gms/internal/ads/zzhrq;-><init>([B[B[B)V

    return-object v1

    .line 2
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use Ed25519 in FIPS-mode."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzc([B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zza:Lcom/google/android/gms/internal/ads/zzhsz;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzhdj;->zzc([B[B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Signature check failed."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "The length of the signature is not %s."

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zzb:[B

    array-length v1, v0

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zzc:[B

    array-length v2, v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhrq;->zzc([B[B)V

    return-void

    .line 1
    :cond_1
    :goto_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhgi;->zze([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhrq;->zzc:[B

    array-length v2, v0

    if-eqz v2, :cond_2

    filled-new-array {p2, v0}, [[B

    move-result-object p2

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhrm;->zza([[B)[B

    move-result-object p2

    .line 4
    :cond_2
    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhrq;->zzc([B[B)V

    return-void

    .line 2
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature (output prefix mismatch)"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
