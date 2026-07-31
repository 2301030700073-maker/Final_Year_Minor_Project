.class public final Lcom/google/android/gms/internal/ads/zzbhf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbge;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "gads:limit_scar_service_thread_ph:enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbhf;->zza:Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:minimum_service:version"

    const-wide/16 v1, -0x1

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbge;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbge;

    return-void
.end method
