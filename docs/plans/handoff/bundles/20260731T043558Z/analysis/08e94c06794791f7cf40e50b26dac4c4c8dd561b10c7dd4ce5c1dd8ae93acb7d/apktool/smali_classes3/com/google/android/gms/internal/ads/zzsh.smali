.class final Lcom/google/android/gms/internal/ads/zzsh;
.super Landroid/os/Handler;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzsj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzsj;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsh;->zza:Lcom/google/android/gms/internal/ads/zzsj;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsh;->zza:Lcom/google/android/gms/internal/ads/zzsj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzsj;->zzh(Landroid/os/Message;)V

    return-void
.end method
