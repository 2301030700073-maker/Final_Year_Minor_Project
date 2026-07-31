.class final synthetic Lcom/google/android/gms/internal/ads/zzamc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzamc;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamc;->zza:Lcom/google/android/gms/internal/ads/zzamc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzalt;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzalt;

    .line 1
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzalt;->zzb:J

    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/zzalt;->zzb:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method
