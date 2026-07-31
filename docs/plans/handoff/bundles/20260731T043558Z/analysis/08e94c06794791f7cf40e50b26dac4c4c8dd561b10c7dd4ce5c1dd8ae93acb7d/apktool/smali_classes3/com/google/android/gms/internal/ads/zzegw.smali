.class final synthetic Lcom/google/android/gms/internal/ads/zzegw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfpg;

.field private final synthetic zzb:Landroid/view/View;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfpg;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegw;->zza:Lcom/google/android/gms/internal/ads/zzfpg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzb:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegw;->zza:Lcom/google/android/gms/internal/ads/zzfpg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzb:Landroid/view/View;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfpb;->zzc:Lcom/google/android/gms/internal/ads/zzfpb;

    const-string v3, "Ad overlay"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpg;->zzd(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfpb;Ljava/lang/String;)V

    return-void
.end method
