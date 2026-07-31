.class public Lcom/google/android/gms/nearby/sharing/SharedContent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/sharing/SharedContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I

.field private zzaGl:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzaGm:[Lcom/google/android/gms/nearby/sharing/ViewableItem;

.field private zzaGn:[Lcom/google/android/gms/nearby/sharing/LocalContent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/sharing/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/sharing/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/sharing/SharedContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/nearby/sharing/SharedContent;->versionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Lcom/google/android/gms/nearby/sharing/ViewableItem;[Lcom/google/android/gms/nearby/sharing/LocalContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/sharing/SharedContent;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/nearby/sharing/SharedContent;->zzaGl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/nearby/sharing/SharedContent;->zzaGm:[Lcom/google/android/gms/nearby/sharing/ViewableItem;

    iput-object p4, p0, Lcom/google/android/gms/nearby/sharing/SharedContent;->zzaGn:[Lcom/google/android/gms/nearby/sharing/LocalContent;

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
    instance-of v1, p1, Lcom/google/android/gms/nearby/sharing/SharedContent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/nearby/sharing/SharedContent;

    iget-object v3, p0, Lcom/google/android/gms/nearby/sharing/SharedContent;->zzaGm:[Lcom/google/android/gms/nearby/sharing/ViewableItem;

    iget-object v4, v1, Lcom/google/android/gms/nearby/sharing/SharedContent;->zzaGm:[Lcom/google/android/gms/nearby/sharing/ViewableItem;

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/nearby/sharing/SharedContent;->zzaGn:[Lcom/google/android/gms/nearby/sharing/LocalContent;

    iget-object v4, v1, Lcom/google/android/gms/nearby/sharing/SharedContent;->zzaGn:[Lcom/google/android/gms/nearby/sharing/LocalContent;

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/nearby/sharing/SharedContent;->zzaGl:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/nearby/sharing/SharedContent;->zzaGl:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/sharing/SharedContent;->zzaGl:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/sharing/SharedContent;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/nearby/sharing/SharedContent;->zzaGm:[Lcom/google/android/gms/nearby/sharing/ViewableItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/nearby/sharing/SharedContent;->zzaGn:[Lcom/google/android/gms/nearby/sharing/LocalContent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/nearby/sharing/SharedContent;->zzaGl:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedContent[viewableItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/nearby/sharing/SharedContent;->zzaGm:[Lcom/google/android/gms/nearby/sharing/ViewableItem;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", localContents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/nearby/sharing/SharedContent;->zzaGn:[Lcom/google/android/gms/nearby/sharing/LocalContent;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/sharing/zzc;->zza(Lcom/google/android/gms/nearby/sharing/SharedContent;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzxe()[Lcom/google/android/gms/nearby/sharing/ViewableItem;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/sharing/SharedContent;->zzaGm:[Lcom/google/android/gms/nearby/sharing/ViewableItem;

    return-object v0
.end method

.method public zzxf()[Lcom/google/android/gms/nearby/sharing/LocalContent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/sharing/SharedContent;->zzaGn:[Lcom/google/android/gms/nearby/sharing/LocalContent;

    return-object v0
.end method
