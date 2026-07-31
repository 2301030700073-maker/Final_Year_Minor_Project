.class final Lcom/google/android/gms/internal/ads/zzgvf;
.super Lcom/google/android/gms/internal/ads/zzgup;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgvh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgtp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgvh;Lcom/google/android/gms/internal/ads/zzgtp;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvf;->zza:Lcom/google/android/gms/internal/ads/zzgvh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgup;-><init>()V

    .line 2
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgtp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgvf;->zzb:Lcom/google/android/gms/internal/ads/zzgtp;

    return-void
.end method


# virtual methods
.method final bridge synthetic zza()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvf;->zzb:Lcom/google/android/gms/internal/ads/zzgtp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgtp;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgmd;->zzl(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v1
.end method

.method final zzc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvf;->zzb:Lcom/google/android/gms/internal/ads/zzgtp;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvf;->zza:Lcom/google/android/gms/internal/ads/zzgvh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtb;->isDone()Z

    move-result v0

    return v0
.end method

.method final synthetic zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvf;->zza:Lcom/google/android/gms/internal/ads/zzgvh;

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgtb;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-void
.end method

.method final zzg(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvf;->zza:Lcom/google/android/gms/internal/ads/zzgvh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgtb;->zzb(Ljava/lang/Throwable;)Z

    return-void
.end method
