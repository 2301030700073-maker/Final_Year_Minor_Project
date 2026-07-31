.class final synthetic Lcom/google/android/gms/internal/ads/zzhnh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzheq;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhnh;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhnh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhnh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhnh;->zza:Lcom/google/android/gms/internal/ads/zzhnh;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzgwj;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgvt;
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhnb;

    sget v0, Lcom/google/android/gms/internal/ads/zzhnj;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhnb;->zzd()Lcom/google/android/gms/internal/ads/zzhmx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhmx;->zza()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhrz;->zze:Lcom/google/android/gms/internal/ads/zzhrz;

    const-string v2, "EC"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhrz;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyPairGenerator;

    .line 2
    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 5
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhne;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhne;-><init>([B)V

    .line 6
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzhne;->zza(Lcom/google/android/gms/internal/ads/zzhnb;)Lcom/google/android/gms/internal/ads/zzhne;

    .line 7
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzhne;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhne;

    .line 8
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzhne;->zzb(Ljava/security/spec/ECPoint;)Lcom/google/android/gms/internal/ads/zzhne;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhne;->zzd()Lcom/google/android/gms/internal/ads/zzhnf;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhnc;

    invoke-direct {p2, v3}, Lcom/google/android/gms/internal/ads/zzhnc;-><init>([B)V

    .line 10
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzhnc;->zza(Lcom/google/android/gms/internal/ads/zzhnf;)Lcom/google/android/gms/internal/ads/zzhnc;

    .line 11
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhta;->zza(Ljava/math/BigInteger;Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhta;

    move-result-object p1

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzhnc;->zzb(Lcom/google/android/gms/internal/ads/zzhta;)Lcom/google/android/gms/internal/ads/zzhnc;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhnc;->zzc()Lcom/google/android/gms/internal/ads/zzhnd;

    move-result-object p1

    return-object p1
.end method
