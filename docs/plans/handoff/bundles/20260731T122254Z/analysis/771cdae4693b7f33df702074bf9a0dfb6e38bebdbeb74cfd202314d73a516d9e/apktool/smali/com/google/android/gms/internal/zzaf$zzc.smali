.class public final Lcom/google/android/gms/internal/zzaf$zzc;
.super Lcom/google/android/gms/internal/zzrh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrh<",
        "Lcom/google/android/gms/internal/zzaf$zzc;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzhR:[Lcom/google/android/gms/internal/zzaf$zzc;


# instance fields
.field public zzaC:Ljava/lang/String;

.field public zzhS:J

.field public zzhT:J

.field public zzhU:Z

.field public zzhV:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaf$zzc;->zzF()Lcom/google/android/gms/internal/zzaf$zzc;

    return-void
.end method

.method public static zzE()[Lcom/google/android/gms/internal/zzaf$zzc;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhR:[Lcom/google/android/gms/internal/zzaf$zzc;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzrl;->zzaWe:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzaf$zzc;->zzhR:[Lcom/google/android/gms/internal/zzaf$zzc;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzaf$zzc;

    sput-object v1, Lcom/google/android/gms/internal/zzaf$zzc;->zzhR:[Lcom/google/android/gms/internal/zzaf$zzc;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhR:[Lcom/google/android/gms/internal/zzaf$zzc;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzaf$zzc;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzaf$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzaC:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaf$zzc;->zzaC:Ljava/lang/String;

    if-eqz v2, :cond_3

    return v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzaC:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaf$zzc;->zzaC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhS:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhS:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhT:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhT:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    return v1

    :cond_5
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhU:Z

    iget-boolean v3, v0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhU:Z

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhV:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhV:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    return v1

    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaf$zzc;->zza(Lcom/google/android/gms/internal/zzrh;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzaC:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzaC:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhS:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhS:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long v6, v2, v4

    long-to-int v2, v6

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhT:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhT:J

    ushr-long/2addr v4, v0

    xor-long v6, v2, v4

    long-to-int v2, v6

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhU:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhV:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhV:J

    ushr-long/2addr v4, v0

    xor-long v6, v2, v4

    long-to-int v0, v6

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaf$zzc;->zzBI()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected zzB()I
    .locals 8

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrh;->zzB()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzaC:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzaC:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzk(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhS:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v1, 0x2

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhS:J

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/zzrg;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhT:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v1, v5

    if-eqz v7, :cond_2

    const/4 v1, 0x3

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhT:J

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/zzrg;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhU:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhU:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhV:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhV:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrg;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public zzF()Lcom/google/android/gms/internal/zzaf$zzc;
    .locals 4

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzaC:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhS:J

    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhT:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhU:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhV:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzaVU:Lcom/google/android/gms/internal/zzrj;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzaWf:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrg;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzaC:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzaC:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzb(ILjava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhS:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhS:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/zzrg;->zzb(IJ)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhT:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhT:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/zzrg;->zzb(IJ)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhU:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhU:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzb(IZ)V

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhV:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhV:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzb(IJ)V

    :cond_4
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaf$zzc;->zzd(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzaf$zzc;

    move-result-object p1

    return-object p1
.end method

.method public zzd(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzaf$zzc;
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

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzaf$zzc;->zza(Lcom/google/android/gms/internal/zzrf;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhV:J

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBv()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhU:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhT:J

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzhS:J

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzc;->zzaC:Ljava/lang/String;

    goto :goto_0

    :cond_6
    return-object p0
.end method
