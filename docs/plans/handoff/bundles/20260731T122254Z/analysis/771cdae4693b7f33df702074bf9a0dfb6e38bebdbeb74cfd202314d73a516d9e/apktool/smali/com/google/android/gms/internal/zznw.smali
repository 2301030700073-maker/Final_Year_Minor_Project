.class public Lcom/google/android/gms/internal/zznw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zznw$zza;
    }
.end annotation


# static fields
.field private static final zzaEq:[Lcom/google/android/gms/internal/zznw$zza;

.field private static zzaEr:Lcom/google/android/gms/internal/zznw;


# instance fields
.field private final zzaEs:Landroid/app/Application;

.field private zzaEt:Lcom/google/android/gms/internal/zzod;

.field private final zzaEu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zznw$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzaEv:Lcom/google/android/gms/internal/zzog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zznw$zza;

    sput-object v0, Lcom/google/android/gms/internal/zznw;->zzaEq:[Lcom/google/android/gms/internal/zznw$zza;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zznw;->zzaEs:Landroid/app/Application;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznw;->zzaEu:Ljava/util/List;

    return-void
.end method

.method public static zzaC(Landroid/content/Context;)Lcom/google/android/gms/internal/zznw;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/android/gms/internal/zznw;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zznw;->zzaEr:Lcom/google/android/gms/internal/zznw;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zznw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zznw;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/google/android/gms/internal/zznw;->zzaEr:Lcom/google/android/gms/internal/zznw;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/zznw;->zzaEr:Lcom/google/android/gms/internal/zznw;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private zzwh()[Lcom/google/android/gms/internal/zznw$zza;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zznw;->zzaEu:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zznw;->zzaEu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zznw;->zzaEq:[Lcom/google/android/gms/internal/zznw$zza;

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zznw;->zzaEu:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/zznw;->zzaEu:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zznw$zza;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/zznw$zza;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zznw$zza;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zznw;->zzaEu:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zznw;->zzaEu:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zznw;->zzaEu:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzaf(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const-string p1, "com.google.android.gms.measurement.ScreenViewService"

    const-string v0, "AutoScreeViewTracking is not supported on API 14 or earlier devices"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznw;->zzwg()Z

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/zzog;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzog;-><init>(Lcom/google/android/gms/internal/zznw;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznw;->zzaEv:Lcom/google/android/gms/internal/zzog;

    iget-object p1, p0, Lcom/google/android/gms/internal/zznw;->zzaEs:Landroid/app/Application;

    iget-object v0, p0, Lcom/google/android/gms/internal/zznw;->zzaEv:Lcom/google/android/gms/internal/zzog;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zznw;->zzaEs:Landroid/app/Application;

    iget-object v0, p0, Lcom/google/android/gms/internal/zznw;->zzaEv:Lcom/google/android/gms/internal/zzog;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznw;->zzaEv:Lcom/google/android/gms/internal/zzog;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzod;Landroid/app/Activity;)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzod;->isMutable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/google/android/gms/internal/zznv;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/zznv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zznv;->zzb(Lcom/google/android/gms/internal/zzod;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznw;->zzaEt:Lcom/google/android/gms/internal/zzod;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznw;->zzaEt:Lcom/google/android/gms/internal/zzod;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzod;->zzbn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzod;->zzhL(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zznw;->zzaEt:Lcom/google/android/gms/internal/zzod;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzod;->zzwB()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzod;->zzdJ(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zznw;->zzwh()[Lcom/google/android/gms/internal/zznw$zza;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lcom/google/android/gms/internal/zznw$zza;->zza(Lcom/google/android/gms/internal/zzod;Landroid/app/Activity;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzod;->zzwF()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzod;->zzwB()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    :cond_3
    const/4 v0, 0x0

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/zznw;->zzaEt:Lcom/google/android/gms/internal/zzod;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/google/android/gms/internal/zznw;->zzaEt:Lcom/google/android/gms/internal/zzod;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzod;->zzbn()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzod;->zzbn()I

    move-result v2

    if-ne p2, v2, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/zznw;->zzaEt:Lcom/google/android/gms/internal/zzod;

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznw;->zzwf()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznw;->zzaEt:Lcom/google/android/gms/internal/zzod;

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznw;->zzwh()[Lcom/google/android/gms/internal/zznw$zza;

    move-result-object v0

    :cond_6
    :goto_1
    array-length p2, v0

    if-ge v1, p2, :cond_7

    aget-object p2, v0, v1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zznw$zza;->zza(Lcom/google/android/gms/internal/zzod;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public zzwe()Lcom/google/android/gms/internal/zzod;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznw;->zzaEt:Lcom/google/android/gms/internal/zzod;

    return-object v0
.end method

.method public zzwf()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zznw;->zzaEt:Lcom/google/android/gms/internal/zzod;

    return-void
.end method

.method public zzwg()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznw;->zzaEv:Lcom/google/android/gms/internal/zzog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
