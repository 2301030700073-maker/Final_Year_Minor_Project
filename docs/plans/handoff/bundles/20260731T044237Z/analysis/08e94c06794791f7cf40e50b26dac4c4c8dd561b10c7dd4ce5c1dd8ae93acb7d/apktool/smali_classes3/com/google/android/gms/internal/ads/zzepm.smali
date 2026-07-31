.class final synthetic Lcom/google/android/gms/internal/ads/zzepm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzepn;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzepn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepm;->zza:Lcom/google/android/gms/internal/ads/zzepn;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepm;->zza:Lcom/google/android/gms/internal/ads/zzepn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzepn;->zze:Lcom/google/android/gms/internal/ads/zzepq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzepq;->zzf()Lcom/google/android/gms/internal/ads/zzepg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzepg;->zzd()Lcom/google/android/gms/internal/ads/zzdac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdac;->zzg()V

    return-void
.end method
