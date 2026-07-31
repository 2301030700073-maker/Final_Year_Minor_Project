.class final Lcom/google/android/gms/internal/ads/zzapk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzapu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaqa;

.field private final zzc:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzapu;Lcom/google/android/gms/internal/ads/zzaqa;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapk;->zza:Lcom/google/android/gms/internal/ads/zzapu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapk;->zzb:Lcom/google/android/gms/internal/ads/zzaqa;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzapk;->zzc:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapk;->zza:Lcom/google/android/gms/internal/ads/zzapu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapu;->zzl()Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapk;->zzb:Lcom/google/android/gms/internal/ads/zzaqa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqa;->zzc()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaqa;->zza:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzapu;->zzs(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaqa;->zzc:Lcom/google/android/gms/internal/ads/zzaqd;

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzapu;->zzt(Lcom/google/android/gms/internal/ads/zzaqd;)V

    .line 2
    :goto_0
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzaqa;->zzd:Z

    if-eqz v1, :cond_1

    const-string v1, "intermediate-response"

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzapu;->zzc(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    const-string v1, "done"

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzapu;->zzd(Ljava/lang/String;)V

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapk;->zzc:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
