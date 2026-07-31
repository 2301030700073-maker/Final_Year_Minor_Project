.class public final Lcom/google/android/gms/internal/ads/zzdix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdia;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdix;->zza:Lcom/google/android/gms/internal/ads/zzdia;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdia;)Lcom/google/android/gms/internal/ads/zzdix;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdix;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdix;-><init>(Lcom/google/android/gms/internal/ads/zzdia;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdix;->zza:Lcom/google/android/gms/internal/ads/zzdia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdia;->zzc()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
