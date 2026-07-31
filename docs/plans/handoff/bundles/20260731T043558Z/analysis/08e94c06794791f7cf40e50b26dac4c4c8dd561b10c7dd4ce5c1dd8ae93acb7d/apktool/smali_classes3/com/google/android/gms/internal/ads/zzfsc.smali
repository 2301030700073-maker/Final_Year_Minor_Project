.class public final Lcom/google/android/gms/internal/ads/zzfsc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsc;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsc;->zzb:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfso;->zza()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsc;->zza:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfsm;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsm;

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfsm;->zzc(I)Lcom/google/android/gms/internal/ads/zzfsm;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfsl;->zza()Lcom/google/android/gms/internal/ads/zzfsk;

    move-result-object v3

    .line 5
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzfsk;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsk;

    .line 6
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzfsk;->zzb(I)Lcom/google/android/gms/internal/ads/zzfsk;

    .line 7
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfsm;->zzb(Lcom/google/android/gms/internal/ads/zzfsk;)Lcom/google/android/gms/internal/ads/zzfsm;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfso;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsc;->zzb:Landroid/os/Looper;

    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfsd;

    .line 10
    invoke-direct {v2, v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzfsd;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzfso;)V

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zza()V

    return-void
.end method
