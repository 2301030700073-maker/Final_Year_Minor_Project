.class final Lcom/google/android/gms/internal/ads/zzhdm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field static final zzd:Lcom/google/android/gms/internal/ads/zzhdm;


# instance fields
.field final zza:Ljava/math/BigInteger;

.field final zzb:Ljava/math/BigInteger;

.field final zzc:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhdm;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhdm;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhdm;->zzd:Lcom/google/android/gms/internal/ads/zzhdm;

    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhdm;->zza:Ljava/math/BigInteger;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhdm;->zzb:Ljava/math/BigInteger;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhdm;->zzc:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method final zza()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhdm;->zzc:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
