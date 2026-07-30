.class public final Lcom/google/android/gms/internal/ads/zzfvk;
.super Lcom/google/android/gms/internal/ads/zzhwo;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhya;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzfvk;

.field private static volatile zzc:Lcom/google/android/gms/internal/ads/zzhyh;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzhxt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfvk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Lcom/google/android/gms/internal/ads/zzfvk;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfvk;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhxt;->zza()Lcom/google/android/gms/internal/ads/zzhxt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zza:Lcom/google/android/gms/internal/ads/zzhxt;

    return-void
.end method

.method public static zzc(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzfvk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Lcom/google/android/gms/internal/ads/zzfvk;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbW(Lcom/google/android/gms/internal/ads/zzhwo;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfvk;

    return-object p0
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzfvk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Lcom/google/android/gms/internal/ads/zzfvk;

    return-object v0
.end method

.method static synthetic zzg()Lcom/google/android/gms/internal/ads/zzfvk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Lcom/google/android/gms/internal/ads/zzfvk;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zza:Lcom/google/android/gms/internal/ads/zzhxt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhxt;->size()I

    move-result v0

    return v0
.end method

.method public final zzb()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zza:Lcom/google/android/gms/internal/ads/zzhxt;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhwn;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfvk;->zzc:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzfvk;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfvk;->zzc:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhwj;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Lcom/google/android/gms/internal/ads/zzfvk;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhwj;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzfvk;->zzc:Lcom/google/android/gms/internal/ads/zzhyh;

    .line 4
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 9
    :cond_2
    throw p3

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Lcom/google/android/gms/internal/ads/zzfvk;

    return-object p1

    .line 6
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfvi;

    .line 7
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzfvi;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfvk;

    .line 8
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfvk;-><init>()V

    return-object p1

    .line 2
    :cond_6
    const-string p1, "zza"

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfvj;->zza:Lcom/google/android/gms/internal/ads/zzhxs;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Lcom/google/android/gms/internal/ads/zzfvk;

    const-string p3, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012"

    .line 6
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzfvk;->zzbv(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zze()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zza:Lcom/google/android/gms/internal/ads/zzhxt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhxt;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zza:Lcom/google/android/gms/internal/ads/zzhxt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhxt;->zzc()Lcom/google/android/gms/internal/ads/zzhxt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zza:Lcom/google/android/gms/internal/ads/zzhxt;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zza:Lcom/google/android/gms/internal/ads/zzhxt;

    return-object v0
.end method
