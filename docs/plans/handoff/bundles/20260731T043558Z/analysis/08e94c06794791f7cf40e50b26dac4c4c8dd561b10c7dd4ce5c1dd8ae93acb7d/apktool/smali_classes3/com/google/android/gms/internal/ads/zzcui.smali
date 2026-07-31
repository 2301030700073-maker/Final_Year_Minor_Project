.class public final Lcom/google/android/gms/internal/ads/zzcui;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcue;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcui;->zza:Lcom/google/android/gms/internal/ads/zzcue;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcue;)Lcom/google/android/gms/internal/ads/zzcui;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcui;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcui;-><init>(Lcom/google/android/gms/internal/ads/zzcue;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzcue;)Lcom/google/android/gms/internal/ads/zzfgf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcue;->zza()Lcom/google/android/gms/internal/ads/zzfgf;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzifp;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfgf;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfgf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcui;->zza:Lcom/google/android/gms/internal/ads/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcui;->zzd(Lcom/google/android/gms/internal/ads/zzcue;)Lcom/google/android/gms/internal/ads/zzfgf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcui;->zza:Lcom/google/android/gms/internal/ads/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcui;->zzd(Lcom/google/android/gms/internal/ads/zzcue;)Lcom/google/android/gms/internal/ads/zzfgf;

    move-result-object v0

    return-object v0
.end method
