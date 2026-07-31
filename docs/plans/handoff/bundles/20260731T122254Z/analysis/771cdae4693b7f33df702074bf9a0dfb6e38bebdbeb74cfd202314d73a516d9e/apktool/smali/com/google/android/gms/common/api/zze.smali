.class public Lcom/google/android/gms/common/api/zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/zzh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/zze$zza;,
        Lcom/google/android/gms/common/api/zze$zzc;,
        Lcom/google/android/gms/common/api/zze$zzd;,
        Lcom/google/android/gms/common/api/zze$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzWE:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "+",
            "Lcom/google/android/gms/internal/zzps;",
            "Lcom/google/android/gms/internal/zzpt;",
            ">;"
        }
    .end annotation
.end field

.field private final zzWK:Lcom/google/android/gms/common/api/zzg;

.field private final zzWL:Ljava/util/concurrent/locks/Lock;

.field private zzWM:Lcom/google/android/gms/common/ConnectionResult;

.field private zzWN:I

.field private zzWO:I

.field private zzWP:Z

.field private zzWQ:I

.field private final zzWR:Landroid/os/Bundle;

.field private final zzWS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Api$ClientKey;",
            ">;"
        }
    .end annotation
.end field

.field private zzWT:Lcom/google/android/gms/internal/zzps;

.field private zzWU:I

.field private zzWV:Z

.field private zzWW:Z

.field private zzWX:Lcom/google/android/gms/common/internal/IAccountAccessor;

.field private zzWY:Z

.field private zzWZ:Z

.field private final zzXa:Lcom/google/android/gms/common/internal/zze;

.field private final zzXb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/zzg;Lcom/google/android/gms/common/internal/zze;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzg;",
            "Lcom/google/android/gms/common/internal/zze;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$zza<",
            "+",
            "Lcom/google/android/gms/internal/zzps;",
            "Lcom/google/android/gms/internal/zzpt;",
            ">;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/zze;->zzWO:I

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->zzWP:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWR:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWS:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zze;->zzXa:Lcom/google/android/gms/common/internal/zze;

    iput-object p3, p0, Lcom/google/android/gms/common/api/zze;->zzXb:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/common/api/zze;->zzWE:Lcom/google/android/gms/common/api/Api$zza;

    iput-object p5, p0, Lcom/google/android/gms/common/api/zze;->zzWL:Ljava/util/concurrent/locks/Lock;

    iput-object p6, p0, Lcom/google/android/gms/common/api/zze;->mContext:Landroid/content/Context;

    return-void
.end method

