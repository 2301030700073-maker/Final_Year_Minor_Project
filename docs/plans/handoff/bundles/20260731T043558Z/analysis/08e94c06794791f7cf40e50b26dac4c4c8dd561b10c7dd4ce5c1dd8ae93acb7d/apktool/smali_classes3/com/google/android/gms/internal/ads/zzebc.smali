.class public final Lcom/google/android/gms/internal/ads/zzebc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeci;


# static fields
.field private static final zzh:Ljava/util/regex/Pattern;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzead;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgus;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfgn;

.field private final zzd:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zze:Lcom/google/android/gms/internal/ads/zzeev;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzflm;

.field private final zzg:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Received error HTTP response code: (.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzebc;->zzh:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzead;Lcom/google/android/gms/internal/ads/zzgus;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzeev;Lcom/google/android/gms/internal/ads/zzflm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzg:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzc:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzebc;->zza:Lcom/google/android/gms/internal/ads/zzead;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzb:Lcom/google/android/gms/internal/ads/zzgus;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzebc;->zze:Lcom/google/android/gms/internal/ads/zzeev;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzf:Lcom/google/android/gms/internal/ads/zzflm;

    return-void
.end method

.method static synthetic zzd()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzebc;->zzh:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbxj;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzg:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebc;->zza:Lcom/google/android/gms/internal/ads/zzead;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzead;->zza(Lcom/google/android/gms/internal/ads/zzbxj;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const/16 v1, 0xb

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzflc;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzflc;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfll;->zzb(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzflc;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzebb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzebb;-><init>(Lcom/google/android/gms/internal/ads/zzebc;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzb:Lcom/google/android/gms/internal/ads/zzgus;

    .line 4
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeu;->zzgh:Lcom/google/android/gms/internal/ads/zzbel;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeu;->zzgi:Lcom/google/android/gms/internal/ads/zzbel;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    invoke-static {p1, v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgui;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const-class v1, Ljava/util/concurrent/TimeoutException;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzeba;->zza:Lcom/google/android/gms/internal/ads/zzeba;

    .line 10
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcbv;->zzg:Lcom/google/android/gms/internal/ads/zzgus;

    .line 11
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgui;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzf:Lcom/google/android/gms/internal/ads/zzflm;

    .line 12
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfll;->zzd(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzflc;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeaz;

    .line 13
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeaz;-><init>(Lcom/google/android/gms/internal/ads/zzebc;)V

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcbv;->zzg:Lcom/google/android/gms/internal/ads/zzgus;

    .line 13
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgui;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzguf;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzeck;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfgc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzc:Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfgc;-><init>(Lcom/google/android/gms/internal/ads/zzfgn;)V

    new-instance v2, Ljava/io/InputStreamReader;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeck;->zza()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeck;->zzb()Lcom/google/android/gms/internal/ads/zzbxj;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbxj;->zzm:Landroid/os/Bundle;

    .line 4
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzfge;->zza(Ljava/io/Reader;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfge;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfgf;-><init>(Lcom/google/android/gms/internal/ads/zzfgc;Lcom/google/android/gms/internal/ads/zzfge;)V

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzeev;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebc;->zze:Lcom/google/android/gms/internal/ads/zzeev;

    return-object v0
.end method
