.class public final Lcom/google/android/gms/internal/ads/zzarx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final synthetic zza:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzarx;->zza:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I[I)Lcom/google/android/gms/internal/ads/zzaru;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzarx;->zza:I

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzarv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzarv;-><init>()V

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzary;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzary;-><init>(I[I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzarw;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzarw;-><init>(Lcom/google/android/gms/internal/ads/zzary;)V

    return-object p1
.end method
