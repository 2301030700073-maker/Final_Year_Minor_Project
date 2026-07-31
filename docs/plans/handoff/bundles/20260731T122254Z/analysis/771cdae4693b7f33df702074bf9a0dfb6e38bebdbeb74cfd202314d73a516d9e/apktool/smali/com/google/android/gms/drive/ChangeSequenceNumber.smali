.class public Lcom/google/android/gms/drive/ChangeSequenceNumber;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/ChangeSequenceNumber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzCY:I

.field final zzacN:J

.field final zzacO:J

.field final zzacP:J

.field private volatile zzacQ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zza;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJJ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacQ:Ljava/lang/String;

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzu;->zzV(Z)V

    cmp-long v2, p4, v0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzu;->zzV(Z)V

    cmp-long v2, p6, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzu;->zzV(Z)V

    iput p1, p0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzCY:I

    iput-wide p2, p0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacN:J

    iput-wide p4, p0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacO:J

    iput-wide p6, p0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacP:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final encodeToString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacQ:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzpb()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChangeSequenceNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacQ:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacQ:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Lcom/google/android/gms/drive/ChangeSequenceNumber;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/ChangeSequenceNumber;

    iget-wide v2, v0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacO:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacO:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    return v1

    :cond_1
    iget-wide v2, v0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacP:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacP:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    :cond_2
    iget-wide v2, v0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacN:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacN:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacN:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacO:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacP:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ChangeSequenceNumber;->encodeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/zza;->zza(Lcom/google/android/gms/drive/ChangeSequenceNumber;Landroid/os/Parcel;I)V

    return-void
.end method

.method final zzpb()[B
    .locals 3

    new-instance v0, Lcom/google/android/gms/drive/internal/zzaq;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzaq;-><init>()V

    iget v1, p0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzCY:I

    iput v1, v0, Lcom/google/android/gms/drive/internal/zzaq;->versionCode:I

    iget-wide v1, p0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacN:J

    iput-wide v1, v0, Lcom/google/android/gms/drive/internal/zzaq;->zzafU:J

    iget-wide v1, p0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacO:J

    iput-wide v1, v0, Lcom/google/android/gms/drive/internal/zzaq;->zzafV:J

    iget-wide v1, p0, Lcom/google/android/gms/drive/ChangeSequenceNumber;->zzacP:J

    iput-wide v1, v0, Lcom/google/android/gms/drive/internal/zzaq;->zzafW:J

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrn;->zzf(Lcom/google/android/gms/internal/zzrn;)[B

    move-result-object v0

    return-object v0
.end method
