.class public final Lcom/google/android/gms/internal/zzdn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# instance fields
.field private final zzww:Lcom/google/android/gms/ads/internal/zzd;

.field private final zzwx:Lcom/google/android/gms/internal/zzep;

.field private final zzwz:Lcom/google/android/gms/internal/zzdi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdi;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/internal/zzep;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdn;->zzwz:Lcom/google/android/gms/internal/zzdi;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdn;->zzww:Lcom/google/android/gms/ads/internal/zzd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdn;->zzwx:Lcom/google/android/gms/internal/zzep;

    return-void
.end method

.method private static zzd(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "1"

    const-string v1, "custom_close"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zze(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "o"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, "p"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhm;->zzgr()I

    move-result p0

    return p0

    :cond_0
    const-string v0, "l"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhm;->zzgq()I

    move-result p0

    return p0

    :cond_1
    const-string v0, "c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhm;->zzgs()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private zzm(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zzwx:Lcom/google/android/gms/internal/zzep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zzwx:Lcom/google/android/gms/internal/zzep;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzep;->zzn(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzid;Ljava/util/Map;)V
    .locals 10
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

    const-string v0, "a"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "Action missing from an open GMSG."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdn;->zzww:Lcom/google/android/gms/ads/internal/zzd;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdn;->zzww:Lcom/google/android/gms/ads/internal/zzd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzd;->zzbd()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdn;->zzww:Lcom/google/android/gms/ads/internal/zzd;

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzd;->zzo(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzid;->zzgF()Lcom/google/android/gms/internal/zzie;

    move-result-object v1

    const-string v2, "expand"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzid;->zzgJ()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Cannot expand WebView that is already expanded."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzdn;->zzm(Z)V

    invoke-static {p2}, Lcom/google/android/gms/internal/zzdn;->zzd(Ljava/util/Map;)Z

    move-result p1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzdn;->zze(Ljava/util/Map;)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzie;->zza(ZI)V

    return-void

    :cond_3
    const-string v2, "webapp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p1, "u"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzdn;->zzm(Z)V

    if-eqz p1, :cond_4

    invoke-static {p2}, Lcom/google/android/gms/internal/zzdn;->zzd(Ljava/util/Map;)Z

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzdn;->zze(Ljava/util/Map;)I

    move-result p2

    invoke-virtual {v1, v0, p2, p1}, Lcom/google/android/gms/internal/zzie;->zza(ZILjava/lang/String;)V

    return-void

    :cond_4
    invoke-static {p2}, Lcom/google/android/gms/internal/zzdn;->zzd(Ljava/util/Map;)Z

    move-result p1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzdn;->zze(Ljava/util/Map;)I

    move-result v0

    const-string v2, "html"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "baseurl"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p1, v0, v2, p2}, Lcom/google/android/gms/internal/zzie;->zza(ZILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v2, "in_app_purchase"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "product_id"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "report_urls"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zzwz:Lcom/google/android/gms/internal/zzdi;

    if-nez v0, :cond_6

    return-void

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zzwz:Lcom/google/android/gms/internal/zzdi;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzdi;->zza(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_7
    iget-object p2, p0, Lcom/google/android/gms/internal/zzdn;->zzwz:Lcom/google/android/gms/internal/zzdi;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/zzdi;->zza(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_8
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzdn;->zzm(Z)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzid;->zzgH()Lcom/google/android/gms/internal/zzan;

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/zzhl;->zza(Lcom/google/android/gms/internal/zzid;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    move-object v4, v0

    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    const-string v0, "i"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "m"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const-string v0, "p"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const-string v0, "c"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    const-string v0, "f"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    const-string v0, "e"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Ljava/lang/String;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzie;->zza(Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;)V

    return-void
.end method
