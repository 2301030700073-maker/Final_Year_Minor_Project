.class final synthetic Lcom/google/android/gms/internal/ads/zzdxm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdxt;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcca;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdxt;Lcom/google/android/gms/internal/ads/zzcca;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzb:Lcom/google/android/gms/internal/ads/zzcca;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxm;->zzb:Lcom/google/android/gms/internal/ads/zzcca;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzg(Lcom/google/android/gms/internal/ads/zzcca;)V

    return-void
.end method
