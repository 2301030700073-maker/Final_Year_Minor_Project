.class final synthetic Lcom/google/android/gms/internal/ads/zzcuc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzguf;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzguf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuc;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzv;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzv;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcuc;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzguf;->zza(Ljava/lang/Throwable;)V

    return-void
.end method
