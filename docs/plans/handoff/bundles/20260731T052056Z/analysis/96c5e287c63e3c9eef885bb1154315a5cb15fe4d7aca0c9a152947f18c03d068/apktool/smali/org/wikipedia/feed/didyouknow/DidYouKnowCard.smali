.class public final Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;
.super Lorg/wikipedia/feed/model/Card;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final date:Ljava/lang/String;

.field public final items:Ljava/util/List;

.field public final site:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/util/DefaultStyle$1;

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/maplibre/android/util/DefaultStyle$1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;->items:Ljava/util/List;

    .line 14
    .line 15
    iput-object p2, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;->date:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p3, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;->site:Lorg/wikipedia/dataclient/WikiSite;

    .line 18
    .line 19
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
    iget-object v0, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;->date:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x700cf2ab

    .line 8
    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    iget-object p0, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;->site:Lorg/wikipedia/dataclient/WikiSite;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/WikiSite;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    add-int/2addr p0, v0

    .line 18
    return p0
.end method

.method public final moduleKey()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "DID_YOU_KNOW"

    .line 2
    .line 3
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;->items:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lorg/wikipedia/feed/didyouknow/DidYouKnowItem;

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2}, Lorg/wikipedia/feed/didyouknow/DidYouKnowItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;->date:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;->site:Lorg/wikipedia/dataclient/WikiSite;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/dataclient/WikiSite;->writeToParcel(Landroid/os/Parcel;I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
