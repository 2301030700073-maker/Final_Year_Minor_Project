.class public final Lcom/google/android/gms/internal/ads/zzesj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeya;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfcu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfcu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesj;->zza:Lcom/google/android/gms/internal/ads/zzfcu;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesj;->zza:Lcom/google/android/gms/internal/ads/zzfcu;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzesi;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzesi;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfcu;->zza()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzesi;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzesi;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzesi;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzesi;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method
