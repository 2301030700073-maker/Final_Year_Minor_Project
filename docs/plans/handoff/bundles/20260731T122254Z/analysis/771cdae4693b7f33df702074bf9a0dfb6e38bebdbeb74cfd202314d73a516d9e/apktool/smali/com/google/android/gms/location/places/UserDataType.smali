.class public final Lcom/google/android/gms/location/places/UserDataType;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/zzn;

.field public static final zzaAa:Lcom/google/android/gms/location/places/UserDataType;

.field public static final zzaAb:Lcom/google/android/gms/location/places/UserDataType;

.field public static final zzaAc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/location/places/UserDataType;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzazZ:Lcom/google/android/gms/location/places/UserDataType;


# instance fields
.field final zzCY:I

.field final zzEl:Ljava/lang/String;

.field final zzaAd:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "test_type"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/UserDataType;->zzy(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->zzazZ:Lcom/google/android/gms/location/places/UserDataType;

    const-string v0, "labeled_place"

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lcom/google/android/gms/location/places/UserDataType;->zzy(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->zzaAa:Lcom/google/android/gms/location/places/UserDataType;

    const-string v0, "here_content"

    const/4 v2, 0x7

    invoke-static {v0, v2}, Lcom/google/android/gms/location/places/UserDataType;->zzy(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->zzaAb:Lcom/google/android/gms/location/places/UserDataType;

    new-instance v0, Ljava/util/HashSet;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/google/android/gms/location/places/UserDataType;

    sget-object v3, Lcom/google/android/gms/location/places/UserDataType;->zzazZ:Lcom/google/android/gms/location/places/UserDataType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/location/places/UserDataType;->zzaAa:Lcom/google/android/gms/location/places/UserDataType;

    aput-object v3, v2, v1

    sget-object v1, Lcom/google/android/gms/location/places/UserDataType;->zzaAb:Lcom/google/android/gms/location/places/UserDataType;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->zzaAc:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/location/places/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->CREATOR:Lcom/google/android/gms/location/places/zzn;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzu;->zzcj(Ljava/lang/String;)Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/location/places/UserDataType;->zzCY:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/UserDataType;->zzEl:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/location/places/UserDataType;->zzaAd:I

    return-void
.end method

.method private static zzy(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/UserDataType;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/location/places/UserDataType;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/UserDataType;->CREATOR:Lcom/google/android/gms/location/places/zzn;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/location/places/UserDataType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/location/places/UserDataType;

    iget-object v3, p0, Lcom/google/android/gms/location/places/UserDataType;->zzEl:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/location/places/UserDataType;->zzEl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/android/gms/location/places/UserDataType;->zzaAd:I

    iget v1, v1, Lcom/google/android/gms/location/places/UserDataType;->zzaAd:I

    if-ne v3, v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserDataType;->zzEl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserDataType;->zzEl:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/UserDataType;->CREATOR:Lcom/google/android/gms/location/places/zzn;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/zzn;->zza(Lcom/google/android/gms/location/places/UserDataType;Landroid/os/Parcel;I)V

    return-void
.end method
