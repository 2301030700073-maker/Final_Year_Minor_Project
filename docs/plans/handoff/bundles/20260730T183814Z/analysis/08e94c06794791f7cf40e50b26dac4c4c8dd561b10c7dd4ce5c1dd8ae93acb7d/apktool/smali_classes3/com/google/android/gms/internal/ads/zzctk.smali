.class public final Lcom/google/android/gms/internal/ads/zzctk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbau;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcac;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctk;->zza:Lcom/google/android/gms/internal/ads/zzcac;

    return-void
.end method


# virtual methods
.method public final zzdo(Lcom/google/android/gms/internal/ads/zzbat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctk;->zza:Lcom/google/android/gms/internal/ads/zzcac;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbat;->zzj:Z

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcac;->zza(Z)V

    return-void
.end method
