.class final Lcom/google/android/gms/internal/ads/zzbox;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzblx;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbpe;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzblx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbpe;Lcom/google/android/gms/internal/ads/zzblx;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbox;->zza:Lcom/google/android/gms/internal/ads/zzbpe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzb:Lcom/google/android/gms/internal/ads/zzblx;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcgy;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzb:Lcom/google/android/gms/internal/ads/zzblx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbox;->zza:Lcom/google/android/gms/internal/ads/zzbpe;

    .line 2
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzblx;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method final synthetic zzb()Lcom/google/android/gms/internal/ads/zzblx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzb:Lcom/google/android/gms/internal/ads/zzblx;

    return-object v0
.end method
