.class public final Lcom/google/android/gms/internal/ads/zzdfm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdeo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdeo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfm;->zza:Lcom/google/android/gms/internal/ads/zzdeo;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdeo;)Lcom/google/android/gms/internal/ads/zzdfm;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdfm;-><init>(Lcom/google/android/gms/internal/ads/zzdeo;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfdj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfm;->zza:Lcom/google/android/gms/internal/ads/zzdeo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdeo;->zzo()Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfm;->zza:Lcom/google/android/gms/internal/ads/zzdeo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdeo;->zzo()Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v0

    return-object v0
.end method
