.class final synthetic Lcom/google/android/gms/internal/ads/zzgce;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgcf;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgch;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgcf;Lcom/google/android/gms/internal/ads/zzgch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgce;->zza:Lcom/google/android/gms/internal/ads/zzgcf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgce;->zzb:Lcom/google/android/gms/internal/ads/zzgch;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgce;->zza:Lcom/google/android/gms/internal/ads/zzgcf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgce;->zzb:Lcom/google/android/gms/internal/ads/zzgch;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcf;->zzd(Lcom/google/android/gms/internal/ads/zzgch;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
