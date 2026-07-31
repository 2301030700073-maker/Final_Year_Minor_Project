.class public Lcom/google/android/gms/internal/zzhc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzhj$zzb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzEd:Z

.field private zzEe:Z

.field private final zzFE:Ljava/lang/String;

.field private final zzFF:Lcom/google/android/gms/internal/zzhd;

.field private zzFG:Ljava/math/BigInteger;

.field private final zzFH:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/zzhb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzFI:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzhf;",
            ">;"
        }
    .end annotation
.end field

.field private zzFJ:Z

.field private zzFK:I

.field private zzFL:Lcom/google/android/gms/internal/zzcb;

.field private zzFM:Lcom/google/android/gms/internal/zzbk;

.field private final zzFN:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private zzFO:Ljava/lang/Boolean;

.field private zzFP:Ljava/lang/String;

.field private zzoM:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zzop:Lcom/google/android/gms/internal/zzay;

.field private zzpb:Z

.field private final zzqt:Ljava/lang/Object;

.field private zzrw:Lcom/google/android/gms/internal/zzbj;

.field private zzrx:Lcom/google/android/gms/internal/zzbi;

.field private final zzry:Lcom/google/android/gms/internal/zzgc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzhl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzFG:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzFH:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzFI:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhc;->zzFJ:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzhc;->zzEd:Z

    iput v0, p0, Lcom/google/android/gms/internal/zzhc;->zzFK:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhc;->zzpb:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzFL:Lcom/google/android/gms/internal/zzcb;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzhc;->zzEe:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzrw:Lcom/google/android/gms/internal/zzbj;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzFM:Lcom/google/android/gms/internal/zzbk;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzrx:Lcom/google/android/gms/internal/zzbi;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhc;->zzFN:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzry:Lcom/google/android/gms/internal/zzgc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzFO:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzhl;->zzgn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhc;->zzFE:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/zzhd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzFE:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzhd;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhc;->zzFF:Lcom/google/android/gms/internal/zzhd;

    return-void
.end method


# virtual methods
.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzFE:Ljava/lang/String;

    return-object v0
.end method

.method public zzA(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzhc;->zzEe:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzD(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbk;
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/zzbz;->zzuc:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzlk;->zzoU()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhc;->zzfV()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzhc;->zzrw:Lcom/google/android/gms/internal/zzbj;

    if-nez v2, :cond_2

    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/zzbj;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/zzbj;-><init>(Landroid/app/Application;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzhc;->zzrw:Lcom/google/android/gms/internal/zzbj;

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzhc;->zzrx:Lcom/google/android/gms/internal/zzbi;

    if-nez p1, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/zzbi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzbi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhc;->zzrx:Lcom/google/android/gms/internal/zzbi;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzhc;->zzFM:Lcom/google/android/gms/internal/zzbk;

    if-nez p1, :cond_4

    new-instance p1, Lcom/google/android/gms/internal/zzbk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhc;->zzrw:Lcom/google/android/gms/internal/zzbj;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhc;->zzrx:Lcom/google/android/gms/internal/zzbi;

    new-instance v4, Lcom/google/android/gms/internal/zzgc;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzhc;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzhc;->zzoM:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/google/android/gms/internal/zzgc;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-direct {p1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbk;-><init>(Lcom/google/android/gms/internal/zzbj;Lcom/google/android/gms/internal/zzbi;Lcom/google/android/gms/internal/zzgc;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhc;->zzFM:Lcom/google/android/gms/internal/zzbk;

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/zzhc;->zzFM:Lcom/google/android/gms/internal/zzbk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbk;->zzcp()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzhc;->zzFM:Lcom/google/android/gms/internal/zzbk;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    return-object v1
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzhe;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "app"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhc;->zzFF:Lcom/google/android/gms/internal/zzhd;

    invoke-virtual {v3, p1, p3}, Lcom/google/android/gms/internal/zzhd;->zzd(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/zzhc;->zzFI:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhc;->zzFI:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzhf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzhf;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p3, "slots"

    invoke-virtual {v1, p3, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/zzhc;->zzFH:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzhb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzhb;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p3, "ads"

    invoke-virtual {v1, p3, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzhc;->zzFH:Ljava/util/HashSet;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzhe;->zza(Ljava/util/HashSet;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzhc;->zzFH:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzhc;->zzEd:Z

    if-eq p2, v1, :cond_0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzhc;->zzEd:Z

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzhj;->zza(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzhb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhc;->zzFH:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzhf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhc;->zzFI:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Ljava/lang/Thread;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhc;->zzoM:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/zzgc;->zza(Landroid/content/Context;Ljava/lang/Thread;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzgc;

    return-void
.end method

.method public zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzhc;->zzpb:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhc;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhc;->zzoM:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzhj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzhj$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzhj;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzhj$zzb;)Ljava/util/concurrent/Future;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzhc;->zza(Ljava/lang/Thread;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGG:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzhl;->zzf(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhc;->zzFP:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/zzay;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhc;->zzoM:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v3, Lcom/google/android/gms/internal/zzdt;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzhc;->zzoM:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    sget-object v5, Lcom/google/android/gms/internal/zzbz;->zztD:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, p1, v4, v5}, Lcom/google/android/gms/internal/zzdt;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    invoke-direct {p2, v1, v2, v3}, Lcom/google/android/gms/internal/zzay;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdt;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhc;->zzop:Lcom/google/android/gms/internal/zzay;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhc;->zzgf()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzhc;->zzpb:Z

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

.method public zzb(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzhc;->zzFO:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzb(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/zzhb;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhc;->zzFH:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzc(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzoM:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGJ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public zzc(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "use_https"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "use_https"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzhc;->zzEd:Z

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzhc;->zzEd:Z

    const-string v1, "webview_cache_version"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "webview_cache_version"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/zzhc;->zzFK:I

    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/zzhc;->zzFK:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzc(Ljava/lang/Throwable;Z)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzgc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhc;->zzoM:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/zzgc;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzgc;->zza(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public zzfV()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzhc;->zzEe:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzfW()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhc;->zzFG:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhc;->zzFG:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzhc;->zzFG:Ljava/math/BigInteger;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzfX()Lcom/google/android/gms/internal/zzhd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhc;->zzFF:Lcom/google/android/gms/internal/zzhd;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzfY()Lcom/google/android/gms/internal/zzcb;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhc;->zzFL:Lcom/google/android/gms/internal/zzcb;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzfZ()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzhc;->zzFJ:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzhc;->zzFJ:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzga()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzhc;->zzEd:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzgb()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhc;->zzFP:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzgc()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhc;->zzFO:Ljava/lang/Boolean;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzgd()Lcom/google/android/gms/internal/zzay;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzop:Lcom/google/android/gms/internal/zzay;

    return-object v0
.end method

.method public zzge()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzhc;->zzFK:I

    sget-object v2, Lcom/google/android/gms/internal/zzbz;->zzup:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzbz;->zzup:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzhc;->zzFK:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhc;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/gms/internal/zzhc;->zzFK:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzhj;->zza(Landroid/content/Context;I)Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method zzgf()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzca;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhc;->zzoM:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzca;->zzb(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/zzca;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbA()Lcom/google/android/gms/internal/zzcc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcc;->zza(Lcom/google/android/gms/internal/zzca;)Lcom/google/android/gms/internal/zzcb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhc;->zzFL:Lcom/google/android/gms/internal/zzcb;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Cannot initialize CSI reporter."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
