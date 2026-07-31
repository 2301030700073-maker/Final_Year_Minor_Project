.class public final Lcom/google/android/gms/internal/ads/zzhwy;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhww;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhwx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhww;Lcom/google/android/gms/internal/ads/zzhwx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhwy;->zza:Lcom/google/android/gms/internal/ads/zzhww;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhwy;->zzb:Lcom/google/android/gms/internal/ads/zzhwx;

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwy;->zza:Lcom/google/android/gms/internal/ads/zzhww;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhwy;->zzb:Lcom/google/android/gms/internal/ads/zzhwx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhww;->zzf(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzhwx;->zzb(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwy;->zza:Lcom/google/android/gms/internal/ads/zzhww;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhww;->size()I

    move-result v0

    return v0
.end method
