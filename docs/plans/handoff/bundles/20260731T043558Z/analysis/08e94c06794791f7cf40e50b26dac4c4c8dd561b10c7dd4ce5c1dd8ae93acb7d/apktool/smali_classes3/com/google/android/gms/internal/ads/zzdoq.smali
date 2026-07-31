.class final synthetic Lcom/google/android/gms/internal/ads/zzdoq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzglu;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdoy;

.field private final synthetic zzb:Lorg/json/JSONObject;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdoy;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoq;->zza:Lcom/google/android/gms/internal/ads/zzdoy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdoq;->zzb:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoq;->zza:Lcom/google/android/gms/internal/ads/zzdoy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoq;->zzb:Lorg/json/JSONObject;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdoy;->zzi(Lorg/json/JSONObject;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbhq;

    move-result-object p1

    return-object p1
.end method
