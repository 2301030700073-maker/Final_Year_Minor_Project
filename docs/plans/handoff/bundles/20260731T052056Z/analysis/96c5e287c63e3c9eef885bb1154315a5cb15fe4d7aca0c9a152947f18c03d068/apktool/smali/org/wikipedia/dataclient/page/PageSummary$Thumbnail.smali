.class public final Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail$Companion;


# instance fields
.field public final height:I

.field public final source:Ljava/lang/String;

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->Companion:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail$Companion;

    .line 7
    .line 8
    new-instance v0, Lorg/maplibre/android/util/DefaultStyle$1;

    .line 9
    .line 10
    const/16 v1, 0x14

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lorg/maplibre/android/util/DefaultStyle$1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;)V
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0x7

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-ne v1, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->source:Ljava/lang/String;

    .line 10
    .line 11
    iput p2, p0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->width:I

    .line 12
    .line 13
    iput p3, p0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->height:I

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object p0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail$$serializer;

    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->source:Ljava/lang/String;

    iput p2, p0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->width:I

    iput p3, p0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->height:I

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
    iget-object p2, p0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->source:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget p2, p0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->width:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget p0, p0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->height:I

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
