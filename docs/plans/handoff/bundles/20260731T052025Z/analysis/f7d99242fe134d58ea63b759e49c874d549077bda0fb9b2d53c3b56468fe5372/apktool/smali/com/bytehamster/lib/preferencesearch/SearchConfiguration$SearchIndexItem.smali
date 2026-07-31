.class public final Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final breadcrumb:Ljava/lang/String;

.field public final resId:I

.field public final searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/fragment/app/FragmentState$1;

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentState$1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;->breadcrumb:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;->breadcrumb:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;->resId:I

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;->breadcrumb:Ljava/lang/String;

    const v0, 0x7f160005

    .line 26
    iput v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;->resId:I

    .line 27
    iput-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;->breadcrumb:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;->resId:I

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
