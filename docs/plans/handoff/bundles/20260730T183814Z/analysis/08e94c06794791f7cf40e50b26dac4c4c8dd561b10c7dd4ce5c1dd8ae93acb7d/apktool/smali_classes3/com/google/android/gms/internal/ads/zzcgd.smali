.class final synthetic Lcom/google/android/gms/internal/ads/zzcgd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadg;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzcgd;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcgd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcgd;->zza:Lcom/google/android/gms/internal/ads/zzcgd;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza()[Lcom/google/android/gms/internal/ads/zzada;
    .locals 10

    sget v0, Lcom/google/android/gms/internal/ads/zzcgg;->zza:I

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzada;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaiz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzaiz;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzahk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzahk;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzair;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzakg;->zza:Lcom/google/android/gms/internal/ads/zzakg;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpe;->zzi()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v5, 0x20

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    .line 3
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzair;-><init>(Lcom/google/android/gms/internal/ads/zzakg;ILcom/google/android/gms/internal/ads/zzem;Lcom/google/android/gms/internal/ads/zzajf;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzaem;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method