.method private zzT(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWT:Lcom/google/android/gms/internal/zzps;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWT:Lcom/google/android/gms/internal/zzps;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzps;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/zze;->zzWT:Lcom/google/android/gms/internal/zzps;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzps;->zzxY()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/zze;->zzWT:Lcom/google/android/gms/internal/zzps;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzps;->disconnect()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zze;->zzWX:Lcom/google/android/gms/common/internal/IAccountAccessor;

    :cond_2
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/zze;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/zze;->zzWL:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method private zza(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWL:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/zze;->zzaW(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/zze;->zzWL:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmG()V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/zze;->zzc(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmI()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/zze;->zzd(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/zze;->zzWL:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWL:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/zze;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/zze;->zzd(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/zze;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/zze;->zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/zze;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/zze;->zza(Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzoa()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zze;->zzWL:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/zze;->zzaW(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/zze;->zzWL:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zznZ()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWX:Lcom/google/android/gms/common/internal/IAccountAccessor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->zzWW:Z

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzob()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->zzWY:Z

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzoc()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/zze;->zzWZ:Z

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmE()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/zze;->zzc(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmI()V

    iget p1, p0, Lcom/google/android/gms/common/api/zze;->zzWQ:I

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmG()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/zze;->zzd(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/zze;->zzWL:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWL:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private zza(IILcom/google/android/gms/common/ConnectionResult;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-static {p3}, Lcom/google/android/gms/common/api/zze;->zzb(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result p2

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/common/api/zze;->zzWM:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/google/android/gms/common/api/zze;->zzWN:I

    if-ge p1, p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/zze;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/zze;->zzaW(I)Z

    move-result p0

    return p0
.end method

.method private zzaW(I)Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/common/api/zze;->zzWO:I

    if-eq v0, p1, :cond_0

    const-string v0, "GoogleApiClientConnecting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoogleApiClient connecting is in step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/gms/common/api/zze;->zzWO:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/zze;->zzaX(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but received callback for step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/zze;->zzaX(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/zze;->zzd(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private zzaX(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "UNKNOWN"

    return-object p1

    :pswitch_0
    const-string p1, "STEP_GETTING_REMOTE_SERVICE"

    return-object p1

    :pswitch_1
    const-string p1, "STEP_AUTHENTICATING"

    return-object p1

    :pswitch_2
    const-string p1, "STEP_VALIDATING_ACCOUNT"

    return-object p1

    :pswitch_3
    const-string p1, "STEP_GETTING_SERVICE_BINDINGS"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/zze;)Lcom/google/android/gms/common/api/zzg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    return-object p0
.end method

.method private zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;I)V"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Api;->zzmp()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zza;->getPriority()I

    move-result v0

    invoke-direct {p0, v0, p3, p1}, Lcom/google/android/gms/common/api/zze;->zza(IILcom/google/android/gms/common/ConnectionResult;)Z

    move-result p3

    if-eqz p3, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zze;->zzWM:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Lcom/google/android/gms/common/api/zze;->zzWN:I

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object p3, p3, Lcom/google/android/gms/common/api/zzg;->zzXv:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Api;->zzms()Lcom/google/android/gms/common/api/Api$ClientKey;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzaT(I)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/zze;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/zze;->zzc(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result p0

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/api/zze;)Lcom/google/android/gms/internal/zzps;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/zze;->zzWT:Lcom/google/android/gms/internal/zzps;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/api/zze;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/zze;->zza(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method private zzc(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/common/api/zze;->zzWU:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/common/api/zze;->zzWU:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method private zzd(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->zzWP:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->zzXw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/zze;->zzWM:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/zze;->zzT(Z)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/zze;->zzaV(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzg;->zzmO()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zze(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzg;->zzmR()Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->zzXn:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzj;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object p1, p1, Lcom/google/android/gms/common/api/zzg;->zzXn:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzj;->zznT()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/api/zze;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmI()V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/common/api/zze;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmG()V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/common/api/zze;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmC()Z

    move-result p0

    return p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/common/api/zze;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmD()V

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/common/api/zze;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmF()V

    return-void
.end method

.method private zzmC()Z
    .locals 4

    iget v0, p0, Lcom/google/android/gms/common/api/zze;->zzWQ:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/common/api/zze;->zzWQ:I

    iget v0, p0, Lcom/google/android/gms/common/api/zze;->zzWQ:I

    const/4 v2, 0x0

    if-lez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/api/zze;->zzWQ:I

    if-gez v0, :cond_1

    const-string v0, "GoogleApiClientConnecting"

    const-string v1, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/zze;->zzd(Lcom/google/android/gms/common/ConnectionResult;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWM:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWM:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0

    :cond_2
    return v1
.end method

.method private zzmD()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->zzWV:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmE()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmG()V

    return-void
.end method

.method private zzmE()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->zzWW:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/common/api/zze;->zzWQ:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/zze;->zzWO:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->zzXu:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/zze;->zzWQ:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->zzXu:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$ClientKey;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v2, v2, Lcom/google/android/gms/common/api/zzg;->zzXv:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmC()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmF()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v2, v2, Lcom/google/android/gms/common/api/zzg;->zzXu:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$Client;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zze;->zzWX:Lcom/google/android/gms/common/internal/IAccountAccessor;

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/Api$Client;->validateAccount(Lcom/google/android/gms/common/internal/IAccountAccessor;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private zzmF()V
    .locals 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/zze;->zzWO:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmJ()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/zzg;->zzXw:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWT:Lcom/google/android/gms/internal/zzps;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zze;->zzWX:Lcom/google/android/gms/common/internal/IAccountAccessor;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v2, v2, Lcom/google/android/gms/common/api/zzg;->zzXw:Ljava/util/Set;

    new-instance v3, Lcom/google/android/gms/common/api/zze$zza;

    invoke-direct {v3, p0}, Lcom/google/android/gms/common/api/zze$zza;-><init>(Lcom/google/android/gms/common/api/zze;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzps;->zza(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;Lcom/google/android/gms/signin/internal/zze;)V

    return-void
.end method

.method private zzmG()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->zzXw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmJ()Ljava/util/Set;

    move-result-object v0

    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/gms/common/api/zze;->zzWO:I

    iget-object v1, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v1, v1, Lcom/google/android/gms/common/api/zzg;->zzXu:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/common/api/zze;->zzWQ:I

    iget-object v1, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v1, v1, Lcom/google/android/gms/common/api/zzg;->zzXu:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$ClientKey;

    iget-object v3, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v3, v3, Lcom/google/android/gms/common/api/zzg;->zzXv:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmC()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmH()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v3, v3, Lcom/google/android/gms/common/api/zzg;->zzXu:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    iget-object v3, p0, Lcom/google/android/gms/common/api/zze;->zzWX:Lcom/google/android/gms/common/internal/IAccountAccessor;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private zzmH()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzg;->zzmN()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWT:Lcom/google/android/gms/internal/zzps;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->zzWY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWT:Lcom/google/android/gms/internal/zzps;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zze;->zzWX:Lcom/google/android/gms/common/internal/IAccountAccessor;

    iget-boolean v3, p0, Lcom/google/android/gms/common/api/zze;->zzWZ:Z

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzps;->zza(Lcom/google/android/gms/common/internal/IAccountAccessor;Z)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/zze;->zzT(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->zzXv:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$ClientKey;

    iget-object v3, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v3, v3, Lcom/google/android/gms/common/api/zzg;->zzXu:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->zzWP:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/zze;->zzWP:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/zze;->zzaV(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWR:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWR:Landroid/os/Bundle;

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v1, v1, Lcom/google/android/gms/common/api/zzg;->zzXn:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/zzj;->zzg(Landroid/os/Bundle;)V

    return-void
.end method

.method private zzmI()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->zzWV:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->zzXw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$ClientKey;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v2, v2, Lcom/google/android/gms/common/api/zzg;->zzXv:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v2, v2, Lcom/google/android/gms/common/api/zzg;->zzXv:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private zzmJ()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zze;->zzXa:Lcom/google/android/gms/common/internal/zze;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zze;->zznv()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/zze;->zzXa:Lcom/google/android/gms/common/internal/zze;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zze;->zznx()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api;

    iget-object v4, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v4, v4, Lcom/google/android/gms/common/api/zzg;->zzXv:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Api;->zzms()Lcom/google/android/gms/common/api/Api$ClientKey;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/zze$zza;

    iget-object v3, v3, Lcom/google/android/gms/common/internal/zze$zza;->zzWJ:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public begin()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->zzXn:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzj;->zznU()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->zzXv:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->zzWP:Z

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->zzWV:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/api/zze;->zzWM:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Lcom/google/android/gms/common/api/zze;->zzWO:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/google/android/gms/common/api/zze;->zzWU:I

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->zzWW:Z

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->zzWY:Z

    iget-object v2, p0, Lcom/google/android/gms/common/api/zze;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v1, v1, Lcom/google/android/gms/common/api/zzg;->zzXs:Lcom/google/android/gms/common/api/zzg$zza;

    new-instance v2, Lcom/google/android/gms/common/api/zze$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/common/api/zze$1;-><init>(Lcom/google/android/gms/common/api/zze;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/zzg$zza;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/common/api/zze;->zzXb:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/Api;

    iget-object v6, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v6, v6, Lcom/google/android/gms/common/api/zzg;->zzXu:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Api;->zzms()Lcom/google/android/gms/common/api/Api$ClientKey;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/Api$Client;

    iget-object v7, p0, Lcom/google/android/gms/common/api/zze;->zzXb:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Api;->zzmp()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/common/api/Api$zza;->getPriority()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    or-int/2addr v4, v8

    invoke-interface {v6}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v8

    if-eqz v8, :cond_3

    iput-boolean v9, p0, Lcom/google/android/gms/common/api/zze;->zzWV:Z

    iget v8, p0, Lcom/google/android/gms/common/api/zze;->zzWU:I

    if-ge v7, v8, :cond_2

    iput v7, p0, Lcom/google/android/gms/common/api/zze;->zzWU:I

    :cond_2
    if-eqz v7, :cond_3

    iget-object v8, p0, Lcom/google/android/gms/common/api/zze;->zzWS:Ljava/util/Set;

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Api;->zzms()Lcom/google/android/gms/common/api/Api$ClientKey;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v8, Lcom/google/android/gms/common/api/zze$zzc;

    invoke-direct {v8, p0, v5, v7}, Lcom/google/android/gms/common/api/zze$zzc;-><init>(Lcom/google/android/gms/common/api/zze;Lcom/google/android/gms/common/api/Api;I)V

    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->zzWV:Z

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->zzWV:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzXa:Lcom/google/android/gms/common/internal/zze;

    iget-object v3, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/zzg;->getSessionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/internal/zze;->zza(Ljava/lang/Integer;)V

    new-instance v10, Lcom/google/android/gms/common/api/zze$zzd;

    invoke-direct {v10, p0, v1}, Lcom/google/android/gms/common/api/zze$zzd;-><init>(Lcom/google/android/gms/common/api/zze;Lcom/google/android/gms/common/api/zze$1;)V

    iget-object v4, p0, Lcom/google/android/gms/common/api/zze;->zzWE:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v5, p0, Lcom/google/android/gms/common/api/zze;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzg;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/common/api/zze;->zzXa:Lcom/google/android/gms/common/internal/zze;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzXa:Lcom/google/android/gms/common/internal/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zze;->zznB()Lcom/google/android/gms/internal/zzpt;

    move-result-object v8

    move-object v9, v10

    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zze;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzps;

    iput-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWT:Lcom/google/android/gms/internal/zzps;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWT:Lcom/google/android/gms/internal/zzps;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzps;->connect()V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->zzXu:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/zze;->zzWQ:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->zzXu:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionProgressReportCallbacks;

    invoke-interface {v1, v3}, Lcom/google/android/gms/common/api/Api$Client;->connect(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionProgressReportCallbacks;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public connect()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zze;->zzWP:Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "CONNECTING"

    return-object v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/zze;->zzaW(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWR:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmC()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmH()V

    :cond_2
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/zze;->zzd(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zza$zza;)Lcom/google/android/gms/common/api/zza$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$Client;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/zza$zza<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, v0, Lcom/google/android/gms/common/api/zzg;->zzXo:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;I)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/zze;->zzaW(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/zze;->zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmC()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zze;->zzmH()V

    :cond_1
    return-void
.end method

.method public zzaV(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object p1, p1, Lcom/google/android/gms/common/api/zzg;->zzXo:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzg$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/zzg$zze;->zzmv()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/zzg$zze;->cancel()V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzg;->zzmK()V

    iget-object p1, p0, Lcom/google/android/gms/common/api/zze;->zzWM:Lcom/google/android/gms/common/ConnectionResult;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object p1, p1, Lcom/google/android/gms/common/api/zzg;->zzXo:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/zze;->zzWP:Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object p1, p1, Lcom/google/android/gms/common/api/zzg;->zzXv:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zze;->zzWM:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/zze;->zzT(Z)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/common/api/zze;->zzWK:Lcom/google/android/gms/common/api/zzg;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zze;->zzWM:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/zzg;->zze(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/api/zza$zza;)Lcom/google/android/gms/common/api/zza$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$Client;",
            "T:",
            "Lcom/google/android/gms/common/api/zza$zza<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
