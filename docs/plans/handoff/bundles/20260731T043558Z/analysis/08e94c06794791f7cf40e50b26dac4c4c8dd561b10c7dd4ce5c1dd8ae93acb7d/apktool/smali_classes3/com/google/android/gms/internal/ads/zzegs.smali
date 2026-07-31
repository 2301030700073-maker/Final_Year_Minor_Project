.class final synthetic Lcom/google/android/gms/internal/ads/zzegs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfou;

.field private final synthetic zzb:Landroid/view/View;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfou;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegs;->zza:Lcom/google/android/gms/internal/ads/zzfou;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzb:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzfP:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfos;->zzb()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzb:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegs;->zza:Lcom/google/android/gms/internal/ads/zzfou;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfpb;->zzc:Lcom/google/android/gms/internal/ads/zzfpb;

    const-string v3, "Ad overlay"

    .line 3
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfou;->zzd(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfpb;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
