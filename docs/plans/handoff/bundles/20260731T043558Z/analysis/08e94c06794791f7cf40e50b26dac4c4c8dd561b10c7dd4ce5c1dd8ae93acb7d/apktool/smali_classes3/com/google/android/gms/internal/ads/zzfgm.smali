.class public final Lcom/google/android/gms/internal/ads/zzfgm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private zza:Lcom/google/android/gms/ads/internal/client/zzm;

.field private zzb:Lcom/google/android/gms/ads/internal/client/zzr;

.field private zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/ads/internal/client/zzga;

.field private zze:Z

.field private zzf:Ljava/util/ArrayList;

.field private zzg:Ljava/util/ArrayList;

.field private zzh:Lcom/google/android/gms/internal/ads/zzbhx;

.field private zzi:Lcom/google/android/gms/ads/internal/client/zzx;

.field private zzj:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

.field private zzk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field private zzl:Lcom/google/android/gms/ads/internal/client/zzco;

.field private zzm:I

.field private zzn:Lcom/google/android/gms/internal/ads/zzboi;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzfga;

.field private zzp:Z

.field private zzq:Z

.field private zzr:Lcom/google/android/gms/internal/ads/zzeot;

.field private zzs:Z

.field private zzt:Landroid/os/Bundle;

.field private final zzu:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzv:Lcom/google/android/gms/ads/internal/client/zzcs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzm:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfga;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfga;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzo:Lcom/google/android/gms/internal/ads/zzfga;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzs:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final zzA()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzp:Z

    return v0
.end method

.method public final zzB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzq:Z

    return v0
.end method

.method final synthetic zzC()Lcom/google/android/gms/ads/internal/client/zzm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    return-object v0
.end method

.method final synthetic zzD()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    return-object v0
.end method

.method final synthetic zzE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic zzF()Lcom/google/android/gms/ads/internal/client/zzga;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzd:Lcom/google/android/gms/ads/internal/client/zzga;

    return-object v0
.end method

.method final synthetic zzG()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zze:Z

    return v0
.end method

.method final synthetic zzH()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzf:Ljava/util/ArrayList;

    return-object v0
.end method

.method final synthetic zzI()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzg:Ljava/util/ArrayList;

    return-object v0
.end method

.method final synthetic zzJ()Lcom/google/android/gms/internal/ads/zzbhx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzh:Lcom/google/android/gms/internal/ads/zzbhx;

    return-object v0
.end method

.method final synthetic zzK()Lcom/google/android/gms/ads/internal/client/zzx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzi:Lcom/google/android/gms/ads/internal/client/zzx;

    return-object v0
.end method

.method final synthetic zzL()Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzj:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    return-object v0
.end method

.method final synthetic zzM()Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    return-object v0
.end method

.method final synthetic zzN()Lcom/google/android/gms/ads/internal/client/zzco;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzl:Lcom/google/android/gms/ads/internal/client/zzco;

    return-object v0
.end method

.method final synthetic zzO()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzm:I

    return v0
.end method

.method final synthetic zzP()Lcom/google/android/gms/internal/ads/zzboi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzn:Lcom/google/android/gms/internal/ads/zzboi;

    return-object v0
.end method

.method final synthetic zzQ()Lcom/google/android/gms/internal/ads/zzfga;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzo:Lcom/google/android/gms/internal/ads/zzfga;

    return-object v0
.end method

.method final synthetic zzR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzp:Z

    return v0
.end method

.method final synthetic zzS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzq:Z

    return v0
.end method

.method final synthetic zzT()Lcom/google/android/gms/internal/ads/zzeot;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzr:Lcom/google/android/gms/internal/ads/zzeot;

    return-object v0
.end method

.method final synthetic zzU()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzs:Z

    return v0
.end method

.method final synthetic zzV()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzt:Landroid/os/Bundle;

    return-object v0
.end method

