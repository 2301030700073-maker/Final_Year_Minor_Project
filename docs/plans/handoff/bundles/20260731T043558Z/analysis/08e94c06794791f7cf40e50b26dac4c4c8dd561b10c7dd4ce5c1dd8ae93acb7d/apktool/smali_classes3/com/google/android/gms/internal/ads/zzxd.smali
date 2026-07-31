.class final synthetic Lcom/google/android/gms/internal/ads/zzxd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzxd;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzxd;->zza:Lcom/google/android/gms/internal/ads/zzxd;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/ads/zzv;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzv;

    .line 1
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzv;->zzj:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzv;->zzj:I

    sub-int/2addr p2, p1

    return p2
.end method
