.class final synthetic Lcom/google/android/gms/internal/ads/zzdnf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzblx;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdnl;

.field private final synthetic zzb:Landroid/view/WindowManager;

.field private final synthetic zzc:Landroid/view/View;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdnl;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzdnl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zzb:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zzc:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zzb:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zzc:Landroid/view/View;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcgy;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzdnl;->zzc(Landroid/view/WindowManager;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcgy;Ljava/util/Map;)V

    return-void
.end method
