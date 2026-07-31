.class final synthetic Lcom/google/android/gms/internal/ads/zzhfs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfu;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzhft;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzhfv;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhft;Lcom/google/android/gms/internal/ads/zzhfv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhfs;->zza:Lcom/google/android/gms/internal/ads/zzhft;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhfs;->zzb:Lcom/google/android/gms/internal/ads/zzhfv;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzgwc;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfs;->zza:Lcom/google/android/gms/internal/ads/zzhft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgwc;->zza()Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhfs;->zzb:Lcom/google/android/gms/internal/ads/zzhfv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhfv;->zzb()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzhft;->zzb(Lcom/google/android/gms/internal/ads/zzgvt;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
