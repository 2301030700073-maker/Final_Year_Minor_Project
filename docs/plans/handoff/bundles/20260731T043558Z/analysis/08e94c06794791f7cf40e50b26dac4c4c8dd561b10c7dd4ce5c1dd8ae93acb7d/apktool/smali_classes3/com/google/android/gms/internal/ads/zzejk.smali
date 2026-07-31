.class public final Lcom/google/android/gms/internal/ads/zzejk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehq;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdjd;

.field private final zzc:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzd:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzdjd;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejk;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejk;->zzc:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzejk;->zzb:Lcom/google/android/gms/internal/ads/zzdjd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzejk;->zzd:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzehn;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfgu;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzb:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfhl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgf;->zza:Lcom/google/android/gms/internal/ads/zzfgc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgc;->zza:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzv:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzs:Lcom/google/android/gms/internal/ads/zzffz;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzm(Lcom/google/android/gms/internal/ads/zzffz;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzejk;->zza:Landroid/content/Context;

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzc:Lcom/google/android/gms/internal/ads/zzczy;

    move-object v6, p2

    check-cast v6, Lcom/google/android/gms/internal/ads/zzbrp;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 1
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfhl;->zzh(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrp;)V

    return-void
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzehn;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfgu;,
            Lcom/google/android/gms/internal/ads/zzekz;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcue;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzehn;->zza:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcue;-><init>(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdia;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzejj;

    invoke-direct {v1, p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzejj;-><init>(Lcom/google/android/gms/internal/ads/zzejk;Lcom/google/android/gms/internal/ads/zzehn;Lcom/google/android/gms/internal/ads/zzffu;)V

    const/4 p2, 0x0

    invoke-direct {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzdia;-><init>(Lcom/google/android/gms/internal/ads/zzdjl;Lcom/google/android/gms/internal/ads/zzcgy;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzejk;->zzb:Lcom/google/android/gms/internal/ads/zzdjd;

    .line 2
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdjd;->zzd(Lcom/google/android/gms/internal/ads/zzcue;Lcom/google/android/gms/internal/ads/zzdia;)Lcom/google/android/gms/internal/ads/zzdhx;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhx;->zza()Lcom/google/android/gms/internal/ads/zzczn;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcou;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzb:Ljava/lang/Object;

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcou;-><init>(Lcom/google/android/gms/internal/ads/zzfhl;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejk;->zzd:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdem;->zzq(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzc:Lcom/google/android/gms/internal/ads/zzczy;

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhx;->zzf()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzeiz;->zzc(Lcom/google/android/gms/internal/ads/zzbrp;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhx;->zzh()Lcom/google/android/gms/internal/ads/zzdhw;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejk;->zzc:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method
