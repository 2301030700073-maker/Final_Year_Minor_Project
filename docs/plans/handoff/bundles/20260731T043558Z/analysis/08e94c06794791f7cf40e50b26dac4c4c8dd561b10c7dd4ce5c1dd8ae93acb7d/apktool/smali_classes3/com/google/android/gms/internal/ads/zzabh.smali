.class final synthetic Lcom/google/android/gms/internal/ads/zzabh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzabr;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:J

.field private final synthetic zzd:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zza:Lcom/google/android/gms/internal/ads/zzabr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzb:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzd:J

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zza:Lcom/google/android/gms/internal/ads/zzabr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzb:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzc:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzd:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzabr;->zzl(Ljava/lang/String;JJ)V

    return-void
.end method
