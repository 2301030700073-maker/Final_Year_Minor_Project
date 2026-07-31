.class Lcom/google/android/gms/analytics/internal/zzl;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field private mStarted:Z

.field private final zzKn:Lcom/google/android/gms/analytics/internal/zzj;

.field private final zzKo:Lcom/google/android/gms/analytics/internal/zzah;

.field private final zzKp:Lcom/google/android/gms/analytics/internal/zzag;

.field private final zzKq:Lcom/google/android/gms/analytics/internal/zzi;

.field private zzKr:J

.field private final zzKs:Lcom/google/android/gms/analytics/internal/zzt;

.field private final zzKt:Lcom/google/android/gms/analytics/internal/zzt;

.field private final zzKu:Lcom/google/android/gms/analytics/internal/zzaj;

.field private zzKv:J

.field private zzKw:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;Lcom/google/android/gms/analytics/internal/zzg;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKr:J

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->zzk(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKp:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->zzm(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->zzn(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKo:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->zzo(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzi;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKq:Lcom/google/android/gms/analytics/internal/zzi;

    new-instance p2, Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhP()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/analytics/internal/zzaj;-><init>(Lcom/google/android/gms/internal/zzlb;)V

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKu:Lcom/google/android/gms/analytics/internal/zzaj;

    new-instance p2, Lcom/google/android/gms/analytics/internal/zzl$1;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/analytics/internal/zzl$1;-><init>(Lcom/google/android/gms/analytics/internal/zzl;Lcom/google/android/gms/analytics/internal/zzf;)V

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKs:Lcom/google/android/gms/analytics/internal/zzt;

    new-instance p2, Lcom/google/android/gms/analytics/internal/zzl$2;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/analytics/internal/zzl$2;-><init>(Lcom/google/android/gms/analytics/internal/zzl;Lcom/google/android/gms/analytics/internal/zzf;)V

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKt:Lcom/google/android/gms/analytics/internal/zzt;

    return-void
.end method

.method private zza(Lcom/google/android/gms/analytics/internal/zzh;Lcom/google/android/gms/internal/zzny;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/analytics/zza;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhM()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/zza;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzij()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zza;->zzaI(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzik()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zza;->enableAdvertisingIdCollection(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zza;->zzhc()Lcom/google/android/gms/internal/zzno;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/zzip;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzno;->zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/zznq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzip;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzip;->zzaN(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzip;->zzF(Z)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzno;->zzb(Lcom/google/android/gms/internal/zznq;)V

    const-class v2, Lcom/google/android/gms/internal/zzio;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzno;->zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/zznq;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzio;

    const-class v3, Lcom/google/android/gms/internal/zznx;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzno;->zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/zznq;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zznx;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzn()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "an"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zznx;->setAppName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v7, "av"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zznx;->setAppVersion(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v7, "aid"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zznx;->setAppId(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "aiid"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zznx;->setAppInstallerId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v7, "uid"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/zzip;->setUserId(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/internal/zzio;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "Sending installation campaign to"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzij()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhU()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzai;->zzkk()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzno;->zzL(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzno;->zzvT()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziA()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/analytics/internal/zzl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziB()V

    return-void
.end method

.method private zzba(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private zziA()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzl$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/zzl$4;-><init>(Lcom/google/android/gms/analytics/internal/zzl;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Lcom/google/android/gms/analytics/internal/zzw;)V

    return-void
.end method

.method private zziB()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzis()I

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziG()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete stale hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKt:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzjy()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzt;->zzt(J)V

    return-void
.end method

.method private zziH()Z
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKw:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zziW()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zziX()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziN()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private zziI()V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhT()Lcom/google/android/gms/analytics/internal/zzv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->zzjG()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->zzbp()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzit()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhP()Lcom/google/android/gms/internal/zzlb;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzlb;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v3, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzr;->zzjg()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzjf()J

    move-result-wide v1

    const-string v3, "Dispatch alarm scheduled (ms)"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->zzjH()V

    :cond_1
    return-void
.end method

.method private zziJ()V
    .locals 10

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziI()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziN()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhU()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzai;->zzkm()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhP()Lcom/google/android/gms/internal/zzlb;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzlb;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long v6, v0, v2

    cmp-long v2, v6, v4

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzr;->zzjd()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :goto_0
    const-string v0, "Dispatch scheduled (ms)"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKs:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzt;->zzbp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKs:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzt;->zzjD()J

    move-result-wide v2

    add-long v4, v6, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKs:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/zzt;->zzu(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKs:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/analytics/internal/zzt;->zzt(J)V

    return-void
.end method

.method private zziK()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziL()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziM()V

    return-void
.end method

.method private zziL()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKs:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzt;->zzbp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "All hits dispatched or no network/service. Going to power save mode"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaT(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKs:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzt;->cancel()V

    return-void
.end method

.method private zziM()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhT()Lcom/google/android/gms/analytics/internal/zzv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->zzbp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->cancel()V

    :cond_0
    return-void
.end method

.method private zziy()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhM()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zzT(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzaW(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzU(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzaX(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzT(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaW(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingService;->zzU(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CampaignTrackingService is not registered or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method protected onServiceConnected()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zziW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziD()V

    :cond_0
    return-void
.end method

.method start()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzia()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->mStarted:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Analytics backend already started"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzu;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->mStarted:Z

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zziW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziy()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhS()Lcom/google/android/gms/internal/zzns;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzl$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/zzl$3;-><init>(Lcom/google/android/gms/analytics/internal/zzl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzns;->zze(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzG(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziG()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/analytics/internal/zzh;Z)J
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhO()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->beginTransaction()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzii()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/analytics/internal/zzj;->zza(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzii()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzij()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/analytics/internal/zzj;->zza(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    if-nez p2, :cond_0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/internal/zzh;->zzn(J)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/analytics/internal/zzh;->zzn(J)V

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzj;->zzb(Lcom/google/android/gms/analytics/internal/zzh;)V

    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    const-string p2, "Failed to end transaction"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    return-wide v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    const-string p2, "Failed to update Analytics property"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 p1, -0x1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    return-wide p1

    :catch_2
    move-exception v0

    const-string v1, "Failed to end transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    return-wide p1

    :goto_1
    :try_start_4
    iget-object p2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p2}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p2

    const-string v0, "Failed to end transaction"

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    throw p1
.end method

.method public zza(Lcom/google/android/gms/analytics/internal/zzab;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/zzns;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzia()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKw:Z

    if-eqz v0, :cond_0

    const-string v0, "Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaU(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Delivering hit"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zzf(Lcom/google/android/gms/analytics/internal/zzab;)Lcom/google/android/gms/analytics/internal/zzab;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziC()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKq:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/internal/zzi;->zzb(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Hit sent to the device AnalyticsService for delivery"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zzaU(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zziW()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhQ()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string v1, "Service unavailable on package side"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/internal/zzj;->zzc(Lcom/google/android/gms/analytics/internal/zzab;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziG()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Delivery failed to save hit to a database"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhQ()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string v1, "deliver: failed to insert hit to database"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/analytics/internal/zzw;J)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/zzns;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhU()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzkm()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhP()Lcom/google/android/gms/internal/zzlb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlb;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    const-string v2, "Dispatching local hits. Elapsed time since last dispatch (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zziW()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziC()V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziE()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhS()Lcom/google/android/gms/internal/zzns;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzl$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/analytics/internal/zzl$5;-><init>(Lcom/google/android/gms/analytics/internal/zzl;Lcom/google/android/gms/analytics/internal/zzw;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzns;->zze(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhU()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzkn()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziG()V

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/analytics/internal/zzw;->zzc(Ljava/lang/Throwable;)V

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKv:J

    cmp-long v2, v0, p2

    if-eqz v2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKp:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {p2}, Lcom/google/android/gms/analytics/internal/zzag;->zzkf()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const-string p3, "Local dispatch failed"

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhU()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/analytics/internal/zzai;->zzkn()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziG()V

    if-eqz p1, :cond_4

    invoke-interface {p1, p2}, Lcom/google/android/gms/analytics/internal/zzw;->zzc(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public zzb(Lcom/google/android/gms/analytics/internal/zzw;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKv:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Lcom/google/android/gms/analytics/internal/zzw;J)V

    return-void
.end method

.method public zzbb(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzu;->zzcj(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhN()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhQ()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/analytics/internal/zzam;->zza(Lcom/google/android/gms/analytics/internal/zzaf;Ljava/lang/String;)Lcom/google/android/gms/internal/zzny;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Parsing failed. Ignoring invalid campaign data"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhU()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzai;->zzko()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "Ignoring duplicate install campaign"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zzaW(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "Ignoring multiple install campaigns. original, new"

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhU()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/internal/zzai;->zzbf(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhU()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzai;->zzkl()Lcom/google/android/gms/analytics/internal/zzaj;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzjB()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/analytics/internal/zzaj;->zzv(J)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Campaign received too late, ignoring"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string p1, "Received installation campaign"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/analytics/internal/zzj;->zzr(J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/internal/zzh;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Lcom/google/android/gms/analytics/internal/zzh;Lcom/google/android/gms/internal/zzny;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected zzc(Lcom/google/android/gms/analytics/internal/zzh;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhO()V

    const-string v0, "Sending first hit to property"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->zzij()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhU()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzkl()Lcom/google/android/gms/analytics/internal/zzaj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzjB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzaj;->zzv(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhU()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzko()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhQ()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/analytics/internal/zzam;->zza(Lcom/google/android/gms/analytics/internal/zzaf;Ljava/lang/String;)Lcom/google/android/gms/internal/zzny;

    move-result-object v0

    const-string v1, "Found relevant installation campaign"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Lcom/google/android/gms/analytics/internal/zzh;Lcom/google/android/gms/internal/zzny;)V

    return-void
.end method

.method zzf(Lcom/google/android/gms/analytics/internal/zzab;)Lcom/google/android/gms/analytics/internal/zzab;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzka()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhU()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzkp()Lcom/google/android/gms/analytics/internal/zzai$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->zzks()Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzn()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "_m"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/analytics/internal/zzab;->zza(Lcom/google/android/gms/analytics/internal/zzc;Lcom/google/android/gms/analytics/internal/zzab;Ljava/util/Map;)Lcom/google/android/gms/analytics/internal/zzab;

    move-result-object p1

    return-object p1
.end method

.method public zzhG()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzns;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zziW()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Delete all hits from local store"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaT(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zziq()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzir()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziG()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete hits from store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziC()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKq:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->zzim()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Device service unavailable. Can\'t clear hits stored on the device service."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaT(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public zzhJ()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzns;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzia()V

    const-string v0, "Service disconnected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaT(Ljava/lang/String;)V

    return-void
.end method

.method zzhL()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhP()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlb;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKv:J

    return-void
.end method

.method protected zzhn()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKo:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzah;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKq:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->zza()V

    return-void
.end method

.method protected zziC()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKw:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zziY()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKq:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzjt()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKu:Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/zzaj;->zzv(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKu:Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzaj;->start()V

    const-string v0, "Connecting to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaT(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKq:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->connect()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Connected to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaT(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKu:Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzaj;->clear()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->onServiceConnected()V

    :cond_3
    return-void
.end method

.method public zziD()V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/zzns;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhN()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zziY()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Service client disabled. Can\'t dispatch local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaW(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKq:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Service not connected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaT(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "Dispatching local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaT(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzjh()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzj;->zzp(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziG()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/internal/zzab;

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKq:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/internal/zzi;->zzb(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziG()V

    return-void

    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzab;->zzjV()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/analytics/internal/zzj;->zzq(J)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziK()V

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Failed to read hits from store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziK()V

    return-void
.end method

.method protected zziE()Z
    .locals 11

    invoke-static {}, Lcom/google/android/gms/internal/zzns;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzia()V

    const-string v0, "Dispatching a batch of local hits"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaT(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKq:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zziW()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKo:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzah;->zzkg()Z

    move-result v3

    xor-int/2addr v1, v3

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const-string v0, "No network or service available. Will retry later"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaT(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzjh()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzji()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v6}, Lcom/google/android/gms/analytics/internal/zzj;->beginTransaction()V

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/analytics/internal/zzj;->zzp(J)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v0, "Store is empty, nothing to dispatch"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaT(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziK()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return v2

    :catch_0
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziK()V

    return v2

    :cond_2
    :try_start_3
    const-string v7, "Hits loaded from store. count"

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/analytics/internal/zzab;

    invoke-virtual {v8}, Lcom/google/android/gms/analytics/internal/zzab;->zzjV()J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-nez v10, :cond_3

    const-string v0, "Database contains successfully uploaded hit"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziK()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    return v2

    :catch_1
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziK()V

    return v2

    :cond_4
    :try_start_6
    iget-object v7, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKq:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/internal/zzi;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/internal/zzr;->zziW()Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "Service connected, sending hits to the service"

    invoke-virtual {p0, v7}, Lcom/google/android/gms/analytics/internal/zzl;->zzaT(Ljava/lang/String;)V

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/analytics/internal/zzab;

    iget-object v8, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKq:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/analytics/internal/zzi;->zzb(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Lcom/google/android/gms/analytics/internal/zzab;->zzjV()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v8, "Hit sent do device AnalyticsService for delivery"

    invoke-virtual {p0, v8, v7}, Lcom/google/android/gms/analytics/internal/zzl;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v8, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/internal/zzab;->zzjV()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/analytics/internal/zzj;->zzq(J)V

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/internal/zzab;->zzjV()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_8
    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziK()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_3

    return v2

    :catch_3
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziK()V

    return v2

    :cond_6
    :goto_3
    :try_start_a
    iget-object v7, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKo:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/internal/zzah;->zzkg()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKo:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/analytics/internal/zzah;->zzf(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_4

    :cond_7
    invoke-interface {v6, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v6, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/analytics/internal/zzj;->zzd(Ljava/util/List;)V

    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    :catch_4
    move-exception v0

    :try_start_c
    const-string v1, "Failed to remove successfully uploaded hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziK()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_5

    return v2

    :catch_5
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziK()V

    return v2

    :cond_8
    :goto_5
    :try_start_e
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v6, :cond_9

    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_6

    return v2

    :catch_6
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziK()V

    return v2

    :cond_9
    :try_start_10
    iget-object v6, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v6}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v6, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v6}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziK()V

    return v2

    :catch_8
    move-exception v0

    :try_start_11
    const-string v1, "Failed to read hits from persisted store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziK()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_9

    return v2

    :catch_9
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziK()V

    return v2

    :catchall_0
    move-exception v0

    :try_start_13
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzj;->setTransactionSuccessful()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzj;->endTransaction()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_a

    throw v0

    :catch_a
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziK()V

    return v2
.end method

.method public zziF()V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/zzns;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzia()V

    const-string v0, "Sync dispatching local hits"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaU(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKv:J

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzr;->zziW()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziC()V

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziE()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhU()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzai;->zzkn()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziG()V

    iget-wide v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKv:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKp:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->zzkf()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Sync local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziG()V

    :cond_2
    return-void
.end method

.method public zziG()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhM()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzia()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziH()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKp:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->unregister()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziK()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzLI:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKp:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->zzkd()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKp:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->isConnected()Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziJ()V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziK()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziI()V

    return-void
.end method

.method public zziN()J
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKr:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKr:J

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzje()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhm()Lcom/google/android/gms/analytics/internal/zzan;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzan;->zzjQ()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhm()Lcom/google/android/gms/analytics/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzkH()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :cond_1
    return-wide v0
.end method

.method public zziO()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhO()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKw:Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKq:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->disconnect()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziG()V

    return-void
.end method

.method public zzit()J
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzns;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzia()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzit()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get min/max hit times from local store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected zziz()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzia()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhU()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->zzkk()J

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzba(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaX(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziO()V

    :cond_0
    const-string v0, "android.permission.INTERNET"

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzba(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaX(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziO()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzU(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AnalyticsService registered in the app manifest and enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaT(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zziW()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Device AnalyticsService not registered! Hits will not be delivered reliably."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaX(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzaW(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKw:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzhR()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zziW()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKn:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziC()V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziG()V

    return-void
.end method

.method public zzs(J)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/zzns;->zzhO()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zzia()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/analytics/internal/zzl;->zzKr:J

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->zziG()V

    return-void
.end method
