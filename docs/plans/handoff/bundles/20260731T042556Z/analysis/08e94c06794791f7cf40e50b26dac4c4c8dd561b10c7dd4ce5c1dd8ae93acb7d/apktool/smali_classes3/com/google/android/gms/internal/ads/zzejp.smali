.class public final Lcom/google/android/gms/internal/ads/zzejp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdsy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdsy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejp;->zza:Lcom/google/android/gms/internal/ads/zzdsy;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzehn;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfgu;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejp;->zza:Lcom/google/android/gms/internal/ads/zzdsy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsy;->zza(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfhl;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeiz;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeiz;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzehn;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzehn;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzczy;Ljava/lang/String;)V

    return-object v1
.end method
