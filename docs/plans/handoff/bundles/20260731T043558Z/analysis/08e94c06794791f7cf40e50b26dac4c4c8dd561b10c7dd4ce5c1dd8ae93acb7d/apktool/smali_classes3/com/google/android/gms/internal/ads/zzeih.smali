.class final synthetic Lcom/google/android/gms/internal/ads/zzeih;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzeik;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcgy;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeik;Lcom/google/android/gms/internal/ads/zzcgy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeih;->zza:Lcom/google/android/gms/internal/ads/zzeik;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeih;->zzb:Lcom/google/android/gms/internal/ads/zzcgy;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeih;->zza:Lcom/google/android/gms/internal/ads/zzeik;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeih;->zzb:Lcom/google/android/gms/internal/ads/zzcgy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeik;->zzd(Lcom/google/android/gms/internal/ads/zzcgy;)V

    return-void
.end method
