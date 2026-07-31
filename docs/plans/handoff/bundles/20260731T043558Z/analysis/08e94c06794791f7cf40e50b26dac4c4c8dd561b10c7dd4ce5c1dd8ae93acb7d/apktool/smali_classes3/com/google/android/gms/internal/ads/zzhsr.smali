.class public final Lcom/google/android/gms/internal/ads/zzhsr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwm;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzhdp;

.field private static final zzb:[B

.field private static final zzc:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhsr;->zzb:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhsr;->zzc:[B

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdp;->zza()Lcom/google/android/gms/internal/ads/zzhdo;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsi;->zzc:Lcom/google/android/gms/internal/ads/zzhsi;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhor;->zza:Lcom/google/android/gms/internal/ads/zzhor;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhdo;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhdo;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsi;->zzd:Lcom/google/android/gms/internal/ads/zzhsi;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhor;->zzb:Lcom/google/android/gms/internal/ads/zzhor;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhdo;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhdo;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsi;->zze:Lcom/google/android/gms/internal/ads/zzhsi;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhor;->zzc:Lcom/google/android/gms/internal/ads/zzhor;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhdo;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhdo;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhdo;->zzb()Lcom/google/android/gms/internal/ads/zzhdp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhsr;->zza:Lcom/google/android/gms/internal/ads/zzhdp;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhox;)Lcom/google/android/gms/internal/ads/zzgwm;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhqu;->zzd(Lcom/google/android/gms/internal/ads/zzhox;)Lcom/google/android/gms/internal/ads/zzgwm;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrz;->zzf:Lcom/google/android/gms/internal/ads/zzhrz;

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhrz;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    .line 3
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhox;->zzd()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhox;->zzf()Lcom/google/android/gms/internal/ads/zzhot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhot;->zzd()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 5
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhsq;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsr;->zza:Lcom/google/android/gms/internal/ads/zzhdp;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhox;->zzf()Lcom/google/android/gms/internal/ads/zzhot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhot;->zzf()Lcom/google/android/gms/internal/ads/zzhor;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzhdp;->zzb(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhsi;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhox;->zze()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhox;->zzf()Lcom/google/android/gms/internal/ads/zzhot;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhot;->zze()Lcom/google/android/gms/internal/ads/zzhos;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhos;->zzc:Lcom/google/android/gms/internal/ads/zzhos;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhsr;->zzc:[B

    goto :goto_0

    .line 9
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhsr;->zzb:[B

    :goto_0
    move-object v5, p0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhsq;-><init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/android/gms/internal/ads/zzhsi;[B[B[B)V

    return-object v0
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method
