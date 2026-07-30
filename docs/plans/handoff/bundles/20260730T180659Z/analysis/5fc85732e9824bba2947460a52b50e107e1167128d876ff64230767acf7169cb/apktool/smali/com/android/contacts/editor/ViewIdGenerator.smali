.class public final Lcom/android/contacts/editor/ViewIdGenerator;
.super Ljava/lang/Object;
.source "ViewIdGenerator.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/contacts/editor/ViewIdGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWorkStringBuilder:Ljava/lang/StringBuilder;


# instance fields
.field private mIdMap:Landroid/os/Bundle;

.field private mNextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/contacts/editor/ViewIdGenerator;->sWorkStringBuilder:Ljava/lang/StringBuilder;

    .line 119
    new-instance v0, Lcom/android/contacts/editor/ViewIdGenerator$1;

    invoke-direct {v0}, Lcom/android/contacts/editor/ViewIdGenerator$1;-><init>()V

    sput-object v0, Lcom/android/contacts/editor/ViewIdGenerator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mIdMap:Landroid/os/Bundle;

    const/4 v0, 0x1

    .line 54
    iput v0, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mNextId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/ViewIdGenerator;Landroid/os/Parcel;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ViewIdGenerator;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private static getMapKey(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;I)Ljava/lang/String;
    .locals 2

    .line 86
    sget-object v0, Lcom/android/contacts/editor/ViewIdGenerator;->sWorkStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/ValuesDelta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/16 p0, 0x2a

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    iget-object p1, p1, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p2}, Lcom/android/contacts/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mNextId:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mIdMap:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;I)I
    .locals 0

    .line 73
    invoke-static {p1, p2, p3, p4}, Lcom/android/contacts/editor/ViewIdGenerator;->getMapKey(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;I)Ljava/lang/String;

    move-result-object p1

    .line 75
    iget-object p2, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mIdMap:Landroid/os/Bundle;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_0

    .line 78
    iget p2, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mNextId:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mNextId:I

    const p3, 0xffff

    and-int/2addr p2, p3

    .line 79
    iget-object p3, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mIdMap:Landroid/os/Bundle;

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return p2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 110
    iget p2, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mNextId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object p2, p0, Lcom/android/contacts/editor/ViewIdGenerator;->mIdMap:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
