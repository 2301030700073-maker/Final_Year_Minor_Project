.class public final Lcom/google/android/gms/internal/ads/zzfqa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfpt;


# static fields
.field private static zza:Lcom/google/android/gms/internal/ads/zzfqa;


# instance fields
.field private zzb:F

.field private zzc:Lcom/google/android/gms/internal/ads/zzfpo;

.field private zzd:Lcom/google/android/gms/internal/ads/zzfps;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfpp;Lcom/google/android/gms/internal/ads/zzfpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzb:F

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfqa;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqa;->zza:Lcom/google/android/gms/internal/ads/zzfqa;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfpl;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfpp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfpp;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfqa;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfqa;-><init>(Lcom/google/android/gms/internal/ads/zzfpp;Lcom/google/android/gms/internal/ads/zzfpl;)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzfqa;->zza:Lcom/google/android/gms/internal/ads/zzfqa;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqa;->zza:Lcom/google/android/gms/internal/ads/zzfqa;

    return-object v0
.end method


# virtual methods
.method public final zzb(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfpk;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfpo;

    .line 2
    invoke-direct {v2, v1, p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzfpo;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfpk;Lcom/google/android/gms/internal/ads/zzfqa;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzc:Lcom/google/android/gms/internal/ads/zzfpo;

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpr;->zza()Lcom/google/android/gms/internal/ads/zzfpr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfpu;->zzg(Lcom/google/android/gms/internal/ads/zzfpt;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpr;->zza()Lcom/google/android/gms/internal/ads/zzfpr;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpu;->zze()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrc;->zzb()Lcom/google/android/gms/internal/ads/zzfrc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfrc;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzc:Lcom/google/android/gms/internal/ads/zzfpo;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpo;->zza()V

    return-void
.end method

.method public final zzd(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrc;->zzb()Lcom/google/android/gms/internal/ads/zzfrc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfrc;->zzc()V

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrc;->zzb()Lcom/google/android/gms/internal/ads/zzfrc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfrc;->zze()V

    return-void
.end method

.method public final zze()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrc;->zzb()Lcom/google/android/gms/internal/ads/zzfrc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfrc;->zzd()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpr;->zza()Lcom/google/android/gms/internal/ads/zzfpr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpu;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzc:Lcom/google/android/gms/internal/ads/zzfpo;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpo;->zzb()V

    return-void
.end method

.method public final zzf(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzb:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzd:Lcom/google/android/gms/internal/ads/zzfps;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfps;->zza()Lcom/google/android/gms/internal/ads/zzfps;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzd:Lcom/google/android/gms/internal/ads/zzfps;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzd:Lcom/google/android/gms/internal/ads/zzfps;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfps;->zzf()Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfoy;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoy;->zzg()Lcom/google/android/gms/internal/ads/zzfqi;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfqi;->zzo(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzg()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfqa;->zzb:F

    return v0
.end method
