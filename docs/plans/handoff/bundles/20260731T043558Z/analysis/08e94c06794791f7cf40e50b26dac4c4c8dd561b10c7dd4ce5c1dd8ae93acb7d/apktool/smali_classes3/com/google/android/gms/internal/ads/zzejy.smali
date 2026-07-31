.class public final Lcom/google/android/gms/internal/ads/zzejy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehq;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdjz;

.field private final zzc:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdjz;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejy;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejy;->zzb:Lcom/google/android/gms/internal/ads/zzdjz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzejy;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static final zzc(Lcom/google/android/gms/internal/ads/zzfgf;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfgf;->zza:Lcom/google/android/gms/internal/ads/zzfgc;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfgc;->zza:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfgn;->zzh:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzehn;)V
    .locals 9
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

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzejy;->zza:Landroid/content/Context;

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzc:Lcom/google/android/gms/internal/ads/zzczy;

    move-object v6, p2

    check-cast v6, Lcom/google/android/gms/internal/ads/zzbrp;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzj:Lcom/google/android/gms/internal/ads/zzbhx;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzh:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 1
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzfhl;->zzo(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrp;Lcom/google/android/gms/internal/ads/zzbhx;Ljava/util/List;)V

    return-void
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzehn;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfgu;,
            Lcom/google/android/gms/internal/ads/zzekz;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhl;->zzD()Lcom/google/android/gms/internal/ads/zzbru;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhl;->zzE()Lcom/google/android/gms/internal/ads/zzbrv;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhl;->zzu()Lcom/google/android/gms/internal/ads/zzbry;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x6

    if-eqz v3, :cond_0

    .line 4
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzejy;->zzc(Lcom/google/android/gms/internal/ads/zzfgf;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 14
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdlq;->zzaf(Lcom/google/android/gms/internal/ads/zzbry;)Lcom/google/android/gms/internal/ads/zzdlq;

    move-result-object v5

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 5
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzejy;->zzc(Lcom/google/android/gms/internal/ads/zzfgf;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdlq;->zzai(Lcom/google/android/gms/internal/ads/zzbru;)Lcom/google/android/gms/internal/ads/zzdlq;

    move-result-object v5

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v6, 0x2

    .line 6
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ads/zzejy;->zzc(Lcom/google/android/gms/internal/ads/zzfgf;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdlq;->zzah(Lcom/google/android/gms/internal/ads/zzbru;)Lcom/google/android/gms/internal/ads/zzdlq;

    move-result-object v5

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 7
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzejy;->zzc(Lcom/google/android/gms/internal/ads/zzfgf;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdlq;->zzaj(Lcom/google/android/gms/internal/ads/zzbrv;)Lcom/google/android/gms/internal/ads/zzdlq;

    move-result-object v5

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    .line 8
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzejy;->zzc(Lcom/google/android/gms/internal/ads/zzfgf;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 10
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdlq;->zzag(Lcom/google/android/gms/internal/ads/zzbrv;)Lcom/google/android/gms/internal/ads/zzdlq;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_4

    .line 15
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzfgf;->zza:Lcom/google/android/gms/internal/ads/zzfgc;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfgc;->zza:Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdlq;->zzx()I

    move-result v7

    .line 16
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfgn;->zzh:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 18
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzejy;->zzb:Lcom/google/android/gms/internal/ads/zzdjz;

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/zzehn;->zza:Ljava/lang/String;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcue;

    invoke-direct {v7, p1, p2, v6}, Lcom/google/android/gms/internal/ads/zzcue;-><init>(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdmb;

    invoke-direct {p1, v5}, Lcom/google/android/gms/internal/ads/zzdmb;-><init>(Lcom/google/android/gms/internal/ads/zzdlq;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdnu;

    invoke-direct {p2, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzdnu;-><init>(Lcom/google/android/gms/internal/ads/zzbrv;Lcom/google/android/gms/internal/ads/zzbru;Lcom/google/android/gms/internal/ads/zzbry;)V

    .line 19
    invoke-virtual {v4, v7, p1, p2}, Lcom/google/android/gms/internal/ads/zzdjz;->zze(Lcom/google/android/gms/internal/ads/zzcue;Lcom/google/android/gms/internal/ads/zzdmb;Lcom/google/android/gms/internal/ads/zzdnu;)Lcom/google/android/gms/internal/ads/zzdls;

    move-result-object p1

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzc:Lcom/google/android/gms/internal/ads/zzczy;

    .line 20
    check-cast p2, Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlt;->zzf()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzeiz;->zzc(Lcom/google/android/gms/internal/ads/zzbrp;)V

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlt;->zza()Lcom/google/android/gms/internal/ads/zzczn;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcou;

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/zzcou;-><init>(Lcom/google/android/gms/internal/ads/zzfhl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejy;->zzc:Ljava/util/concurrent/Executor;

    .line 22
    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzdem;->zzq(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlt;->zzh()Lcom/google/android/gms/internal/ads/zzdll;

    move-result-object p1

    return-object p1

    .line 17
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekz;

    const-string p2, "No corresponding native ad listener"

    .line 18
    invoke-direct {p1, v4, p2}, Lcom/google/android/gms/internal/ads/zzekz;-><init>(ILjava/lang/String;)V

    throw p1

    .line 8
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzekz;

    const-string p2, "No native ad mappers"

    .line 9
    invoke-direct {p1, v4, p2}, Lcom/google/android/gms/internal/ads/zzekz;-><init>(ILjava/lang/String;)V

    throw p1
.end method
