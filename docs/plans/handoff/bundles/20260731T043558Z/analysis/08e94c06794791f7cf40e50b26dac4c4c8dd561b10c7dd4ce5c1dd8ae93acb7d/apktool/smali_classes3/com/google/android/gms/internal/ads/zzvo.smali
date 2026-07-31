.class final Lcom/google/android/gms/internal/ads/zzvo;
.super Lcom/google/android/gms/internal/ads/zzadp;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzvy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzvy;Lcom/google/android/gms/internal/ads/zzaed;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzvy;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(Lcom/google/android/gms/internal/ads/zzaed;)V

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzvy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzvy;->zzQ()J

    move-result-wide v0

    return-wide v0
.end method
