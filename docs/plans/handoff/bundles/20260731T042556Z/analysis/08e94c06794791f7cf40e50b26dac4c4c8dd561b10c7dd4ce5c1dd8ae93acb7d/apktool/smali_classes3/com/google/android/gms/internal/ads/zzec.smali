.class final synthetic Lcom/google/android/gms/internal/ads/zzec;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzed;

.field private final synthetic zzb:Landroid/content/Context;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzed;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzec;->zza:Lcom/google/android/gms/internal/ads/zzed;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzec;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzec;->zza:Lcom/google/android/gms/internal/ads/zzed;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzed;->zza:Lcom/google/android/gms/internal/ads/zzee;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzec;->zzb:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzee;->zzd(Landroid/content/Context;)V

    return-void
.end method
