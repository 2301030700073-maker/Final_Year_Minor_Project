.class final synthetic Lcom/google/android/gms/internal/ads/zzgmp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgmr;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzglr;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzglr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmp;->zza:Lcom/google/android/gms/internal/ads/zzglr;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzgms;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmp;->zza:Lcom/google/android/gms/internal/ads/zzglr;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgmj;-><init>(Lcom/google/android/gms/internal/ads/zzgms;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/ads/zzglr;)V

    return-object v0
.end method
