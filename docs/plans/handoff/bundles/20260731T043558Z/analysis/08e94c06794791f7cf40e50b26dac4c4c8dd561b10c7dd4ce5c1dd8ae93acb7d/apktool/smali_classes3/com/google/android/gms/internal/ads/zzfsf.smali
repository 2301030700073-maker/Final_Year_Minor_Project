.class final synthetic Lcom/google/android/gms/internal/ads/zzfsf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfsi;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfsi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsf;->zza:Lcom/google/android/gms/internal/ads/zzfsi;

    return-void
.end method


# virtual methods
.method public final synthetic onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsf;->zza:Lcom/google/android/gms/internal/ads/zzfsi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfsi;->zzd(Ljava/lang/Exception;)V

    return-void
.end method
