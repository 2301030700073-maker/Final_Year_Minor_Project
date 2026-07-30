.class public final Lcom/google/android/gms/internal/ads/zzdff;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->zza:Lcom/google/android/gms/internal/ads/zzdeo;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdeo;)Lcom/google/android/gms/internal/ads/zzdff;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdff;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdff;-><init>(Lcom/google/android/gms/internal/ads/zzdeo;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->zza:Lcom/google/android/gms/internal/ads/zzdeo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdeo;->zzl()Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    return-object v0
.end method
