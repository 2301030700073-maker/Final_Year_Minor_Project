.class public final Lcom/google/android/gms/internal/zzrc$zza;
.super Lcom/google/android/gms/internal/zzrh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzrc$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrh<",
        "Lcom/google/android/gms/internal/zzrc$zza;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzaVm:[Lcom/google/android/gms/internal/zzrc$zza;


# instance fields
.field public name:Ljava/lang/String;

.field public zzaVn:Lcom/google/android/gms/internal/zzrc$zza$zza;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrc$zza;->zzBm()Lcom/google/android/gms/internal/zzrc$zza;

    return-void
.end method

.method public static zzBl()[Lcom/google/android/gms/internal/zzrc$zza;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzrc$zza;->zzaVm:[Lcom/google/android/gms/internal/zzrc$zza;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzrl;->zzaWe:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzrc$zza;->zzaVm:[Lcom/google/android/gms/internal/zzrc$zza;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzrc$zza;

    sput-object v1, Lcom/google/android/gms/internal/zzrc$zza;->zzaVm:[Lcom/google/android/gms/internal/zzrc$zza;

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
    sget-object v0, Lcom/google/android/gms/internal/zzrc$zza;->zzaVm:[Lcom/google/android/gms/internal/zzrc$zza;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzrc$zza;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzrc$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza;->name:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzrc$zza;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    return v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrc$zza;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza;->zzaVn:Lcom/google/android/gms/internal/zzrc$zza$zza;

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/zzrc$zza;->zzaVn:Lcom/google/android/gms/internal/zzrc$zza$zza;

    if-eqz v2, :cond_5

    return v1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza;->zzaVn:Lcom/google/android/gms/internal/zzrc$zza$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrc$zza;->zzaVn:Lcom/google/android/gms/internal/zzrc$zza$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzrc$zza$zza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrc$zza;->zza(Lcom/google/android/gms/internal/zzrh;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza;->zzaVn:Lcom/google/android/gms/internal/zzrc$zza$zza;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza;->zzaVn:Lcom/google/android/gms/internal/zzrc$zza$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrc$zza$zza;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrc$zza;->zzBI()I

    move-result v0

    add-int/2addr v2, v0

    return v2
.end method

.method protected zzB()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrh;->zzB()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza;->name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzrg;->zzk(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza;->zzaVn:Lcom/google/android/gms/internal/zzrc$zza$zza;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza;->zzaVn:Lcom/google/android/gms/internal/zzrc$zza$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzc(ILcom/google/android/gms/internal/zzrn;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public zzBm()Lcom/google/android/gms/internal/zzrc$zza;
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza;->zzaVn:Lcom/google/android/gms/internal/zzrc$zza$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza;->zzaVU:Lcom/google/android/gms/internal/zzrj;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzrc$zza;->zzaWf:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzrg;->zzb(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza;->zzaVn:Lcom/google/android/gms/internal/zzrc$zza$zza;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza;->zzaVn:Lcom/google/android/gms/internal/zzrc$zza$zza;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zza(ILcom/google/android/gms/internal/zzrn;)V

    :cond_0
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrc$zza;->zzw(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzrc$zza;

    move-result-object p1

    return-object p1
.end method

.method public zzw(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzrc$zza;
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

    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzrc$zza;->zza(Lcom/google/android/gms/internal/zzrf;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza;->zzaVn:Lcom/google/android/gms/internal/zzrc$zza$zza;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzrc$zza$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzrc$zza$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza;->zzaVn:Lcom/google/android/gms/internal/zzrc$zza$zza;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza;->zzaVn:Lcom/google/android/gms/internal/zzrc$zza$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza;->name:Ljava/lang/String;

    goto :goto_0

    :cond_4
    return-object p0
.end method
