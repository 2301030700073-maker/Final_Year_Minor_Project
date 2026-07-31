.class final synthetic Lcom/google/android/gms/internal/ads/zzbls;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzblx;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzbls;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbls;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbls;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbls;->zza:Lcom/google/android/gms/internal/ads/zzbls;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcik;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzblw;->zza:Lcom/google/android/gms/internal/ads/zzblx;

    .line 1
    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 2
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "URL missing from httpTrack GMSG."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbeu;->zzf:Lcom/google/android/gms/internal/ads/zzbel;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "URL is empty from httpTrack GMSG."

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    :goto_0
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcgp;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcgp;->zzC()Lcom/google/android/gms/internal/ads/zzffu;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcgp;->zzC()Lcom/google/android/gms/internal/ads/zzffu;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    move-object v5, p2

    new-instance p2, Lcom/google/android/gms/ads/internal/util/zzbt;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcik;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcis;

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcis;->zzs()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p1

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzbt;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfmy;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/util/zzb;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
