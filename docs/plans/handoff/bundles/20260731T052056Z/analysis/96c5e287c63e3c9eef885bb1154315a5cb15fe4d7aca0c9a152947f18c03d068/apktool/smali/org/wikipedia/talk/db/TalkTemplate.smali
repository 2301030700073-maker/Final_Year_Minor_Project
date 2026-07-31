.class public final Lorg/wikipedia/talk/db/TalkTemplate;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/talk/db/TalkTemplate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final id:I

.field public message:Ljava/lang/String;

.field public order:I

.field public subject:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/page/PageTitle$Creator;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/wikipedia/page/PageTitle$Creator;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/wikipedia/talk/db/TalkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput p1, p0, Lorg/wikipedia/talk/db/TalkTemplate;->id:I

    .line 14
    .line 15
    iput p2, p0, Lorg/wikipedia/talk/db/TalkTemplate;->type:I

    .line 16
    .line 17
    iput p3, p0, Lorg/wikipedia/talk/db/TalkTemplate;->order:I

    .line 18
    .line 19
    iput-object p4, p0, Lorg/wikipedia/talk/db/TalkTemplate;->title:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p5, p0, Lorg/wikipedia/talk/db/TalkTemplate;->subject:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p6, p0, Lorg/wikipedia/talk/db/TalkTemplate;->message:Ljava/lang/String;

    .line 24
    .line 25
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

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/talk/db/TalkTemplate;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lorg/wikipedia/talk/db/TalkTemplate;->id:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget p2, p0, Lorg/wikipedia/talk/db/TalkTemplate;->type:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Lorg/wikipedia/talk/db/TalkTemplate;->order:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lorg/wikipedia/talk/db/TalkTemplate;->title:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lorg/wikipedia/talk/db/TalkTemplate;->subject:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lorg/wikipedia/talk/db/TalkTemplate;->message:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
