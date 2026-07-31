.class final synthetic Lcom/google/android/gms/internal/ads/zzcow;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcox;

.field private final synthetic zzb:Ljava/lang/Throwable;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfng;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:Lcom/google/android/gms/ads/internal/util/client/zzv;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcox;Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfng;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcow;->zza:Lcom/google/android/gms/internal/ads/zzcox;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcow;->zzb:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcow;->zzc:Lcom/google/android/gms/internal/ads/zzfng;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcow;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcow;->zze:Lcom/google/android/gms/ads/internal/util/client/zzv;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzlp:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcow;->zzb:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcow;->zza:Lcom/google/android/gms/internal/ads/zzcox;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzcox;->zzd:Lcom/google/android/gms/internal/ads/zzcpe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpe;->zzi()Landroid/content/Context;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbwf;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbwh;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzcpe;->zzb:Lcom/google/android/gms/internal/ads/zzbwh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcpe;->zzb:Lcom/google/android/gms/internal/ads/zzbwh;

    const-string v2, "AttributionReporting.registerSourceAndPingClickUrl"

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbwh;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzcox;->zzd:Lcom/google/android/gms/internal/ads/zzcpe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpe;->zzi()Landroid/content/Context;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbwh;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzcpe;->zza:Lcom/google/android/gms/internal/ads/zzbwh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcpe;->zza:Lcom/google/android/gms/internal/ads/zzbwh;

    const-string v2, "AttributionReportingSampled.registerSourceAndPingClickUrl"

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbwh;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcow;->zze:Lcom/google/android/gms/ads/internal/util/client/zzv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcow;->zzd:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcow;->zzc:Lcom/google/android/gms/internal/ads/zzfng;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v1, v0, v3, v3}, Lcom/google/android/gms/internal/ads/zzfng;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzdbd;)V

    return-void
.end method
