.class Lcom/android/contacts/model/RawContactDeltaList$1;
.super Ljava/lang/Object;
.source "RawContactDeltaList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/RawContactDeltaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/contacts/model/RawContactDeltaList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/RawContactDeltaList;
    .locals 1

    .line 439
    new-instance v0, Lcom/android/contacts/model/RawContactDeltaList;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContactDeltaList;-><init>()V

    .line 440
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/RawContactDeltaList;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDeltaList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/contacts/model/RawContactDeltaList;
    .locals 0

    .line 446
    new-array p1, p1, [Lcom/android/contacts/model/RawContactDeltaList;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDeltaList$1;->newArray(I)[Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object p1

    return-object p1
.end method
