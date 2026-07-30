.class public Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;
.super Ljava/lang/Object;
.source "PickRawContactLoader.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/PickRawContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawContactsMetadata"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public contactId:J

.field public isUserProfile:Z

.field public rawContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/editor/PickRawContactLoader$RawContact;",
            ">;"
        }
    .end annotation
.end field

.field public showReadOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 190
    new-instance v0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata$1;

    invoke-direct {v0}, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata$1;-><init>()V

    sput-object v0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->showReadOnly:Z

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->showReadOnly:Z

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->contactId:J

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->isUserProfile:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->showReadOnly:Z

    .line 214
    iget-object v0, p0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/editor/PickRawContactLoader$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIndexOfFirstWritableAccount(Lcom/android/contacts/model/AccountTypeManager;)I
    .locals 3

    const/4 v0, 0x0

    .line 235
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;

    .line 237
    iget-object v2, v1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->accountType:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->accountDataSet:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public trimReadOnly(Lcom/android/contacts/model/AccountTypeManager;)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 222
    iget-object v1, p0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;

    .line 223
    iget-object v2, v1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->accountType:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->accountDataSet:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 254
    iget-wide v0, p0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->contactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 255
    iget-boolean p2, p0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->isUserProfile:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-boolean p2, p0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->showReadOnly:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-object p2, p0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
