.class public final Lcom/google/android/gms/internal/ads/zzayx;
.super Lcom/google/android/gms/internal/ads/zzazr;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zzh:Lcom/google/android/gms/internal/ads/zzaye;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzayd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauc;IILcom/google/android/gms/internal/ads/zzaye;)V
    .locals 7

    .line 1
    const-string v3, "PjHrXBXcXoGkJe75zH8RZ0khapXmOV4o2gX+YgkGdus="

    const/16 v6, 0x55

    const-string v2, "OKoG374XK3cB1cjYFPuO/Bg6vy6AufzuCyu4QCURxkWhJwL4+NqQjs8XziSHB+CQ"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzazr;-><init>(Lcom/google/android/gms/internal/ads/zzayd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauc;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzh:Lcom/google/android/gms/internal/ads/zzaye;

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayx;->zze:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzh:Lcom/google/android/gms/internal/ads/zzaye;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaye;->zzf()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaye;->zzg()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaye;->zzi()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaye;->zzh()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v2, v3, v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzd:Lcom/google/android/gms/internal/ads/zzauc;

    .line 6
    monitor-enter v1

    const/4 v2, 0x0

    .line 7
    :try_start_0
    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzauc;->zzY(J)Lcom/google/android/gms/internal/ads/zzauc;

    const/4 v2, 0x1

    .line 8
    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzauc;->zzZ(J)Lcom/google/android/gms/internal/ads/zzauc;

    .line 9
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
