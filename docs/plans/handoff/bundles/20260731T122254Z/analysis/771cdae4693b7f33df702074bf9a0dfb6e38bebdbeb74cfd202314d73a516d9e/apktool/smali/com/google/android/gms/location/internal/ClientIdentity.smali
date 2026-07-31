.class public Lcom/google/android/gms/location/internal/ClientIdentity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/internal/zzc;


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final uid:I

.field private final zzCY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/internal/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/internal/ClientIdentity;->CREATOR:Lcom/google/android/gms/location/internal/zzc;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->zzCY:I

    iput p2, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->uid:I

    iput-object p3, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/google/android/gms/location/internal/ClientIdentity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/location/internal/ClientIdentity;

    iget v2, v0, Lcom/google/android/gms/location/internal/ClientIdentity;->uid:I

    iget v3, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->uid:I

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/location/internal/ClientIdentity;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->zzCY:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->uid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%d:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/internal/zzc;->zza(Lcom/google/android/gms/location/internal/ClientIdentity;Landroid/os/Parcel;I)V

    return-void
.end method
