.class final Lcom/google/android/gms/internal/ads/zzgqw;
.super Lcom/google/android/gms/internal/ads/zzgqy;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzgqw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgqw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqw;->zza:Lcom/google/android/gms/internal/ads/zzgqw;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqy;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Ordering.natural()"

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzgqy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgrg;->zza:Lcom/google/android/gms/internal/ads/zzgrg;

    return-object v0
.end method
