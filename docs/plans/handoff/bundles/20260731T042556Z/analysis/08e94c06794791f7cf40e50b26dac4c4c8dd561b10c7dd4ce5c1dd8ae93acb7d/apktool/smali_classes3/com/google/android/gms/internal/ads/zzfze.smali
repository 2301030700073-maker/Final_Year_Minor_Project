.class final synthetic Lcom/google/android/gms/internal/ads/zzfze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfzh;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfzh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfze;->zza:Lcom/google/android/gms/internal/ads/zzfzh;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfze;->zza:Lcom/google/android/gms/internal/ads/zzfzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfzh;->zzd()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
