.class public Lcom/google/android/gms/internal/zzds;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzid;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzid;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbH()Lcom/google/android/gms/internal/zzdq;

    move-result-object v0

    const-string v1, "abort"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdq;->zza(Lcom/google/android/gms/internal/zzid;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Precache abort but no preload task running."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v1, "src"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_2

    const-string p1, "Precache video action is missing the src parameter."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdq;->zzb(Lcom/google/android/gms/internal/zzid;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "Precache task already running."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzdp;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzdp;-><init>(Lcom/google/android/gms/internal/zzid;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdp;->zzgi()Ljava/util/concurrent/Future;

    return-void
.end method
