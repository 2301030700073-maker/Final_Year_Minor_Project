.class public final Lcom/google/android/gms/internal/ads/zzcql;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbau;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzcgy;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcpx;

.field private final zzd:Lcom/google/android/gms/common/util/Clock;

.field private zze:Z

.field private zzf:Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcqa;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcpx;Lcom/google/android/gms/common/util/Clock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zze:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzf:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcqa;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzg:Lcom/google/android/gms/internal/ads/zzcqa;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzb:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzc:Lcom/google/android/gms/internal/ads/zzcpx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzd:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzg()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzc:Lcom/google/android/gms/internal/ads/zzcpx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzg:Lcom/google/android/gms/internal/ads/zzcqa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcpx;->zza(Lcom/google/android/gms/internal/ads/zzcqa;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zza:Lcom/google/android/gms/internal/ads/zzcgy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzb:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcqk;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzcqk;-><init>(Lcom/google/android/gms/internal/ads/zzcql;Lorg/json/JSONObject;)V

    .line 2
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call video active view js"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcgy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zza:Lcom/google/android/gms/internal/ads/zzcgy;

    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zze:Z

    return-void
.end method

.method public final zzd()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zze:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcql;->zzg()V

    return-void
.end method

.method public final zzdo(Lcom/google/android/gms/internal/ads/zzbat;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzf:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzbat;->zzj:Z

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzg:Lcom/google/android/gms/internal/ads/zzcqa;

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzcqa;->zza:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcqa;->zzd:J

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzcqa;->zzf:Lcom/google/android/gms/internal/ads/zzbat;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zze:Z

    if-eqz p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcql;->zzg()V

    :cond_1
    return-void
.end method

.method public final zze(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzf:Z

    return-void
.end method

.method final synthetic zzf(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1f

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Calling AFMA_updateActiveView("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zza:Lcom/google/android/gms/internal/ads/zzcgy;

    const-string v1, "AFMA_updateActiveView"

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
