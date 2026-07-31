.class public Lcom/google/android/gms/analytics/zzb;
.super Lcom/google/android/gms/analytics/internal/zzc;

# interfaces
.implements Lcom/google/android/gms/internal/zznu;


# static fields
.field private static zzIk:Ljava/text/DecimalFormat;


# instance fields
.field private final zzIa:Lcom/google/android/gms/analytics/internal/zzf;

.field private final zzIl:Landroid/net/Uri;

.field private final zzIm:Z

.field private final zzIn:Z

.field private final zztd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/analytics/zzb;-><init>(Lcom/google/android/gms/analytics/internal/zzf;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzc;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzu;->zzcj(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzb;->zzIa:Lcom/google/android/gms/analytics/internal/zzf;

    iput-object p2, p0, Lcom/google/android/gms/analytics/zzb;->zztd:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/analytics/zzb;->zzIm:Z

    iput-boolean p4, p0, Lcom/google/android/gms/analytics/zzb;->zzIn:Z

    iget-object p1, p0, Lcom/google/android/gms/analytics/zzb;->zztd:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/analytics/zzb;->zzaK(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzb;->zzIl:Landroid/net/Uri;

    return-void
.end method

.method static zza(D)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/zzb;->zzIk:Ljava/text/DecimalFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.######"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/analytics/zzb;->zzIk:Ljava/text/DecimalFormat;

    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/zzb;->zzIk:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Ljava/util/Map;Ljava/lang/String;D)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_0

    invoke-static {p2, p3}, Lcom/google/android/gms/analytics/zzb;->zza(D)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static zza(Ljava/util/Map;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static zza(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string p2, "1"

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static zzaK(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzu;->zzcj(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "google-analytics.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/zzno;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzno;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/zzio;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzno;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/zznq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzio;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzio;->zzhv()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/zzb;->zzh(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-class v1, Lcom/google/android/gms/internal/zzip;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzno;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/zznq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzip;

    if-eqz v1, :cond_2

    const-string v2, "t"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzip;->zzhw()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cid"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzip;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "uid"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzip;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sc"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzip;->zzhz()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sf"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzip;->zzhB()D

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v2, "ni"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzip;->zzhA()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Z)V

    const-string v2, "adid"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzip;->zzhx()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ate"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzip;->zzhy()Z

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Z)V

    :cond_2
    const-class v1, Lcom/google/android/gms/internal/zzod;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzno;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/zznq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzod;

    if-eqz v1, :cond_3

    const-string v2, "cd"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzod;->zzwB()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "a"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzod;->zzbn()I

    move-result v3

    int-to-double v3, v3

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v2, "dr"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzod;->zzwE()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-class v1, Lcom/google/android/gms/internal/zzob;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzno;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/zznq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzob;

    if-eqz v1, :cond_4

    const-string v2, "ec"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzob;->zzwy()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ea"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzob;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "el"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzob;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ev"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzob;->getValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;D)V

    :cond_4
    const-class v1, Lcom/google/android/gms/internal/zzny;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzno;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/zznq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzny;

    if-eqz v1, :cond_5

    const-string v2, "cn"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzny;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cs"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzny;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cm"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzny;->zzwj()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ck"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzny;->zzwk()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cc"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzny;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ci"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzny;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "anid"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzny;->zzwl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gclid"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzny;->zzwm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dclid"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzny;->zzwn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "aclid"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzny;->zzwo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-class v1, Lcom/google/android/gms/internal/zzoc;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzno;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/zznq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzoc;

    if-eqz v1, :cond_6

    const-string v2, "exd"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzoc;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "exf"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzoc;->zzwz()Z

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Z)V

    :cond_6
    const-class v1, Lcom/google/android/gms/internal/zzoe;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzno;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/zznq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzoe;

    if-eqz v1, :cond_7

    const-string v2, "sn"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzoe;->zzwI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sa"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzoe;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "st"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzoe;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-class v1, Lcom/google/android/gms/internal/zzof;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzno;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/zznq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzof;

    if-eqz v1, :cond_8

    const-string v2, "utv"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzof;->zzwJ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "utt"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzof;->getTimeInMillis()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v2, "utc"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzof;->zzwy()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "utl"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzof;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-class v1, Lcom/google/android/gms/internal/zzim;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzno;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/zznq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzim;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzim;->zzht()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/zzc;->zzO(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    const-class v1, Lcom/google/android/gms/internal/zzin;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzno;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/zznq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzin;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzin;->zzhu()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/zzc;->zzQ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/analytics/zzb;->zza(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_c
    const-class v1, Lcom/google/android/gms/internal/zzoa;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzno;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/zznq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzoa;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzoa;->zzwu()Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->build()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    :cond_e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzoa;->zzwx()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/analytics/ecommerce/Promotion;

    invoke-static {v4}, Lcom/google/android/gms/analytics/zzc;->zzU(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->zzaQ(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/2addr v4, v3

    goto :goto_5

    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzoa;->zzwv()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/analytics/ecommerce/Product;

    invoke-static {v4}, Lcom/google/android/gms/analytics/zzc;->zzS(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/ecommerce/Product;->zzaQ(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/2addr v4, v3

    goto :goto_6

    :cond_10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzoa;->zzww()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzc;->zzX(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x1

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/analytics/ecommerce/Product;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/google/android/gms/analytics/zzc;->zzV(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/analytics/ecommerce/Product;->zzaQ(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/2addr v7, v3

    goto :goto_8

    :cond_11
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "nm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    const-class v1, Lcom/google/android/gms/internal/zznz;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzno;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/zznq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zznz;

    if-eqz v1, :cond_14

    const-string v2, "ul"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zznz;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sd"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zznz;->zzwp()I

    move-result v3

    int-to-double v3, v3

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v2, "sr"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zznz;->zzwq()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zznz;->zzwr()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;II)V

    const-string v2, "vp"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zznz;->zzws()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zznz;->zzwt()I

    move-result v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;II)V

    :cond_14
    const-class v1, Lcom/google/android/gms/internal/zznx;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzno;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/zznq;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zznx;

    if-eqz p0, :cond_15

    const-string v1, "an"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznx;->zzjL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aid"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznx;->zzsK()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aiid"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznx;->zzwi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "av"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznx;->zzjN()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-object v0
.end method

.method private static zzh(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_4

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/zzb;->zza(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0

    :cond_4
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p0, v1, :cond_5

    const-string p0, "1"

    return-object p0

    :cond_5
    return-object v0

    :cond_6
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzz(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzno;)V
    .locals 13

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzno;->zzvU()Z

    move-result v0

    const-string v1, "Can\'t deliver not submitted measurement"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzu;->zzb(ZLjava/lang/Object;)V

    const-string v0, "deliver should be called on worker thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzu;->zzbZ(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzno;->zzvP()Lcom/google/android/gms/internal/zzno;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/zzip;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzno;->zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/zznq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzip;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzip;->zzhw()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzb;->zzhQ()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object p1

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzb;->zzc(Lcom/google/android/gms/internal/zzno;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Ignoring measurement without type"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->zzg(Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzip;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzb;->zzhQ()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object p1

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzb;->zzc(Lcom/google/android/gms/internal/zzno;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Ignoring measurement without client id"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->zzg(Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/analytics/zzb;->zzIa:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzf;->zzie()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getAppOptOut()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzip;->zzhB()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzip;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/analytics/internal/zzam;->zza(DLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p1, "Sampling enabled. Hit sampled out. sampling rate"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/analytics/zzb;->zzc(Lcom/google/android/gms/internal/zzno;)Ljava/util/Map;

    move-result-object v3

    const-string v0, "v"

    const-string v2, "1"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_v"

    sget-object v2, Lcom/google/android/gms/analytics/internal/zze;->zzJB:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tid"

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzb;->zztd:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzb;->zzIa:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzie()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->isDryRunEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v3}, Lcom/google/android/gms/analytics/zzb;->zzz(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Dry run is enabled. GoogleAnalytics would have sent"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/zzb;->zzc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const-string v0, "uid"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzip;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v0, v2}, Lcom/google/android/gms/analytics/internal/zzam;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/google/android/gms/internal/zznx;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzno;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/zznq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznx;

    if-eqz v0, :cond_5

    const-string v2, "an"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznx;->zzjL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v2, v4}, Lcom/google/android/gms/analytics/internal/zzam;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "aid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznx;->zzsK()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v2, v4}, Lcom/google/android/gms/analytics/internal/zzam;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "av"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznx;->zzjN()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v2, v4}, Lcom/google/android/gms/analytics/internal/zzam;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "aiid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznx;->zzwi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v2, v0}, Lcom/google/android/gms/analytics/internal/zzam;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v0, Lcom/google/android/gms/analytics/internal/zzh;

    const-wide/16 v5, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzip;->getClientId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/analytics/zzb;->zztd:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzip;->zzhx()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v9, v1, 0x1

    const-wide/16 v10, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/analytics/internal/zzh;-><init>(JLjava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzb;->zzhl()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzb;->zza(Lcom/google/android/gms/analytics/internal/zzh;)J

    move-result-wide v0

    const-string v2, "_s"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzab;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzb;->zzhQ()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzno;->zzvS()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/analytics/internal/zzab;-><init>(Lcom/google/android/gms/analytics/internal/zzc;Ljava/util/Map;JZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzb;->zzhl()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/internal/zzb;->zza(Lcom/google/android/gms/analytics/internal/zzab;)V

    return-void
.end method

.method public zzhe()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzb;->zzIl:Landroid/net/Uri;

    return-object v0
.end method
