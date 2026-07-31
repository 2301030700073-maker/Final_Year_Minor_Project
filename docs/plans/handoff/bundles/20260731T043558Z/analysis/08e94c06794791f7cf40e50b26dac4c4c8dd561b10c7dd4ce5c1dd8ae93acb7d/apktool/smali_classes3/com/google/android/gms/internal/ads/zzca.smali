.class final synthetic Lcom/google/android/gms/internal/ads/zzca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Landroid/content/Context;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdf;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzca;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzca;->zzb:Lcom/google/android/gms/internal/ads/zzdf;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzca;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzca;->zzb:Lcom/google/android/gms/internal/ads/zzdf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcb;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdf;)V

    return-void
.end method
