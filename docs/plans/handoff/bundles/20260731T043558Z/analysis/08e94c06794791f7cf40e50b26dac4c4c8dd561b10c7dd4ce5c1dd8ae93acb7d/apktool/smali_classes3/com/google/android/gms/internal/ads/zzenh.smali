.class public final Lcom/google/android/gms/internal/ads/zzenh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdjd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdjd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenh;->zza:Lcom/google/android/gms/internal/ads/zzdjd;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzend;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzenf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzene;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzene;-><init>(Lcom/google/android/gms/internal/ads/zzenh;Lcom/google/android/gms/internal/ads/zzffu;)V

    invoke-direct {p3, p0, v0}, Lcom/google/android/gms/internal/ads/zzenf;-><init>(Lcom/google/android/gms/internal/ads/zzenh;Lcom/google/android/gms/internal/ads/zzdjl;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcue;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcue;-><init>(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzenh;->zza:Lcom/google/android/gms/internal/ads/zzdjd;

    .line 2
    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzdjd;->zzd(Lcom/google/android/gms/internal/ads/zzcue;Lcom/google/android/gms/internal/ads/zzdia;)Lcom/google/android/gms/internal/ads/zzdhx;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeng;

    .line 3
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzeng;-><init>(Lcom/google/android/gms/internal/ads/zzenh;Lcom/google/android/gms/internal/ads/zzdhx;)V

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzend;->zzd(Lcom/google/android/gms/ads/internal/zzg;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhx;->zzh()Lcom/google/android/gms/internal/ads/zzdhw;

    move-result-object p1

    return-object p1
.end method
