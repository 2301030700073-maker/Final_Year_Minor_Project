.class final synthetic Lcom/google/android/gms/internal/ads/zzxn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgme;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzyi;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzxt;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzyi;Lcom/google/android/gms/internal/ads/zzxt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxn;->zza:Lcom/google/android/gms/internal/ads/zzyi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxn;->zzb:Lcom/google/android/gms/internal/ads/zzxt;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxn;->zza:Lcom/google/android/gms/internal/ads/zzyi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxn;->zzb:Lcom/google/android/gms/internal/ads/zzxt;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzyi;->zzk(Lcom/google/android/gms/internal/ads/zzxt;Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result p1

    return p1
.end method
