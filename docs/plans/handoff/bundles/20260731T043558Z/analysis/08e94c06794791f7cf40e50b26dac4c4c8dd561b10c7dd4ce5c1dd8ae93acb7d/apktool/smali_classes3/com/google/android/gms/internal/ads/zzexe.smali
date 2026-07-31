.class final synthetic Lcom/google/android/gms/internal/ads/zzexe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtp;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzexg;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzexg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexe;->zza:Lcom/google/android/gms/internal/ads/zzexg;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexe;->zza:Lcom/google/android/gms/internal/ads/zzexg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzexg;->zzc()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
