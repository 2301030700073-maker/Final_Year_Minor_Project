.class final Lcom/google/android/gms/internal/ads/zzbpz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcce;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbqa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbqa;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpz;->zza:Lcom/google/android/gms/internal/ads/zzbqa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbow;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcbv;->zzf:Lcom/google/android/gms/internal/ads/zzgus;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbpy;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbpy;-><init>(Lcom/google/android/gms/internal/ads/zzbpz;Lcom/google/android/gms/internal/ads/zzbow;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgus;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
