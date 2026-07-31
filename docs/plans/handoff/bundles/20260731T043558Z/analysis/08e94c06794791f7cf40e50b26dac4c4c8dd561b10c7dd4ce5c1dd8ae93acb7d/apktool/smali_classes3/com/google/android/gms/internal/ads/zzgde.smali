.class final Lcom/google/android/gms/internal/ads/zzgde;
.super Lcom/google/android/gms/internal/ads/zzgdh;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field private static final zza:Ljava/lang/Long;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzfyq;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgde;->zza:Ljava/lang/Long;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzauc;Lcom/google/android/gms/internal/ads/zzgcd;Lcom/google/android/gms/internal/ads/zzfyq;Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzgjd;)V
    .locals 7

    const/16 v0, 0x79

    .line 1
    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/ads/zzgjd;->zza(I)Lcom/google/android/gms/internal/ads/zzgjb;

    move-result-object v6

    const-string v2, "3U4DEAJT9Pq66npH/ZEsiPizUaU6oaGuzbq27Rp3Iz/R6ssq6OsViFqc+1XsG+SQ"

    const-string v3, "oHImj5OTIs8LNvX9EwNQkQ3bSJ9XioOM1m8VTLsnF8I="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgdh;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauc;Lcom/google/android/gms/internal/ads/zzgcd;Lcom/google/android/gms/internal/ads/zzgjb;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgde;->zzb:Lcom/google/android/gms/internal/ads/zzfyq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgde;->zzc:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgde;->zzd:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected final zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzauc;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgde;->zzb:Lcom/google/android/gms/internal/ads/zzfyq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyq;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgde;->zzc:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgde;->zzd:Ljava/util/Map;

    const-string v4, "up"

    .line 2
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzgma;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    .line 3
    invoke-virtual {p1, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    check-cast p1, [Ljava/lang/Object;

    .line 5
    monitor-enter p2

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfyq;->zza:Lcom/google/android/gms/internal/ads/zzfyq;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 6
    aget-object v0, p1, v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgde;->zza:Ljava/lang/Long;

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgma;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 6
    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzauc;->zzq(J)Lcom/google/android/gms/internal/ads/zzauc;

    .line 8
    aget-object v0, p1, v4

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgma;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 8
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzauc;->zzr(J)Lcom/google/android/gms/internal/ads/zzauc;

    :cond_0
    const/4 v0, 0x2

    .line 10
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzauc;->zzg(J)Lcom/google/android/gms/internal/ads/zzauc;

    const/4 v0, 0x3

    .line 11
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzauc;->zzQ(J)Lcom/google/android/gms/internal/ads/zzauc;

    .line 12
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
