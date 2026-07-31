.class public Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/wearable/zzb;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:I

.field final zzCY:I

.field private final zzRx:Ljava/lang/String;

.field private final zzaEw:Ljava/lang/String;

.field private final zzaTu:Ljava/lang/String;

.field private zzaTv:B

.field private zzaTw:B

.field private zzaTx:B

.field private zzaTy:B

.field private zzadI:Ljava/lang/String;

.field private final zzadv:Ljava/lang/String;

.field private final zzaox:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zze;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BBBB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->mId:I

    iput p1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzCY:I

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaEw:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTu:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzRx:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzadv:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaox:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzadI:Ljava/lang/String;

    iput-byte p9, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTv:B

    iput-byte p10, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTw:B

    iput-byte p11, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTx:B

    iput-byte p12, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTy:B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;

    iget-byte v3, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTy:B

    iget-byte v4, v2, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTy:B

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    iget-byte v3, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTx:B

    iget-byte v4, v2, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTx:B

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    iget-byte v3, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTw:B

    iget-byte v4, v2, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTw:B

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    iget-byte v3, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTv:B

    iget-byte v4, v2, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTv:B

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    iget v3, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->mId:I

    iget v4, v2, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->mId:I

    if-eq v3, v4, :cond_6

    return v1

    :cond_6
    iget v3, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzCY:I

    iget v4, v2, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzCY:I

    if-eq v3, v4, :cond_7

    return v1

    :cond_7
    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaEw:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaEw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v1

    :cond_8
    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTu:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTu:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTu:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v1

    :cond_9
    iget-object v3, v2, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTu:Ljava/lang/String;

    if-eqz v3, :cond_a

    return v1

    :cond_a
    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzadI:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzadI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v1

    :cond_b
    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzRx:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzRx:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v1

    :cond_c
    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaox:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaox:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    return v1

    :cond_d
    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzadv:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzadv:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    :cond_e
    return v0

    :cond_f
    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzadI:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaEw:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzadI:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->mId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzadv:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzCY:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->mId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaEw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTu:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTu:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzRx:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzadv:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaox:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzadI:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTv:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTw:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTx:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTy:B

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AncsNotificationParcelable{mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzCY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAppId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaEw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDateTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTu:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mNotificationText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzRx:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzadv:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSubtitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaox:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDisplayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzadI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mEventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTv:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEventFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTw:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCategoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTx:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCategoryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTy:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zze;->zza(Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzAU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTu:Ljava/lang/String;

    return-object v0
.end method

.method public zzAV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzRx:Ljava/lang/String;

    return-object v0
.end method

.method public zzAW()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTv:B

    return v0
.end method

.method public zzAX()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTw:B

    return v0
.end method

.method public zzAY()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTx:B

    return v0
.end method

.method public zzAZ()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaTy:B

    return v0
.end method

.method public zzsK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaEw:Ljava/lang/String;

    return-object v0
.end method

.method public zzsb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;->zzaox:Ljava/lang/String;

    return-object v0
.end method
