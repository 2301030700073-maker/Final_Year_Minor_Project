.class final Lcom/google/android/gms/internal/ads/zzyx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Landroid/os/Handler;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzyz;

.field private zzc:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzyz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyx;->zza:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyx;->zzb:Lcom/google/android/gms/internal/ads/zzyz;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyx;->zzc:Z

    return-void
.end method

.method final synthetic zzb()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyx;->zza:Landroid/os/Handler;

    return-object v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzyz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyx;->zzb:Lcom/google/android/gms/internal/ads/zzyz;

    return-object v0
.end method

.method final synthetic zzd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyx;->zzc:Z

    return v0
.end method
