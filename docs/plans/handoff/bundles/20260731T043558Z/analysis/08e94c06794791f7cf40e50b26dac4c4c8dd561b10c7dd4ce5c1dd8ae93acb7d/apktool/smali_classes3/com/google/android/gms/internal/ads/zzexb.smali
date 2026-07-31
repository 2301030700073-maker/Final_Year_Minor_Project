.class final synthetic Lcom/google/android/gms/internal/ads/zzexb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtp;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzexg;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Ljava/util/List;

.field private final synthetic zzd:Landroid/os/Bundle;

.field private final synthetic zze:Z

.field private final synthetic zzf:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzexg;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexb;->zza:Lcom/google/android/gms/internal/ads/zzexg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzexb;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzexb;->zzc:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzexb;->zzd:Landroid/os/Bundle;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzexb;->zze:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzexb;->zzf:Z

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexb;->zza:Lcom/google/android/gms/internal/ads/zzexg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzexb;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzexb;->zzc:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzexb;->zzd:Landroid/os/Bundle;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzexb;->zze:Z

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzexb;->zzf:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzexg;->zzd(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
