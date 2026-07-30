.class final synthetic Lcom/google/android/gms/internal/ads/zzflo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzflp;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzflf;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzflp;Lcom/google/android/gms/internal/ads/zzflf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflo;->zza:Lcom/google/android/gms/internal/ads/zzflp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzflo;->zzb:Lcom/google/android/gms/internal/ads/zzflf;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflo;->zza:Lcom/google/android/gms/internal/ads/zzflp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflo;->zzb:Lcom/google/android/gms/internal/ads/zzflf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzflp;->zzc(Lcom/google/android/gms/internal/ads/zzflf;)V

    return-void
.end method
