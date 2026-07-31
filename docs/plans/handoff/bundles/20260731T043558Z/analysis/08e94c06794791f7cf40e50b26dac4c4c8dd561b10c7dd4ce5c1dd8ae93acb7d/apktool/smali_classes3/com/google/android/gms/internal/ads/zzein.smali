.class final synthetic Lcom/google/android/gms/internal/ads/zzein;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzctm;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfhl;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfhl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzein;->zza:Lcom/google/android/gms/internal/ads/zzfhl;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/ads/internal/client/zzed;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzein;->zza:Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhl;->zzt()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v0

    return-object v0
.end method
