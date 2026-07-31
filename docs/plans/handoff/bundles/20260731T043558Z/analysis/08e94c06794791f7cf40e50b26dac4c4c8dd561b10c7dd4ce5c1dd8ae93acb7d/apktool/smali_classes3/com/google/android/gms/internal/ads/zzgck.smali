.class final Lcom/google/android/gms/internal/ads/zzgck;
.super Lcom/google/android/gms/internal/ads/zzgdh;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Landroid/app/Activity;

.field private final zzb:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzauc;Lcom/google/android/gms/internal/ads/zzgcd;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzgjd;)V
    .locals 7

    const/16 v0, 0x6f

    .line 1
    invoke-virtual {p5, v0}, Lcom/google/android/gms/internal/ads/zzgjd;->zza(I)Lcom/google/android/gms/internal/ads/zzgjb;

    move-result-object v6

    const-string v2, "71irZxeyztMVPxtkZNjCXCWzc9uBzzqfxPgw1LkoaIGD1YWtoRaLj8ZtqyMHro2I"

    const-string v3, "sazFFsabItlse3qDY43b32ZnLCjQJ0+CJQYLaEeKmSw="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgdh;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauc;Lcom/google/android/gms/internal/ads/zzgcd;Lcom/google/android/gms/internal/ads/zzgjb;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgck;->zzb:Landroid/view/View;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgck;->zza:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected final zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzauc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgck;->zzb:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgck;->zza:Landroid/app/Activity;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    check-cast p1, [Ljava/lang/Object;

    .line 2
    monitor-enter p2

    const/4 v0, 0x0

    .line 3
    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzauc;->zzS(J)Lcom/google/android/gms/internal/ads/zzauc;

    const/4 v0, 0x1

    .line 4
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzauc;->zzT(J)Lcom/google/android/gms/internal/ads/zzauc;

    const/4 v0, 0x2

    .line 5
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzauc;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzauc;

    .line 6
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
