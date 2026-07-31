.class public Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/SessionReadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzFE:Ljava/lang/String;

.field private zzKT:J

.field private zzajH:J

.field private zzajQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private zzalP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private zzamE:Ljava/lang/String;

.field private zzamF:Z

.field private zzamG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzama:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzKT:J

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzajH:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzajQ:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzalP:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzamF:Z

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzama:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzamG:Ljava/util/List;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzamE:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzFE:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzKT:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzajH:J

    return-wide v0
.end method

.method static synthetic zze(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzajQ:Ljava/util/List;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzalP:Ljava/util/List;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzamF:Z

    return p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzama:Z

    return p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzamG:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/request/SessionReadRequest;
    .locals 9

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzKT:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "Invalid start time: %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzKT:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/zzu;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzajH:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzajH:J

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzKT:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "Invalid end time: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzajH:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/common/internal/zzu;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/SessionReadRequest;-><init>(Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;Lcom/google/android/gms/fitness/request/SessionReadRequest$1;)V

    return-object v0
.end method

.method public enableServerQueries()Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzama:Z

    return-object p0
.end method

.method public excludePackage(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 1

    const-string v0, "Attempting to use a null package name"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzamG:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzamG:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public read(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 1

    const-string v0, "Attempting to add a null data source"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzalP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzalP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public read(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 1

    const-string v0, "Attempting to use a null data type"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzajQ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzajQ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public readSessionsFromAllApps()Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzamF:Z

    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzFE:Ljava/lang/String;

    return-object p0
.end method

.method public setSessionName(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzamE:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 2

    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzKT:J

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzajH:J

    return-object p0
.end method
