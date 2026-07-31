.class final Lcom/google/android/gms/internal/ads/zzccr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzccv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzccv;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccr;->zza:Lcom/google/android/gms/internal/ads/zzccv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccr;->zza:Lcom/google/android/gms/internal/ads/zzccv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccv;->zzt()Lcom/google/android/gms/internal/ads/zzccw;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccv;->zzt()Lcom/google/android/gms/internal/ads/zzccw;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzccw;->zzd()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccv;->zzt()Lcom/google/android/gms/internal/ads/zzccw;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzccw;->zzh()V

    :cond_0
    return-void
.end method
