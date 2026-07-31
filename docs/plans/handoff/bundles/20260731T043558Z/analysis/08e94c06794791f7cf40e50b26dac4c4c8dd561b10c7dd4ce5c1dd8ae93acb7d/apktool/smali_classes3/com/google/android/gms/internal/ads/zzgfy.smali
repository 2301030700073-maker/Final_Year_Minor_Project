.class final synthetic Lcom/google/android/gms/internal/ads/zzgfy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzggb;

.field private final synthetic zzb:Ljava/util/Map;

.field private final synthetic zzc:Landroid/content/Context;

.field private final synthetic zzd:Landroid/view/View;

.field private final synthetic zze:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzggb;Ljava/util/Map;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfy;->zza:Lcom/google/android/gms/internal/ads/zzggb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgfy;->zzb:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgfy;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgfy;->zzd:Landroid/view/View;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgfy;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 6

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgfy;->zze:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfy;->zza:Lcom/google/android/gms/internal/ads/zzggb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfy;->zzb:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgfy;->zzc:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgfy;->zzd:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzggb;->zzp(Ljava/util/Map;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
