.class public Lcom/google/android/gms/internal/zzce;
.super Ljava/lang/Object;


# static fields
.field private static zzuP:I


# instance fields
.field private final zzqt:Ljava/lang/Object;

.field final zzuO:Ljava/lang/String;

.field private final zzuQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/zzcd;",
            ">;"
        }
    .end annotation
.end field

.field private zzuR:Lcom/google/android/gms/internal/zzcd;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzqt:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzce;->zzuO:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/internal/zzbz;->zztZ:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/google/android/gms/internal/zzce;->zzuP:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzce;->zzqt:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzuQ:Ljava/util/LinkedList;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static zza(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "action"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string p0, "it"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs zza([Lcom/google/android/gms/internal/zzce;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/internal/zzce;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/zzce;->zzuP:I

    mul-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzce;->zzdq()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_2

    const-string v0, "action"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    const-string v4, "it"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v4, "action"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v0, :cond_4

    :cond_3
    const-string v4, "action"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "action"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not merge report items for the tickers with different action names."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzce;->zza(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private varargs zza(Lcom/google/android/gms/internal/zzcd;J[Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p4, v2

    new-instance v4, Lcom/google/android/gms/internal/zzcd;

    invoke-direct {v4, p2, p3, v3, p1}, Lcom/google/android/gms/internal/zzcd;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzcd;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzce;->zzuQ:Ljava/util/LinkedList;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private zzb(J)Lcom/google/android/gms/internal/zzcd;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzcd;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/zzcd;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzcd;)V

    return-object v0
.end method


# virtual methods
.method public varargs zza(Lcom/google/android/gms/internal/zzcd;[Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbA()Lcom/google/android/gms/internal/zzcc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcc;->zzdc()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbz()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlb;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/zzce;->zza(Lcom/google/android/gms/internal/zzcd;J[Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public zzdo()Lcom/google/android/gms/internal/zzcd;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbA()Lcom/google/android/gms/internal/zzcc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcc;->zzdc()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbz()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlb;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzce;->zzb(J)Lcom/google/android/gms/internal/zzcd;

    move-result-object v0

    return-object v0
.end method

.method public zzdp()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzce;->zzdo()Lcom/google/android/gms/internal/zzcd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzuR:Lcom/google/android/gms/internal/zzcd;

    return-void
.end method

.method zzdq()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzce;->zzqt:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzce;->zzuQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzcd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcd;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcd;->zzdm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcd;->zzdn()Lcom/google/android/gms/internal/zzcd;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcd;->getTime()J

    move-result-wide v3

    const/4 v8, 0x0

    sub-long v8, v6, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzce;->zzuQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzce;->zzuO:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzce;->zza(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public zzdr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzuO:Ljava/lang/String;

    return-object v0
.end method

.method public zzds()Lcom/google/android/gms/internal/zzcd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzuR:Lcom/google/android/gms/internal/zzcd;

    return-object v0
.end method
