.class final Lcom/google/android/gms/internal/ads/zzbas;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbaw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbaw;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbas;->zza:Lcom/google/android/gms/internal/ads/zzbaw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbas;->zza:Lcom/google/android/gms/internal/ads/zzbaw;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbaw;->zzg(I)V

    return-void
.end method
