.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lcom/google/android/gms/ads/internal/client/zzcq;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzcq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/ads/internal/client/zzbx;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzcjn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/internal/ads/zzcjn;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzcjn;->zzj()Lcom/google/android/gms/internal/ads/zzfck;

    move-result-object p4

    .line 3
    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/zzfck;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfck;

    .line 4
    invoke-interface {p4, p2}, Lcom/google/android/gms/internal/ads/zzfck;->zzb(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfck;

    .line 5
    invoke-interface {p4, p3}, Lcom/google/android/gms/internal/ads/zzfck;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfck;

    .line 6
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzfck;->zza()Lcom/google/android/gms/internal/ads/zzfcl;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfcl;->zza()Lcom/google/android/gms/internal/ads/zzeny;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/ads/internal/client/zzbx;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzcjn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/internal/ads/zzcjn;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzcjn;->zzn()Lcom/google/android/gms/internal/ads/zzfea;

    move-result-object p4

    .line 3
    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/zzfea;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfea;

    .line 4
    invoke-interface {p4, p2}, Lcom/google/android/gms/internal/ads/zzfea;->zzb(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfea;

    .line 5
    invoke-interface {p4, p3}, Lcom/google/android/gms/internal/ads/zzfea;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfea;

    .line 6
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzfea;->zza()Lcom/google/android/gms/internal/ads/zzfeb;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfeb;->zza()Lcom/google/android/gms/internal/ads/zzepb;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/ads/internal/client/zzbt;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzcjn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/internal/ads/zzcjn;

    move-result-object p3

    new-instance p4, Lcom/google/android/gms/internal/ads/zzenv;

    .line 3
    invoke-direct {p4, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzenv;-><init>(Lcom/google/android/gms/internal/ads/zzcjn;Landroid/content/Context;Ljava/lang/String;)V

    return-object p4
.end method

.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzbim;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdml;

    const v1, 0xf212370

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzdml;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/internal/ads/zzbxy;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcjn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/internal/ads/zzcjn;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcjn;->zzq()Lcom/google/android/gms/internal/ads/zzffn;

    move-result-object p2

    .line 3
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzffn;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzffn;

    .line 4
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzffn;->zza()Lcom/google/android/gms/internal/ads/zzffo;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzffo;->zza()Lcom/google/android/gms/internal/ads/zzffr;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzbvi;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zza(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzw;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    .line 9
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzw;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzag;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzag;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzac;

    .line 5
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzac;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    move-object v0, v1

    goto :goto_0

    .line 6
    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzaj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzaj;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 7
    :cond_4
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzai;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzai;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 8
    :cond_5
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzv;-><init>(Landroid/app/Activity;)V

    :goto_0
    return-object v0
.end method

.method public final zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/ads/internal/client/zzck;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcjn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/internal/ads/zzcjn;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjn;->zzf()Lcom/google/android/gms/internal/ads/zzfnt;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Lcom/google/android/gms/ads/internal/client/zzdb;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcjn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/internal/ads/zzcjn;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjn;->zze()Lcom/google/android/gms/internal/ads/zzcms;

    move-result-object p1

    return-object p1
.end method

.method public final zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;I)Lcom/google/android/gms/ads/internal/client/zzbx;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    new-instance v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0xf212370

    invoke-direct {v0, v3, p4, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZZ)V

    new-instance p4, Lcom/google/android/gms/ads/internal/zzs;

    .line 3
    invoke-direct {p4, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/zzs;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-object p4
.end method

.method public final zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzbis;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmj;

    .line 4
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdmj;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/internal/ads/zzbyo;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzcjn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/internal/ads/zzcjn;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcjn;->zzq()Lcom/google/android/gms/internal/ads/zzffn;

    move-result-object p3

    .line 3
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzffn;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzffn;

    .line 4
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzffn;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffn;

    .line 5
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzffn;->zza()Lcom/google/android/gms/internal/ads/zzffo;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzffo;->zzb()Lcom/google/android/gms/internal/ads/zzffl;

    move-result-object p1

    return-object p1
.end method

.method public final zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/ads/internal/client/zzbx;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzcjn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/internal/ads/zzcjn;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcjn;->zzl()Lcom/google/android/gms/internal/ads/zzfax;

    move-result-object p2

    .line 3
    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/zzfax;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfax;

    .line 4
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzfax;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfax;

    .line 5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzfax;->zza()Lcom/google/android/gms/internal/ads/zzfay;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfay;->zza()Lcom/google/android/gms/internal/ads/zzfcc;

    move-result-object p1

    return-object p1
.end method

.method public final zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/internal/ads/zzcas;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcjn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/internal/ads/zzcjn;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjn;->zzs()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    move-result-object p1

    return-object p1
.end method

.method public final zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/internal/ads/zzbvb;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcjn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/internal/ads/zzcjn;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjn;->zzu()Lcom/google/android/gms/internal/ads/zzegj;

    move-result-object p1

    return-object p1
.end method

.method public final zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbrj;ILcom/google/android/gms/internal/ads/zzbmx;)Lcom/google/android/gms/internal/ads/zzbna;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcjn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/internal/ads/zzcjn;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcjn;->zzA()Lcom/google/android/gms/internal/ads/zzdwz;

    move-result-object p2

    .line 3
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdwz;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdwz;

    .line 4
    invoke-interface {p2, p4}, Lcom/google/android/gms/internal/ads/zzdwz;->zzb(Lcom/google/android/gms/internal/ads/zzbmx;)Lcom/google/android/gms/internal/ads/zzdwz;

    .line 5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdwz;->zza()Lcom/google/android/gms/internal/ads/zzdxa;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdxa;->zzb()Lcom/google/android/gms/internal/ads/zzdwx;

    move-result-object p1

    return-object p1
.end method

.method public final zzq(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/ads/internal/client/zzdw;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcjn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbrj;I)Lcom/google/android/gms/internal/ads/zzcjn;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjn;->zzC()Lcom/google/android/gms/internal/ads/zzdzl;

    move-result-object p1

    return-object p1
.end method
