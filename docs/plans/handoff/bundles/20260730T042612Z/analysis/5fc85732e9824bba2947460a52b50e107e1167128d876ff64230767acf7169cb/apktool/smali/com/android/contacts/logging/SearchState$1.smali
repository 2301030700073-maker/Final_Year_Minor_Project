.class Lcom/android/contacts/logging/SearchState$1;
.super Ljava/lang/Object;
.source "SearchState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/logging/SearchState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/contacts/logging/SearchState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/logging/SearchState;
    .locals 1

    .line 55
    new-instance v0, Lcom/android/contacts/logging/SearchState;

    invoke-direct {v0, p1}, Lcom/android/contacts/logging/SearchState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/contacts/logging/SearchState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/logging/SearchState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/contacts/logging/SearchState;
    .locals 0

    .line 60
    new-array p1, p1, [Lcom/android/contacts/logging/SearchState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/contacts/logging/SearchState$1;->newArray(I)[Lcom/android/contacts/logging/SearchState;

    move-result-object p1

    return-object p1
.end method
