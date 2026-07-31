.class public Lcom/google/android/gms/internal/ads/zzefe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzeer;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefe;->zza:Lcom/google/android/gms/internal/ads/zzeer;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefe;->zzb:Lcom/google/android/gms/ads/internal/util/zzg;

    return-void
.end method


# virtual methods
.method protected final zzf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefe;->zzb:Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzx()Z

    move-result v0

    return v0
.end method
