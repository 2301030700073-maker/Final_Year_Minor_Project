.class public final Lcom/google/android/gms/internal/ads/zzfqf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfqh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfqg;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfqh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqf;->zza:Lcom/google/android/gms/internal/ads/zzfqh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfqg;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfqg;-><init>(Lcom/google/android/gms/internal/ads/zzfqe;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfqf;->zzb:Lcom/google/android/gms/internal/ads/zzfqg;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfqe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqf;->zzb:Lcom/google/android/gms/internal/ads/zzfqg;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfqe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqf;->zza:Lcom/google/android/gms/internal/ads/zzfqh;

    return-object v0
.end method
