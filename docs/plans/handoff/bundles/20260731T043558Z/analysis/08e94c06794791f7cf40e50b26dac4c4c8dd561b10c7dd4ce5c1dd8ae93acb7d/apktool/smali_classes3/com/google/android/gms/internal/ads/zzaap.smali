.class final synthetic Lcom/google/android/gms/internal/ads/zzaap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdm;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaap;->zza:Lcom/google/android/gms/internal/ads/zzdm;

    return-void
.end method


# virtual methods
.method public final synthetic execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->zza:Lcom/google/android/gms/internal/ads/zzdm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdm;->zzm(Ljava/lang/Runnable;)Z

    return-void
.end method
