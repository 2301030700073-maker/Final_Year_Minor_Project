.class final synthetic Lcom/google/android/gms/internal/ads/zzgfw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzggb;

.field private final synthetic zzb:Ljava/util/Map;

.field private final synthetic zzc:Landroid/content/Context;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzggb;Ljava/util/Map;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzggb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzc:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zza:Lcom/google/android/gms/internal/ads/zzggb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzc:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzggb;->zzn(Ljava/util/Map;Landroid/content/Context;)V

    return-void
.end method
