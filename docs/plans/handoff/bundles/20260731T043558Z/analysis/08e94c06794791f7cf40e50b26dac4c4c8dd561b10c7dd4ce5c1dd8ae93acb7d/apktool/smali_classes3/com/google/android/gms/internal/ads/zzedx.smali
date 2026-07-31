.class public final Lcom/google/android/gms/internal/ads/zzedx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final zzd:Lcom/google/android/gms/internal/ads/zzbqi;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzeed;

.field public final zzb:Lorg/json/JSONObject;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzbxl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzedw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzedx;->zzd:Lcom/google/android/gms/internal/ads/zzbqi;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeed;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbxl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedx;->zza:Lcom/google/android/gms/internal/ads/zzeed;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedx;->zzb:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzedx;->zzc:Lcom/google/android/gms/internal/ads/zzbxl;

    return-void
.end method
