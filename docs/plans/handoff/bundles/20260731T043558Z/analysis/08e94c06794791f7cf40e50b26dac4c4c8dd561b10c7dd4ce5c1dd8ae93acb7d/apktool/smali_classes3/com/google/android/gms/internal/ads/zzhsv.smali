.class public final Lcom/google/android/gms/internal/ads/zzhsv;
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

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdp;->zza()Lcom/google/android/gms/internal/ads/zzhdo;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsi;->zzc:Lcom/google/android/gms/internal/ads/zzhsi;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhpd;->zza:Lcom/google/android/gms/internal/ads/zzhpd;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhdo;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhdo;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsi;->zzd:Lcom/google/android/gms/internal/ads/zzhsi;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhpd;->zzb:Lcom/google/android/gms/internal/ads/zzhpd;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhdo;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhdo;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsi;->zze:Lcom/google/android/gms/internal/ads/zzhsi;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhpd;->zzc:Lcom/google/android/gms/internal/ads/zzhpd;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhdo;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhdo;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhdo;->zzb()Lcom/google/android/gms/internal/ads/zzhdp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhsv;->zza:Lcom/google/android/gms/internal/ads/zzhdp;

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhsv;->zzb:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhsv;->zzc:[B

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhpj;)Lcom/google/android/gms/internal/ads/zzgwm;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhrd;->zze(Lcom/google/android/gms/internal/ads/zzhpj;)Lcom/google/android/gms/internal/ads/zzgwm;

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhpj;->zzd()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhpj;->zzf()Lcom/google/android/gms/internal/ads/zzhpf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhpf;->zzd()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 5
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhpj;->zzf()Lcom/google/android/gms/internal/ads/zzhpf;

    move-result-object v0

    new-instance v9, Lcom/google/android/gms/internal/ads/zzhsu;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsv;->zza:Lcom/google/android/gms/internal/ads/zzhdp;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhpf;->zzf()Lcom/google/android/gms/internal/ads/zzhpd;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzhdp;->zzb(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhsi;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhpf;->zzg()Lcom/google/android/gms/internal/ads/zzhpd;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzhdp;->zzb(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzhsi;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhpf;->zzh()I

    move-result v5

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhpj;->zze()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsz;->zzc()[B

    move-result-object v6

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhpj;->zzf()Lcom/google/android/gms/internal/ads/zzhpf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhpf;->zze()Lcom/google/android/gms/internal/ads/zzhpe;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhpe;->zzc:Lcom/google/android/gms/internal/ads/zzhpe;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhsv;->zzc:[B

    goto :goto_0

    .line 12
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhsv;->zzb:[B

    :goto_0
    move-object v7, p0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzhsu;-><init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/android/gms/internal/ads/zzhsi;Lcom/google/android/gms/internal/ads/zzhsi;I[B[B[B)V

    return-object v9
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
