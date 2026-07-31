.class final Lcom/google/android/gms/internal/ads/zzcox;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzguf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfng;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzcpe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcpe;Lcom/google/android/gms/internal/ads/zzfng;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcox;->zza:Lcom/google/android/gms/internal/ads/zzfng;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcox;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcox;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcox;->zzd:Lcom/google/android/gms/internal/ads/zzcpe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzcow;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcox;->zza:Lcom/google/android/gms/internal/ads/zzfng;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcox;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcox;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcow;-><init>(Lcom/google/android/gms/internal/ads/zzcox;Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfng;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcox;->zzd:Lcom/google/android/gms/internal/ads/zzcpe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcpe;->zzj()Lcom/google/android/gms/internal/ads/zzgus;

    move-result-object p1

    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/ads/zzgus;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcox;->zza:Lcom/google/android/gms/internal/ads/zzfng;

    check-cast p1, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcov;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcox;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzcov;-><init>(Lcom/google/android/gms/internal/ads/zzfng;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcox;->zzd:Lcom/google/android/gms/internal/ads/zzcpe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcpe;->zzj()Lcom/google/android/gms/internal/ads/zzgus;

    move-result-object p1

    .line 2
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzgus;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
