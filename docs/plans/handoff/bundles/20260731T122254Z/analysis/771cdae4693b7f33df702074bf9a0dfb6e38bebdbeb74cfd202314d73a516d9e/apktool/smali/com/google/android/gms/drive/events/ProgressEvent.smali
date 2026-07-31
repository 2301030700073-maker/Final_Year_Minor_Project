.class public final Lcom/google/android/gms/drive/events/ProgressEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/events/DriveEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/events/ProgressEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzCY:I

.field final zzSq:I

.field final zzacT:Lcom/google/android/gms/drive/DriveId;

.field final zzaeg:J

.field final zzaeh:J

.field final zzwS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/events/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/drive/events/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/events/ProgressEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;IJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzCY:I

    iput-object p2, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzacT:Lcom/google/android/gms/drive/DriveId;

    iput p3, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzwS:I

    iput-wide p4, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzaeg:J

    iput-wide p6, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzaeh:J

    iput p8, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzSq:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/drive/events/ProgressEvent;

    iget-object v3, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzacT:Lcom/google/android/gms/drive/DriveId;

    iget-object v4, v2, Lcom/google/android/gms/drive/events/ProgressEvent;->zzacT:Lcom/google/android/gms/drive/DriveId;

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzwS:I

    iget v4, v2, Lcom/google/android/gms/drive/events/ProgressEvent;->zzwS:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzaeg:J

    iget-wide v5, v2, Lcom/google/android/gms/drive/events/ProgressEvent;->zzaeg:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzaeh:J

    iget-wide v5, v2, Lcom/google/android/gms/drive/events/ProgressEvent;->zzaeh:J

    cmp-long v2, v3, v5

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzSq:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzacT:Lcom/google/android/gms/drive/DriveId;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzwS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzaeg:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzaeh:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ProgressEvent[DriveId: %s, status: %d, bytes transferred: %d, total bytes: %d]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzacT:Lcom/google/android/gms/drive/DriveId;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzwS:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzaeg:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/drive/events/ProgressEvent;->zzaeh:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/events/zzh;->zza(Lcom/google/android/gms/drive/events/ProgressEvent;Landroid/os/Parcel;I)V

    return-void
.end method
