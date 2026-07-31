.class final synthetic Lcom/google/android/gms/internal/ads/zzchh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzchj;

.field private final synthetic zzb:Landroid/view/View;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbzt;

.field private final synthetic zzd:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzchj;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbzt;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchh;->zza:Lcom/google/android/gms/internal/ads/zzchj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzb:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzc:Lcom/google/android/gms/internal/ads/zzbzt;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzd:I

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchh;->zza:Lcom/google/android/gms/internal/ads/zzchj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzb:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzc:Lcom/google/android/gms/internal/ads/zzbzt;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzd:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzchj;->zzS(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbzt;I)V

    return-void
.end method
