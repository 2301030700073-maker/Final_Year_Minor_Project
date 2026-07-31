.class final synthetic Lcom/google/android/gms/internal/ads/zzdxo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdxt;

.field private final synthetic zzb:Ljava/lang/Object;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcca;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:J

.field private final synthetic zzf:Lcom/google/android/gms/internal/ads/zzflc;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdxt;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcca;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzflc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zzc:Lcom/google/android/gms/internal/ads/zzcca;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zzd:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zze:J

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zzf:Lcom/google/android/gms/internal/ads/zzflc;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zzb:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zzc:Lcom/google/android/gms/internal/ads/zzcca;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zzd:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zze:J

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdxo;->zzf:Lcom/google/android/gms/internal/ads/zzflc;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdxt;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcca;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzflc;)V

    return-void
.end method
