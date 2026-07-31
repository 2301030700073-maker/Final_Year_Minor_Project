.class public final Lcom/google/android/gms/internal/ads/zzhta;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhta;->zza:Ljava/math/BigInteger;

    return-void
.end method

.method public static zza(Ljava/math/BigInteger;Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhta;
    .locals 0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhta;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzhta;-><init>(Ljava/math/BigInteger;)V

    return-object p1
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzgwn;)Ljava/math/BigInteger;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhta;->zza:Ljava/math/BigInteger;

    return-object p1
.end method
