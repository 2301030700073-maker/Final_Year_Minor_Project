.class public final Lcom/google/android/gms/internal/ads/zzfng;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgut;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/zzu;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfmy;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzflp;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcjk;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzgut;Lcom/google/android/gms/ads/internal/util/client/zzu;Lcom/google/android/gms/internal/ads/zzfmy;Lcom/google/android/gms/internal/ads/zzflp;Lcom/google/android/gms/internal/ads/zzcjk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfng;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfng;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfng;->zzc:Lcom/google/android/gms/internal/ads/zzgut;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfng;->zzd:Lcom/google/android/gms/ads/internal/util/client/zzu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfng;->zze:Lcom/google/android/gms/internal/ads/zzfmy;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfng;->zzf:Lcom/google/android/gms/internal/ads/zzflp;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfng;->zzg:Lcom/google/android/gms/internal/ads/zzcjk;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzfng;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzdbd;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzdbd;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflp;->zza()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgn;->zzd:Lcom/google/android/gms/internal/ads/zzbge;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfng;->zza:Landroid/content/Context;

    const/16 v1, 0xe

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzflc;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzflc;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzflc;->zza()Lcom/google/android/gms/internal/ads/zzflc;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfng;->zzd:Lcom/google/android/gms/ads/internal/util/client/zzu;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfng;->zzc:Lcom/google/android/gms/internal/ads/zzgut;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfng;->zze:Lcom/google/android/gms/internal/ads/zzfmy;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfng;->zzg:Lcom/google/android/gms/internal/ads/zzcjk;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/util/client/zzv;->zza()Lcom/google/android/gms/ads/internal/util/client/zzx;

    move-result-object v3

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfmx;

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfmx;-><init>(Lcom/google/android/gms/ads/internal/util/client/zzx;Lcom/google/android/gms/ads/internal/util/client/zzu;Lcom/google/android/gms/internal/ads/zzgut;Lcom/google/android/gms/internal/ads/zzfmy;Lcom/google/android/gms/internal/ads/zzcjk;)V

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfmx;->zza(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfng;->zzc:Lcom/google/android/gms/internal/ads/zzgut;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfnf;-><init>(Lcom/google/android/gms/internal/ads/zzfng;Ljava/lang/String;)V

    .line 4
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzgut;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 5
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfne;

    .line 6
    invoke-direct {p2, p0, v1, p3, p4}, Lcom/google/android/gms/internal/ads/zzfne;-><init>(Lcom/google/android/gms/internal/ads/zzfng;Lcom/google/android/gms/internal/ads/zzflc;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzdbd;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfng;->zzb:Ljava/util/concurrent/Executor;

    .line 7
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgui;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzguf;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method final synthetic zzc(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzjN:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzi(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfng;->zzg:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjk;->zzb()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbeu;->zzjO:Lcom/google/android/gms/internal/ads/zzbel;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfng;->zzd:Lcom/google/android/gms/ads/internal/util/client/zzu;

    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/util/client/zzu;->zzc(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/ads/internal/util/client/zzt;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfng;->zzd:Lcom/google/android/gms/ads/internal/util/client/zzu;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/util/client/zzu;->zzc(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/ads/internal/util/client/zzt;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method final synthetic zzd()Lcom/google/android/gms/ads/internal/util/client/zzu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfng;->zzd:Lcom/google/android/gms/ads/internal/util/client/zzu;

    return-object v0
.end method

.method final synthetic zze()Lcom/google/android/gms/internal/ads/zzflp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfng;->zzf:Lcom/google/android/gms/internal/ads/zzflp;

    return-object v0
.end method
