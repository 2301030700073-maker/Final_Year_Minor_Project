.class public Lcom/google/android/gms/common/stats/zzb;
.super Ljava/lang/Object;


# static fields
.field private static final zzaaJ:Ljava/lang/Object;

.field private static zzack:Lcom/google/android/gms/common/stats/zzb;

.field private static final zzacp:Landroid/content/ComponentName;


# instance fields
.field private final zzacl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzacm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzacn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaco:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzacq:Lcom/google/android/gms/common/stats/zze;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/zzb;->zzaaJ:Ljava/lang/Object;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/zzb;->zzacp:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/common/stats/zzb;->getLogLevel()I

    move-result v0

    sget v1, Lcom/google/android/gms/common/stats/zzd;->zzacz:I

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzacl:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzacm:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzacn:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzaco:Ljava/util/List;

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzacu:Lcom/google/android/gms/internal/zzkf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkf;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzacl:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzacv:Lcom/google/android/gms/internal/zzkf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkf;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_2
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzacm:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzacw:Lcom/google/android/gms/internal/zzkf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkf;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    :cond_3
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzacn:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzacx:Lcom/google/android/gms/internal/zzkf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkf;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_3

    :cond_4
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzaco:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/common/stats/zze;

    const/16 v1, 0x400

    sget-object v2, Lcom/google/android/gms/common/stats/zzc$zza;->zzacy:Lcom/google/android/gms/internal/zzkf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzkf;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/stats/zze;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzacq:Lcom/google/android/gms/common/stats/zze;

    return-void
.end method

.method private getLogLevel()I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/zzla;->zziW()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzact:Lcom/google/android/gms/internal/zzkf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkf;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    sget v0, Lcom/google/android/gms/common/stats/zzd;->zzacz:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget v0, Lcom/google/android/gms/common/stats/zzd;->zzacz:I

    return v0
.end method

.method private zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 21

    move-object/from16 v6, p1

    move/from16 v10, p5

    sget-boolean v0, Lcom/google/android/gms/common/internal/zzd;->zzZR:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object/from16 v15, p0

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Lcom/google/android/gms/common/stats/zzb;->zzb(Landroid/content/ServiceConnection;)Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object v1, v6

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, v16

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/stats/zzb;->getLogLevel()I

    move-result v1

    sget v2, Lcom/google/android/gms/common/stats/zzd;->zzacD:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzll;->zzl(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-wide/16 v1, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/stats/zzb;->getLogLevel()I

    move-result v3

    sget v4, Lcom/google/android/gms/common/stats/zzd;->zzacF:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v1

    :cond_3
    move-wide/from16 v19, v1

    const/4 v1, 0x1

    if-eq v10, v1, :cond_5

    const/4 v1, 0x4

    if-ne v10, v1, :cond_4

    goto :goto_0

    :cond_4
    move-object/from16 v1, p4

    invoke-static {v6, v1}, Lcom/google/android/gms/common/stats/zzb;->zzb(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/stats/ConnectionEvent;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzll;->zzaj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    iget-object v13, v1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v14, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    move-object v7, v2

    move-object/from16 v12, p3

    move-object v15, v0

    invoke-direct/range {v7 .. v20}, Lcom/google/android/gms/common/stats/ConnectionEvent;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    move-object v1, v2

    goto :goto_1

    :cond_5
    :goto_0
    new-instance v1, Lcom/google/android/gms/common/stats/ConnectionEvent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    move-object v7, v1

    move-object v15, v0

    invoke-direct/range {v7 .. v20}, Lcom/google/android/gms/common/stats/ConnectionEvent;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/google/android/gms/common/stats/zzb;->zzacp:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.google.android.gms.common.stats.EXTRA_LOG_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private zza(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-boolean v0, Lcom/google/android/gms/common/internal/zzd;->zzZR:Z

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.gms"

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzla;->zzi(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/common/stats/zzb;->getLogLevel()I

    move-result v0

    sget v1, Lcom/google/android/gms/common/stats/zzd;->zzacz:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/common/stats/zzb;->zzacq:Lcom/google/android/gms/common/stats/zze;

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x4

    const/4 v3, 0x1

    if-eq p5, v1, :cond_5

    if-ne p5, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p3}, Lcom/google/android/gms/common/stats/zzb;->zzb(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;

    move-result-object p5

    if-nez p5, :cond_2

    const-string p1, "ConnectionTracker"

    const-string p4, "Client %s made an invalid request %s"

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p2, p5, v2

    invoke-virtual {p3, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p5, v3

    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/zzll;->zzaj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object p5, p5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/stats/zzb;->zzacl:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/common/stats/zzb;->zzacm:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/common/stats/zzb;->zzacn:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/common/stats/zzb;->zzaco:Ljava/util/List;

    invoke-interface {p2, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/google/android/gms/common/stats/zzd;->zzacE:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/common/stats/zzb;->zzacq:Lcom/google/android/gms/common/stats/zze;

    invoke-virtual {p1, p4}, Lcom/google/android/gms/common/stats/zze;->zzcp(Ljava/lang/String;)Ljava/lang/Long;

    return v3

    :cond_4
    return v2

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/stats/zzb;->zzacq:Lcom/google/android/gms/common/stats/zze;

    invoke-virtual {p1, p4}, Lcom/google/android/gms/common/stats/zze;->zzcq(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    return v2
.end method

.method private static zzb(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x14

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_1

    const-string v6, "ConnectionTracker"

    const-string v7, "Multiple handlers found for this intent: %s\n Stack trace: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzll;->zzl(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    const-string p1, "ConnectionTracker"

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "ConnectionTracker"

    const-string v6, "There are no handler of this intent: %s\n Stack trace: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzll;->zzl(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private zzb(Landroid/content/ServiceConnection;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    shl-int/lit8 v0, v0, 0x20

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    or-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static zzoO()Lcom/google/android/gms/common/stats/zzb;
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/stats/zzb;->zzaaJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/stats/zzb;->zzack:Lcom/google/android/gms/common/stats/zzb;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/stats/zzb;

    invoke-direct {v1}, Lcom/google/android/gms/common/stats/zzb;-><init>()V

    sput-object v1, Lcom/google/android/gms/common/stats/zzb;->zzack:Lcom/google/android/gms/common/stats/zzb;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/stats/zzb;->zzack:Lcom/google/android/gms/common/stats/zzb;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;I)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method

.method public zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 6

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ConnectionTracker"

    const-string p2, "Attempted to bind to a service in a STOPPED package."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;I)V

    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public zzb(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method
