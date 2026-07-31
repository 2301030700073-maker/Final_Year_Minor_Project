.class public final Lcom/google/android/gms/internal/ads/zzbgq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbge;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbge;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "gads:debug_logging_feature:enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgq;->zza:Lcom/google/android/gms/internal/ads/zzbge;

    const-string v0, "gads:debug_logging_feature:intercept_web_view"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbge;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgq;->zzb:Lcom/google/android/gms/internal/ads/zzbge;

    return-void
.end method
