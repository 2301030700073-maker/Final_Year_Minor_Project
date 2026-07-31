.class final Lcom/google/android/gms/internal/ads/zzfxk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field final synthetic zza:Landroid/content/Context;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfxn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfxn;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfxk;->zza:Landroid/content/Context;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxk;->zzb:Lcom/google/android/gms/internal/ads/zzfxn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxk;->zzb:Lcom/google/android/gms/internal/ads/zzfxn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxn;->zzg()Lcom/google/android/gms/internal/ads/zzgam;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxk;->zza:Landroid/content/Context;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgam;->zzb(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
