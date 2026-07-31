.class public final Lcom/google/android/gms/internal/ads/zzbqt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbqf;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbqh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbqi;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbqb;

.field private final zzd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbqb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqi;Lcom/google/android/gms/internal/ads/zzbqh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqt;->zzc:Lcom/google/android/gms/internal/ads/zzbqb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqt;->zzd:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbqt;->zzb:Lcom/google/android/gms/internal/ads/zzbqi;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbqt;->zza:Lcom/google/android/gms/internal/ads/zzbqh;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbqt;->zzb(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcca;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcca;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqt;->zzc:Lcom/google/android/gms/internal/ads/zzbqb;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbqb;->zzb(Lcom/google/android/gms/internal/ads/zzaxa;)Lcom/google/android/gms/internal/ads/zzbpv;

    move-result-object v1

    const-string v2, "callJs > getEngine: Promise created"

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbqq;

    .line 5
    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbqq;-><init>(Lcom/google/android/gms/internal/ads/zzbqt;Lcom/google/android/gms/internal/ads/zzbpv;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcca;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbqr;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbqr;-><init>(Lcom/google/android/gms/internal/ads/zzbqt;Lcom/google/android/gms/internal/ads/zzcca;Lcom/google/android/gms/internal/ads/zzbpv;)V

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcch;->zze(Lcom/google/android/gms/internal/ads/zzcce;Lcom/google/android/gms/internal/ads/zzccc;)V

    return-object v0
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbpv;Lcom/google/android/gms/internal/ads/zzbqc;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcca;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzblw;->zzo:Lcom/google/android/gms/internal/ads/zzbmo;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbqs;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzbqs;-><init>(Lcom/google/android/gms/internal/ads/zzbqt;Lcom/google/android/gms/internal/ads/zzbpv;Lcom/google/android/gms/internal/ads/zzcca;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbmo;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbmn;)V

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    .line 5
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqt;->zzb:Lcom/google/android/gms/internal/ads/zzbqi;

    .line 6
    invoke-interface {v2, p3}, Lcom/google/android/gms/internal/ads/zzbqi;->zzb(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbqt;->zzd:Ljava/lang/String;

    .line 7
    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzbqc;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 8
    :try_start_1
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzcca;->zzd(Ljava/lang/Throwable;)Z

    const-string p3, "Unable to invokeJavascript"

    .line 9
    sget p4, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 10
    invoke-static {p3, p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpv;->zza()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpv;->zza()V

    .line 12
    throw p2
.end method

.method final synthetic zzd()Lcom/google/android/gms/internal/ads/zzbqh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqt;->zza:Lcom/google/android/gms/internal/ads/zzbqh;

    return-object v0
.end method
