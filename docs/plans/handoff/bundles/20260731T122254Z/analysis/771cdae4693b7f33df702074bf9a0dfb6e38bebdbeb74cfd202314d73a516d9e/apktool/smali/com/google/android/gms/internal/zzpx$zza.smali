.class public final Lcom/google/android/gms/internal/zzpx$zza;
.super Lcom/google/android/gms/internal/zzrh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrh<",
        "Lcom/google/android/gms/internal/zzpx$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public zzaOZ:J

.field public zzaPa:Lcom/google/android/gms/internal/zzaf$zzj;

.field public zziO:Lcom/google/android/gms/internal/zzaf$zzf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpx$zza;->zzzY()Lcom/google/android/gms/internal/zzpx$zza;

    return-void
.end method

.method public static zzs([B)Lcom/google/android/gms/internal/zzpx$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzrm;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzpx$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpx$zza;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzrn;->zza(Lcom/google/android/gms/internal/zzrn;[B)Lcom/google/android/gms/internal/zzrn;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzpx$zza;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzpx$zza;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzpx$zza;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaOZ:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzpx$zza;->zzaOZ:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpx$zza;->zziO:Lcom/google/android/gms/internal/zzaf$zzf;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/internal/zzpx$zza;->zziO:Lcom/google/android/gms/internal/zzaf$zzf;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpx$zza;->zziO:Lcom/google/android/gms/internal/zzaf$zzf;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzpx$zza;->zziO:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaf$zzf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaPa:Lcom/google/android/gms/internal/zzaf$zzj;

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/google/android/gms/internal/zzpx$zza;->zzaPa:Lcom/google/android/gms/internal/zzaf$zzj;

    if-eqz v2, :cond_6

    return v1

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaPa:Lcom/google/android/gms/internal/zzaf$zzj;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzpx$zza;->zzaPa:Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaf$zzj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpx$zza;->zza(Lcom/google/android/gms/internal/zzrh;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaOZ:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaOZ:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long v4, v0, v2

    long-to-int v0, v4

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zziO:Lcom/google/android/gms/internal/zzaf$zzf;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zziO:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaf$zzf;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaPa:Lcom/google/android/gms/internal/zzaf$zzj;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaPa:Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaf$zzj;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpx$zza;->zzBI()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected zzB()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrh;->zzB()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaOZ:J

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpx$zza;->zziO:Lcom/google/android/gms/internal/zzaf$zzf;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpx$zza;->zziO:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzc(ILcom/google/android/gms/internal/zzrn;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaPa:Lcom/google/android/gms/internal/zzaf$zzj;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaPa:Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzc(ILcom/google/android/gms/internal/zzrn;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaOZ:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzb(IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zziO:Lcom/google/android/gms/internal/zzaf$zzf;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpx$zza;->zziO:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zza(ILcom/google/android/gms/internal/zzrn;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaPa:Lcom/google/android/gms/internal/zzaf$zzj;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaPa:Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zza(ILcom/google/android/gms/internal/zzrn;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzrh;->zza(Lcom/google/android/gms/internal/zzrg;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzrn;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpx$zza;->zzu(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzpx$zza;

    move-result-object p1

    return-object p1
.end method

.method public zzu(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzpx$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzpx$zza;->zza(Lcom/google/android/gms/internal/zzrf;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaPa:Lcom/google/android/gms/internal/zzaf$zzj;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaf$zzj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaPa:Lcom/google/android/gms/internal/zzaf$zzj;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaPa:Lcom/google/android/gms/internal/zzaf$zzj;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zziO:Lcom/google/android/gms/internal/zzaf$zzf;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaf$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zziO:Lcom/google/android/gms/internal/zzaf$zzf;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zziO:Lcom/google/android/gms/internal/zzaf$zzf;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaOZ:J

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public zzzY()Lcom/google/android/gms/internal/zzpx$zza;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaOZ:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zziO:Lcom/google/android/gms/internal/zzaf$zzf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaPa:Lcom/google/android/gms/internal/zzaf$zzj;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaVU:Lcom/google/android/gms/internal/zzrj;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzpx$zza;->zzaWf:I

    return-object p0
.end method
