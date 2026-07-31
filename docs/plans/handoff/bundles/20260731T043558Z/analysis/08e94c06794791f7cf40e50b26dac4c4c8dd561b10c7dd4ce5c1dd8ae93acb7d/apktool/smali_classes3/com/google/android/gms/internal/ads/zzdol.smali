.class final synthetic Lcom/google/android/gms/internal/ads/zzdol;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcep;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcca;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcca;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdol;->zza:Lcom/google/android/gms/internal/ads/zzcca;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mediaUrl"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdol;->zza:Lcom/google/android/gms/internal/ads/zzcca;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcca;->zzc(Ljava/lang/Object;)Z

    return-void
.end method
