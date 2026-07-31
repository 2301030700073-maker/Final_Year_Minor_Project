.class public final Lcom/google/android/gms/internal/ads/zzfuy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfuw;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzfuw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfux;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfux;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfuy;->zza:Lcom/google/android/gms/internal/ads/zzfuw;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfuy;->zzb:Lcom/google/android/gms/internal/ads/zzfuw;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfuw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfuy;->zzb:Lcom/google/android/gms/internal/ads/zzfuw;

    return-object v0
.end method
