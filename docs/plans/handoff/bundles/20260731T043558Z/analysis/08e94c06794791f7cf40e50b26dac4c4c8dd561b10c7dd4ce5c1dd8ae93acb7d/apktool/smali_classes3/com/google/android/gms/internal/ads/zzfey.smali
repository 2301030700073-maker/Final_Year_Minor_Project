.class public final Lcom/google/android/gms/internal/ads/zzfey;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;
.implements Lcom/google/android/gms/internal/ads/zzdac;
.implements Lcom/google/android/gms/internal/ads/zzcyr;
.implements Lcom/google/android/gms/internal/ads/zzcyo;
.implements Lcom/google/android/gms/internal/ads/zzcze;
.implements Lcom/google/android/gms/internal/ads/zzdbf;
.implements Lcom/google/android/gms/internal/ads/zzfdj;
.implements Lcom/google/android/gms/internal/ads/zzdgv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfhy;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zze:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzf:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzg:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzh:Ljava/util/concurrent/atomic/AtomicReference;

.field private zzi:Lcom/google/android/gms/internal/ads/zzfey;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfhy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzh:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzi:Lcom/google/android/gms/internal/ads/zzfey;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfey;->zza:Lcom/google/android/gms/internal/ads/zzfhy;

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzi:Lcom/google/android/gms/internal/ads/zzfey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfey;->onAdMetadataChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfex;->zza:Lcom/google/android/gms/internal/ads/zzfex;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbxv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzi:Lcom/google/android/gms/internal/ads/zzfey;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfey;->zzd(Lcom/google/android/gms/internal/ads/zzbxv;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfee;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfee;-><init>(Lcom/google/android/gms/internal/ads/zzbxv;)V

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfef;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfef;-><init>(Lcom/google/android/gms/internal/ads/zzbxv;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfeg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfeg;-><init>(Lcom/google/android/gms/internal/ads/zzbxv;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfeh;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfeh;-><init>(Lcom/google/android/gms/internal/ads/zzbxv;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    return-void
.end method

.method public final zzdN(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzi:Lcom/google/android/gms/internal/ads/zzfey;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfey;->zzdN(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void

    .line 1
    :cond_0
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfel;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzfel;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfec;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfec;-><init>(I)V

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfey;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfed;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfed;-><init>(I)V

    .line 4
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    return-void
.end method

.method public final zzdO()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzi:Lcom/google/android/gms/internal/ads/zzfey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfey;->zzdO()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfet;->zza:Lcom/google/android/gms/internal/ads/zzfet;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    return-void
.end method

.method public final zzdV()V
    .locals 0

    return-void
.end method

.method public final zzdx()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzi:Lcom/google/android/gms/internal/ads/zzfey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfey;->zzdx()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zza:Lcom/google/android/gms/internal/ads/zzfhy;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhy;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfen;->zza:Lcom/google/android/gms/internal/ads/zzfen;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfes;->zza:Lcom/google/android/gms/internal/ads/zzfes;

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    return-void
.end method

.method public final zzdy()V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzi:Lcom/google/android/gms/internal/ads/zzfey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfey;->zzdy()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfep;->zza:Lcom/google/android/gms/internal/ads/zzfep;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfey;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfer;->zza:Lcom/google/android/gms/internal/ads/zzfer;

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfem;->zza:Lcom/google/android/gms/internal/ads/zzfem;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    return-void
.end method

.method public final zzdz()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzi:Lcom/google/android/gms/internal/ads/zzfey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfey;->zzdz()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfeo;->zza:Lcom/google/android/gms/internal/ads/zzfeo;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzi:Lcom/google/android/gms/internal/ads/zzfey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfey;->zze()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfeu;->zza:Lcom/google/android/gms/internal/ads/zzfeu;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    return-void
.end method

.method public final zzf()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzi:Lcom/google/android/gms/internal/ads/zzfey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfey;->zzf()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfev;->zza:Lcom/google/android/gms/internal/ads/zzfev;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    return-void
.end method

.method public final zzg()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzi:Lcom/google/android/gms/internal/ads/zzfey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfey;->zzg()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfeq;->zza:Lcom/google/android/gms/internal/ads/zzfeq;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfew;->zza:Lcom/google/android/gms/internal/ads/zzfew;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzbyv;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzbyr;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzi:Lcom/google/android/gms/internal/ads/zzfey;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfey;->zzj(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfei;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfei;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfej;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfej;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/ads/internal/client/zzdt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/ads/internal/client/zzt;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzi:Lcom/google/android/gms/internal/ads/zzfey;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfey;->zzm(Lcom/google/android/gms/ads/internal/client/zzt;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzh:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfek;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfek;-><init>(Lcom/google/android/gms/ads/internal/client/zzt;)V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfda;)V

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzbyb;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzbyw;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzbxw;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzu(Lcom/google/android/gms/internal/ads/zzfdj;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfey;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzi:Lcom/google/android/gms/internal/ads/zzfey;

    return-void
.end method
