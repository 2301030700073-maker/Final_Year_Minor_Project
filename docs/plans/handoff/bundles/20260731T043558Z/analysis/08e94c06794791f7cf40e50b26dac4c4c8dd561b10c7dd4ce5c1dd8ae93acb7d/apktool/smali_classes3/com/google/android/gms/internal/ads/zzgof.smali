.class final Lcom/google/android/gms/internal/ads/zzgof;
.super Lcom/google/android/gms/internal/ads/zzgoj;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgon;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgon;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgof;->zza:Lcom/google/android/gms/internal/ads/zzgon;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgoj;-><init>(Lcom/google/android/gms/internal/ads/zzgon;[B)V

    return-void
.end method


# virtual methods
.method final zza(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgof;->zza:Lcom/google/android/gms/internal/ads/zzgon;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgon;->zzo(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
