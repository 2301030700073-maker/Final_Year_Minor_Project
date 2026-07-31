.class public Lcom/google/android/gms/internal/zzqa;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqa$zzc;,
        Lcom/google/android/gms/internal/zzqa$zza;,
        Lcom/google/android/gms/internal/zzqa$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzaLc:Ljava/lang/String;

.field private final zzaPe:Lcom/google/android/gms/internal/zzqh;

.field zzaPf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzqa$zzc<",
            "Lcom/google/android/gms/internal/zzqf$zzc;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzaPg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzqp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzpw:Lcom/google/android/gms/internal/zzlb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzqh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzqh;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzld;->zzoQ()Lcom/google/android/gms/internal/zzlb;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzqa;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzlb;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzlb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzqp;",
            ">;",
            "Lcom/google/android/gms/internal/zzqh;",
            "Lcom/google/android/gms/internal/zzlb;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqa;->zzaLc:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqa;->zzaPf:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqa;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqa;->zzpw:Lcom/google/android/gms/internal/zzlb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqa;->zzaPe:Lcom/google/android/gms/internal/zzqh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqa;->zzaPg:Ljava/util/Map;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqa;)Lcom/google/android/gms/internal/zzqh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzqa;->zzaPe:Lcom/google/android/gms/internal/zzqh;

    return-object p0
.end method

.method private zza(Lcom/google/android/gms/internal/zzqd;Lcom/google/android/gms/internal/zzqa$zza;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqd;->zzAf()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzu;->zzV(Z)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzpy;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzqa;->zza(Lcom/google/android/gms/internal/zzpy;Lcom/google/android/gms/internal/zzqa$zza;)V

    return-void
.end method


# virtual methods
.method zza(Lcom/google/android/gms/internal/zzpy;Lcom/google/android/gms/internal/zzqa$zza;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->zzaPe:Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpy;->zzAb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpy;->zzzZ()Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/zzqc;->zzaPm:Lcom/google/android/gms/internal/zzqb;

    new-instance v4, Lcom/google/android/gms/internal/zzqa$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/gms/internal/zzqa$1;-><init>(Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzpy;Lcom/google/android/gms/internal/zzqa$zza;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzqh;->zza(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/internal/zzqg;)V

    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzqd;Lcom/google/android/gms/internal/zzqa$zza;Lcom/google/android/gms/internal/zzqn;)V
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqd;->zzAf()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzpy;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqa;->zzaPf:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzpy;->getContainerId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzqa$zzc;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzqa$zzc;->zzAe()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzqa;->zzaPe:Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzpy;->getContainerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzqh;->zzfa(Ljava/lang/String;)J

    move-result-wide v2

    :goto_1
    const-wide/32 v4, 0xdbba0

    add-long v6, v2, v4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqa;->zzpw:Lcom/google/android/gms/internal/zzlb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlb;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v6, v2

    if-gez v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_5

    iget-object p2, p0, Lcom/google/android/gms/internal/zzqa;->zzaPg:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqd;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzqp;

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/zzqa;->zzaLc:Ljava/lang/String;

    if-nez p2, :cond_3

    new-instance p2, Lcom/google/android/gms/internal/zzqp;

    invoke-direct {p2}, Lcom/google/android/gms/internal/zzqp;-><init>()V

    goto :goto_2

    :cond_3
    new-instance p2, Lcom/google/android/gms/internal/zzqp;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->zzaLc:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/zzqp;-><init>(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->zzaPg:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqd;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v2, p2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqa;->mContext:Landroid/content/Context;

    const-wide/16 v5, 0x0

    move-object v4, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzqp;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqd;JLcom/google/android/gms/internal/zzqn;)V

    return-void

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzqa;->zza(Lcom/google/android/gms/internal/zzqd;Lcom/google/android/gms/internal/zzqa$zza;)V

    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzqe$zza;)V
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe$zza;->zzAj()Lcom/google/android/gms/internal/zzpy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpy;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe$zza;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe$zza;->zzAk()Lcom/google/android/gms/internal/zzqf$zzc;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqa;->zzaPf:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqa;->zzaPf:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqa$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqa;->zzpw:Lcom/google/android/gms/internal/zzlb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlb;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzqa$zzc;->zzU(J)V

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzXP:Lcom/google/android/gms/common/api/Status;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqa$zzc;->zzaV(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqa$zzc;->zzO(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqa;->zzaPf:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/internal/zzqa$zzc;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqa;->zzpw:Lcom/google/android/gms/internal/zzlb;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzlb;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v1, p1, v4, v5}, Lcom/google/android/gms/internal/zzqa$zzc;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;J)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/android/gms/internal/zzqa$zza;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzqd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqd;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzpy;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/google/android/gms/internal/zzpy;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqd;->zzb(Lcom/google/android/gms/internal/zzpy;)Lcom/google/android/gms/internal/zzqd;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzqa$zzb;

    sget-object p3, Lcom/google/android/gms/internal/zzqc;->zzaPm:Lcom/google/android/gms/internal/zzqb;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/google/android/gms/internal/zzqa$zzb;-><init>(Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzqd;Lcom/google/android/gms/internal/zzqb;Lcom/google/android/gms/internal/zzqa$zza;)V

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/zzqa;->zza(Lcom/google/android/gms/internal/zzqd;Lcom/google/android/gms/internal/zzqa$zza;Lcom/google/android/gms/internal/zzqn;)V

    return-void
.end method

.method public zzeU(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqa;->zzaLc:Ljava/lang/String;

    return-void
.end method
