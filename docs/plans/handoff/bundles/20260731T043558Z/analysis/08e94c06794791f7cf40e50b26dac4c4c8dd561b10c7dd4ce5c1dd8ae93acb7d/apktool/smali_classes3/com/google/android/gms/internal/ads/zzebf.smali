.class final synthetic Lcom/google/android/gms/internal/ads/zzebf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzebk;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbqf;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzebk;Lcom/google/android/gms/internal/ads/zzbqf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebf;->zza:Lcom/google/android/gms/internal/ads/zzebk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebf;->zzb:Lcom/google/android/gms/internal/ads/zzbqf;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebf;->zza:Lcom/google/android/gms/internal/ads/zzebk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebf;->zzb:Lcom/google/android/gms/internal/ads/zzbqf;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzebk;->zzb(Lcom/google/android/gms/internal/ads/zzbqf;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
