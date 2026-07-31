.class final synthetic Lcom/google/android/gms/internal/ads/zzzz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzaaa;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbv;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaaa;Lcom/google/android/gms/internal/ads/zzbv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzz;->zza:Lcom/google/android/gms/internal/ads/zzaaa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzz;->zzb:Lcom/google/android/gms/internal/ads/zzbv;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzz;->zza:Lcom/google/android/gms/internal/ads/zzaaa;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaaa;->zza:Lcom/google/android/gms/internal/ads/zzaab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaab;->zzB()Lcom/google/android/gms/internal/ads/zzabu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzz;->zzb:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzabu;->zzd(Lcom/google/android/gms/internal/ads/zzbv;)V

    return-void
.end method
