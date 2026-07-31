.class public Lcom/google/android/gms/internal/ads/zzadp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaed;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaed;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaed;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadp;->zza:Lcom/google/android/gms/internal/ads/zzaed;

    return-void
.end method


# virtual methods
.method public zza()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadp;->zza:Lcom/google/android/gms/internal/ads/zzaed;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaed;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadp;->zza:Lcom/google/android/gms/internal/ads/zzaed;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaed;->zzb()Z

    move-result v0

    return v0
.end method

.method public zzc(J)Lcom/google/android/gms/internal/ads/zzaeb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadp;->zza:Lcom/google/android/gms/internal/ads/zzaed;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaed;->zzc(J)Lcom/google/android/gms/internal/ads/zzaeb;

    move-result-object p1

    return-object p1
.end method
