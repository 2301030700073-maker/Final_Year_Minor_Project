.class Lcom/android/contacts/model/SimContact$1;
.super Ljava/lang/Object;
.source "SimContact.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/SimContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/contacts/model/SimContact;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/SimContact;
    .locals 6

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 202
    new-instance p1, Lcom/android/contacts/model/SimContact;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/SimContact;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/SimContact$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/SimContact;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/contacts/model/SimContact;
    .locals 0

    .line 207
    new-array p1, p1, [Lcom/android/contacts/model/SimContact;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/SimContact$1;->newArray(I)[Lcom/android/contacts/model/SimContact;

    move-result-object p1

    return-object p1
.end method
