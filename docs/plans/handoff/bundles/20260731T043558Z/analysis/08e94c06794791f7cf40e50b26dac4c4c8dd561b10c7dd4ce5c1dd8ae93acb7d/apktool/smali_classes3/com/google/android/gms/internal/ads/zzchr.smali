.class final synthetic Lcom/google/android/gms/internal/ads/zzchr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzchu;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzehd;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzchu;Lcom/google/android/gms/internal/ads/zzehd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zza:Lcom/google/android/gms/internal/ads/zzchu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Lcom/google/android/gms/internal/ads/zzehd;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zza:Lcom/google/android/gms/internal/ads/zzchu;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzchs;-><init>(Lcom/google/android/gms/internal/ads/zzchu;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Lcom/google/android/gms/internal/ads/zzehd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzehd;->zze(Lcom/google/android/gms/internal/ads/zzfpf;)V

    return-void
.end method
