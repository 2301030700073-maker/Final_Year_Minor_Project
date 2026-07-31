.class final Lcom/google/android/gms/internal/ads/zzvy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzus;
.implements Lcom/google/android/gms/internal/ads/zzadd;
.implements Lcom/google/android/gms/internal/ads/zzzf;
.implements Lcom/google/android/gms/internal/ads/zzzk;
.implements Lcom/google/android/gms/internal/ads/zzwi;


# static fields
.field private static final zzb:Ljava/util/Map;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzv;


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzvx;

.field private zzB:Lcom/google/android/gms/internal/ads/zzaed;

.field private zzC:J

.field private zzD:Z

.field private zzE:I

.field private zzF:Z

.field private zzG:Z

.field private zzH:Z

.field private zzI:I

.field private zzJ:Z

.field private zzK:J

.field private zzL:J

.field private zzM:Z

.field private zzN:I

.field private zzO:Z

.field private zzP:Z

.field private final zzd:Landroid/net/Uri;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgb;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzrz;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzve;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzru;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzvq;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzyv;

.field private final zzk:J

.field private final zzl:J

.field private final zzm:Lcom/google/android/gms/internal/ads/zzzn;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzvn;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzdf;

.field private final zzp:Ljava/lang/Runnable;

.field private final zzq:Ljava/lang/Runnable;

.field private final zzr:Landroid/os/Handler;

.field private zzs:Lcom/google/android/gms/internal/ads/zzur;

.field private zzt:Lcom/google/android/gms/internal/ads/zzagf;

