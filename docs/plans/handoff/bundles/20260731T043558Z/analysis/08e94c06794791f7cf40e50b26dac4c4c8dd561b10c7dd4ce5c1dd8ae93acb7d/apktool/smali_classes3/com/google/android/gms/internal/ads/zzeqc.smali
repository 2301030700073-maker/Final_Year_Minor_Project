.class public final Lcom/google/android/gms/internal/ads/zzeqc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeya;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgus;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfgn;

.field private final zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgus;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfhd;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqc;->zza:Lcom/google/android/gms/internal/ads/zzgus;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeqc;->zzb:Lcom/google/android/gms/internal/ads/zzfgn;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzeqc;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeqb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeqb;-><init>(Lcom/google/android/gms/internal/ads/zzeqc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqc;->zza:Lcom/google/android/gms/internal/ads/zzgus;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgus;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzeqd;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeqd;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeu;->zzhB:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqc;->zzb:Lcom/google/android/gms/internal/ads/zzfgn;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzeqc;->zzc:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfgn;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzc(Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbeu;->zzhD:Lcom/google/android/gms/internal/ads/zzbel;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, ","

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbeu;->zzhE:Lcom/google/android/gms/internal/ads/zzbel;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 11
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbeu;->zzhC:Lcom/google/android/gms/internal/ads/zzbel;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 10
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhd;->zza()Ljava/lang/String;

    move-result-object v2

    .line 1
    :cond_2
    :goto_1
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzeqd;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
