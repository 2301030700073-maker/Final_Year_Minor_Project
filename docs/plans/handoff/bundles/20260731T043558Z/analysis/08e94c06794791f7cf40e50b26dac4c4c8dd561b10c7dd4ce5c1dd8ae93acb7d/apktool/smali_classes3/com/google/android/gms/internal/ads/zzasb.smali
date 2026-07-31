.class final synthetic Lcom/google/android/gms/internal/ads/zzasb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzasu;


# instance fields
.field private final synthetic zza:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzasb;->zza:J

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzasx;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasb;->zza:J

    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzasx;->zzb:Lcom/google/android/gms/internal/ads/zzast;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzatc;->zzb(J)Lcom/google/android/gms/internal/ads/zzatc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzast;->zzb(Lcom/google/android/gms/internal/ads/zzatc;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzass; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzarm;->zza:Lcom/google/android/gms/internal/ads/zzarm;

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    :goto_0
    return-object p1
.end method
