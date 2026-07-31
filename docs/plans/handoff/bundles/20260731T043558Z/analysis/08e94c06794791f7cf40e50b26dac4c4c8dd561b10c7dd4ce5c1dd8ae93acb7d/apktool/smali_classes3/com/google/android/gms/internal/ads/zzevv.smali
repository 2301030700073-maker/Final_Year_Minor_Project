.class public final Lcom/google/android/gms/internal/ads/zzevv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzevv;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzevv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzevv;-><init>(Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method

.method public static final zzc()Lcom/google/android/gms/internal/ads/zzevt;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc()Lcom/google/android/gms/internal/ads/zzgus;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgus;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzevt;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzevt;-><init>(Lcom/google/android/gms/internal/ads/zzgus;)V

    return-object v1
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzevv;->zzc()Lcom/google/android/gms/internal/ads/zzevt;

    move-result-object v0

    return-object v0
.end method
