.class final synthetic Lcom/google/android/gms/internal/ads/zzgmn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgmr;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzglt;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzglt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmn;->zza:Lcom/google/android/gms/internal/ads/zzglt;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzgms;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmn;->zza:Lcom/google/android/gms/internal/ads/zzglt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzglt;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzgls;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgmk;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgmk;-><init>(Lcom/google/android/gms/internal/ads/zzgms;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/ads/zzgls;)V

    return-object v1
.end method
