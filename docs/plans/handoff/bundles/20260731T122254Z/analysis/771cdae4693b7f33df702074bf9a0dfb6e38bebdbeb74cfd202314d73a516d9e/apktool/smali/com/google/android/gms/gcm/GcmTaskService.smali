.class public abstract Lcom/google/android/gms/gcm/GcmTaskService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/gcm/GcmTaskService$zza;
    }
.end annotation


# static fields
.field public static final SERVICE_ACTION_EXECUTE_TASK:Ljava/lang/String; = "com.google.android.gms.gcm.ACTION_TASK_READY"

.field public static final SERVICE_ACTION_INITIALIZE:Ljava/lang/String; = "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE"

.field public static final SERVICE_PERMISSION:Ljava/lang/String; = "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE"


# instance fields
.field private final zzavL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzavM:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzavL:Ljava/util/Set;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/gcm/GcmTaskService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GcmTaskService;->zzdc(Ljava/lang/String;)V

    return-void
.end method

.method private zzdc(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzavL:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzavL:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzavL:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzavM:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/GcmTaskService;->stopSelf(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeTasks()V
    .locals 0

    return-void
.end method

.method public abstract onRunTask(Lcom/google/android/gms/gcm/TaskParams;)I
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const-string v0, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "callback"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/google/android/gms/gcm/PendingCallback;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzavL:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzavL:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzavM:I

    invoke-virtual {p0, v4}, Lcom/google/android/gms/gcm/GcmTaskService;->stopSelf(I)V

    iput p3, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzavM:I

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Lcom/google/android/gms/gcm/GcmTaskService$zza;

    check-cast v2, Lcom/google/android/gms/gcm/PendingCallback;

    invoke-virtual {v2}, Lcom/google/android/gms/gcm/PendingCallback;->getIBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v3, p0, v0, v2}, Lcom/google/android/gms/gcm/GcmTaskService$zza;-><init>(Lcom/google/android/gms/gcm/GcmTaskService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v3}, Lcom/google/android/gms/gcm/GcmTaskService$zza;->start()V

    return v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    const-string v2, "GcmTaskService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmTaskService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Could not process request, invalid callback."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v0, "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmTaskService;->onInitializeTasks()V

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzavL:Ljava/util/Set;

    monitor-enter v0

    :try_start_2
    iput p3, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzavM:I

    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzavL:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzavM:I

    invoke-virtual {p0, v2}, Lcom/google/android/gms/gcm/GcmTaskService;->stopSelf(I)V

    :cond_3
    monitor-exit v0

    return v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_4
    return v1
.end method
