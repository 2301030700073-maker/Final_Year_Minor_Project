.class final Lcom/google/android/gms/internal/ads/zzgdk;
.super Lcom/google/android/gms/internal/ads/zzgdh;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgcd;

.field private final zzc:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzauc;Lcom/google/android/gms/internal/ads/zzgcd;Ljava/util/Map;Landroid/util/DisplayMetrics;Lcom/google/android/gms/internal/ads/zzgjd;)V
    .locals 7

    const/16 v0, 0x7b

    .line 1
    invoke-virtual {p5, v0}, Lcom/google/android/gms/internal/ads/zzgjd;->zza(I)Lcom/google/android/gms/internal/ads/zzgjb;

    move-result-object v6

    const-string v2, "gbI2a8ruQFsh7iJbKP5csiDrRqRaAG+o51RWglq6SF+q1HNUXOxpmDRR6GgQlE1Z"

    const-string v3, "C7gHksN/1NwyNvzCHdeBzJsOxB75cHtIeny2v2KpeXA="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgdh;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauc;Lcom/google/android/gms/internal/ads/zzgcd;Lcom/google/android/gms/internal/ads/zzgjb;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdk;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgdk;->zza:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgdk;->zzc:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private static zzb(DLandroid/util/DisplayMetrics;)J
    .locals 2

    .line 1
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, p2

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzc(Landroid/util/DisplayMetrics;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected final zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzauc;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdk;->zza:Ljava/util/Map;

    const-string v1, "nv"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgdk;->zzc:Landroid/util/DisplayMetrics;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, ""

    .line 2
    invoke-virtual {p1, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    check-cast p1, [Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzauw;->zza()Lcom/google/android/gms/internal/ads/zzauv;

    move-result-object v1

    const/4 v3, 0x0

    .line 4
    aget-object v4, p1, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    aget-object v6, p1, v5

    if-eqz v6, :cond_0

    .line 5
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzauv;->zza(J)Lcom/google/android/gms/internal/ads/zzauv;

    .line 6
    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzauv;->zzb(J)Lcom/google/android/gms/internal/ads/zzauv;

    :cond_0
    const/4 v4, 0x2

    .line 7
    aget-object v6, p1, v4

    if-eqz v6, :cond_1

    .line 8
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzauv;->zzh(J)Lcom/google/android/gms/internal/ads/zzauv;

    :cond_1
    const/4 v6, 0x3

    .line 9
    aget-object v7, p1, v6

    if-eqz v7, :cond_2

    .line 10
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/ads/zzauv;->zzf(J)Lcom/google/android/gms/internal/ads/zzauv;

    :cond_2
    const/4 v7, 0x4

    .line 11
    aget-object v8, p1, v7

    if-eqz v8, :cond_3

    .line 12
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzauv;->zzc(J)Lcom/google/android/gms/internal/ads/zzauv;

    :cond_3
    const/4 v8, 0x5

    .line 13
    aget-object v8, p1, v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_5

    .line 14
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v8, v11, v9

    if-eqz v8, :cond_4

    move v8, v4

    goto :goto_0

    :cond_4
    move v8, v5

    .line 15
    :goto_0
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzauv;->zzs(I)Lcom/google/android/gms/internal/ads/zzauv;

    :cond_5
    const/4 v8, 0x6

    .line 16
    aget-object v8, p1, v8

    if-eqz v8, :cond_6

    .line 17
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Lcom/google/android/gms/internal/ads/zzauv;->zzj(J)Lcom/google/android/gms/internal/ads/zzauv;

    :cond_6
    const/4 v8, 0x7

    .line 18
    aget-object v8, p1, v8

    if-eqz v8, :cond_7

    .line 19
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Lcom/google/android/gms/internal/ads/zzauv;->zzi(J)Lcom/google/android/gms/internal/ads/zzauv;

    :cond_7
    const/16 v8, 0x8

    .line 20
    aget-object p1, p1, v8

    if-eqz p1, :cond_9

    .line 21
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long p1, v11, v9

    if-eqz p1, :cond_8

    move p1, v4

    goto :goto_1

    :cond_8
    move p1, v5

    .line 22
    :goto_1
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzauv;->zzt(I)Lcom/google/android/gms/internal/ads/zzauv;

    .line 23
    :cond_9
    monitor-enter p2

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdk;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    const-string v8, "TJcXhplO1c7oeAIzyyjGCjnhXIAfNaFNWGhya9KHb9++zv8J1h9atpUrZL1Yjg6v"

    const-string v11, "v7ewhEi0QRfAHjcos6RExS5aIOB6pcbb0aW+P30gIsQ="

    .line 24
    invoke-interface {p1, v8, v11}, Lcom/google/android/gms/internal/ads/zzgcd;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v8, 0x0

    if-eqz p1, :cond_1b

    .line 25
    move-object v11, p1

    check-cast v11, Ljava/lang/reflect/Method;

    const-string v11, "nv"

    .line 26
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/MotionEvent;

    const-string v12, ""

    filled-new-array {v11, v2}, [Ljava/lang/Object;

    move-result-object v11

    .line 27
    invoke-virtual {p1, v12, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_1a

    check-cast p1, [Ljava/lang/Object;

    .line 28
    aget-object v11, p1, v3

    if-eqz v11, :cond_a

    .line 29
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {p2, v11, v12}, Lcom/google/android/gms/internal/ads/zzauc;->zzh(J)Lcom/google/android/gms/internal/ads/zzauc;

    .line 30
    :cond_a
    aget-object v5, p1, v5

    if-eqz v5, :cond_b

    .line 31
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {p2, v11, v12}, Lcom/google/android/gms/internal/ads/zzauc;->zzi(J)Lcom/google/android/gms/internal/ads/zzauc;

    .line 32
    :cond_b
    aget-object v4, p1, v4

    if-eqz v4, :cond_c

    .line 33
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzauc;->zzj(J)Lcom/google/android/gms/internal/ads/zzauc;

    .line 34
    :cond_c
    aget-object v4, p1, v6

    if-eqz v4, :cond_d

    .line 35
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzauc;->zzv(J)Lcom/google/android/gms/internal/ads/zzauc;

    .line 36
    :cond_d
    aget-object p1, p1, v7

    if-eqz p1, :cond_e

    .line 37
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzauc;->zzw(J)Lcom/google/android/gms/internal/ads/zzauc;

    :cond_e
    const-string p1, "oe"

    .line 38
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgax;

    if-nez p1, :cond_f

    goto :goto_2

    .line 59
    :cond_f
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzgax;->zza:J

    cmp-long v6, v4, v9

    if-lez v6, :cond_10

    .line 39
    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzauc;->zzz(J)Lcom/google/android/gms/internal/ads/zzauc;

    :cond_10
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzgax;->zzb:J

    cmp-long v6, v4, v9

    if-lez v6, :cond_11

    .line 40
    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzauc;->zzy(J)Lcom/google/android/gms/internal/ads/zzauc;

    :cond_11
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzgax;->zzc:J

    cmp-long v6, v4, v9

    if-lez v6, :cond_12

    .line 41
    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzauc;->zzx(J)Lcom/google/android/gms/internal/ads/zzauc;

    :cond_12
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzgax;->zzd:J

    cmp-long p1, v4, v9

    if-lez p1, :cond_13

    .line 42
    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzauc;->zzA(J)Lcom/google/android/gms/internal/ads/zzauc;

    .line 38
    :cond_13
    :goto_2
    const-string p1, "oe"

    .line 43
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgax;

    if-nez p1, :cond_14

    goto/16 :goto_3

    .line 70
    :cond_14
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzgax;->zza:J

    cmp-long v4, v4, v9

    if-eqz v4, :cond_17

    .line 44
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgdk;->zzc(Landroid/util/DisplayMetrics;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzgax;->zze:D

    if-eqz v2, :cond_16

    .line 45
    move-object v6, v2

    check-cast v6, Landroid/util/DisplayMetrics;

    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzgdk;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    .line 46
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzauv;->zzl(J)Lcom/google/android/gms/internal/ads/zzauv;

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzgax;->zzh:F

    iget v5, p1, Lcom/google/android/gms/internal/ads/zzgax;->zzf:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    .line 47
    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzgdk;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    .line 48
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzauv;->zzm(J)Lcom/google/android/gms/internal/ads/zzauv;

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzgax;->zzi:F

    iget v5, p1, Lcom/google/android/gms/internal/ads/zzgax;->zzg:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    .line 49
    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzgdk;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    .line 50
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzauv;->zzn(J)Lcom/google/android/gms/internal/ads/zzauv;

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzgax;->zzf:F

    float-to-double v4, v4

    .line 51
    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzgdk;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzauv;->zzq(J)Lcom/google/android/gms/internal/ads/zzauv;

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzgax;->zzg:F

    float-to-double v4, v4

    .line 52
    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzgdk;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzauv;->zzr(J)Lcom/google/android/gms/internal/ads/zzauv;

    const-string v4, "nv"

    .line 53
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MotionEvent;

    if-eqz v4, :cond_17

    iget v5, p1, Lcom/google/android/gms/internal/ads/zzgax;->zzf:F

    iget v6, p1, Lcom/google/android/gms/internal/ads/zzgax;->zzh:F

    sub-float/2addr v5, v6

    .line 54
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    .line 55
    invoke-static {v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzgdk;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    cmp-long v7, v5, v9

    if-eqz v7, :cond_15

    .line 56
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzauv;->zzo(J)Lcom/google/android/gms/internal/ads/zzauv;

    :cond_15
    iget v5, p1, Lcom/google/android/gms/internal/ads/zzgax;->zzg:F

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgax;->zzi:F

    sub-float/2addr v5, p1

    .line 57
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    add-float/2addr v5, p1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v5, p1

    float-to-double v4, v5

    .line 58
    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzgdk;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    cmp-long p1, v4, v9

    if-eqz p1, :cond_17

    .line 59
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzauv;->zzp(J)Lcom/google/android/gms/internal/ads/zzauv;

    goto :goto_3

    .line 71
    :cond_16
    throw v8

    .line 60
    :cond_17
    :goto_3
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzauc;->zzJ(Lcom/google/android/gms/internal/ads/zzauv;)Lcom/google/android/gms/internal/ads/zzauc;

    const-string p1, "ro"

    .line 61
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzgay;

    if-eqz p1, :cond_19

    .line 62
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgdk;->zzc(Landroid/util/DisplayMetrics;)Z

    move-result v0

    if-eqz v0, :cond_19

    :goto_4
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    if-gt v3, v0, :cond_19

    .line 63
    aget-object v0, p1, v3

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzauw;->zza()Lcom/google/android/gms/internal/ads/zzauv;

    move-result-object v1

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzgay;->zza:F

    float-to-double v4, v4

    if-eqz v2, :cond_18

    .line 65
    move-object v6, v2

    check-cast v6, Landroid/util/DisplayMetrics;

    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzgdk;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzauv;->zza(J)Lcom/google/android/gms/internal/ads/zzauv;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzgay;->zzb:F

    float-to-double v4, v0

    .line 66
    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzgdk;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzauv;->zzb(J)Lcom/google/android/gms/internal/ads/zzauv;

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzauw;

    .line 68
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzauc;->zzK(Lcom/google/android/gms/internal/ads/zzauw;)Lcom/google/android/gms/internal/ads/zzauc;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 69
    :cond_18
    throw v8

    .line 70
    :cond_19
    monitor-exit p2

    return-void

    .line 72
    :cond_1a
    throw v8

    .line 73
    :cond_1b
    throw v8

    :catchall_0
    move-exception p1

    .line 70
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
