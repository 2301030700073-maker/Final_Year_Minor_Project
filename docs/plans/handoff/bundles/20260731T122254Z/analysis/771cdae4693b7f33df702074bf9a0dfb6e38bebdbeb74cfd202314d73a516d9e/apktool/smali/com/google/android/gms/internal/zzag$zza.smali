.class public final Lcom/google/android/gms/internal/zzag$zza;
.super Lcom/google/android/gms/internal/zzrh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrh<",
        "Lcom/google/android/gms/internal/zzag$zza;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zziQ:[Lcom/google/android/gms/internal/zzag$zza;


# instance fields
.field public type:I

.field public zziR:Ljava/lang/String;

.field public zziS:[Lcom/google/android/gms/internal/zzag$zza;

.field public zziT:[Lcom/google/android/gms/internal/zzag$zza;

.field public zziU:[Lcom/google/android/gms/internal/zzag$zza;

.field public zziV:Ljava/lang/String;

.field public zziW:Ljava/lang/String;

.field public zziX:J

.field public zziY:Z

.field public zziZ:[Lcom/google/android/gms/internal/zzag$zza;

.field public zzja:[I

.field public zzjb:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzag$zza;->zzR()Lcom/google/android/gms/internal/zzag$zza;

    return-void
.end method

.method public static zzQ()[Lcom/google/android/gms/internal/zzag$zza;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzag$zza;->zziQ:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzrl;->zzaWe:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzag$zza;->zziQ:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzag$zza;

    sput-object v1, Lcom/google/android/gms/internal/zzag$zza;->zziQ:[Lcom/google/android/gms/internal/zzag$zza;

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
    sget-object v0, Lcom/google/android/gms/internal/zzag$zza;->zziQ:[Lcom/google/android/gms/internal/zzag$zza;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzag$zza;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    iget v2, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    iget v3, v0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziR:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/internal/zzag$zza;->zziR:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziR:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzag$zza;->zziR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziS:[Lcom/google/android/gms/internal/zzag$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzag$zza;->zziS:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrl;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziT:[Lcom/google/android/gms/internal/zzag$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzag$zza;->zziT:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrl;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziU:[Lcom/google/android/gms/internal/zzag$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzag$zza;->zziU:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrl;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziV:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/google/android/gms/internal/zzag$zza;->zziV:Ljava/lang/String;

    if-eqz v2, :cond_9

    return v1

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziV:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzag$zza;->zziV:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziW:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/google/android/gms/internal/zzag$zza;->zziW:Ljava/lang/String;

    if-eqz v2, :cond_b

    return v1

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziW:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzag$zza;->zziW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_b
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziX:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzag$zza;->zziX:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_c

    return v1

    :cond_c
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziY:Z

    iget-boolean v3, v0, Lcom/google/android/gms/internal/zzag$zza;->zziY:Z

    if-eq v2, v3, :cond_d

    return v1

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziZ:[Lcom/google/android/gms/internal/zzag$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzag$zza;->zziZ:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrl;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    iget-object v3, v0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrl;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    :cond_f
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjb:Z

    iget-boolean v3, v0, Lcom/google/android/gms/internal/zzag$zza;->zzjb:Z

    if-eq v2, v3, :cond_10

    return v1

    :cond_10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzag$zza;->zza(Lcom/google/android/gms/internal/zzrh;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziR:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziS:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrl;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziT:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrl;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziU:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrl;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziV:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziV:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziW:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziX:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zziX:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long v6, v2, v4

    long-to-int v0, v6

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziY:Z

    const/16 v2, 0x4d5

    const/16 v3, 0x4cf

    if-eqz v0, :cond_3

    const/16 v0, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v0, 0x4d5

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziZ:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrl;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrl;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjb:Z

    if-eqz v0, :cond_4

    const/16 v2, 0x4cf

    :cond_4
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzag$zza;->zzBI()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected zzB()I
    .locals 8

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrh;->zzB()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzrg;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zziR:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zziR:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzrg;->zzk(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zziS:[Lcom/google/android/gms/internal/zzag$zza;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zziS:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zziS:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zziS:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/zzrg;->zzc(ILcom/google/android/gms/internal/zzrn;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zziT:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zziT:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v0

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zziT:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zziT:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v4, v4, v0

    if-eqz v4, :cond_4

    const/4 v5, 0x4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/zzrg;->zzc(ILcom/google/android/gms/internal/zzrn;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zziU:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zziU:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v0

    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zziU:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v4, v4

    if-ge v0, v4, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zziU:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v4, v4, v0

    if-eqz v4, :cond_7

    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/zzrg;->zzc(ILcom/google/android/gms/internal/zzrn;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zziV:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x6

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zziV:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/zzrg;->zzk(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zziW:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x7

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zziW:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/zzrg;->zzk(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zziX:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_c

    const/16 v1, 0x8

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zziX:J

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/zzrg;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjb:Z

    if-eqz v1, :cond_d

    const/16 v1, 0x9

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjb:Z

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/zzrg;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    array-length v1, v1

    if-lez v1, :cond_f

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    array-length v5, v5

    if-ge v1, v5, :cond_e

    iget-object v5, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    aget v5, v5, v1

    invoke-static {v5}, Lcom/google/android/gms/internal/zzrg;->zzkJ(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zziZ:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zziZ:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v1, v1

    if-lez v1, :cond_11

    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zziZ:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v1, v1

    if-ge v3, v1, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zziZ:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v1, v1, v3

    if-eqz v1, :cond_10

    const/16 v2, 0xb

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzrg;->zzc(ILcom/google/android/gms/internal/zzrn;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_11
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zziY:Z

    if-eqz v1, :cond_12

    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziY:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    return v0
.end method

.method public zzR()Lcom/google/android/gms/internal/zzag$zza;
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziR:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzag$zza;->zzQ()[Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziS:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzag$zza;->zzQ()[Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziT:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzag$zza;->zzQ()[Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziU:[Lcom/google/android/gms/internal/zzag$zza;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziV:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziW:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziX:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziY:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzag$zza;->zzQ()[Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zziZ:[Lcom/google/android/gms/internal/zzag$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzrq;->zzaWh:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjb:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzaVU:Lcom/google/android/gms/internal/zzrj;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzaWf:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrg;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzrg;->zzy(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziR:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zziR:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzb(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziS:[Lcom/google/android/gms/internal/zzag$zza;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziS:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziS:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziS:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzrg;->zza(ILcom/google/android/gms/internal/zzrn;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziT:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziT:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziT:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziT:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzrg;->zza(ILcom/google/android/gms/internal/zzrn;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziU:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziU:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziU:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziU:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzrg;->zza(ILcom/google/android/gms/internal/zzrn;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziV:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziV:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrg;->zzb(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziW:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziW:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrg;->zzb(ILjava/lang/String;)V

    :cond_8
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziX:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziX:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrg;->zzb(IJ)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjb:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjb:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrg;->zzb(IZ)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    array-length v2, v2

    if-ge v0, v2, :cond_b

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzrg;->zzy(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziZ:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziZ:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    if-lez v0, :cond_d

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziZ:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    if-ge v1, v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziZ:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v0, v0, v1

    if-eqz v0, :cond_c

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzrg;->zza(ILcom/google/android/gms/internal/zzrn;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziY:Z

    if-eqz v0, :cond_e

    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zziY:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzb(IZ)V

    :cond_e
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzag$zza;->zzl(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object p1

    return-object p1
.end method

.method public zzl(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzag$zza;
    .locals 7
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzag$zza;->zza(Lcom/google/android/gms/internal/zzrf;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBv()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziY:Z

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzrf;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziZ:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziZ:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    :goto_1
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zziZ:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziZ:[Lcom/google/android/gms/internal/zzag$zza;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBy()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzkC(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBD()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_8

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzrf;->zzkE(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    array-length v2, v2

    :goto_4
    add-int/2addr v3, v2

    new-array v3, v3, [I

    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBD()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_5

    :pswitch_1
    add-int/lit8 v4, v2, 0x1

    aput v1, v3, v2

    move v2, v4

    goto :goto_5

    :cond_7
    iput-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    :cond_8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrf;->zzkD(I)V

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x50

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzrf;I)I

    move-result v0

    new-array v2, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v3, v0, :cond_a

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v5

    packed-switch v5, :pswitch_data_2

    goto :goto_7

    :pswitch_2
    add-int/lit8 v6, v4, 0x1

    aput v5, v2, v4

    move v4, v6

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    array-length v0, v0

    :goto_8
    if-nez v0, :cond_c

    array-length v3, v2

    if-ne v4, v3, :cond_c

    iput-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    goto/16 :goto_0

    :cond_c
    add-int v3, v0, v4

    new-array v3, v3, [I

    if-eqz v0, :cond_d

    iget-object v5, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    invoke-static {v5, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    invoke-static {v2, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzja:[I

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBv()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjb:Z

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziX:J

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziW:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziV:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzrf;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziU:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v2, :cond_e

    const/4 v2, 0x0

    goto :goto_9

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziU:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    :goto_9
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v2, :cond_f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zziU:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_a
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_10

    new-instance v1, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_10
    new-instance v1, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziU:[Lcom/google/android/gms/internal/zzag$zza;

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzrf;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziT:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v2, :cond_11

    const/4 v2, 0x0

    goto :goto_b

    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziT:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    :goto_b
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v2, :cond_12

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zziT:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_c
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_13

    new-instance v1, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_13
    new-instance v1, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziT:[Lcom/google/android/gms/internal/zzag$zza;

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzrq;->zzb(Lcom/google/android/gms/internal/zzrf;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziS:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v2, :cond_14

    const/4 v2, 0x0

    goto :goto_d

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zziS:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    :goto_d
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v2, :cond_15

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zziS:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    :goto_e
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_16

    new-instance v1, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_16
    new-instance v1, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziS:[Lcom/google/android/gms/internal/zzag$zza;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zziR:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_3
    iput v0, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    goto/16 :goto_0

    :sswitch_d
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x12 -> :sswitch_b
        0x1a -> :sswitch_a
        0x22 -> :sswitch_9
        0x2a -> :sswitch_8
        0x32 -> :sswitch_7
        0x3a -> :sswitch_6
        0x40 -> :sswitch_5
        0x48 -> :sswitch_4
        0x50 -> :sswitch_3
        0x52 -> :sswitch_2
        0x5a -> :sswitch_1
        0x60 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
