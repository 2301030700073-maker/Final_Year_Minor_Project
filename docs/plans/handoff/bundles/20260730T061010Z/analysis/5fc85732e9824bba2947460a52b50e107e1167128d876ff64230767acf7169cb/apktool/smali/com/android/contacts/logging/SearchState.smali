.class public final Lcom/android/contacts/logging/SearchState;
.super Ljava/lang/Object;
.source "SearchState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/contacts/logging/SearchState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public numPartitions:I

.field public numResults:I

.field public numResultsInSelectedPartition:I

.field public queryLength:I

.field public selectedIndex:I

.field public selectedIndexInPartition:I

.field public selectedPartition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/android/contacts/logging/SearchState$1;

    invoke-direct {v0}, Lcom/android/contacts/logging/SearchState$1;-><init>()V

    sput-object v0, Lcom/android/contacts/logging/SearchState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/android/contacts/logging/SearchState;->numResultsInSelectedPartition:I

    .line 41
    iput v0, p0, Lcom/android/contacts/logging/SearchState;->selectedPartition:I

    .line 44
    iput v0, p0, Lcom/android/contacts/logging/SearchState;->selectedIndexInPartition:I

    .line 50
    iput v0, p0, Lcom/android/contacts/logging/SearchState;->selectedIndex:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/android/contacts/logging/SearchState;->numResultsInSelectedPartition:I

    .line 41
    iput v0, p0, Lcom/android/contacts/logging/SearchState;->selectedPartition:I

    .line 44
    iput v0, p0, Lcom/android/contacts/logging/SearchState;->selectedIndexInPartition:I

    .line 50
    iput v0, p0, Lcom/android/contacts/logging/SearchState;->selectedIndex:I

    .line 68
    invoke-direct {p0, p1}, Lcom/android/contacts/logging/SearchState;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/logging/SearchState;->queryLength:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/logging/SearchState;->numPartitions:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/logging/SearchState;->numResults:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/logging/SearchState;->numResultsInSelectedPartition:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/logging/SearchState;->selectedPartition:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/logging/SearchState;->selectedIndexInPartition:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/contacts/logging/SearchState;->selectedIndex:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 73
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/logging/SearchState;->queryLength:I

    const-string v2, "queryLength"

    .line 74
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/android/contacts/logging/SearchState;->numPartitions:I

    const-string v2, "numPartitions"

    .line 75
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/android/contacts/logging/SearchState;->numResults:I

    const-string v2, "numResults"

    .line 76
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/android/contacts/logging/SearchState;->numResultsInSelectedPartition:I

    const-string v2, "numResultsInSelectedPartition"

    .line 77
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/android/contacts/logging/SearchState;->selectedPartition:I

    const-string v2, "selectedPartition"

    .line 78
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/android/contacts/logging/SearchState;->selectedIndexInPartition:I

    const-string v2, "selectedIndexInPartition"

    .line 79
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/android/contacts/logging/SearchState;->selectedIndex:I

    const-string v2, "selectedIndex"

    .line 80
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 81
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 91
    iget p2, p0, Lcom/android/contacts/logging/SearchState;->queryLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget p2, p0, Lcom/android/contacts/logging/SearchState;->numPartitions:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget p2, p0, Lcom/android/contacts/logging/SearchState;->numResults:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget p2, p0, Lcom/android/contacts/logging/SearchState;->numResultsInSelectedPartition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget p2, p0, Lcom/android/contacts/logging/SearchState;->selectedPartition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget p2, p0, Lcom/android/contacts/logging/SearchState;->selectedIndexInPartition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget p2, p0, Lcom/android/contacts/logging/SearchState;->selectedIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
