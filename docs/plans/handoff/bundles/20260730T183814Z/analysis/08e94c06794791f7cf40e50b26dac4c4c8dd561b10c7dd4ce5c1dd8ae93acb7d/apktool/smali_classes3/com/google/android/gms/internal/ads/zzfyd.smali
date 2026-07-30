.class final Lcom/google/android/gms/internal/ads/zzfyd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgas;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfxz;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfxz;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfyd;->zza:Lcom/google/android/gms/internal/ads/zzfxz;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgat;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfyd;->zza:Lcom/google/android/gms/internal/ads/zzfxz;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfyf;-><init>(Lcom/google/android/gms/internal/ads/zzfxz;)V

    return-object v0
.end method
