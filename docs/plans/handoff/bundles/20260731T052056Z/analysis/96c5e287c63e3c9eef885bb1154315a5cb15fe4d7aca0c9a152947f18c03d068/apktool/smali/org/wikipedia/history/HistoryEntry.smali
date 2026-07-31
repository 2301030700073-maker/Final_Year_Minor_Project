.class public final Lorg/wikipedia/history/HistoryEntry;
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
            "Lorg/wikipedia/history/HistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/wikipedia/history/HistoryEntry$Companion;


# instance fields
.field public apiTitle:Ljava/lang/String;

.field public authority:Ljava/lang/String;

.field public displayTitle:Ljava/lang/String;

.field public id:J

.field public lang:Ljava/lang/String;

.field public namespace:Ljava/lang/String;

.field public pageTitle:Lorg/wikipedia/page/PageTitle;

.field public prevId:J

.field public referrer:Ljava/lang/String;

.field public source:I

.field public timestamp:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/history/HistoryEntry$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/history/HistoryEntry;->Companion:Lorg/wikipedia/history/HistoryEntry$Companion;

    .line 7
    .line 8
    new-instance v0, Lorg/wikipedia/page/PageTitle$Creator;

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    invoke-direct {v0, v1}, Lorg/wikipedia/page/PageTitle$Creator;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/wikipedia/history/HistoryEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/page/PageTitle;)V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, p2, p1, v0}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;ILjava/util/Date;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Date;II)V
    .locals 14

    and-int/lit8 v0, p10, 0x10

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v7, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v7, p5

    :goto_0
    const-wide/16 v12, -0x1

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    .line 42
    invoke-direct/range {v2 .. v13}, Lorg/wikipedia/history/HistoryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Date;IJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Date;IJ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/wikipedia/history/HistoryEntry;->authority:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/wikipedia/history/HistoryEntry;->lang:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/wikipedia/history/HistoryEntry;->apiTitle:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lorg/wikipedia/history/HistoryEntry;->displayTitle:Ljava/lang/String;

    .line 48
    iput-wide p5, p0, Lorg/wikipedia/history/HistoryEntry;->id:J

    .line 49
    iput-object p7, p0, Lorg/wikipedia/history/HistoryEntry;->namespace:Ljava/lang/String;

    .line 50
    iput-object p8, p0, Lorg/wikipedia/history/HistoryEntry;->timestamp:Ljava/util/Date;

    .line 51
    iput p9, p0, Lorg/wikipedia/history/HistoryEntry;->source:I

    .line 52
    iput-wide p10, p0, Lorg/wikipedia/history/HistoryEntry;->prevId:J

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageTitle;ILjava/util/Date;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v0, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 14
    .line 15
    iget-object v3, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    const/16 v11, 0x110

    .line 30
    .line 31
    const-wide/16 v6, 0x0

    .line 32
    .line 33
    move-object v1, p0

    .line 34
    move v10, p2

    .line 35
    move-object v9, p3

    .line 36
    invoke-direct/range {v1 .. v11}, Lorg/wikipedia/history/HistoryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Date;II)V

    .line 37
    .line 38
    .line 39
    iput-object p1, v1, Lorg/wikipedia/history/HistoryEntry;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 40
    .line 41
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

.method public final getTitle()Lorg/wikipedia/page/PageTitle;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/wikipedia/history/HistoryEntry;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/history/HistoryEntry;->namespace:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/wikipedia/history/HistoryEntry;->apiTitle:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v3, Lorg/wikipedia/dataclient/WikiSite;

    .line 12
    .line 13
    iget-object v4, p0, Lorg/wikipedia/history/HistoryEntry;->authority:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v5, p0, Lorg/wikipedia/history/HistoryEntry;->lang:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v3, v4, v5}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lorg/wikipedia/history/HistoryEntry;->displayTitle:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageTitle;->setDisplayText(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/wikipedia/history/HistoryEntry;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 29
    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lorg/wikipedia/history/HistoryEntry;->authority:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lorg/wikipedia/history/HistoryEntry;->lang:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lorg/wikipedia/history/HistoryEntry;->apiTitle:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lorg/wikipedia/history/HistoryEntry;->displayTitle:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-wide v0, p0, Lorg/wikipedia/history/HistoryEntry;->id:J

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lorg/wikipedia/history/HistoryEntry;->namespace:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lorg/wikipedia/history/HistoryEntry;->timestamp:Ljava/util/Date;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    .line 45
    .line 46
    iget p2, p0, Lorg/wikipedia/history/HistoryEntry;->source:I

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget-wide v0, p0, Lorg/wikipedia/history/HistoryEntry;->prevId:J

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
