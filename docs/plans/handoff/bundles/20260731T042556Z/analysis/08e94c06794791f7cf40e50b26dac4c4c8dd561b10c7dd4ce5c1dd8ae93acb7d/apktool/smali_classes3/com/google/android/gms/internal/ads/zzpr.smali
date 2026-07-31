.class final synthetic Lcom/google/android/gms/internal/ads/zzpr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzpz;

.field private final synthetic zzb:I

.field private final synthetic zzc:J

.field private final synthetic zzd:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzpz;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpr;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzd:J

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpr;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzb:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzc:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzpr;->zzd:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzpz;->zzr(IJJ)V

    return-void
.end method
