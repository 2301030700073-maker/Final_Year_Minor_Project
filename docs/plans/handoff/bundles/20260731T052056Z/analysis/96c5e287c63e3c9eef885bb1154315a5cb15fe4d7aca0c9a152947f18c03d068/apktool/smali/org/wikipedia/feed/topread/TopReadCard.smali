.class public final Lorg/wikipedia/feed/topread/TopReadCard;
.super Lorg/wikipedia/feed/model/Card;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/feed/topread/TopReadCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final age:I

.field public final articles:Lorg/wikipedia/feed/topread/TopRead;

.field public final site:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/util/DefaultStyle$1;

    .line 2
    .line 3
    const/16 v1, 0x1b

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/maplibre/android/util/DefaultStyle$1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/wikipedia/feed/topread/TopReadCard;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/feed/topread/TopRead;ILorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lorg/wikipedia/feed/topread/TopReadCard;->articles:Lorg/wikipedia/feed/topread/TopRead;

    .line 11
    .line 12
    iput p2, p0, Lorg/wikipedia/feed/topread/TopReadCard;->age:I

    .line 13
    .line 14
    iput-object p3, p0, Lorg/wikipedia/feed/topread/TopReadCard;->site:Lorg/wikipedia/dataclient/WikiSite;

    .line 15
    .line 16
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

.method public final dismissHashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/feed/topread/TopReadCard;->articles:Lorg/wikipedia/feed/topread/TopRead;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/wikipedia/feed/topread/TopRead;->localDate$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    check-cast v0, Lj$/time/LocalDate;

    .line 13
    .line 14
    invoke-virtual {v0}, Lj$/time/LocalDate;->toEpochDay()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    long-to-int v0, v0

    .line 19
    iget-object p0, p0, Lorg/wikipedia/feed/topread/TopReadCard;->site:Lorg/wikipedia/dataclient/WikiSite;

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/WikiSite;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    add-int/2addr p0, v0

    .line 26
    const v0, -0x92c41a0

    .line 27
    .line 28
    .line 29
    add-int/2addr p0, v0

    .line 30
    return p0
.end method

.method public final moduleKey()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "TOP_READ"

    .line 2
    .line 3
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/feed/topread/TopReadCard;->articles:Lorg/wikipedia/feed/topread/TopRead;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/feed/topread/TopRead;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lorg/wikipedia/feed/topread/TopReadCard;->age:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lorg/wikipedia/feed/topread/TopReadCard;->site:Lorg/wikipedia/dataclient/WikiSite;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/dataclient/WikiSite;->writeToParcel(Landroid/os/Parcel;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
