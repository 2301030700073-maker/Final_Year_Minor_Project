.class final Lcom/google/android/gms/internal/ads/zzclx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzedh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzckz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzclw;

.field private zzc:Lcom/google/android/gms/internal/ads/zzebo;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzckz;Lcom/google/android/gms/internal/ads/zzclw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclx;->zza:Lcom/google/android/gms/internal/ads/zzckz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzb:Lcom/google/android/gms/internal/ads/zzclw;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzedi;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzc:Lcom/google/android/gms/internal/ads/zzebo;

    const-class v1, Lcom/google/android/gms/internal/ads/zzebo;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzifp;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcly;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclx;->zza:Lcom/google/android/gms/internal/ads/zzckz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzb:Lcom/google/android/gms/internal/ads/zzclw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzc:Lcom/google/android/gms/internal/ads/zzebo;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcly;-><init>(Lcom/google/android/gms/internal/ads/zzckz;Lcom/google/android/gms/internal/ads/zzclw;Lcom/google/android/gms/internal/ads/zzebo;)V

    return-object v0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzebo;)Lcom/google/android/gms/internal/ads/zzedh;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzebo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzc:Lcom/google/android/gms/internal/ads/zzebo;

    return-object p0
.end method
