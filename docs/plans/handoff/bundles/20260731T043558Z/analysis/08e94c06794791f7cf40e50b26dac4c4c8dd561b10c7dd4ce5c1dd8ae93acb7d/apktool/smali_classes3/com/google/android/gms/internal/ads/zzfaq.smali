.class public final Lcom/google/android/gms/internal/ads/zzfaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeya;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcbj;

.field private final zzb:Z

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgus;

.field private final zze:I

.field private final zzf:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcbj;ZLcom/google/android/gms/internal/ads/zzcaz;Lcom/google/android/gms/internal/ads/zzgus;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zza:Lcom/google/android/gms/internal/ads/zzcbj;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zzb:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zzd:Lcom/google/android/gms/internal/ads/zzgus;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zze:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zzf:I

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzhA:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zzb:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfar;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfar;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 1
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zzf:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzhC:Lcom/google/android/gms/internal/ads/zzbel;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zze:I

    .line 5
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfar;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfar;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 6
    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zzd:Lcom/google/android/gms/internal/ads/zzgus;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfap;->zza:Lcom/google/android/gms/internal/ads/zzfap;

    .line 7
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgui;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhj;->zzb:Lcom/google/android/gms/internal/ads/zzbge;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    invoke-static {v0, v2, v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzgui;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfao;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzfao;-><init>(Lcom/google/android/gms/internal/ads/zzfaq;)V

    const-class v3, Ljava/lang/Exception;

    .line 11
    invoke-static {v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgui;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfar;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfar;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method final synthetic zzc(Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/zzfar;
    .locals 2

    .line 1
    const-string v0, "TrustlessTokenSignal"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zza:Lcom/google/android/gms/internal/ads/zzcbj;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcbj;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfar;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfar;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
