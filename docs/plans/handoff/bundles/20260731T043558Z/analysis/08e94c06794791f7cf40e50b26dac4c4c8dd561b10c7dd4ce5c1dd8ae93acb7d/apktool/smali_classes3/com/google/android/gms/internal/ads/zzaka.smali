.class public final Lcom/google/android/gms/internal/ads/zzaka;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzgpe;

.field public final zzb:J

.field public final zzc:J


# direct methods
.method public constructor <init>(Ljava/util/List;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->zzq(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zza:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzb:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzc:J

    return-void
.end method
