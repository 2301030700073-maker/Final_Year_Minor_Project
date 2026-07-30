.class public final Lcom/google/android/gms/internal/ads/zzhnc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzhnf;

.field private zzb:Lcom/google/android/gms/internal/ads/zzhta;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnc;->zza:Lcom/google/android/gms/internal/ads/zzhnf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnc;->zzb:Lcom/google/android/gms/internal/ads/zzhta;

    return-void
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhnc;->zza:Lcom/google/android/gms/internal/ads/zzhnf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhnc;->zzb:Lcom/google/android/gms/internal/ads/zzhta;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzhnf;)Lcom/google/android/gms/internal/ads/zzhnc;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhnc;->zza:Lcom/google/android/gms/internal/ads/zzhnf;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhta;)Lcom/google/android/gms/internal/ads/zzhnc;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhnc;->zzb:Lcom/google/android/gms/internal/ads/zzhta;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhnd;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnc;->zza:Lcom/google/android/gms/internal/ads/zzhnf;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhnc;->zzb:Lcom/google/android/gms/internal/ads/zzhta;

    if-eqz v1, :cond_2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhta;->zzb(Lcom/google/android/gms/internal/ads/zzgwn;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhnf;->zzd()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhnf;->zzf()Lcom/google/android/gms/internal/ads/zzhnb;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhnb;->zzd()Lcom/google/android/gms/internal/ads/zzhmx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhmx;->zza()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    .line 5
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    const-string v5, "Invalid private value"

    if-lez v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhmx;->zza()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhdn;->zzd(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/ECPoint;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v2}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhnd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhnc;->zza:Lcom/google/android/gms/internal/ads/zzhnf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhnc;->zzb:Lcom/google/android/gms/internal/ads/zzhta;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhnd;-><init>(Lcom/google/android/gms/internal/ads/zzhnf;Lcom/google/android/gms/internal/ads/zzhta;[B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without a private value"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without a ecdsa public key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
