.class public final Lcom/google/android/gms/internal/ads/zzayn;
.super Lcom/google/android/gms/internal/ads/zzazr;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zzh:Landroid/app/Activity;

.field private final zzi:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzayd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauc;IILandroid/view/View;Landroid/app/Activity;)V
    .locals 7

    .line 1
    const-string v3, "6iuDHA2XEqaGCIdpenyLvoYWzHjKpoW5EjYN40bz5Cs="

    const/16 v6, 0x3e

    const-string v2, "YJMz4lZ/SFOXN6kW19UKnvAqcLtndNv4f6er9d24/5MuXcrsMTIC+9Jfbhpe2HMW"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzazr;-><init>(Lcom/google/android/gms/internal/ads/zzayd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauc;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzi:Landroid/view/View;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzh:Landroid/app/Activity;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzi:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeu;->zzcY:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzh:Landroid/app/Activity;

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v0, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzd:Lcom/google/android/gms/internal/ads/zzauc;

    .line 4
    monitor-enter v2

    const/4 v3, 0x0

    .line 5
    :try_start_0
    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzauc;->zzS(J)Lcom/google/android/gms/internal/ads/zzauc;

    const/4 v3, 0x1

    .line 6
    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzauc;->zzT(J)Lcom/google/android/gms/internal/ads/zzauc;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 7
    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzauc;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzauc;

    .line 8
    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
