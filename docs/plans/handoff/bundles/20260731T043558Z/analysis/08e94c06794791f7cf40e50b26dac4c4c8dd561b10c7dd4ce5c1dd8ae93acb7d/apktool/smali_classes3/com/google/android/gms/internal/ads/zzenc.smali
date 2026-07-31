.class public final Lcom/google/android/gms/internal/ads/zzenc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzena;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzena;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenc;->zza:Lcom/google/android/gms/internal/ads/zzena;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzena;)Lcom/google/android/gms/internal/ads/zzenc;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzenc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzenc;-><init>(Lcom/google/android/gms/internal/ads/zzena;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzena;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenc;->zza:Lcom/google/android/gms/internal/ads/zzena;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzena;

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenc;->zza:Lcom/google/android/gms/internal/ads/zzena;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzena;

    return-object v0
.end method
