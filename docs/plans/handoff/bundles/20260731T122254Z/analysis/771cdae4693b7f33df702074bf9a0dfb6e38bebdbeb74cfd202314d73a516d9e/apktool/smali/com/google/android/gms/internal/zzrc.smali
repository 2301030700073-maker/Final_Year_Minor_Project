.class public final Lcom/google/android/gms/internal/zzrc;
.super Lcom/google/android/gms/internal/zzrh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzrc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrh<",
        "Lcom/google/android/gms/internal/zzrc;",
        ">;"
    }
.end annotation


# instance fields
.field public zzaVl:[Lcom/google/android/gms/internal/zzrc$zza;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrc;->zzBk()Lcom/google/android/gms/internal/zzrc;

    return-void
.end method

.method public static zzw([B)Lcom/google/android/gms/internal/zzrc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzrm;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzrc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzrc;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzrn;->zza(Lcom/google/android/gms/internal/zzrn;[B)Lcom/google/android/gms/internal/zzrn;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzrc;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzrc;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzrc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc;->zzaVl:[Lcom/google/android/gms/internal/zzrc$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzrc;->zzaVl:[Lcom/google/android/gms/internal/zzrc$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrl;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrc;->zza(Lcom/google/android/gms/internal/zzrh;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->zzaVl:[Lcom/google/android/gms/internal/zzrc$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrl;->hashCode([Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrc;->zzBI()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected zzB()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrh;->zzB()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc;->zzaVl:[Lcom/google/android/gms/internal/zzrc$zza;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc;->zzaVl:[Lcom/google/android/gms/internal/zzrc$zza;

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc;->zzaVl:[Lcom/google/android/gms/internal/zzrc$zza;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc;->zzaVl:[Lcom/google/android/gms/internal/zzrc$zza;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzrg;->zzc(ILcom/google/android/gms/internal/zzrn;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public zzBk()Lcom/google/android/gms/internal/zzrc;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzrc$zza;->zzBl()[Lcom/google/android/gms/internal/zzrc$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc;->zzaVl:[Lcom/google/android/gms/internal/zzrc$zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc;->zzaVU:Lcom/google/android/gms/internal/zzrj;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzrc;->zzaWf:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->zzaVl:[Lcom/google/android/gms/internal/zzrc$zza;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->zzaVl:[Lcom/google/android/gms/internal/zzrc$zza;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc;->zzaVl:[Lcom/google/android/gms/internal/zzrc$zza;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc;->zzaVl:[Lcom/google/android/gms/internal/zzrc$zza;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzrg;->zza(ILcom/google/android/gms/internal/zzrn;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrc;->zzv(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzrc;

    move-result-object p1

    return-object p1
.end method

.method public zzv(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzrc;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzrc;->zza(Lcom/google/android/gms/internal/zzrf;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzrf;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc;->zzaVl:[Lcom/google/android/gms/internal/zzrc$zza;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc;->zzaVl:[Lcom/google/android/gms/internal/zzrc$zza;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/zzrc$zza;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrc;->zzaVl:[Lcom/google/android/gms/internal/zzrc$zza;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    new-instance v2, Lcom/google/android/gms/internal/zzrc$zza;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzrc$zza;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/zzrc$zza;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzrc$zza;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc;->zzaVl:[Lcom/google/android/gms/internal/zzrc$zza;

    goto :goto_0

    :cond_5
    return-object p0
.end method
