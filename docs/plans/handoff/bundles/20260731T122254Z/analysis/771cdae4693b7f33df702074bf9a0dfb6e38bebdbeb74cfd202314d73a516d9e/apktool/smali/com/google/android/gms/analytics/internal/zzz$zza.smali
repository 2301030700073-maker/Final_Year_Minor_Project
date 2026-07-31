.class Lcom/google/android/gms/analytics/internal/zzz$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/internal/zzq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/zzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/analytics/internal/zzq$zza<",
        "Lcom/google/android/gms/analytics/internal/zzaa;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzJy:Lcom/google/android/gms/analytics/internal/zzf;

.field private final zzLT:Lcom/google/android/gms/analytics/internal/zzaa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzJy:Lcom/google/android/gms/analytics/internal/zzf;

    new-instance p1, Lcom/google/android/gms/analytics/internal/zzaa;

    invoke-direct {p1}, Lcom/google/android/gms/analytics/internal/zzaa;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzLT:Lcom/google/android/gms/analytics/internal/zzaa;

    return-void
.end method


# virtual methods
.method public zzc(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "ga_dryRun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzLT:Lcom/google/android/gms/analytics/internal/zzaa;

    iput p2, p1, Lcom/google/android/gms/analytics/internal/zzaa;->zzLY:I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzJy:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {p2}, Lcom/google/android/gms/analytics/internal/zzf;->zzhQ()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object p2

    const-string v0, "Bool xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/analytics/internal/zzaf;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public zzd(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "ga_dispatchPeriod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzLT:Lcom/google/android/gms/analytics/internal/zzaa;

    iput p2, p1, Lcom/google/android/gms/analytics/internal/zzaa;->zzLX:I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzJy:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {p2}, Lcom/google/android/gms/analytics/internal/zzf;->zzhQ()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object p2

    const-string v0, "Int xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/analytics/internal/zzaf;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic zziV()Lcom/google/android/gms/analytics/internal/zzp;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzjJ()Lcom/google/android/gms/analytics/internal/zzaa;

    move-result-object v0

    return-object v0
.end method

.method public zzjJ()Lcom/google/android/gms/analytics/internal/zzaa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzLT:Lcom/google/android/gms/analytics/internal/zzaa;

    return-object v0
.end method

.method public zzk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public zzl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ga_appName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzLT:Lcom/google/android/gms/analytics/internal/zzaa;

    iput-object p2, p1, Lcom/google/android/gms/analytics/internal/zzaa;->zzLU:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "ga_appVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzLT:Lcom/google/android/gms/analytics/internal/zzaa;

    iput-object p2, p1, Lcom/google/android/gms/analytics/internal/zzaa;->zzLV:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "ga_logLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzLT:Lcom/google/android/gms/analytics/internal/zzaa;

    iput-object p2, p1, Lcom/google/android/gms/analytics/internal/zzaa;->zzLW:Ljava/lang/String;

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzJy:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {p2}, Lcom/google/android/gms/analytics/internal/zzf;->zzhQ()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object p2

    const-string v0, "String xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/analytics/internal/zzaf;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
