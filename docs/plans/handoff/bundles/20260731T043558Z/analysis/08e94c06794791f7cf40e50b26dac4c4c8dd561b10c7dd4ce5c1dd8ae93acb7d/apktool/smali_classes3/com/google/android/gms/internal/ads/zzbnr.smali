.class final Lcom/google/android/gms/internal/ads/zzbnr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbnj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbnv;Lcom/google/android/gms/internal/ads/zzbnj;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnr;->zza:Lcom/google/android/gms/internal/ads/zzbnj;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnp;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcca;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbnq;

    .line 3
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzbnq;-><init>(Lcom/google/android/gms/internal/ads/zzbnr;Lcom/google/android/gms/internal/ads/zzcca;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbnr;->zza:Lcom/google/android/gms/internal/ads/zzbnj;

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbnp;->zze(Lcom/google/android/gms/internal/ads/zzbnj;Lcom/google/android/gms/internal/ads/zzbno;)V

    return-object v0
.end method
