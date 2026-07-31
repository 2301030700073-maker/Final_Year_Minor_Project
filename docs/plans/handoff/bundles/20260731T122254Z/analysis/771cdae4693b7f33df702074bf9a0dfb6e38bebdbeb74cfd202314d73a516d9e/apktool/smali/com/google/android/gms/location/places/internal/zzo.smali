.class public Lcom/google/android/gms/location/places/internal/zzo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/internal/zzo$zza;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final zzaAQ:J

.field private static zzaAR:Lcom/google/android/gms/location/places/internal/zzo;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final zzaAS:Ljava/lang/Runnable;

.field private zzaAT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzaAU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzqt:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/google/android/gms/location/places/internal/zzo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/internal/zzo;->TAG:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/location/places/internal/zzo;->zzaAQ:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzo;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzo$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/location/places/internal/zzo$zza;-><init>(Lcom/google/android/gms/location/places/internal/zzo;Lcom/google/android/gms/location/places/internal/zzo$1;)V

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzaAS:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzqt:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzaAT:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzaAU:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzo;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/zzo;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/location/places/internal/zzo;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzaAT:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static declared-synchronized zzax(Landroid/content/Context;)Lcom/google/android/gms/location/places/internal/zzo;
    .locals 3

    const-class v0, Lcom/google/android/gms/location/places/internal/zzo;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/google/android/gms/location/places/internal/zzo;->zzaAR:Lcom/google/android/gms/location/places/internal/zzo;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/location/places/internal/zzo;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/location/places/internal/zzo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/location/places/internal/zzo;->zzaAR:Lcom/google/android/gms/location/places/internal/zzo;

    :cond_1
    sget-object p0, Lcom/google/android/gms/location/places/internal/zzo;->zzaAR:Lcom/google/android/gms/location/places/internal/zzo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/location/places/internal/zzo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzqt:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/location/places/internal/zzo;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzaAU:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/location/places/internal/zzo;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzaAT:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/location/places/internal/zzo;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzaAU:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/location/places/internal/zzo;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/location/places/internal/zzo;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public zzA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzaAT:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzaAT:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzaAU:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzo;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzaAS:Ljava/lang/Runnable;

    sget-wide v3, Lcom/google/android/gms/location/places/internal/zzo;->zzaAQ:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzaAT:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzaAU:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzaAT:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x2710

    if-lt p1, p2, :cond_2

    sget-object p1, Lcom/google/android/gms/location/places/internal/zzo;->TAG:Ljava/lang/String;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/location/places/internal/zzo;->TAG:Ljava/lang/String;

    const-string p2, "Event buffer full, flushing"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzaAS:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/google/android/gms/location/places/internal/zzo;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzaAS:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
