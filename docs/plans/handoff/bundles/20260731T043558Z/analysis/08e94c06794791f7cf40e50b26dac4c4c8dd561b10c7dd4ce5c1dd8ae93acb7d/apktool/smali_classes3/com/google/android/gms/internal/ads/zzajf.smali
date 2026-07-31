.class public final Lcom/google/android/gms/internal/ads/zzajf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field public final zza:I

.field public final zzb:I

.field public final zzc:J

.field public final zzd:J

.field public final zze:J

.field public final zzf:J

.field public final zzg:Lcom/google/android/gms/internal/ads/zzv;

.field public final zzh:I

.field public final zzi:[J

.field public final zzj:[J

.field public final zzk:I

.field private final zzl:[Lcom/google/android/gms/internal/ads/zzajg;


# direct methods
.method public constructor <init>(IIJJJJLcom/google/android/gms/internal/ads/zzv;I[Lcom/google/android/gms/internal/ads/zzajg;I[J[J)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajf;->zza:I

    move v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzb:I

    move-wide v1, p3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzc:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzd:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajf;->zze:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzf:J

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    move v1, p12

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzh:I

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzl:[Lcom/google/android/gms/internal/ads/zzajg;

    move/from16 v1, p14

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzk:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzi:[J

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzj:[J

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzajg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzl:[Lcom/google/android/gms/internal/ads/zzajg;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzajf;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzh:I

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzl:[Lcom/google/android/gms/internal/ads/zzajg;

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzk:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzi:[J

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzj:[J

    move-object/from16 v17, v1

    new-instance v18, Lcom/google/android/gms/internal/ads/zzajf;

    move-object/from16 v1, v18

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajf;->zza:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzb:I

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzc:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzd:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajf;->zze:J

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzajf;->zzf:J

    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzajf;-><init>(IIJJJJLcom/google/android/gms/internal/ads/zzv;I[Lcom/google/android/gms/internal/ads/zzajg;I[J[J)V

    return-object v18
.end method
