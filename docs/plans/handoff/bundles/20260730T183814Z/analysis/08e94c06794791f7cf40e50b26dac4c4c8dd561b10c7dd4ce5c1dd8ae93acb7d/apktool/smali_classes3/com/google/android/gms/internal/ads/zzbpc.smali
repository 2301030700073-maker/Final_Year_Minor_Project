.class final synthetic Lcom/google/android/gms/internal/ads/zzbpc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/common/util/Predicate;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzblx;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzblx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpc;->zza:Lcom/google/android/gms/internal/ads/zzblx;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzblx;

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpc;->zza:Lcom/google/android/gms/internal/ads/zzblx;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbox;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbox;->zzb()Lcom/google/android/gms/internal/ads/zzblx;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
