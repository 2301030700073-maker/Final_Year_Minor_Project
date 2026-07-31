.class public final Lcom/google/android/gms/internal/ads/zzfoy;
.super Lcom/google/android/gms/internal/ads/zzfou;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfow;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfpw;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfrj;

.field private zzd:Lcom/google/android/gms/internal/ads/zzfqi;

.field private zze:Z

.field private zzf:Z

.field private final zzg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfov;Lcom/google/android/gms/internal/ads/zzfow;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfou;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfpw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzb:Lcom/google/android/gms/internal/ads/zzfpw;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zze:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzf:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zza:Lcom/google/android/gms/internal/ads/zzfow;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfoy;->zzk(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfow;->zzi()Lcom/google/android/gms/internal/ads/zzfox;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfox;->zza:Lcom/google/android/gms/internal/ads/zzfox;

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfow;->zzi()Lcom/google/android/gms/internal/ads/zzfox;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfox;->zzc:Lcom/google/android/gms/internal/ads/zzfox;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfqm;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfow;->zze()Ljava/util/Map;

    move-result-object p2

    .line 6
    invoke-direct {v1, p3, p2, v0}, Lcom/google/android/gms/internal/ads/zzfqm;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzd:Lcom/google/android/gms/internal/ads/zzfqi;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfow;->zzf()Landroid/webkit/WebView;

    move-result-object p2

    .line 4
    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/ads/zzfqj;-><init>(Ljava/lang/String;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzd:Lcom/google/android/gms/internal/ads/zzfqi;

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzd:Lcom/google/android/gms/internal/ads/zzfqi;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfqi;->zza()V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfps;->zza()Lcom/google/android/gms/internal/ads/zzfps;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzfps;->zzb(Lcom/google/android/gms/internal/ads/zzfoy;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzd:Lcom/google/android/gms/internal/ads/zzfqi;

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfqi;->zzj(Lcom/google/android/gms/internal/ads/zzfov;)V

    return-void
.end method

.method private final zzk(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfrj;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzc:Lcom/google/android/gms/internal/ads/zzfrj;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zze:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzd:Lcom/google/android/gms/internal/ads/zzfqi;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zze:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfps;->zza()Lcom/google/android/gms/internal/ads/zzfps;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfps;->zzc(Lcom/google/android/gms/internal/ads/zzfoy;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqa;->zza()Lcom/google/android/gms/internal/ads/zzfqa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqa;->zzg()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzd:Lcom/google/android/gms/internal/ads/zzfqi;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfqi;->zzo(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzd:Lcom/google/android/gms/internal/ads/zzfqi;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpq;->zza()Lcom/google/android/gms/internal/ads/zzfpq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfpq;->zzb()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfqi;->zzn(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzd:Lcom/google/android/gms/internal/ads/zzfqi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zza:Lcom/google/android/gms/internal/ads/zzfow;

    .line 5
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfqi;->zzk(Lcom/google/android/gms/internal/ads/zzfoy;Lcom/google/android/gms/internal/ads/zzfow;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzb(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzf:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfoy;->zzi()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfoy;->zzk(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzd:Lcom/google/android/gms/internal/ads/zzfqi;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqi;->zzp()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfps;->zza()Lcom/google/android/gms/internal/ads/zzfps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfps;->zze()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfoy;

    if-eq v1, p0, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoy;->zzi()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfoy;->zzc:Lcom/google/android/gms/internal/ads/zzfrj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfrj;->clear()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzf:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzc:Lcom/google/android/gms/internal/ads/zzfrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfrj;->clear()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzf:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzb:Lcom/google/android/gms/internal/ads/zzfpw;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpw;->zzc()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzd:Lcom/google/android/gms/internal/ads/zzfqi;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqi;->zzm()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfps;->zza()Lcom/google/android/gms/internal/ads/zzfps;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfps;->zzd(Lcom/google/android/gms/internal/ads/zzfoy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzd:Lcom/google/android/gms/internal/ads/zzfqi;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqi;->zzb()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzd:Lcom/google/android/gms/internal/ads/zzfqi;

    return-void
.end method

.method public final zzd(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfpb;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzf:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzb:Lcom/google/android/gms/internal/ads/zzfpw;

    const-string v0, "Ad overlay"

    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfpw;->zzb(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfpb;Ljava/lang/String;)V

    return-void
.end method

.method public final zzf()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzb:Lcom/google/android/gms/internal/ads/zzfpw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpw;->zza()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzfqi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzd:Lcom/google/android/gms/internal/ads/zzfqi;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzc:Lcom/google/android/gms/internal/ads/zzfrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfrj;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final zzj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zze:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfoy;->zzf:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
