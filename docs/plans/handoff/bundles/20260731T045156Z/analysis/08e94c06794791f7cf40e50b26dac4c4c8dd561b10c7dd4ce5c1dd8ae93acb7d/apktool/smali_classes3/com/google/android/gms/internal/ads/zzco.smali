.class public final Lcom/google/android/gms/internal/ads/zzco;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgqy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->zzb()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcn;->zza:Lcom/google/android/gms/internal/ads/zzcn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqy;->zzd(Lcom/google/android/gms/internal/ads/zzglu;)Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzco;->zzb:Lcom/google/android/gms/internal/ads/zzgqy;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzco;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpe;->zzi()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzco;-><init>(Ljava/util/List;J)V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x24

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzco;->zzb:Lcom/google/android/gms/internal/ads/zzgqy;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgpe;->zzs(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
.end method
