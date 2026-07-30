.class Lcom/android/contacts/model/account/AccountWithDataSet$1;
.super Ljava/lang/Object;
.source "AccountWithDataSet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/AccountWithDataSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/contacts/model/account/AccountWithDataSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 1

    .line 111
    new-instance v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-direct {v0, p1}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountWithDataSet$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 0

    .line 115
    new-array p1, p1, [Lcom/android/contacts/model/account/AccountWithDataSet;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountWithDataSet$1;->newArray(I)[Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    return-object p1
.end method
