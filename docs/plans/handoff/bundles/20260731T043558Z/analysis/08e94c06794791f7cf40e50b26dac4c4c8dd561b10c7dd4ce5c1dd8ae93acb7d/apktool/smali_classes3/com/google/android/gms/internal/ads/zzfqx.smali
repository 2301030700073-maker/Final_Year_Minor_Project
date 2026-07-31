.class final Lcom/google/android/gms/internal/ads/zzfqx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfrc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfrc;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqx;->zza:Lcom/google/android/gms/internal/ads/zzfrc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqx;->zza:Lcom/google/android/gms/internal/ads/zzfrc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfrc;->zzh()Lcom/google/android/gms/internal/ads/zzfqw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqw;->zzc()V

    return-void
.end method
