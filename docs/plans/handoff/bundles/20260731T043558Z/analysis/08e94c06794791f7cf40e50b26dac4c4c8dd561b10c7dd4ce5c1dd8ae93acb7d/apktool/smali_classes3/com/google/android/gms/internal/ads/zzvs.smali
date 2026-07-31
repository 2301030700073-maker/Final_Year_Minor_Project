.class final synthetic Lcom/google/android/gms/internal/ads/zzvs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzvy;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzaed;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzvy;Lcom/google/android/gms/internal/ads/zzaed;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zza:Lcom/google/android/gms/internal/ads/zzvy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:Lcom/google/android/gms/internal/ads/zzaed;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zza:Lcom/google/android/gms/internal/ads/zzvy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:Lcom/google/android/gms/internal/ads/zzaed;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzvy;->zzF(Lcom/google/android/gms/internal/ads/zzaed;)V

    return-void
.end method
