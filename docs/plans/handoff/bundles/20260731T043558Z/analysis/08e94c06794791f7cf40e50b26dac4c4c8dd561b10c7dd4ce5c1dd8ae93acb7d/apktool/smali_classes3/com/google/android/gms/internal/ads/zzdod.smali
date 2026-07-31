.class final synthetic Lcom/google/android/gms/internal/ads/zzdod;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzglu;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdoe;

.field private final synthetic zzb:D

.field private final synthetic zzc:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdoe;DZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdod;->zza:Lcom/google/android/gms/internal/ads/zzdoe;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzdod;->zzb:D

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzdod;->zzc:Z

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdod;->zza:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdod;->zzb:D

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzdod;->zzc:Z

    check-cast p1, Lcom/google/android/gms/internal/ads/zzapq;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdoe;->zzb(DZLcom/google/android/gms/internal/ads/zzapq;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
