.class final Lcom/google/android/gms/internal/ads/zzaiy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzajf;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzaji;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzaem;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzaen;

.field public zze:I

.field public zzf:Lcom/google/android/gms/internal/ads/zzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzajf;Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzaem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zza:Lcom/google/android/gms/internal/ads/zzajf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzb:Lcom/google/android/gms/internal/ads/zzaji;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzc:Lcom/google/android/gms/internal/ads/zzaem;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzajf;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaen;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaen;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzd:Lcom/google/android/gms/internal/ads/zzaen;

    return-void
.end method
