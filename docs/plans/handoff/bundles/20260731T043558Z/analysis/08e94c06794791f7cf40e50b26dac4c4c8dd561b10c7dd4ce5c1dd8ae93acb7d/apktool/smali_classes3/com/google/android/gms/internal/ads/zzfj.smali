.class public final Lcom/google/android/gms/internal/ads/zzfj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzgpe;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzfc;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzfe;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzfi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfa;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzfe;Lcom/google/android/gms/internal/ads/zzfi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgpe;->zzq(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpe;->zzi()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfj;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfj;->zzc:Lcom/google/android/gms/internal/ads/zzfe;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfj;->zzd:Lcom/google/android/gms/internal/ads/zzfi;

    return-void
.end method
