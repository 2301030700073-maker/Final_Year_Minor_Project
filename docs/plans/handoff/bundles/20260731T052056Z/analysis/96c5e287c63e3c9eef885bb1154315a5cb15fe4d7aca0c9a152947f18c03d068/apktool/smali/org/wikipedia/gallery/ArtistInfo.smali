.class public final Lorg/wikipedia/gallery/ArtistInfo;
.super Lorg/wikipedia/gallery/TextInfo;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/gallery/ArtistInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/wikipedia/gallery/ArtistInfo$Companion;


# instance fields
.field public final name:Ljava/lang/String;

.field public final userPage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/gallery/ArtistInfo$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/gallery/ArtistInfo;->Companion:Lorg/wikipedia/gallery/ArtistInfo$Companion;

    .line 7
    .line 8
    new-instance v0, Lorg/maplibre/android/util/DefaultStyle$1;

    .line 9
    .line 10
    const/16 v1, 0x1c

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lorg/maplibre/android/util/DefaultStyle$1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/wikipedia/gallery/ArtistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/wikipedia/gallery/TextInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    and-int/lit8 p2, p1, 0x8

    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    iput-object p3, p0, Lorg/wikipedia/gallery/ArtistInfo;->name:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p5, p0, Lorg/wikipedia/gallery/ArtistInfo;->name:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p1, p1, 0x10

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iput-object p3, p0, Lorg/wikipedia/gallery/ArtistInfo;->userPage:Ljava/lang/String;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iput-object p6, p0, Lorg/wikipedia/gallery/ArtistInfo;->userPage:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/wikipedia/gallery/TextInfo;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/wikipedia/gallery/ArtistInfo;->name:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lorg/wikipedia/gallery/ArtistInfo;->userPage:Ljava/lang/String;

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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lorg/wikipedia/gallery/ArtistInfo;->name:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/gallery/ArtistInfo;->userPage:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
