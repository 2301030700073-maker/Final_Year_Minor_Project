.class public final Lcom/google/android/gms/internal/ads/zzesb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeya;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfgn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfgn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesb;->zza:Lcom/google/android/gms/internal/ads/zzfgn;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesb;->zza:Lcom/google/android/gms/internal/ads/zzfgn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzesc;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfgn;->zzq:Z

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzesc;-><init>(Z)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    const/16 v0, 0x3a

    return v0
.end method