.field private zzu:[Lcom/google/android/gms/internal/ads/zzwj;

.field private zzv:[Lcom/google/android/gms/internal/ads/zzvw;

.field private zzw:Z

.field private zzx:Z

.field private zzy:Z

.field private zzz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvy;->zzb:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzt;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    const-string v1, "icy"

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvy;->zzc:Lcom/google/android/gms/internal/ads/zzv;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzgb;Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzrz;Lcom/google/android/gms/internal/ads/zzru;Lcom/google/android/gms/internal/ads/zzze;Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/internal/ads/zzyv;Ljava/lang/String;IILcom/google/android/gms/internal/ads/zzv;JLcom/google/android/gms/internal/ads/zzzt;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzd:Landroid/net/Uri;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zze:Lcom/google/android/gms/internal/ads/zzgb;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzf:Lcom/google/android/gms/internal/ads/zzrz;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzh:Lcom/google/android/gms/internal/ads/zzru;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzg:Lcom/google/android/gms/internal/ads/zzve;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzi:Lcom/google/android/gms/internal/ads/zzvq;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzj:Lcom/google/android/gms/internal/ads/zzyv;

    move v1, p11

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzk:J

    new-instance v1, Lcom/google/android/gms/internal/ads/zzzn;

    const-string v2, "ProgressiveMediaPeriod"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzzn;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzm:Lcom/google/android/gms/internal/ads/zzzn;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzn:Lcom/google/android/gms/internal/ads/zzvn;

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzl:J

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdf;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdc;->zza:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdf;-><init>(Lcom/google/android/gms/internal/ads/zzdc;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzo:Lcom/google/android/gms/internal/ads/zzdf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzvu;-><init>(Lcom/google/android/gms/internal/ads/zzvy;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzp:Ljava/lang/Runnable;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzvr;-><init>(Lcom/google/android/gms/internal/ads/zzvy;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzq:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzep;->zzc(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzr:Landroid/os/Handler;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzvw;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzv:[Lcom/google/android/gms/internal/ads/zzvw;

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzwj;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzL:J

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzE:I

    return-void
.end method

.method static synthetic zzJ()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzvy;->zzb:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzK()Lcom/google/android/gms/internal/ads/zzv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzvy;->zzc:Lcom/google/android/gms/internal/ads/zzv;

    return-object v0
.end method

.method private final zzR(I)V
    .locals 14

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzaa()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzA:Lcom/google/android/gms/internal/ads/zzvx;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvx;->zzd:[Z

    .line 3
    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwv;->zza(I)Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbg;->zza(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzg:Lcom/google/android/gms/internal/ads/zzve;

    .line 5
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzas;->zzg(Ljava/lang/String;)I

    move-result v5

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzK:J

    new-instance v13, Lcom/google/android/gms/internal/ads/zzuq;

    .line 7
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzep;->zzp(J)J

    move-result-wide v9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/ads/zzuq;-><init>(IILcom/google/android/gms/internal/ads/zzv;ILjava/lang/Object;JJ)V

    .line 8
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzve;->zzh(Lcom/google/android/gms/internal/ads/zzuq;)V

    const/4 v0, 0x1

    .line 9
    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method private final zzS(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzaa()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzM:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzy:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzA:Lcom/google/android/gms/internal/ads/zzvx;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvx;->zzb:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwj;->zzl(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzL:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzM:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzG:Z

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzK:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzN:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 4
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 5
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzwj;->zzb(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzs:Lcom/google/android/gms/internal/ads/zzur;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzur;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzur;->zzs(Lcom/google/android/gms/internal/ads/zzwm;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final zzT()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzG:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzU(Lcom/google/android/gms/internal/ads/zzvw;)Lcom/google/android/gms/internal/ads/zzaem;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzv:[Lcom/google/android/gms/internal/ads/zzvw;

    .line 2
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzvw;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 3
    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzw:Z

    if-eqz v1, :cond_2

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzvw;->zza:I

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x37

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Extractor added new track (id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after finishing tracks."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProgressiveMediaPeriod"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdt;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzacx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzacx;-><init>()V

    return-object p1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzj:Lcom/google/android/gms/internal/ads/zzyv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzf:Lcom/google/android/gms/internal/ads/zzrz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzh:Lcom/google/android/gms/internal/ads/zzru;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzwj;

    .line 5
    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/ads/zzrz;

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzru;

    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzwj;-><init>(Lcom/google/android/gms/internal/ads/zzyv;Lcom/google/android/gms/internal/ads/zzrz;Lcom/google/android/gms/internal/ads/zzru;)V

    .line 6
    invoke-virtual {v4, p0}, Lcom/google/android/gms/internal/ads/zzwj;->zzt(Lcom/google/android/gms/internal/ads/zzwi;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzv:[Lcom/google/android/gms/internal/ads/zzvw;

    add-int/lit8 v2, v0, 0x1

    .line 7
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzvw;

    .line 8
    aput-object p1, v1, v0

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzvw;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzv:[Lcom/google/android/gms/internal/ads/zzvw;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 10
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzwj;

    .line 11
    aput-object v4, p1, v0

    .line 12
    check-cast p1, [Lcom/google/android/gms/internal/ads/zzwj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    return-object v4
.end method

.method private final zzV()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzP:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzx:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzw:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzB:Lcom/google/android/gms/internal/ads/zzaed;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzwj;->zzi()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    if-eqz v4, :cond_b

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzo:Lcom/google/android/gms/internal/ads/zzdf;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdf;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 4
    array-length v0, v0

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/zzbg;

    new-array v3, v0, [Z

    move v4, v2

    :goto_1
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-ge v4, v0, :cond_9

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 5
    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzwj;->zzi()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v8

    .line 17
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v9, v8

    check-cast v9, Lcom/google/android/gms/internal/ads/zzv;

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    .line 6
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzas;->zza(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 7
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzas;->zzb(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    move v11, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v11, v7

    .line 8
    :goto_3
    aput-boolean v11, v3, v4

    iget-boolean v12, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzy:Z

    or-int/2addr v11, v12

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzy:Z

    .line 9
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzas;->zzc(Ljava/lang/String;)Z

    move-result v9

    iget-wide v11, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzl:J

    cmp-long v11, v11, v5

    if-eqz v11, :cond_4

    if-ne v0, v7, :cond_4

    if-eqz v9, :cond_4

    move v9, v7

    goto :goto_4

    :cond_4
    move v9, v2

    :goto_4
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzz:Z

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzt:Lcom/google/android/gms/internal/ads/zzagf;

    if-eqz v9, :cond_8

    if-nez v10, :cond_5

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzv:[Lcom/google/android/gms/internal/ads/zzvw;

    .line 10
    aget-object v11, v11, v4

    iget-boolean v11, v11, Lcom/google/android/gms/internal/ads/zzvw;->zzb:Z

    if-eqz v11, :cond_7

    :cond_5
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzv;->zzl:Lcom/google/android/gms/internal/ads/zzap;

    if-nez v11, :cond_6

    new-instance v11, Lcom/google/android/gms/internal/ads/zzap;

    new-array v12, v7, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v9, v12, v2

    .line 11
    invoke-direct {v11, v5, v6, v12}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    goto :goto_5

    .line 16
    :cond_6
    new-array v5, v7, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v9, v5, v2

    .line 12
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzap;->zzg([Lcom/google/android/gms/internal/ads/zzao;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v11

    .line 11
    :goto_5
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v5

    .line 13
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzt;->zzk(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v8

    :cond_7
    if-eqz v10, :cond_8

    iget v5, v8, Lcom/google/android/gms/internal/ads/zzv;->zzh:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    iget v5, v8, Lcom/google/android/gms/internal/ads/zzv;->zzi:I

    if-ne v5, v6, :cond_8

    iget v5, v9, Lcom/google/android/gms/internal/ads/zzagf;->zza:I

    if-eq v5, v6, :cond_8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v6

    .line 14
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzh(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v8

    :cond_8
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzf:Lcom/google/android/gms/internal/ads/zzrz;

    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/ads/zzrz;->zzb(Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v5

    .line 15
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzv;->zzb(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v5

    .line 16
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbg;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzv;

    aput-object v5, v7, v2

    invoke-direct {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzbg;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzv;)V

    aput-object v6, v1, v4

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzH:Z

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzv;->zzu:Z

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzH:Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 12
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvx;

    .line 18
    new-instance v2, Lcom/google/android/gms/internal/ads/zzwv;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzwv;-><init>([Lcom/google/android/gms/internal/ads/zzbg;)V

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzvx;-><init>(Lcom/google/android/gms/internal/ads/zzwv;[Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzA:Lcom/google/android/gms/internal/ads/zzvx;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzz:Z

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzC:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_a

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzl:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzC:J

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzB:Lcom/google/android/gms/internal/ads/zzaed;

    .line 19
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzvo;-><init>(Lcom/google/android/gms/internal/ads/zzvy;Lcom/google/android/gms/internal/ads/zzaed;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzB:Lcom/google/android/gms/internal/ads/zzaed;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzi:Lcom/google/android/gms/internal/ads/zzvq;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzC:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzB:Lcom/google/android/gms/internal/ads/zzaed;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzD:Z

    .line 20
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzvq;->zzb(JLcom/google/android/gms/internal/ads/zzaed;Z)V

    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzx:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzs:Lcom/google/android/gms/internal/ads/zzur;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzur;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzur;->zzp(Lcom/google/android/gms/internal/ads/zzus;)V

    :cond_b
    :goto_6
    return-void
.end method

.method private final zzW()V
    .locals 10

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzd:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvy;->zze:Lcom/google/android/gms/internal/ads/zzgb;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzvp;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzn:Lcom/google/android/gms/internal/ads/zzvn;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzo:Lcom/google/android/gms/internal/ads/zzdf;

    move-object v0, v7

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzvp;-><init>(Lcom/google/android/gms/internal/ads/zzvy;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzgb;Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzdf;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzx:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzZ()Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzC:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzL:J

    cmp-long v0, v4, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzO:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzL:J

    return-void

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzB:Lcom/google/android/gms/internal/ads/zzaed;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaed;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzL:J

    invoke-interface {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzaed;->zzc(J)Lcom/google/android/gms/internal/ads/zzaeb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaeb;->zza:Lcom/google/android/gms/internal/ads/zzaee;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzL:J

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzaee;->zzc:J

    .line 4
    invoke-virtual {v7, v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzvp;->zzd(JJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 5
    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzL:J

    .line 6
    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzwj;->zzc(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzL:J

    .line 7
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzX()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzN:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzm:Lcom/google/android/gms/internal/ads/zzzn;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzE:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzze;->zza(I)I

    move-result v1

    .line 8
    invoke-virtual {v0, v7, p0, v1}, Lcom/google/android/gms/internal/ads/zzzn;->zzd(Lcom/google/android/gms/internal/ads/zzzj;Lcom/google/android/gms/internal/ads/zzzf;I)J

    return-void
.end method

.method private final zzX()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzwj;->zzd()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private final zzY(Z)J
    .locals 6

    const/4 v0, 0x0

    const-wide/high16 v1, -0x8000000000000000L

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzA:Lcom/google/android/gms/internal/ads/zzvx;

    .line 5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/ads/zzvx;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzvx;->zzc:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1

    .line 3
    :cond_0
    aget-object v3, v3, v0

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzwj;->zzj()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method private final zzZ()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzL:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzaa()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackState",
            "seekMap"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzx:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzA:Lcom/google/android/gms/internal/ads/zzvx;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzB:Lcom/google/android/gms/internal/ads/zzaed;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzA(Lcom/google/android/gms/internal/ads/zzzj;JJZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvp;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvp;->zzf()Lcom/google/android/gms/internal/ads/zzgy;

    move-result-object v2

    .line 3
    new-instance v15, Lcom/google/android/gms/internal/ads/zzul;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvp;->zze()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvp;->zzh()Lcom/google/android/gms/internal/ads/zzgf;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgy;->zzg()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgy;->zzh()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgy;->zzf()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzul;-><init>(JLcom/google/android/gms/internal/ads/zzgf;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvp;->zze()J

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvp;->zzg()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzC:J

    new-instance v13, Lcom/google/android/gms/internal/ads/zzuq;

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzep;->zzp(J)J

    move-result-wide v11

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzep;->zzp(J)J

    move-result-wide v1

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v13

    move-object v3, v13

    move-wide v13, v1

    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/internal/ads/zzuq;-><init>(IILcom/google/android/gms/internal/ads/zzv;ILjava/lang/Object;JJ)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzg:Lcom/google/android/gms/internal/ads/zzve;

    .line 7
    invoke-virtual {v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzve;->zzf(Lcom/google/android/gms/internal/ads/zzul;Lcom/google/android/gms/internal/ads/zzuq;)V

    if-nez p6, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 8
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 9
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzwj;->zzb(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzI:I

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzs:Lcom/google/android/gms/internal/ads/zzur;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzur;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzur;->zzs(Lcom/google/android/gms/internal/ads/zzwm;)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic zzB(Lcom/google/android/gms/internal/ads/zzzj;JJ)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvp;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzC:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzB:Lcom/google/android/gms/internal/ads/zzaed;

    if-eqz v2, :cond_1

    .line 2
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzvy;->zzY(Z)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    :goto_0
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzC:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzi:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzB:Lcom/google/android/gms/internal/ads/zzaed;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzD:Z

    .line 3
    invoke-interface {v2, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzvq;->zzb(JLcom/google/android/gms/internal/ads/zzaed;Z)V

    .line 4
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvp;->zzf()Lcom/google/android/gms/internal/ads/zzgy;

    move-result-object v2

    .line 5
    new-instance v14, Lcom/google/android/gms/internal/ads/zzul;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvp;->zze()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvp;->zzh()Lcom/google/android/gms/internal/ads/zzgf;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgy;->zzg()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgy;->zzh()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgy;->zzf()J

    move-result-wide v15

    move-object v4, v14

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object v2, v14

    move-wide v14, v15

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/internal/ads/zzul;-><init>(JLcom/google/android/gms/internal/ads/zzgf;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvp;->zze()J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzg:Lcom/google/android/gms/internal/ads/zzve;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvp;->zzg()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzC:J

    new-instance v1, Lcom/google/android/gms/internal/ads/zzuq;

    .line 8
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzep;->zzp(J)J

    move-result-wide v15

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzep;->zzp(J)J

    move-result-wide v17

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v18}, Lcom/google/android/gms/internal/ads/zzuq;-><init>(IILcom/google/android/gms/internal/ads/zzv;ILjava/lang/Object;JJ)V

    .line 9
    invoke-virtual {v4, v2, v1}, Lcom/google/android/gms/internal/ads/zzve;->zze(Lcom/google/android/gms/internal/ads/zzul;Lcom/google/android/gms/internal/ads/zzuq;)V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzO:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzs:Lcom/google/android/gms/internal/ads/zzur;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzur;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzur;->zzs(Lcom/google/android/gms/internal/ads/zzwm;)V

    return-void
.end method

.method public final bridge synthetic zzC(Lcom/google/android/gms/internal/ads/zzzj;JJI)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p6

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzvp;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvp;->zzf()Lcom/google/android/gms/internal/ads/zzgy;

    move-result-object v3

    if-nez v1, :cond_0

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzul;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvp;->zze()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvp;->zzh()Lcom/google/android/gms/internal/ads/zzgf;

    move-result-object v7

    move-object v4, v3

    move-wide/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzul;-><init>(JLcom/google/android/gms/internal/ads/zzgf;J)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzul;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvp;->zze()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvp;->zzh()Lcom/google/android/gms/internal/ads/zzgf;

    move-result-object v11

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgy;->zzg()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgy;->zzh()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgy;->zzf()J

    move-result-wide v18

    move-object v8, v4

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-direct/range {v8 .. v19}, Lcom/google/android/gms/internal/ads/zzul;-><init>(JLcom/google/android/gms/internal/ads/zzgf;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v3, v4

    .line 3
    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzg:Lcom/google/android/gms/internal/ads/zzve;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvp;->zzg()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzC:J

    new-instance v2, Lcom/google/android/gms/internal/ads/zzuq;

    .line 6
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzep;->zzp(J)J

    move-result-wide v15

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzep;->zzp(J)J

    move-result-wide v17

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v18}, Lcom/google/android/gms/internal/ads/zzuq;-><init>(IILcom/google/android/gms/internal/ads/zzv;ILjava/lang/Object;JJ)V

    .line 7
    invoke-virtual {v4, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzve;->zzd(Lcom/google/android/gms/internal/ads/zzul;Lcom/google/android/gms/internal/ads/zzuq;I)V

    return-void
.end method

.method final synthetic zzD()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzV()V

    return-void
.end method

.method final synthetic zzE()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzP:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzs:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzur;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzur;->zzs(Lcom/google/android/gms/internal/ads/zzwm;)V

    :cond_0
    return-void
.end method

.method final synthetic zzF(Lcom/google/android/gms/internal/ads/zzaed;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzt:Lcom/google/android/gms/internal/ads/zzagf;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaec;

    const-wide/16 v3, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaec;-><init>(JJ)V

    .line 2
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzB:Lcom/google/android/gms/internal/ads/zzaed;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaed;->zza()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzC:J

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzJ:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaed;->zza()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    move v3, v4

    :cond_1
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzD:Z

    if-eq v4, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x7

    :goto_1
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzE:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzx:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzi:Lcom/google/android/gms/internal/ads/zzvq;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzC:J

    .line 4
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzvq;->zzb(JLcom/google/android/gms/internal/ads/zzaed;Z)V

    return-void

    .line 5
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzV()V

    return-void
.end method

.method final synthetic zzG()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzJ:Z

    return-void
.end method

.method final synthetic zzH()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Lcom/google/android/gms/internal/ads/zzvy;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzr:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic zzI(Z)J
    .locals 2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvy;->zzY(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method final synthetic zzL()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzk:J

    return-wide v0
.end method

.method final synthetic zzM()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzq:Ljava/lang/Runnable;

    return-object v0
.end method

.method final synthetic zzN()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzr:Landroid/os/Handler;

    return-object v0
.end method

.method final synthetic zzO()Lcom/google/android/gms/internal/ads/zzagf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzt:Lcom/google/android/gms/internal/ads/zzagf;

    return-object v0
.end method

.method final synthetic zzP(Lcom/google/android/gms/internal/ads/zzagf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzt:Lcom/google/android/gms/internal/ads/zzagf;

    return-void
.end method

.method final synthetic zzQ()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzC:J

    return-wide v0
.end method

.method public final zza()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzwj;->zze()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzm:Lcom/google/android/gms/internal/ads/zzzn;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzzn;->zzg(Lcom/google/android/gms/internal/ads/zzzk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzr:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzs:Lcom/google/android/gms/internal/ads/zzur;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzP:Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzur;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzs:Lcom/google/android/gms/internal/ads/zzur;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzo:Lcom/google/android/gms/internal/ads/zzdf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdf;->zza()Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzW()V

    return-void
.end method

.method public final zzc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzr()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzO:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzx:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Loading finished before preparation is complete."

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzwv;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzaa()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzA:Lcom/google/android/gms/internal/ads/zzvx;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwv;

    return-object v0
.end method

.method public final zze([Lcom/google/android/gms/internal/ads/zzyk;[Z[Lcom/google/android/gms/internal/ads/zzwk;[ZJ)J
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzaa()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzA:Lcom/google/android/gms/internal/ads/zzvx;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwv;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvx;->zzc:[Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzI:I

    const/4 v3, 0x0

    move v4, v3

    .line 4
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 5
    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v6, p1, v4

    if-eqz v6, :cond_0

    aget-boolean v6, p2, v4

    if-nez v6, :cond_1

    .line 6
    :cond_0
    check-cast v5, Lcom/google/android/gms/internal/ads/zzvv;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzvv;->zza()I

    move-result v5

    .line 7
    aget-boolean v6, v0, v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzI:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzI:I

    .line 8
    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    .line 9
    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzF:Z

    const/4 v4, 0x1

    if-eqz p2, :cond_3

    if-nez v2, :cond_4

    :goto_1
    move p2, v4

    goto :goto_2

    :cond_3
    const-wide/16 v5, 0x0

    cmp-long p2, p5, v5

    if-eqz p2, :cond_4

    .line 30
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzz:Z

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    move p2, v3

    :goto_2
    move v2, v3

    .line 10
    :goto_3
    array-length v5, p1

    if-ge v2, v5, :cond_9

    .line 11
    aget-object v5, p3, v2

    if-nez v5, :cond_8

    aget-object v5, p1, v2

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyk;->zze()I

    move-result v6

    if-ne v6, v4, :cond_5

    move v6, v4

    goto :goto_4

    :cond_5
    move v6, v3

    .line 12
    :goto_4
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    .line 13
    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzyk;->zzf(I)I

    move-result v6

    if-nez v6, :cond_6

    move v6, v4

    goto :goto_5

    :cond_6
    move v6, v3

    :goto_5
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyk;->zza()Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v6

    .line 14
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzwv;->zzb(Lcom/google/android/gms/internal/ads/zzbg;)I

    move-result v6

    .line 15
    aget-boolean v7, v0, v6

    xor-int/2addr v7, v4

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzI:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzI:I

    .line 16
    aput-boolean v4, v0, v6

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzH:Z

    .line 17
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyk;->zzc()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v5

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzv;->zzu:Z

    or-int/2addr v5, v7

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzH:Z

    new-instance v5, Lcom/google/android/gms/internal/ads/zzvv;

    .line 18
    invoke-direct {v5, p0, v6}, Lcom/google/android/gms/internal/ads/zzvv;-><init>(Lcom/google/android/gms/internal/ads/zzvy;I)V

    aput-object v5, p3, v2

    .line 19
    aput-boolean v4, p4, v2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 20
    aget-object p2, p2, v6

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzwj;->zzh()I

    move-result v5

    if-eqz v5, :cond_7

    .line 22
    invoke-virtual {p2, p5, p6, v4}, Lcom/google/android/gms/internal/ads/zzwj;->zzo(JZ)Z

    move-result p2

    if-nez p2, :cond_7

    move p2, v4

    goto :goto_6

    :cond_7
    move p2, v3

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzI:I

    if-nez p1, :cond_c

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzM:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzG:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzH:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzm:Lcom/google/android/gms/internal/ads/zzzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzn;->zze()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 23
    array-length p3, p2

    :goto_7
    if-ge v3, p3, :cond_a

    aget-object p4, p2, v3

    .line 24
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzwj;->zzs()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 25
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzn;->zzf()V

    goto :goto_a

    :cond_b
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzO:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 26
    array-length p2, p1

    move p3, v3

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    .line 27
    invoke-virtual {p4, v3}, Lcom/google/android/gms/internal/ads/zzwj;->zzb(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    .line 28
    invoke-virtual {p0, p5, p6}, Lcom/google/android/gms/internal/ads/zzvy;->zzj(J)J

    move-result-wide p5

    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    .line 29
    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    .line 30
    aput-boolean v4, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 25
    :cond_e
    :goto_a
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzF:Z

    return-wide p5
.end method

.method public final zzf(JZ)V
    .locals 5

    .line 1
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzz:Z

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzaa()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzZ()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzA:Lcom/google/android/gms/internal/ads/zzvx;

    .line 2
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzvx;->zzc:[Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 3
    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 4
    aget-object v3, v3, v2

    aget-boolean v4, p3, v2

    invoke-virtual {v3, p1, p2, v1, v4}, Lcom/google/android/gms/internal/ads/zzwj;->zzr(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final zzg(J)V
    .locals 0

    return-void
.end method

.method public final zzh()J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzH:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzH:Z

    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzK:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzG:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzO:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzX()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzN:I

    if-le v0, v2, :cond_2

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzG:Z

    goto :goto_0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final zzi()J
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzaa()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzO:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzI:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzL:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzy:Z

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 2
    array-length v0, v0

    move v6, v3

    move-wide v7, v4

    :goto_0
    if-ge v6, v0, :cond_4

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzA:Lcom/google/android/gms/internal/ads/zzvx;

    .line 3
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzvx;->zzb:[Z

    aget-boolean v10, v10, v6

    if-eqz v10, :cond_2

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzvx;->zzc:[Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    aget-object v9, v9, v6

    .line 4
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzwj;->zzk()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 5
    aget-object v9, v9, v6

    .line 6
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzwj;->zzj()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    .line 7
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzvy;->zzY(Z)J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v1

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzK:J

    return-wide v0

    :cond_6
    return-wide v7

    :cond_7
    :goto_1
    return-wide v1
.end method

.method public final zzj(J)J
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzaa()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzA:Lcom/google/android/gms/internal/ads/zzvx;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvx;->zzb:[Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzB:Lcom/google/android/gms/internal/ads/zzaed;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaed;->zzb()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzG:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzK:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzK:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzZ()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzL:J

    return-wide p1

    :cond_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzE:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_6

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzO:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzm:Lcom/google/android/gms/internal/ads/zzzn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzzn;->zze()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 4
    array-length v4, v4

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_9

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 5
    aget-object v6, v6, v5

    .line 6
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzwj;->zzh()I

    move-result v7

    if-nez v7, :cond_3

    cmp-long v7, v2, p1

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzz:Z

    if-eqz v7, :cond_4

    .line 7
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzwj;->zzg()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzwj;->zzn(I)Z

    move-result v6

    goto :goto_1

    .line 15
    :cond_4
    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzO:Z

    .line 8
    invoke-virtual {v6, p1, p2, v7}, Lcom/google/android/gms/internal/ads/zzwj;->zzo(JZ)Z

    move-result v6

    :goto_1
    if-nez v6, :cond_5

    .line 9
    aget-boolean v6, v0, v5

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzy:Z

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzM:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzL:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzO:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzH:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzm:Lcom/google/android/gms/internal/ads/zzzn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzn;->zze()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 10
    array-length v3, v2

    :goto_4
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzwj;->zzs()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 12
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzn;->zzf()V

    goto :goto_6

    .line 13
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzn;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 14
    array-length v2, v0

    move v3, v1

    :goto_5
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    .line 15
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzwj;->zzb(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    return-wide p1
.end method

.method public final zzk(JLcom/google/android/gms/internal/ads/zzlv;)J
    .locals 27

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzaa()V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzB:Lcom/google/android/gms/internal/ads/zzaed;

    .line 2
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzaed;->zzb()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    return-wide v5

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzB:Lcom/google/android/gms/internal/ads/zzaed;

    .line 3
    invoke-interface {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzaed;->zzc(J)Lcom/google/android/gms/internal/ads/zzaeb;

    move-result-object v4

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzaeb;->zza:Lcom/google/android/gms/internal/ads/zzaee;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaeb;->zzb:Lcom/google/android/gms/internal/ads/zzaee;

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzlv;->zzd:J

    cmp-long v10, v8, v5

    if-nez v10, :cond_2

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzlv;->zze:J

    cmp-long v8, v8, v5

    if-nez v8, :cond_1

    goto/16 :goto_e

    :cond_1
    move-wide v8, v5

    .line 4
    :cond_2
    sget-object v10, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    sub-long v10, v1, v8

    xor-long/2addr v8, v1

    xor-long v12, v1, v10

    cmp-long v12, v12, v5

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ltz v12, :cond_3

    move v12, v13

    goto :goto_0

    :cond_3
    move v12, v14

    :goto_0
    cmp-long v8, v8, v5

    if-ltz v8, :cond_4

    move v8, v13

    goto :goto_1

    :cond_4
    move v8, v14

    :goto_1
    or-int/2addr v8, v12

    const-wide/16 v15, 0x1

    const/16 v9, 0x3f

    const-wide v17, 0x7fffffffffffffffL

    if-eqz v8, :cond_5

    move-wide/from16 v19, v10

    goto :goto_2

    :cond_5
    ushr-long v19, v10, v9

    xor-long v19, v19, v15

    add-long v19, v19, v17

    :goto_2
    const-wide/high16 v21, -0x8000000000000000L

    cmp-long v8, v19, v21

    if-nez v8, :cond_7

    cmp-long v8, v10, v21

    if-nez v8, :cond_6

    move-wide/from16 v10, v21

    goto :goto_4

    :cond_6
    :goto_3
    move-wide/from16 v19, v21

    goto :goto_5

    :cond_7
    :goto_4
    cmp-long v8, v19, v17

    if-nez v8, :cond_9

    cmp-long v8, v10, v17

    if-eqz v8, :cond_8

    goto :goto_3

    :cond_8
    move-wide/from16 v19, v17

    :cond_9
    :goto_5
    iget-wide v10, v3, Lcom/google/android/gms/internal/ads/zzlv;->zze:J

    add-long v23, v1, v10

    xor-long/2addr v10, v1

    xor-long v25, v1, v23

    cmp-long v3, v25, v5

    if-ltz v3, :cond_a

    move v3, v13

    goto :goto_6

    :cond_a
    move v3, v14

    :goto_6
    cmp-long v5, v10, v5

    if-gez v5, :cond_b

    move v5, v13

    goto :goto_7

    :cond_b
    move v5, v14

    :goto_7
    or-int/2addr v3, v5

    if-eqz v3, :cond_c

    move-wide/from16 v5, v23

    goto :goto_8

    :cond_c
    ushr-long v5, v23, v9

    xor-long/2addr v5, v15

    add-long v5, v5, v17

    :goto_8
    cmp-long v3, v5, v21

    if-nez v3, :cond_d

    cmp-long v3, v23, v21

    if-nez v3, :cond_f

    goto :goto_9

    :cond_d
    move-wide/from16 v21, v23

    :goto_9
    cmp-long v3, v5, v17

    if-nez v3, :cond_e

    cmp-long v3, v21, v17

    goto :goto_a

    :cond_e
    move-wide/from16 v17, v5

    :cond_f
    :goto_a
    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzaee;->zzb:J

    cmp-long v3, v19, v5

    if-gtz v3, :cond_10

    cmp-long v3, v5, v17

    if-gtz v3, :cond_10

    move v3, v13

    goto :goto_b

    :cond_10
    move v3, v14

    :goto_b
    iget-wide v7, v4, Lcom/google/android/gms/internal/ads/zzaee;->zzb:J

    cmp-long v4, v19, v7

    if-gtz v4, :cond_11

    cmp-long v4, v7, v17

    if-gtz v4, :cond_11

    goto :goto_c

    :cond_11
    move v13, v14

    :goto_c
    if-eqz v3, :cond_13

    if-eqz v13, :cond_13

    sub-long v3, v5, v1

    sub-long v1, v7, v1

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-gtz v1, :cond_12

    goto :goto_d

    :cond_12
    return-wide v7

    :cond_13
    if-eqz v3, :cond_14

    :goto_d
    move-wide v1, v5

    goto :goto_e

    :cond_14
    if-eqz v13, :cond_15

    move-wide v1, v7

    :goto_e
    return-wide v1

    :cond_15
    return-wide v19
.end method

.method public final zzl()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzi()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzkn;)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzO:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzm:Lcom/google/android/gms/internal/ads/zzzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzn;->zzb()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzM:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzx:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzI:I

    if-nez v0, :cond_1

    goto :goto_1

    .line 1
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzo:Lcom/google/android/gms/internal/ads/zzdf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdf;->zza()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzn;->zze()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzW()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final zzn()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzm:Lcom/google/android/gms/internal/ads/zzzn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzn;->zze()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzo:Lcom/google/android/gms/internal/ads/zzdf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdf;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzwj;->zza()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzn:Lcom/google/android/gms/internal/ads/zzvn;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvn;->zzb()V

    return-void
.end method

.method final zzp(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzT()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    aget-object p1, v0, p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzO:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwj;->zzl(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final zzq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwj;->zzf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzr()V

    return-void
.end method

.method final zzr()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzE:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzze;->zza(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzm:Lcom/google/android/gms/internal/ads/zzzn;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzzn;->zzh(I)V

    return-void
.end method

.method final zzs(ILcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzhh;I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzT()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvy;->zzR(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 2
    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzO:Z

    .line 3
    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/google/android/gms/internal/ads/zzwj;->zzm(Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzhh;IZ)I

    move-result p2

    if-ne p2, v1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvy;->zzS(I)V

    :cond_1
    return p2
.end method

.method final zzt(IJ)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzT()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvy;->zzR(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 2
    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzO:Z

    .line 3
    invoke-virtual {v0, p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzwj;->zzp(JZ)I

    move-result p2

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzwj;->zzq(I)V

    if-nez p2, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvy;->zzS(I)V

    return v1

    :cond_1
    return p2
.end method

.method public final zzu(II)Lcom/google/android/gms/internal/ads/zzaem;
    .locals 1

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzvw;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzvw;-><init>(IZ)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzvy;->zzU(Lcom/google/android/gms/internal/ads/zzvw;)Lcom/google/android/gms/internal/ads/zzaem;

    move-result-object p1

    return-object p1
.end method

.method public final zzv()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzw:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzw(Lcom/google/android/gms/internal/ads/zzaed;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzvs;-><init>(Lcom/google/android/gms/internal/ads/zzvy;Lcom/google/android/gms/internal/ads/zzaed;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzr:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final zzx()Lcom/google/android/gms/internal/ads/zzaem;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvw;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzvw;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzvy;->zzU(Lcom/google/android/gms/internal/ads/zzvw;)Lcom/google/android/gms/internal/ads/zzaem;

    move-result-object v0

    return-object v0
.end method

.method public final zzy(Lcom/google/android/gms/internal/ads/zzv;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzr:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzp:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final bridge synthetic zzz(Lcom/google/android/gms/internal/ads/zzzj;JJLjava/io/IOException;I)Lcom/google/android/gms/internal/ads/zzzh;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzvp;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvp;->zzf()Lcom/google/android/gms/internal/ads/zzgy;

    move-result-object v3

    .line 3
    new-instance v14, Lcom/google/android/gms/internal/ads/zzul;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvp;->zze()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvp;->zzh()Lcom/google/android/gms/internal/ads/zzgf;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgy;->zzg()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgy;->zzh()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgy;->zzf()J

    move-result-wide v15

    move-object v4, v14

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object v3, v14

    move-wide v14, v15

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/internal/ads/zzul;-><init>(JLcom/google/android/gms/internal/ads/zzgf;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvp;->zzg()J

    .line 5
    sget-object v4, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    instance-of v4, v1, Lcom/google/android/gms/internal/ads/zzat;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v4, :cond_2

    .line 6
    instance-of v4, v1, Ljava/io/FileNotFoundException;

    if-nez v4, :cond_2

    instance-of v4, v1, Lcom/google/android/gms/internal/ads/zzgp;

    if-nez v4, :cond_2

    instance-of v4, v1, Lcom/google/android/gms/internal/ads/zzzm;

    if-nez v4, :cond_2

    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_1

    instance-of v7, v4, Lcom/google/android/gms/internal/ads/zzgc;

    if-eqz v7, :cond_0

    .line 7
    move-object v7, v4

    check-cast v7, Lcom/google/android/gms/internal/ads/zzgc;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzgc;->zza:I

    const/16 v8, 0x7d8

    if-ne v7, v8, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_0

    :cond_1
    add-int/lit8 v4, p7, -0x1

    mul-int/lit16 v4, v4, 0x3e8

    const/16 v7, 0x1388

    .line 9
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v7, v4

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v7, v5

    :goto_2
    cmp-long v4, v7, v5

    if-nez v4, :cond_3

    .line 7
    sget-object v4, Lcom/google/android/gms/internal/ads/zzzn;->zzb:Lcom/google/android/gms/internal/ads/zzzh;

    goto :goto_7

    .line 10
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzX()I

    move-result v4

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzN:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-le v4, v9, :cond_4

    move v9, v10

    goto :goto_3

    :cond_4
    move v9, v11

    :goto_3
    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzJ:Z

    if-nez v12, :cond_8

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzB:Lcom/google/android/gms/internal/ads/zzaed;

    if-eqz v12, :cond_5

    .line 11
    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzaed;->zza()J

    move-result-wide v12

    cmp-long v5, v12, v5

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzx:Z

    if-eqz v4, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzT()Z

    move-result v5

    if-nez v5, :cond_6

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzM:Z

    sget-object v4, Lcom/google/android/gms/internal/ads/zzzn;->zza:Lcom/google/android/gms/internal/ads/zzzh;

    goto :goto_7

    :cond_6
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzG:Z

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzK:J

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzN:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 12
    array-length v10, v6

    move v12, v11

    :goto_4
    if-ge v12, v10, :cond_7

    aget-object v13, v6, v12

    .line 13
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzwj;->zzb(Z)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 14
    :cond_7
    invoke-virtual {v2, v4, v5, v4, v5}, Lcom/google/android/gms/internal/ads/zzvp;->zzd(JJ)V

    goto :goto_6

    .line 11
    :cond_8
    :goto_5
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzN:I

    :goto_6
    invoke-static {v9, v7, v8}, Lcom/google/android/gms/internal/ads/zzzn;->zza(ZJ)Lcom/google/android/gms/internal/ads/zzzh;

    move-result-object v4

    .line 7
    :goto_7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzzh;->zza()Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzg:Lcom/google/android/gms/internal/ads/zzve;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvp;->zzg()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzC:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzep;->zzp(J)J

    move-result-wide v18

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzep;->zzp(J)J

    move-result-wide v20

    new-instance v8, Lcom/google/android/gms/internal/ads/zzuq;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object v12, v8

    invoke-direct/range {v12 .. v21}, Lcom/google/android/gms/internal/ads/zzuq;-><init>(IILcom/google/android/gms/internal/ads/zzv;ILjava/lang/Object;JJ)V

    .line 16
    invoke-virtual {v7, v3, v8, v1, v6}, Lcom/google/android/gms/internal/ads/zzve;->zzg(Lcom/google/android/gms/internal/ads/zzul;Lcom/google/android/gms/internal/ads/zzuq;Ljava/io/IOException;Z)V

    if-nez v5, :cond_9

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvp;->zze()J

    :cond_9
    return-object v4
.end method
