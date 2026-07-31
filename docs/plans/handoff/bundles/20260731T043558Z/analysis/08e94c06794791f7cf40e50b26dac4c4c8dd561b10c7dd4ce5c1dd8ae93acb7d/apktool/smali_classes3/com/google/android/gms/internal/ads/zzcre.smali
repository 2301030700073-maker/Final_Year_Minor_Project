.class public final Lcom/google/android/gms/internal/ads/zzcre;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcrd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcrd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcre;->zza:Lcom/google/android/gms/internal/ads/zzcrd;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcrd;)Lcom/google/android/gms/internal/ads/zzcre;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcre;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcre;-><init>(Lcom/google/android/gms/internal/ads/zzcrd;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcre;->zza:Lcom/google/android/gms/internal/ads/zzcrd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrd;->zza()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcre;->zza:Lcom/google/android/gms/internal/ads/zzcrd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrd;->zza()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method
