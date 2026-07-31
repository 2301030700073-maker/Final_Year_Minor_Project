.class final Lcom/google/android/gms/internal/ads/zzfpd;
.super Ljava/util/TimerTask;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfpf;

.field final synthetic zzb:Ljava/util/Timer;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfpg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfpg;Lcom/google/android/gms/internal/ads/zzfpf;Ljava/util/Timer;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfpd;->zza:Lcom/google/android/gms/internal/ads/zzfpf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfpd;->zzb:Ljava/util/Timer;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpd;->zzc:Lcom/google/android/gms/internal/ads/zzfpg;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpd;->zzc:Lcom/google/android/gms/internal/ads/zzfpg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpg;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpd;->zza:Lcom/google/android/gms/internal/ads/zzfpf;

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfpf;->zza(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpd;->zzb:Ljava/util/Timer;

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
