.class Lcom/google/android/gms/internal/zzfu$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfu;->zzh(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzBw:Lcom/google/android/gms/internal/zzfu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfu$1;->zzBw:Lcom/google/android/gms/internal/zzfu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfu$1;->zzBw:Lcom/google/android/gms/internal/zzfu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfu;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfu$1;->zzBw:Lcom/google/android/gms/internal/zzfu;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzfu;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfu$1;->zzBw:Lcom/google/android/gms/internal/zzfu;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzfu;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzid;->zzgF()Lcom/google/android/gms/internal/zzie;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfu$1;->zzBw:Lcom/google/android/gms/internal/zzfu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzie;->zza(Lcom/google/android/gms/internal/zzie$zza;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfu$1;->zzBw:Lcom/google/android/gms/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfu;->zzfn()V

    const-string v1, "Loading HTML in WebView."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaB(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfu$1;->zzBw:Lcom/google/android/gms/internal/zzfu;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzfu;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfu$1;->zzBw:Lcom/google/android/gms/internal/zzfu;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzfu;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzzG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzhl;->zzat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfu$1;->zzBw:Lcom/google/android/gms/internal/zzfu;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzfu;->zzBt:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCI:Ljava/lang/String;

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/zzid;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
