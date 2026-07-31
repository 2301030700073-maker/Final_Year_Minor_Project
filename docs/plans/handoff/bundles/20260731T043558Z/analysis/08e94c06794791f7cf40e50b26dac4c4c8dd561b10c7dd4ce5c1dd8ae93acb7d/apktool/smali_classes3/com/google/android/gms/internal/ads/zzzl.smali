.class final Lcom/google/android/gms/internal/ads/zzzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzzk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzzk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zza:Lcom/google/android/gms/internal/ads/zzzk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zza:Lcom/google/android/gms/internal/ads/zzzk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzzk;->zzo()V

    return-void
.end method
