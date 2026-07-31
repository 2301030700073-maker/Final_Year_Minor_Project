.class public final Lcom/google/android/gms/internal/ads/zzfam;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfaf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfaf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfam;->zza:Lcom/google/android/gms/internal/ads/zzfaf;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzfaf;)Lcom/google/android/gms/internal/ads/zzfam;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfam;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfam;-><init>(Lcom/google/android/gms/internal/ads/zzfaf;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfam;->zza:Lcom/google/android/gms/internal/ads/zzfaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfaf;->zzj()I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfam;->zza()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
