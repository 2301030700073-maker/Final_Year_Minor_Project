.class public Lcom/google/android/gms/location/places/internal/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/places/zzg;


# instance fields
.field private mIndex:I

.field private final zzaAW:Ljava/lang/String;

.field private final zzaAX:Ljava/lang/CharSequence;

.field private final zzyZ:I

.field private final zzza:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzaAW:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzyZ:I

    iput p3, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzza:I

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzaAX:Ljava/lang/CharSequence;

    iput p5, p0, Lcom/google/android/gms/location/places/internal/zzp;->mIndex:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/location/places/internal/zzp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/location/places/internal/zzp;

    iget v3, v1, Lcom/google/android/gms/location/places/internal/zzp;->zzyZ:I

    iget v4, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzyZ:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcom/google/android/gms/location/places/internal/zzp;->zzza:I

    iget v4, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzza:I

    if-ne v3, v4, :cond_2

    iget-object v3, v1, Lcom/google/android/gms/location/places/internal/zzp;->zzaAW:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzaAW:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v1, Lcom/google/android/gms/location/places/internal/zzp;->zzaAX:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzaAX:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzp;->zzuZ()Lcom/google/android/gms/location/places/zzg;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzyZ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzza:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzaAW:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzaAX:Ljava/lang/CharSequence;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzuZ()Lcom/google/android/gms/location/places/zzg;
    .locals 0

    return-object p0
.end method
