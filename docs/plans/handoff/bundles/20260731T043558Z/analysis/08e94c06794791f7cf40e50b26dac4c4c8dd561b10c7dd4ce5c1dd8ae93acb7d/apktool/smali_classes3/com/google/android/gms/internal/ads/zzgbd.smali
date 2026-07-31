.class final synthetic Lcom/google/android/gms/internal/ads/zzgbd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgbf;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgbf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbd;->zza:Lcom/google/android/gms/internal/ads/zzgbf;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbd;->zza:Lcom/google/android/gms/internal/ads/zzgbf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgbf;->zzd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