.method final synthetic zzW()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public final zzX(Lcom/google/android/gms/ads/internal/client/zzcs;)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzv:Lcom/google/android/gms/ads/internal/client/zzcs;

    return-object p0
.end method

.method final synthetic zzY()Lcom/google/android/gms/ads/internal/client/zzcs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzv:Lcom/google/android/gms/ads/internal/client/zzcs;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/ads/internal/client/zzm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    return-object p0
.end method

.method public final zzd(Z)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzp:Z

    return-object p0
.end method

.method public final zze(Z)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzq:Z

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    return-object v0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/ads/internal/client/zzga;)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzd:Lcom/google/android/gms/ads/internal/client/zzga;

    return-object p0
.end method

.method public final zzj()Lcom/google/android/gms/internal/ads/zzfga;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzo:Lcom/google/android/gms/internal/ads/zzfga;

    return-object v0
.end method

.method public final zzk(Z)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zze:Z

    return-object p0
.end method

.method public final zzl(I)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzm:I

    return-object p0
.end method

.method public final zzm(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzf:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final zzn(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzg:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzbhx;)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzh:Lcom/google/android/gms/internal/ads/zzbhx;

    return-object p0
.end method

.method public final zzp(Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzi:Lcom/google/android/gms/ads/internal/client/zzx;

    return-object p0
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzboi;)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzn:Lcom/google/android/gms/internal/ads/zzboi;

    new-instance p1, Lcom/google/android/gms/ads/internal/client/zzga;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lcom/google/android/gms/ads/internal/client/zzga;-><init>(ZZZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzd:Lcom/google/android/gms/ads/internal/client/zzga;

    return-object p0
.end method

.method public final zzr(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zza()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zze:Z

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzb()Lcom/google/android/gms/ads/internal/client/zzco;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzl:Lcom/google/android/gms/ads/internal/client/zzco;

    :cond_0
    return-object p0
.end method

.method public final zzs(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzj:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->getManualImpressionsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zze:Z

    :cond_0
    return-object p0
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzeot;)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzr:Lcom/google/android/gms/internal/ads/zzeot;

    return-object p0
.end method

.method public final zzu(Z)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzs:Z

    return-object p0
.end method

.method public final zzv(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzt:Landroid/os/Bundle;

    return-object p0
.end method

.method public final zzw()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzx(J)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-object p0
.end method

.method public final zzy(Lcom/google/android/gms/internal/ads/zzfgn;)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzo:Lcom/google/android/gms/internal/ads/zzfga;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzp:Lcom/google/android/gms/internal/ads/zzfgb;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfgb;->zza:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfga;->zza(I)Lcom/google/android/gms/internal/ads/zzfga;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzf:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzv:Lcom/google/android/gms/ads/internal/client/zzcs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzv:Lcom/google/android/gms/ads/internal/client/zzcs;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzc:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zza:Lcom/google/android/gms/ads/internal/client/zzga;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzd:Lcom/google/android/gms/ads/internal/client/zzga;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzh:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzf:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzi:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzg:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzj:Lcom/google/android/gms/internal/ads/zzbhx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzh:Lcom/google/android/gms/internal/ads/zzbhx;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzk:Lcom/google/android/gms/ads/internal/client/zzx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzi:Lcom/google/android/gms/ads/internal/client/zzx;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzm:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfgm;->zzs(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfgm;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzn:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfgm;->zzr(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfgm;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzp:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzr:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzq:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzc:Lcom/google/android/gms/internal/ads/zzeot;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzr:Lcom/google/android/gms/internal/ads/zzeot;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzs:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzs:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzt:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzt:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-object p0
.end method

.method public final zzz()Lcom/google/android/gms/internal/ads/zzfgn;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzc:Ljava/lang/String;

    const-string v1, "ad unit must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    const-string v1, "ad size must not be null"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    const-string v1, "ad request must not be null"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgn;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfgn;-><init>(Lcom/google/android/gms/internal/ads/zzfgm;[B)V

    return-object v0
.end method
