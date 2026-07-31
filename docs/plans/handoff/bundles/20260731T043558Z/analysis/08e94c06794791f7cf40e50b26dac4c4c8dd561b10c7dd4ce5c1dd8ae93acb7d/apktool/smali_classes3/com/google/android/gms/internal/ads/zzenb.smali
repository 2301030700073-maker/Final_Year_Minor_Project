.class public final Lcom/google/android/gms/internal/ads/zzenb;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenb;->zza:Lcom/google/android/gms/internal/ads/zzena;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzena;)Lcom/google/android/gms/internal/ads/zzenb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzenb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzenb;-><init>(Lcom/google/android/gms/internal/ads/zzena;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbfp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenb;->zza:Lcom/google/android/gms/internal/ads/zzena;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzena;->zza()Lcom/google/android/gms/internal/ads/zzbfp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenb;->zza:Lcom/google/android/gms/internal/ads/zzena;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzena;->zza()Lcom/google/android/gms/internal/ads/zzbfp;

    move-result-object v0

    return-object v0
.end method
