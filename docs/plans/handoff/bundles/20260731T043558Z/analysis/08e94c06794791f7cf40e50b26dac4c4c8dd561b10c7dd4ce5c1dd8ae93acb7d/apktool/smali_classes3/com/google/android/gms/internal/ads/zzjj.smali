.class final synthetic Lcom/google/android/gms/internal/ads/zzjj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzju;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzke;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzju;Lcom/google/android/gms/internal/ads/zzke;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjj;->zza:Lcom/google/android/gms/internal/ads/zzju;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzb:Lcom/google/android/gms/internal/ads/zzke;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zza:Lcom/google/android/gms/internal/ads/zzju;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzb:Lcom/google/android/gms/internal/ads/zzke;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzju;->zzO(Lcom/google/android/gms/internal/ads/zzke;)V

    return-void
.end method
