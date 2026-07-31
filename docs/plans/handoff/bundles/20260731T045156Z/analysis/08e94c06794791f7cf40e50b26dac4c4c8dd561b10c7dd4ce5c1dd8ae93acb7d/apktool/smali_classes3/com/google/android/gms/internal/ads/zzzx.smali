.class final synthetic Lcom/google/android/gms/internal/ads/zzzx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzaaa;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaaa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zza:Lcom/google/android/gms/internal/ads/zzaaa;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzx;->zza:Lcom/google/android/gms/internal/ads/zzaaa;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaaa;->zza:Lcom/google/android/gms/internal/ads/zzaab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaab;->zzB()Lcom/google/android/gms/internal/ads/zzabu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabu;->zzb()V

    return-void
.end method
