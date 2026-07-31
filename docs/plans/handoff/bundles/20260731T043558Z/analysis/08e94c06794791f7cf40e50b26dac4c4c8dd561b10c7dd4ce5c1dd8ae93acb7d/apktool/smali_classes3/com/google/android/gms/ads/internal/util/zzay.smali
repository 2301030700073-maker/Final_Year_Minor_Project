.class public final Lcom/google/android/gms/ads/internal/util/zzay;
.super Lcom/google/android/gms/internal/ads/zzaqj;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zzb:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaqi;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzaqj;-><init>(Lcom/google/android/gms/internal/ads/zzaqi;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzay;->zzb:Landroid/content/Context;

    return-void
.end method

.method public static zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzapx;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzay;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaqv;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzaqv;-><init>(Lcom/google/android/gms/internal/ads/zzaqu;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/util/zzay;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaqi;)V

    new-instance v1, Ljava/io/File;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzftx;->zza()Lcom/google/android/gms/internal/ads/zzfty;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "admob_volley"

    invoke-interface {v2, p0, v3}, Lcom/google/android/gms/internal/ads/zzfty;->zza(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzapx;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaqq;

    const/high16 v3, 0x1400000

    .line 4
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzaqq;-><init>(Ljava/io/File;I)V

    const/4 v1, 0x4

    .line 5
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzapx;-><init>(Lcom/google/android/gms/internal/ads/zzape;Lcom/google/android/gms/internal/ads/zzapn;I)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzapx;->zza()V

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzapu;)Lcom/google/android/gms/internal/ads/zzapq;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaqd;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzapu;->zza()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzapu;->zzh()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeu;->zzeZ:Lcom/google/android/gms/internal/ads/zzbel;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzay;->zzb:Landroid/content/Context;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    const v1, 0xcc77c0

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzx(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbnv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbnv;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbnv;->zza(Lcom/google/android/gms/internal/ads/zzapu;)Lcom/google/android/gms/internal/ads/zzapq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzapu;->zzh()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Got gmscore asset response: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzapu;->zzh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to get gmscore asset response: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 10
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqj;->zza(Lcom/google/android/gms/internal/ads/zzapu;)Lcom/google/android/gms/internal/ads/zzapq;

    move-result-object p1

    return-object p1
.end method
