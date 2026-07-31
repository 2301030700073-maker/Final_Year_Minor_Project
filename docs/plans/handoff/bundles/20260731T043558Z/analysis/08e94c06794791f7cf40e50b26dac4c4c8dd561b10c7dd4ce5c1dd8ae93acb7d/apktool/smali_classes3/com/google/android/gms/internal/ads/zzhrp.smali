.class public final Lcom/google/android/gms/internal/ads/zzhrp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwl;


# instance fields
.field private final zza:[B


# direct methods
.method private constructor <init>([B[B[B)V
    .locals 0
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

    const/16 p3, 0x20

    if-ne p2, p3, :cond_0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhdj;->zzb([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhrp;->zza:[B

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhdj;->zza([B)[B

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcy;->zza(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhqi;->zzb(Lcom/google/android/gms/internal/ads/zzhnm;)Lcom/google/android/gms/internal/ads/zzgwl;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhrp;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnm;->zzf()Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhtb;->zzc(Lcom/google/android/gms/internal/ads/zzgwn;)[B

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnm;->zze()Lcom/google/android/gms/internal/ads/zzhns;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhpr;->zze()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnm;->zzd()Lcom/google/android/gms/internal/ads/zzhnl;

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
    invoke-direct {v1, v2, v3, p0}, Lcom/google/android/gms/internal/ads/zzhrp;-><init>([B[B[B)V

    return-object v1

    .line 2
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use Ed25519 in FIPS-mode."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

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
