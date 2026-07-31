.class public final Lcom/google/android/gms/internal/zzaf$zzh;
.super Lcom/google/android/gms/internal/zzrh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzh"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrh<",
        "Lcom/google/android/gms/internal/zzaf$zzh;",
        ">;"
    }
.end annotation


# static fields
.field public static final zziB:Lcom/google/android/gms/internal/zzri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzri<",
            "Lcom/google/android/gms/internal/zzag$zza;",
            "Lcom/google/android/gms/internal/zzaf$zzh;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziC:[Lcom/google/android/gms/internal/zzaf$zzh;


# instance fields
.field public zziD:[I

.field public zziE:[I

.field public zziF:[I

.field public zziG:I

.field public zziH:[I

.field public zziI:I

.field public zziJ:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/zzaf$zzh;

    const/16 v1, 0xb

    const/16 v2, 0x32a

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzri;->zza(ILjava/lang/Class;I)Lcom/google/android/gms/internal/zzri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzaf$zzh;->zziB:Lcom/google/android/gms/internal/zzri;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzaf$zzh;

    sput-object v0, Lcom/google/android/gms/internal/zzaf$zzh;->zziC:[Lcom/google/android/gms/internal/zzaf$zzh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaf$zzh;->zzM()Lcom/google/android/gms/internal/zzaf$zzh;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzaf$zzh;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzaf$zzh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrl;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrl;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrl;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziG:I

    iget v3, v0, Lcom/google/android/gms/internal/zzaf$zzh;->zziG:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrl;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziI:I

    iget v3, v0, Lcom/google/android/gms/internal/zzaf$zzh;->zziI:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziJ:I

    iget v3, v0, Lcom/google/android/gms/internal/zzaf$zzh;->zziJ:I

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaf$zzh;->zza(Lcom/google/android/gms/internal/zzrh;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrl;->hashCode([I)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrl;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrl;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziG:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrl;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziI:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziJ:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaf$zzh;->zzBI()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected zzB()I
    .locals 5

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrh;->zzB()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    array-length v4, v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzrg;->zzkJ(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzrg;->zzkJ(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    array-length v1, v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    array-length v4, v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzrg;->zzkJ(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziG:I

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    iget v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziG:I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzrg;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    array-length v1, v1

    if-lez v1, :cond_8

    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    array-length v3, v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    aget v3, v3, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/zzrg;->zzkJ(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziI:I

    if-eqz v1, :cond_9

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziI:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziJ:I

    if-eqz v1, :cond_a

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziJ:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    return v0
.end method

.method public zzM()Lcom/google/android/gms/internal/zzaf$zzh;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzrq;->zzaWh:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    sget-object v0, Lcom/google/android/gms/internal/zzrq;->zzaWh:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    sget-object v0, Lcom/google/android/gms/internal/zzrq;->zzaWh:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziG:I

    sget-object v1, Lcom/google/android/gms/internal/zzrq;->zzaWh:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziI:I

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziJ:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzaVU:Lcom/google/android/gms/internal/zzrj;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zzaWf:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrg;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzrg;->zzy(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzrg;->zzy(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzrg;->zzy(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziG:I

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziG:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrg;->zzy(II)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    array-length v0, v0

    if-lez v0, :cond_4

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    array-length v0, v0

    if-ge v1, v0, :cond_4

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrg;->zzy(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziI:I

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziI:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzy(II)V

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziJ:I

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziJ:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzy(II)V

    :cond_6
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaf$zzh;->zzi(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzaf$zzh;

    move-result-object p1

    return-object p1
.end method

.method public zzi(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzaf$zzh;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzaf$zzh;->zza(Lcom/google/android/gms/internal/zzrf;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziJ:I

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziI:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBy()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzkC(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBD()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzrf;->zzkE(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    array-length v2, v2

    :goto_2
    add-int/2addr v3, v2

    new-array v3, v3, [I

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_3
    array-length v1, v3

    if-ge v2, v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iput-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    goto/16 :goto_13

    :sswitch_3
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzrf;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    array-length v2, v2

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziH:[I

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziG:I

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBy()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzkC(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBD()I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzrf;->zzkE(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    array-length v2, v2

    :goto_7
    add-int/2addr v3, v2

    new-array v3, v3, [I

    if-eqz v2, :cond_a

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_8
    array-length v1, v3

    if-ge v2, v1, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    iput-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    goto/16 :goto_13

    :sswitch_6
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzrf;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    if-nez v2, :cond_c

    const/4 v2, 0x0

    goto :goto_9

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    array-length v2, v2

    :goto_9
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_d

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_a
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziF:[I

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBy()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzkC(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBD()I

    move-result v4

    if-lez v4, :cond_f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_f
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzrf;->zzkE(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    if-nez v2, :cond_10

    const/4 v2, 0x0

    goto :goto_c

    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    array-length v2, v2

    :goto_c
    add-int/2addr v3, v2

    new-array v3, v3, [I

    if-eqz v2, :cond_11

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_d
    array-length v1, v3

    if-ge v2, v1, :cond_12

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_12
    iput-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    goto/16 :goto_13

    :sswitch_8
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzrf;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_e

    :cond_13
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    array-length v2, v2

    :goto_e
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_14

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    :goto_f
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_15

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziE:[I

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBy()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzkC(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBD()I

    move-result v4

    if-lez v4, :cond_16

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_16
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzrf;->zzkE(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    if-nez v2, :cond_17

    const/4 v2, 0x0

    goto :goto_11

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    array-length v2, v2

    :goto_11
    add-int/2addr v3, v2

    new-array v3, v3, [I

    if-eqz v2, :cond_18

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_18
    :goto_12
    array-length v1, v3

    if-ge v2, v1, :cond_19

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_19
    iput-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    :goto_13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzkD(I)V

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzrf;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_14

    :cond_1a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    array-length v2, v2

    :goto_14
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_1b

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1b
    :goto_15
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_1c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzh;->zziD:[I

    goto/16 :goto_0

    :sswitch_b
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0xa -> :sswitch_9
        0x10 -> :sswitch_8
        0x12 -> :sswitch_7
        0x18 -> :sswitch_6
        0x1a -> :sswitch_5
        0x20 -> :sswitch_4
        0x28 -> :sswitch_3
        0x2a -> :sswitch_2
        0x30 -> :sswitch_1
        0x38 -> :sswitch_0
    .end sparse-switch
.end method
