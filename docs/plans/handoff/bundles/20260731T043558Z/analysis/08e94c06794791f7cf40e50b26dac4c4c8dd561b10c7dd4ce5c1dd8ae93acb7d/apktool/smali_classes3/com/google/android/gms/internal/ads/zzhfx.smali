.class public final Lcom/google/android/gms/internal/ads/zzhfx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhsz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhla;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhla;Lcom/google/android/gms/internal/ads/zzhsz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhfx;->zzb:Lcom/google/android/gms/internal/ads/zzhla;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhfx;->zza:Lcom/google/android/gms/internal/ads/zzhsz;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhla;)Lcom/google/android/gms/internal/ads/zzhfx;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhfx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhla;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhgi;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzhfx;-><init>(Lcom/google/android/gms/internal/ads/zzhla;Lcom/google/android/gms/internal/ads/zzhsz;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhla;)Lcom/google/android/gms/internal/ads/zzhfx;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhfx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhla;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhgi;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzhfx;-><init>(Lcom/google/android/gms/internal/ads/zzhla;Lcom/google/android/gms/internal/ads/zzhsz;)V

    return-object v0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzhla;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfx;->zzb:Lcom/google/android/gms/internal/ads/zzhla;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhsz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfx;->zza:Lcom/google/android/gms/internal/ads/zzhsz;

    return-object v0
.end method
