.class final synthetic Lcom/google/android/gms/internal/ads/zzvc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdg;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzvf;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdg;Lcom/google/android/gms/internal/ads/zzvf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zzdg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzb:Lcom/google/android/gms/internal/ads/zzvf;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zzdg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzb:Lcom/google/android/gms/internal/ads/zzvf;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdg;->zza(Ljava/lang/Object;)V

    return-void
.end method
