.class final synthetic Lcom/google/android/gms/internal/ads/zzky;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzkz;

.field private final synthetic zzb:Landroid/util/Pair;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzul;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzuq;

.field private final synthetic zze:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzkz;Landroid/util/Pair;Lcom/google/android/gms/internal/ads/zzul;Lcom/google/android/gms/internal/ads/zzuq;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzky;->zza:Lcom/google/android/gms/internal/ads/zzkz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzky;->zzb:Landroid/util/Pair;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzky;->zzc:Lcom/google/android/gms/internal/ads/zzul;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzky;->zzd:Lcom/google/android/gms/internal/ads/zzuq;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzky;->zze:I

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzky;->zzb:Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzuu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzky;->zza:Lcom/google/android/gms/internal/ads/zzkz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkz;->zza:Lcom/google/android/gms/internal/ads/zzle;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzle;->zzj()Lcom/google/android/gms/internal/ads/zzmi;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzky;->zzc:Lcom/google/android/gms/internal/ads/zzul;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzky;->zzd:Lcom/google/android/gms/internal/ads/zzuq;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzky;->zze:I

    .line 1
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzmi;->zzcT(ILcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/internal/ads/zzul;Lcom/google/android/gms/internal/ads/zzuq;I)V

    return-void
.end method
