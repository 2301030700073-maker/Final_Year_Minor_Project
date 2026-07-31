.class final synthetic Lcom/google/android/gms/internal/ads/zzgkb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgkn;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgku;

.field private final synthetic zzc:I

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzgks;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgkn;Lcom/google/android/gms/internal/ads/zzgku;ILcom/google/android/gms/internal/ads/zzgks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zza:Lcom/google/android/gms/internal/ads/zzgkn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzb:Lcom/google/android/gms/internal/ads/zzgku;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzd:Lcom/google/android/gms/internal/ads/zzgks;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zza:Lcom/google/android/gms/internal/ads/zzgkn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzb:Lcom/google/android/gms/internal/ads/zzgku;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzc:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgkb;->zzd:Lcom/google/android/gms/internal/ads/zzgks;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgkn;->zzg(Lcom/google/android/gms/internal/ads/zzgku;ILcom/google/android/gms/internal/ads/zzgks;)V

    return-void
.end method
