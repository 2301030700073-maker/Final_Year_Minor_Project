.class final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzguf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    const-string v0, "SignalGeneratorImpl.initializeWebViewForSignalCollection"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcbj;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcbj;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v1, v0, [Landroid/util/Pair;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "sgf_reason"

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/util/Pair;

    const-string v3, "se"

    const-string v4, "query_g"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdFormat;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad_format"

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Landroid/util/Pair;

    const-string v3, "rtype"

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x3

    aput-object v2, v1, v0

    new-instance v0, Landroid/util/Pair;

    const-string v2, "scar"

    const-string v3, "true"

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x4

    aput-object v0, v1, v2

    new-instance v0, Landroid/util/Pair;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzO()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sgi_rn"

    invoke-direct {v0, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x5

    aput-object v0, v1, v3

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzA()Lcom/google/android/gms/internal/ads/zzdvn;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "sgf"

    .line 7
    invoke-static {v0, v3, v4, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zze(Lcom/google/android/gms/internal/ads/zzdvn;Lcom/google/android/gms/internal/ads/zzdvc;Ljava/lang/String;[Landroid/util/Pair;)V

    .line 8
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Failed to initialize webview for loading SDKCore. "

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbeu;->zzkJ:Lcom/google/android/gms/internal/ads/zzbel;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzN()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzO()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzkK:Lcom/google/android/gms/internal/ads/zzbel;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzx()V

    :cond_0
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;

    .line 2
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Initialized webview successfully for SDKCore."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbeu;->zzkJ:Lcom/google/android/gms/internal/ads/zzbel;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "se"

    const-string v3, "query_g"

    .line 6
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdFormat;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_format"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/util/Pair;

    const/4 v3, 0x6

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rtype"

    invoke-direct {v1, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Landroid/util/Pair;

    const-string v3, "scar"

    const-string v4, "true"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzO()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sgi_rn"

    invoke-direct {v1, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzA()Lcom/google/android/gms/internal/ads/zzdvn;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "sgs"

    .line 6
    invoke-static {v1, v3, v4, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zze(Lcom/google/android/gms/internal/ads/zzdvn;Lcom/google/android/gms/internal/ads/zzdvc;Ljava/lang/String;[Landroid/util/Pair;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzN()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
