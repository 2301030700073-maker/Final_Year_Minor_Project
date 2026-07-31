.class final Lcom/google/android/gms/internal/ads/zzawq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfti;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfrn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaws;Lcom/google/android/gms/internal/ads/zzfrn;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawq;->zza:Lcom/google/android/gms/internal/ads/zzfrn;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/io/File;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zza:Lcom/google/android/gms/internal/ads/zzfrn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfrn;->zza(Ljava/io/File;)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
