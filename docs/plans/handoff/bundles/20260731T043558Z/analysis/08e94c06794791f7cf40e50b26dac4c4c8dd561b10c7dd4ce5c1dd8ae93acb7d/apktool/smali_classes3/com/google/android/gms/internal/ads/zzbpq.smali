.class final synthetic Lcom/google/android/gms/internal/ads/zzbpq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbqb;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbqa;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbow;

.field private final synthetic zzd:Ljava/util/ArrayList;

.field private final synthetic zze:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbqb;Lcom/google/android/gms/internal/ads/zzbqa;Lcom/google/android/gms/internal/ads/zzbow;Ljava/util/ArrayList;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpq;->zza:Lcom/google/android/gms/internal/ads/zzbqb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpq;->zzb:Lcom/google/android/gms/internal/ads/zzbqa;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbpq;->zzc:Lcom/google/android/gms/internal/ads/zzbow;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbpq;->zzd:Ljava/util/ArrayList;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzbpq;->zze:J

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpq;->zza:Lcom/google/android/gms/internal/ads/zzbqb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpq;->zzb:Lcom/google/android/gms/internal/ads/zzbqa;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbpq;->zzc:Lcom/google/android/gms/internal/ads/zzbow;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbpq;->zzd:Ljava/util/ArrayList;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzbpq;->zze:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbqb;->zze(Lcom/google/android/gms/internal/ads/zzbqa;Lcom/google/android/gms/internal/ads/zzbow;Ljava/util/ArrayList;J)V

    return-void
.end method
