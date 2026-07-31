.class final Lcom/google/android/gms/internal/ads/zzclj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfcl;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzifq;

.field final zzb:Lcom/google/android/gms/internal/ads/zzifq;

.field final zzc:Lcom/google/android/gms/internal/ads/zzifq;

.field final zzd:Lcom/google/android/gms/internal/ads/zzifq;

.field final zze:Lcom/google/android/gms/internal/ads/zzifq;

.field final zzf:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzg:Landroid/content/Context;

.field private final zzh:Lcom/google/android/gms/ads/internal/client/zzr;

.field private final zzi:Ljava/lang/String;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzckz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzckz;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzj:Lcom/google/android/gms/internal/ads/zzckz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzg:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzh:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzi:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzifi;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzifh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclj;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzifi;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzifh;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzckz;->zzl:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzeou;->zza(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzeou;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzifg;->zza(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifq;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeoz;->zza()Lcom/google/android/gms/internal/ads/zzeoz;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzifg;->zza(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifq;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzddw;->zza()Lcom/google/android/gms/internal/ads/zzddw;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzifg;->zza(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifq;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzclj;->zze:Lcom/google/android/gms/internal/ads/zzifq;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzckz;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzckz;->zzV:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgp;->zza()Lcom/google/android/gms/internal/ads/zzfgp;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfcj;->zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzfcj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzifg;->zza(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzf:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzeny;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzf:Lcom/google/android/gms/internal/ads/zzifq;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzeny;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfci;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzeot;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzj:Lcom/google/android/gms/internal/ads/zzckz;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzckz;->zzl:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckz;->zzI()Lcom/google/android/gms/internal/ads/zzcjp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzckk;->zzd(Lcom/google/android/gms/internal/ads/zzcjp;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v7

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/ads/zzdvi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzg:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzh:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzi:Ljava/lang/String;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzeny;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfci;Lcom/google/android/gms/internal/ads/zzeot;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzdvi;)V

    return-object v9
.end method
