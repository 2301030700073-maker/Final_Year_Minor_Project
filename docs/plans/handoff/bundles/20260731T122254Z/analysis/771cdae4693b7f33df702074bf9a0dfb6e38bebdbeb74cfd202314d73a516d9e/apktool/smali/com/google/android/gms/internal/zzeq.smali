.class public Lcom/google/android/gms/internal/zzeq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# instance fields
.field private final zzoA:Lcom/google/android/gms/internal/zzid;

.field private final zzyJ:Z

.field private final zzyK:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzid;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzid;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeq;->zzoA:Lcom/google/android/gms/internal/zzid;

    const-string p1, "forceOrientation"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeq;->zzyK:Ljava/lang/String;

    const-string p1, "allowOrientationChange"

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "allowOrientationChange"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzeq;->zzyJ:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq;->zzoA:Lcom/google/android/gms/internal/zzid;

    if-nez v0, :cond_0

    const-string v0, "AdWebView is null"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "portrait"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq;->zzyK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhm;->zzgr()I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "landscape"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq;->zzyK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhm;->zzgq()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeq;->zzyJ:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhm;->zzgs()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzid;->setRequestedOrientation(I)V

    return-void
.end method
