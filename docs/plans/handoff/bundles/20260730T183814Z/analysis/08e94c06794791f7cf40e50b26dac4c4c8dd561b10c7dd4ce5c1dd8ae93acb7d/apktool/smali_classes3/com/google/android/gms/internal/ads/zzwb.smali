.class public final Lcom/google/android/gms/internal/ads/zzwb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzut;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzga;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzvm;

.field private zzc:I

.field private final zzd:Lcom/google/android/gms/internal/ads/zzze;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzga;Lcom/google/android/gms/internal/ads/zzadg;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwa;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzwa;-><init>(Lcom/google/android/gms/internal/ads/zzadg;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzze;

    const/4 v1, -0x1

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzze;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwb;->zza:Lcom/google/android/gms/internal/ads/zzga;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzb:Lcom/google/android/gms/internal/ads/zzvm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzd:Lcom/google/android/gms/internal/ads/zzze;

    const/high16 p1, 0x100000

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzwb;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzc:I

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzak;)Lcom/google/android/gms/internal/ads/zzwc;
    .locals 12

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzak;->zzb:Lcom/google/android/gms/internal/ads/zzag;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwb;->zza:Lcom/google/android/gms/internal/ads/zzga;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzb:Lcom/google/android/gms/internal/ads/zzvm;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzd:Lcom/google/android/gms/internal/ads/zzze;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwc;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzrz;->zza:Lcom/google/android/gms/internal/ads/zzrz;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzc:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    .line 1
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzwc;-><init>(Lcom/google/android/gms/internal/ads/zzak;Lcom/google/android/gms/internal/ads/zzga;Lcom/google/android/gms/internal/ads/zzvm;Lcom/google/android/gms/internal/ads/zzrz;Lcom/google/android/gms/internal/ads/zzze;IILcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzgmv;[B)V

    return-object v0
.end method
