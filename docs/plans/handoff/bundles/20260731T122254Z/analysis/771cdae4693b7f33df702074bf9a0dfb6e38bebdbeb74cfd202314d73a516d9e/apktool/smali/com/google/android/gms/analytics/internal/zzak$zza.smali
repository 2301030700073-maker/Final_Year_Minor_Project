.class Lcom/google/android/gms/analytics/internal/zzak$zza;
.super Lcom/google/android/gms/analytics/internal/zzc;

# interfaces
.implements Lcom/google/android/gms/analytics/internal/zzq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/zzak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/internal/zzc;",
        "Lcom/google/android/gms/analytics/internal/zzq$zza<",
        "Lcom/google/android/gms/analytics/internal/zzal;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzMD:Lcom/google/android/gms/analytics/internal/zzal;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzc;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    new-instance p1, Lcom/google/android/gms/analytics/internal/zzal;

    invoke-direct {p1}, Lcom/google/android/gms/analytics/internal/zzal;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzMD:Lcom/google/android/gms/analytics/internal/zzal;

    return-void
.end method


# virtual methods
.method public zzc(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "ga_autoActivityTracking"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzMD:Lcom/google/android/gms/analytics/internal/zzal;

    iput p2, p1, Lcom/google/android/gms/analytics/internal/zzal;->zzMG:I

    return-void

    :cond_0
    const-string v0, "ga_anonymizeIp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzMD:Lcom/google/android/gms/analytics/internal/zzal;

    iput p2, p1, Lcom/google/android/gms/analytics/internal/zzal;->zzMH:I

    return-void

    :cond_1
    const-string v0, "ga_reportUncaughtExceptions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzMD:Lcom/google/android/gms/analytics/internal/zzal;

    iput p2, p1, Lcom/google/android/gms/analytics/internal/zzal;->zzMI:I

    return-void

    :cond_2
    const-string p2, "bool configuration name not recognized"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public zzd(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "ga_sessionTimeout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzMD:Lcom/google/android/gms/analytics/internal/zzal;

    iput p2, p1, Lcom/google/android/gms/analytics/internal/zzal;->zzMF:I

    return-void

    :cond_0
    const-string p2, "int configuration name not recognized"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic zziV()Lcom/google/android/gms/analytics/internal/zzp;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzkx()Lcom/google/android/gms/analytics/internal/zzal;

    move-result-object v0

    return-object v0
.end method

.method public zzk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzMD:Lcom/google/android/gms/analytics/internal/zzal;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/zzal;->zzMJ:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzkx()Lcom/google/android/gms/analytics/internal/zzal;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzMD:Lcom/google/android/gms/analytics/internal/zzal;

    return-object v0
.end method

.method public zzl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ga_trackingId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzMD:Lcom/google/android/gms/analytics/internal/zzal;

    iput-object p2, p1, Lcom/google/android/gms/analytics/internal/zzal;->zztd:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "ga_sampleFrequency"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzMD:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/android/gms/analytics/internal/zzal;->zzME:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error parsing ga_sampleFrequency value"

    invoke-virtual {p0, v0, p2, p1}, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p2, "string configuration name not recognized"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/analytics/internal/zzak$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
