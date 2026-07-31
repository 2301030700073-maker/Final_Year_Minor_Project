.class public Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private statusCode:I

.field private final versionCode:I

.field private zzaGj:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/sharing/zza;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/sharing/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;->versionCode:I

    return-void
.end method

.method constructor <init>(ILandroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;->zzaGj:Landroid/net/Uri;

    iput p3, p0, Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;->statusCode:I

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

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;

    iget-object v3, p0, Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;->zzaGj:Landroid/net/Uri;

    iget-object v4, v1, Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;->zzaGj:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;->statusCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v1, Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;->statusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;->statusCode:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;->zzaGj:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;->statusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/sharing/zza;->zza(Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzxc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/sharing/AppContentReceivedResult;->zzaGj:Landroid/net/Uri;

    return-object v0
.end method
