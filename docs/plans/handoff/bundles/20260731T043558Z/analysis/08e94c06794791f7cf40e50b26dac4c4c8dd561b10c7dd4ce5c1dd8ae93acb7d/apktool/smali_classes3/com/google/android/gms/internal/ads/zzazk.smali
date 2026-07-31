.class public final Lcom/google/android/gms/internal/ads/zzazk;
.super Lcom/google/android/gms/internal/ads/zzazr;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzayd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauc;II)V
    .locals 7

    .line 1
    const-string v3, "2EDSTVCwfkpT+1duJ+umEyNIZ3jEP0NWyK78oeLPLhI="

    const/16 v6, 0x33

    const-string v2, "cOth2BAAthu6X8KDmzC58653OwqftcurhEiV9l+3uxMh7KBnOgbdhGM0zSnSPufi"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzazr;-><init>(Lcom/google/android/gms/internal/ads/zzayd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauc;II)V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzd:Lcom/google/android/gms/internal/ads/zzauc;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zze:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaxy;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzaxy;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzaxy;->zza:Ljava/lang/Long;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzauc;->zzF(J)Lcom/google/android/gms/internal/ads/zzauc;

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzaxy;->zzb:Ljava/lang/Long;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzauc;->zzG(J)Lcom/google/android/gms/internal/ads/zzauc;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
