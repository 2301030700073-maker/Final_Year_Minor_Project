.class final synthetic Lcom/google/android/gms/internal/ads/zzdle;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdll;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdnn;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdll;Lcom/google/android/gms/internal/ads/zzdnn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdle;->zza:Lcom/google/android/gms/internal/ads/zzdll;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzb:Lcom/google/android/gms/internal/ads/zzdnn;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdle;->zza:Lcom/google/android/gms/internal/ads/zzdll;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzb:Lcom/google/android/gms/internal/ads/zzdnn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdll;->zzU(Lcom/google/android/gms/internal/ads/zzdnn;)V

    return-void
.end method
