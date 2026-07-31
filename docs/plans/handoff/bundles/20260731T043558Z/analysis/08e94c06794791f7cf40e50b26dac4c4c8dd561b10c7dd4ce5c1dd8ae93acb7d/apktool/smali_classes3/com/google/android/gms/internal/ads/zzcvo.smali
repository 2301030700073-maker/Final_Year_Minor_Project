.class public final Lcom/google/android/gms/internal/ads/zzcvo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zza;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcvs;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfgn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcvs;Lcom/google/android/gms/internal/ads/zzfgn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvo;->zza:Lcom/google/android/gms/internal/ads/zzcvs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvo;->zzb:Lcom/google/android/gms/internal/ads/zzfgn;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvo;->zzb:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvo;->zza:Lcom/google/android/gms/internal/ads/zzcvs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfgn;->zzg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcvs;->zza(Ljava/lang/String;)V

    return-void
.end method
