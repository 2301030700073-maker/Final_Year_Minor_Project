.class public final Lcom/google/android/gms/internal/ads/zzdjo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdge;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzczn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzczn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zza:Lcom/google/android/gms/internal/ads/zzczn;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 0

    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zza:Lcom/google/android/gms/internal/ads/zzczn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzczn;->zzc(Landroid/content/Context;)V

    return-void
.end method
