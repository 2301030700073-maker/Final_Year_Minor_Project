.class final Lcom/google/android/gms/internal/ads/zzbfq;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbft;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbft;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zza:Lcom/google/android/gms/internal/ads/zzbft;

    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zza:Lcom/google/android/gms/internal/ads/zzbft;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbft;->zzc(I)V

    return-void
.end method
