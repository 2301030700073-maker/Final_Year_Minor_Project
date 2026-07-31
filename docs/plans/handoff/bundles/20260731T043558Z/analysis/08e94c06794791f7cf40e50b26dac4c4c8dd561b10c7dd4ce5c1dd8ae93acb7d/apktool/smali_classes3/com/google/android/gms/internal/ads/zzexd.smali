.class final synthetic Lcom/google/android/gms/internal/ads/zzexd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzexg;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbti;

.field private final synthetic zzc:Landroid/os/Bundle;

.field private final synthetic zzd:Ljava/util/List;

.field private final synthetic zze:Lcom/google/android/gms/internal/ads/zzenr;

.field private final synthetic zzf:Lcom/google/android/gms/internal/ads/zzcca;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzexg;Lcom/google/android/gms/internal/ads/zzbti;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzenr;Lcom/google/android/gms/internal/ads/zzcca;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexd;->zza:Lcom/google/android/gms/internal/ads/zzexg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzexd;->zzb:Lcom/google/android/gms/internal/ads/zzbti;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzexd;->zzc:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzexd;->zzd:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzexd;->zze:Lcom/google/android/gms/internal/ads/zzenr;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzexd;->zzf:Lcom/google/android/gms/internal/ads/zzcca;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexd;->zza:Lcom/google/android/gms/internal/ads/zzexg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzexd;->zzb:Lcom/google/android/gms/internal/ads/zzbti;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzexd;->zzc:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzexd;->zzd:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzexd;->zze:Lcom/google/android/gms/internal/ads/zzenr;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzexd;->zzf:Lcom/google/android/gms/internal/ads/zzcca;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzexg;->zze(Lcom/google/android/gms/internal/ads/zzbti;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzenr;Lcom/google/android/gms/internal/ads/zzcca;)V

    return-void
.end method
