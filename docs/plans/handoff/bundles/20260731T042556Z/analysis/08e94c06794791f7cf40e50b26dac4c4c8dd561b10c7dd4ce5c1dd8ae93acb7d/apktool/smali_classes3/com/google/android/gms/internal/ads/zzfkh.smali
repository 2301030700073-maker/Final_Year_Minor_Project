.class final synthetic Lcom/google/android/gms/internal/ads/zzfkh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfkj;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfjz;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfkj;Lcom/google/android/gms/internal/ads/zzfjz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkh;->zza:Lcom/google/android/gms/internal/ads/zzfkj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkh;->zzb:Lcom/google/android/gms/internal/ads/zzfjz;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkh;->zza:Lcom/google/android/gms/internal/ads/zzfkj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkk;->zzg()Lcom/google/android/gms/internal/ads/zzfkl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkh;->zzb:Lcom/google/android/gms/internal/ads/zzfjz;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfkl;->zzb(Lcom/google/android/gms/internal/ads/zzfjz;)V

    return-void
.end method
