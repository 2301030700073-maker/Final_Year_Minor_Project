.class final synthetic Lcom/google/android/gms/internal/ads/zzkr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzks;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgpb;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzuu;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzks;Lcom/google/android/gms/internal/ads/zzgpb;Lcom/google/android/gms/internal/ads/zzuu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkr;->zza:Lcom/google/android/gms/internal/ads/zzks;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzb:Lcom/google/android/gms/internal/ads/zzgpb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzc:Lcom/google/android/gms/internal/ads/zzuu;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkr;->zza:Lcom/google/android/gms/internal/ads/zzks;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzb:Lcom/google/android/gms/internal/ads/zzgpb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzc:Lcom/google/android/gms/internal/ads/zzuu;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzks;->zzz(Lcom/google/android/gms/internal/ads/zzgpb;Lcom/google/android/gms/internal/ads/zzuu;)V

    return-void
.end method
