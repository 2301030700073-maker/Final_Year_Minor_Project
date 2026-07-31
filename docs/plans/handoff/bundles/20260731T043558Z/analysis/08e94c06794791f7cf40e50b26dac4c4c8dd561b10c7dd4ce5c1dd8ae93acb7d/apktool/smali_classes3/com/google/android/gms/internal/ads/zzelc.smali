.class public final Lcom/google/android/gms/internal/ads/zzelc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfks;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcyq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfnc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfng;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzctr;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzekv;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzehp;

.field private final zzj:Landroid/content/Context;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzflm;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzekf;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzdvc;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfks;Lcom/google/android/gms/internal/ads/zzekv;Lcom/google/android/gms/internal/ads/zzcyq;Lcom/google/android/gms/internal/ads/zzfnc;Lcom/google/android/gms/internal/ads/zzfng;Lcom/google/android/gms/internal/ads/zzctr;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzehp;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzekf;Lcom/google/android/gms/internal/ads/zzdvc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzj:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzelc;->zza:Lcom/google/android/gms/internal/ads/zzfks;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzh:Lcom/google/android/gms/internal/ads/zzekv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzb:Lcom/google/android/gms/internal/ads/zzcyq;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzc:Lcom/google/android/gms/internal/ads/zzfnc;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzd:Lcom/google/android/gms/internal/ads/zzfng;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzg:Lcom/google/android/gms/internal/ads/zzctr;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzelc;->zze:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzf:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzi:Lcom/google/android/gms/internal/ads/zzehp;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzk:Lcom/google/android/gms/internal/ads/zzflm;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzl:Lcom/google/android/gms/internal/ads/zzekf;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzm:Lcom/google/android/gms/internal/ads/zzdvc;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzfgf;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzgg:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "No fill."

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const-string v0, "No ad config."

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfgf;->zzb:Lcom/google/android/gms/internal/ads/zzfge;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfge;->zzb:Lcom/google/android/gms/internal/ads/zzffx;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzffx;->zzf:I

    if-eqz v2, :cond_3

    const/16 v3, 0xc8

    const/16 v4, 0x12c

    if-lt v2, v3, :cond_1

    if-ge v2, v4, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbeu;->zzgf:Lcom/google/android/gms/internal/ads/zzbel;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_1
    if-lt v2, v4, :cond_2

    const/16 v0, 0x190

    if-ge v2, v0, :cond_2

    const-string v1, "No location header to follow redirect or too many redirects."

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x23

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Received error HTTP response code: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 6
    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzffx;->zzj:Lcom/google/android/gms/internal/ads/zzffw;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzffw;->zza()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfgf;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzcv:Lcom/google/android/gms/internal/ads/zzbel;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgf;->zzb:Lcom/google/android/gms/internal/ads/zzfge;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfge;->zzd:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzm:Lcom/google/android/gms/internal/ads/zzdvc;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdvc;->zze()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzcw:Lcom/google/android/gms/internal/ads/zzbel;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzm:Lcom/google/android/gms/internal/ads/zzdvc;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvc;->zze()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzduq;->zzu:Lcom/google/android/gms/internal/ads/zzduq;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzduq;->zza()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 11
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzelc;->zzb(Lcom/google/android/gms/internal/ads/zzfgf;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzi:Lcom/google/android/gms/internal/ads/zzehp;

    .line 12
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfgf;->zzb:Lcom/google/android/gms/internal/ads/zzfge;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzfge;->zzb:Lcom/google/android/gms/internal/ads/zzffx;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzehp;->zza(Lcom/google/android/gms/internal/ads/zzffx;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbeu;->zzjh:Lcom/google/android/gms/internal/ads/zzbel;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v4

    .line 14
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_3

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzffx;->zzf:I

    if-eqz v4, :cond_3

    const/16 v6, 0xc8

    if-lt v4, v6, :cond_2

    const/16 v6, 0x12c

    if-lt v4, v6, :cond_3

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekz;

    .line 46
    invoke-direct {p1, v5, v0}, Lcom/google/android/gms/internal/ads/zzekz;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    goto/16 :goto_3

    :cond_3
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzffx;->zzq:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbeu;->zzee:Lcom/google/android/gms/internal/ads/zzbel;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v4

    .line 16
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzfge;->zza:Ljava/util/List;

    .line 25
    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzehp;->zzc(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 44
    :cond_4
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzfge;->zza:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzffu;

    .line 18
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzehp;->zzb(Lcom/google/android/gms/internal/ads/zzffu;)V

    .line 19
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzffu;->zza:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzg:Lcom/google/android/gms/internal/ads/zzctr;

    .line 20
    iget v10, v4, Lcom/google/android/gms/internal/ads/zzffu;->zzb:I

    .line 21
    invoke-interface {v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzctr;->zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzehk;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 22
    invoke-interface {v8, p1, v4}, Lcom/google/android/gms/internal/ads/zzehk;->zza(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_0

    :cond_6
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 23
    invoke-static {v6, v9, v9}, Lcom/google/android/gms/internal/ads/zzfhp;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v9

    .line 24
    invoke-virtual {v1, v4, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzehp;->zze(Lcom/google/android/gms/internal/ads/zzffu;JLcom/google/android/gms/ads/internal/client/zze;)V

    goto :goto_0

    .line 25
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzb:Lcom/google/android/gms/internal/ads/zzcyq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzd:Lcom/google/android/gms/internal/ads/zzfng;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzc:Lcom/google/android/gms/internal/ads/zzfnc;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcpi;

    .line 26
    invoke-direct {v7, p1, v1, v4}, Lcom/google/android/gms/internal/ads/zzcpi;-><init>(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzfng;Lcom/google/android/gms/internal/ads/zzfnc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelc;->zze:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/internal/ads/zzdem;->zzq(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzffx;->zzr:I

    if-le v0, v6, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzl:Lcom/google/android/gms/internal/ads/zzekf;

    .line 45
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzekf;->zza(Lcom/google/android/gms/internal/ads/zzfgf;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    goto/16 :goto_3

    .line 27
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzelc;->zzb(Lcom/google/android/gms/internal/ads/zzfgf;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzelc;->zza:Lcom/google/android/gms/internal/ads/zzfks;

    .line 28
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfkm;->zzn:Lcom/google/android/gms/internal/ads/zzfkm;

    .line 29
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzekz;

    .line 30
    invoke-direct {v6, v5, v0}, Lcom/google/android/gms/internal/ads/zzekz;-><init>(ILjava/lang/String;)V

    .line 31
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgui;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 32
    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzfkd;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfkk;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkj;->zzi()Lcom/google/android/gms/internal/ads/zzfjz;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzh:Lcom/google/android/gms/internal/ads/zzekv;

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzekv;->zza()V

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfge;->zza:Ljava/util/List;

    .line 35
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzffu;

    .line 36
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzffu;->zza:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzg:Lcom/google/android/gms/internal/ads/zzctr;

    .line 37
    iget v10, v6, Lcom/google/android/gms/internal/ads/zzffu;->zzb:I

    .line 38
    invoke-interface {v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzctr;->zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzehk;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 39
    invoke-interface {v9, p1, v6}, Lcom/google/android/gms/internal/ads/zzehk;->zza(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;)Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v7, Lcom/google/android/gms/internal/ads/zzfkm;->zzo:Lcom/google/android/gms/internal/ads/zzfkm;

    .line 40
    invoke-virtual {v3, v7, v0}, Lcom/google/android/gms/internal/ads/zzfkk;->zza(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v7, v7, 0xf

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    add-int/2addr v7, v10

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "render-config-"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfkj;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/internal/ads/zzelb;

    invoke-direct {v7, p0, v6, p1, v9}, Lcom/google/android/gms/internal/ads/zzelb;-><init>(Lcom/google/android/gms/internal/ads/zzelc;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzehk;)V

    const-class v6, Ljava/lang/Throwable;

    .line 42
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzfkj;->zzg(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgtq;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkj;->zzi()Lcom/google/android/gms/internal/ads/zzfjz;

    move-result-object v0

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 44
    :cond_b
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzela;

    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/ads/zzela;-><init>(Lcom/google/android/gms/internal/ads/zzekv;)V

    invoke-interface {v0, p1, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object p1, v0

    :goto_3
    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzehk;Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzj:Landroid/content/Context;

    const/16 v0, 0xc

    invoke-static {p4, v0}, Lcom/google/android/gms/internal/ads/zzflc;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzflc;

    move-result-object p4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzffu;->zzE:Ljava/lang/String;

    .line 2
    invoke-interface {p4, v0}, Lcom/google/android/gms/internal/ads/zzflc;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflc;

    .line 3
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzflc;->zza()Lcom/google/android/gms/internal/ads/zzflc;

    .line 4
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzehk;->zzb(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzffu;->zzR:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzf:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    invoke-static {p3, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgui;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzc:Lcom/google/android/gms/internal/ads/zzfnc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzh:Lcom/google/android/gms/internal/ads/zzekv;

    .line 6
    invoke-virtual {v1, p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzekv;->zze(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfnc;)Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzelc;->zzk:Lcom/google/android/gms/internal/ads/zzflm;

    .line 7
    invoke-static {p3, p1, p4}, Lcom/google/android/gms/internal/ads/zzfll;->zzd(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzflc;)V

    return-object p3
.end method
