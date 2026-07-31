.class final synthetic Lcom/google/android/gms/internal/ads/zzeag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzaxa;

.field private final synthetic zzb:Landroid/content/Context;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaxa;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeag;->zza:Lcom/google/android/gms/internal/ads/zzaxa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeag;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeag;->zza:Lcom/google/android/gms/internal/ads/zzaxa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxa;->zzb()Lcom/google/android/gms/internal/ads/zzawv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeag;->zzb:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzawv;->zzl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
