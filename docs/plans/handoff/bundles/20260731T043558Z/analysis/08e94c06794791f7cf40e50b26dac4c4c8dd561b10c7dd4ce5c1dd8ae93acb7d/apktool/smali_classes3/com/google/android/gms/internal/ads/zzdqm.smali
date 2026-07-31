.class final Lcom/google/android/gms/internal/ads/zzdqm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzguf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzffu;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzffx;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcpe;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzdqt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdqt;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzffx;Lcom/google/android/gms/internal/ads/zzcpe;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zza:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzb:Lcom/google/android/gms/internal/ads/zzffx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzc:Lcom/google/android/gms/internal/ads/zzcpe;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzd:Lcom/google/android/gms/internal/ads/zzdqt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcgy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zza:Lcom/google/android/gms/internal/ads/zzffu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzb:Lcom/google/android/gms/internal/ads/zzffx;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzaD(Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzffx;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzP()Lcom/google/android/gms/internal/ads/zzciw;

    move-result-object p1

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeu;->zzlf:Lcom/google/android/gms/internal/ads/zzbel;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzc:Lcom/google/android/gms/internal/ads/zzcpe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqm;->zzd:Lcom/google/android/gms/internal/ads/zzdqt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdqt;->zzm()Lcom/google/android/gms/internal/ads/zzefy;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdqt;->zzn()Lcom/google/android/gms/internal/ads/zzfng;

    move-result-object v4

    .line 6
    invoke-interface {p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzciw;->zzd(Lcom/google/android/gms/internal/ads/zzcpe;Lcom/google/android/gms/internal/ads/zzefy;Lcom/google/android/gms/internal/ads/zzfng;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdqt;->zzm()Lcom/google/android/gms/internal/ads/zzefy;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdqt;->zzl()Lcom/google/android/gms/internal/ads/zzdvi;

    move-result-object v2

    .line 7
    invoke-interface {p1, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzciw;->zze(Lcom/google/android/gms/internal/ads/zzcpe;Lcom/google/android/gms/internal/ads/zzefy;Lcom/google/android/gms/internal/ads/zzdvi;)V

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeu;->zzob:Lcom/google/android/gms/internal/ads/zzbel;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzciw;->zzb(Lcom/google/android/gms/internal/ads/zzffu;)V

    :cond_1
    return-void
.end method
