.class public final Lcom/google/android/gms/internal/ads/zzgg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzga;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzga;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgi;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgg;->zza:Landroid/content/Context;

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzga;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzb:Lcom/google/android/gms/internal/ads/zzga;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Lcom/google/android/gms/internal/ads/zzgb;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzb:Lcom/google/android/gms/internal/ads/zzga;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgg;->zza:Landroid/content/Context;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzga;->zza()Lcom/google/android/gms/internal/ads/zzgb;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgb;)V

    return-object v0
.end method
