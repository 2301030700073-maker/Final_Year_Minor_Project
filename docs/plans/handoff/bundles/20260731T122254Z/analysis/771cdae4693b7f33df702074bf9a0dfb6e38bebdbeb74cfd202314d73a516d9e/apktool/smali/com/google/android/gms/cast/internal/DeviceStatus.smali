.class public Lcom/google/android/gms/cast/internal/DeviceStatus;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/internal/DeviceStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzCY:I

.field private zzSh:D

.field private zzSi:Z

.field private zzUF:Lcom/google/android/gms/cast/ApplicationMetadata;

.field private zzUu:I

.field private zzUv:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/internal/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/internal/DeviceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x3

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/cast/internal/DeviceStatus;-><init>(IDZILcom/google/android/gms/cast/ApplicationMetadata;I)V

    return-void
.end method

.method constructor <init>(IDZILcom/google/android/gms/cast/ApplicationMetadata;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzCY:I

    iput-wide p2, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzSh:D

    iput-boolean p4, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzSi:Z

    iput p5, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzUu:I

    iput-object p6, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzUF:Lcom/google/android/gms/cast/ApplicationMetadata;

    iput p7, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzUv:I

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

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/internal/DeviceStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/cast/internal/DeviceStatus;

    iget-wide v3, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzSh:D

    iget-wide v5, v1, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzSh:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_2

    iget-boolean v3, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzSi:Z

    iget-boolean v4, v1, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzSi:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzUu:I

    iget v4, v1, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzUu:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzUF:Lcom/google/android/gms/cast/ApplicationMetadata;

    iget-object v4, v1, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzUF:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-static {v3, v4}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzUv:I

    iget v1, v1, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzUv:I

    if-ne v3, v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzUF:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzCY:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzSh:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzSi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzUu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzUF:Lcom/google/android/gms/cast/ApplicationMetadata;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzUv:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/internal/zzg;->zza(Lcom/google/android/gms/cast/internal/DeviceStatus;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzlO()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzSh:D

    return-wide v0
.end method

.method public zzlP()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzUu:I

    return v0
.end method

.method public zzlQ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzUv:I

    return v0
.end method

.method public zzlX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/internal/DeviceStatus;->zzSi:Z

    return v0
.end method
