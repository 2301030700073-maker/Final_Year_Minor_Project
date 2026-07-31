.class public final Lcom/google/android/gms/internal/zzgi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# instance fields
.field private mOrientation:I

.field private zzBK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzDR:Ljava/lang/String;

.field private zzDS:Ljava/lang/String;

.field private zzDT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzDU:Ljava/lang/String;

.field private zzDV:Ljava/lang/String;

.field private zzDW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzDX:J

.field private zzDY:Z

.field private final zzDZ:J

.field private zzEa:J

.field private zzEb:Z

.field private zzEc:Z

.field private zzEd:Z

.field private zzEe:Z

.field private zzEf:I

.field private zzvj:Ljava/lang/String;

.field private final zzxm:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzgi;->zzDX:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzgi;->zzDY:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzgi;->zzDZ:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzgi;->zzEa:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzgi;->mOrientation:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzgi;->zzEb:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzgi;->zzEc:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzgi;->zzEd:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgi;->zzEe:Z

    iput v2, p0, Lcom/google/android/gms/internal/zzgi;->zzEf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgi;->zzxm:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    return-void
.end method

.method static zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static zzd(Ljava/util/Map;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float v0, v0, p0

    float-to-long p0, v0

    return-wide p0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse float from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " header: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method static zze(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private zzf(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method private zzj(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Ad-Size"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzgi;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgi;->zzDR:Ljava/lang/String;

    return-void
.end method

.method private zzk(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Click-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzgi;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgi;->zzDT:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private zzl(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Debug-Dialog"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgi;->zzDU:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private zzm(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzgi;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgi;->zzDW:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private zzn(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Interstitial-Timeout"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzgi;->zzd(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzgi;->zzDX:J

    :cond_0
    return-void
.end method

.method private zzo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-ActiveView"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzgi;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgi;->zzDV:Ljava/lang/String;

    return-void
.end method

.method private zzp(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzgi;->zzEc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgi;->zzxm:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgi;->zzxm:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCs:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzgi;->zzEc:Z

    return-void
.end method

.method private zzq(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgi;->zzEb:Z

    const-string v1, "X-Afma-Custom-Rendering-Allowed"

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/zzgi;->zzf(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzgi;->zzEb:Z

    return-void
.end method

.method private zzr(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgi;->zzDY:Z

    const-string v1, "X-Afma-Mediation"

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/zzgi;->zzf(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzgi;->zzDY:Z

    return-void
.end method

.method private zzs(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Manual-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzgi;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgi;->zzBK:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private zzt(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Refresh-Rate"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzgi;->zzd(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzgi;->zzEa:J

    :cond_0
    return-void
.end method

.method private zzu(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Orientation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "portrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzhm;->zzgr()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/zzgi;->mOrientation:I

    return-void

    :cond_0
    const-string v0, "landscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzhm;->zzgq()I

    move-result p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private zzv(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Use-HTTPS"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzgi;->zzEd:Z

    :cond_0
    return-void
.end method

.method private zzw(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Content-Url-Opted-Out"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzgi;->zzEe:Z

    :cond_0
    return-void
.end method

.method private zzx(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-OAuth-Token-Status"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzgi;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzgi;->zzEf:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Clear"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzgi;->zzEf:I

    return-void

    :cond_2
    const-string v2, "No-Op"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/zzgi;->zzEf:I

    :cond_3
    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgi;->zzDS:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgi;->zzvj:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzgi;->zzi(Ljava/util/Map;)V

    return-void
.end method

.method public zzi(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgi;->zzj(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgi;->zzk(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgi;->zzl(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgi;->zzm(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgi;->zzn(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgi;->zzr(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgi;->zzs(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgi;->zzt(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgi;->zzu(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgi;->zzo(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgi;->zzv(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgi;->zzq(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgi;->zzp(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgi;->zzw(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgi;->zzx(Ljava/util/Map;)V

    return-void
.end method

.method public zzj(J)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .locals 33

    move-object/from16 v0, p0

    new-instance v27, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgi;->zzxm:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgi;->zzDS:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzgi;->zzvj:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/zzgi;->zzDT:Ljava/util/List;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgi;->zzDW:Ljava/util/List;

    iget-wide v7, v0, Lcom/google/android/gms/internal/zzgi;->zzDX:J

    iget-boolean v9, v0, Lcom/google/android/gms/internal/zzgi;->zzDY:Z

    iget-object v12, v0, Lcom/google/android/gms/internal/zzgi;->zzBK:Ljava/util/List;

    iget-wide v13, v0, Lcom/google/android/gms/internal/zzgi;->zzEa:J

    iget v15, v0, Lcom/google/android/gms/internal/zzgi;->mOrientation:I

    iget-object v10, v0, Lcom/google/android/gms/internal/zzgi;->zzDR:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/internal/zzgi;->zzDU:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzgi;->zzDV:Ljava/lang/String;

    move-object/from16 v28, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzgi;->zzEb:Z

    move/from16 v29, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzgi;->zzEc:Z

    move/from16 v30, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzgi;->zzEd:Z

    move/from16 v31, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzgi;->zzEe:Z

    move/from16 v32, v10

    iget v10, v0, Lcom/google/android/gms/internal/zzgi;->zzEf:I

    const-wide/16 v16, -0x1

    const/16 v25, 0x0

    move-object/from16 v20, v1

    move-object/from16 v1, v27

    move/from16 v26, v10

    move-object/from16 v19, v11

    move-object/from16 v18, v28

    move/from16 v21, v29

    move/from16 v22, v30

    move/from16 v23, v31

    move/from16 v24, v32

    move-wide/from16 v10, v16

    move-object/from16 v16, v18

    move-wide/from16 v17, p1

    invoke-direct/range {v1 .. v26}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZZI)V

    return-object v27
.end method
