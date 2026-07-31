.class final synthetic Lcom/google/android/gms/internal/ads/zzgfn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgfp;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzftb;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzgaa;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgfp;Lcom/google/android/gms/internal/ads/zzftb;Lcom/google/android/gms/internal/ads/zzgaa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfn;->zza:Lcom/google/android/gms/internal/ads/zzgfp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgfn;->zzb:Lcom/google/android/gms/internal/ads/zzftb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgfn;->zzc:Lcom/google/android/gms/internal/ads/zzgaa;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfn;->zza:Lcom/google/android/gms/internal/ads/zzgfp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfn;->zzb:Lcom/google/android/gms/internal/ads/zzftb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgfn;->zzc:Lcom/google/android/gms/internal/ads/zzgaa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgfp;->zzl(Lcom/google/android/gms/internal/ads/zzftb;Lcom/google/android/gms/internal/ads/zzgaa;)V

    return-void
.end method
