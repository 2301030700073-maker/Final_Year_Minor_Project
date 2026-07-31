.class public final Lcom/google/android/gms/internal/ads/zzazf;
.super Lcom/google/android/gms/internal/ads/zzazr;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzayd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauc;II)V
    .locals 7

    .line 1
    const-string v3, "ZXwHOojdfPkjtU4/T1kRX8Zucxdzz/LL+/XimOcPDrc="

    const/4 v6, 0x3

    const-string v2, "8W5EiIZWvw8ca0gdEf2baMelwD0v1LgWFEv6AqIRDGIzRlZJKgzzVYcusXATxgKN"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzazr;-><init>(Lcom/google/android/gms/internal/ads/zzayd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauc;II)V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzdr:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazf;->zze:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazf;->zza:Lcom/google/android/gms/internal/ads/zzayd;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzayd;->zzb()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaxj;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxj;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazf;->zzd:Lcom/google/android/gms/internal/ads/zzauc;

    .line 5
    monitor-enter v0

    :try_start_0
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzaxj;->zza:J

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzauc;->zzc(J)Lcom/google/android/gms/internal/ads/zzauc;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzaxj;->zzb:J

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzauc;->zzP(J)Lcom/google/android/gms/internal/ads/zzauc;

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
