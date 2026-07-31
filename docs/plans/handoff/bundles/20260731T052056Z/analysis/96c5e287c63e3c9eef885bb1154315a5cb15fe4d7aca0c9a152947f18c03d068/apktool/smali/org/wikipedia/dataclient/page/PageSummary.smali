.class public final Lorg/wikipedia/dataclient/page/PageSummary;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/wikipedia/dataclient/page/PageSummary$Companion;


# instance fields
.field public final coordinates:Landroid/location/Location;

.field public description:Ljava/lang/String;

.field public final descriptionSource:Ljava/lang/String;

.field public final extract:Ljava/lang/String;

.field public final extractHtml:Ljava/lang/String;

.field public final lang:Ljava/lang/String;

.field public final namespace:Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;

.field public final originalImage:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

.field public final pageId:I

.field public final rank:J

.field public final revision:J

.field public final thumbnail:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

.field public final timestamp:Ljava/lang/String;

.field public final titles:Lorg/wikipedia/dataclient/page/PageSummary$Titles;

.field public final type:Ljava/lang/String;

.field public final viewHistory:Ljava/util/List;

.field public final views:J

.field public final wikiBaseItem:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/page/PageSummary$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/page/PageSummary;->Companion:Lorg/wikipedia/dataclient/page/PageSummary$Companion;

    .line 7
    .line 8
    new-instance v0, Lorg/maplibre/android/util/DefaultStyle$1;

    .line 9
    .line 10
    const/16 v1, 0x12

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lorg/maplibre/android/util/DefaultStyle$1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/wikipedia/dataclient/page/PageSummary;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 18
    .line 19
    new-instance v2, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/16 v3, 0x10

    .line 22
    .line 23
    invoke-direct {v2, v3}, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-array v1, v1, [Lkotlin/Lazy;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    aput-object v4, v1, v2

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    aput-object v4, v1, v2

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    aput-object v4, v1, v2

    .line 41
    .line 42
    const/4 v2, 0x3

    .line 43
    aput-object v4, v1, v2

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    aput-object v4, v1, v2

    .line 47
    .line 48
    const/4 v2, 0x5

    .line 49
    aput-object v4, v1, v2

    .line 50
    .line 51
    const/4 v2, 0x6

    .line 52
    aput-object v4, v1, v2

    .line 53
    .line 54
    const/4 v2, 0x7

    .line 55
    aput-object v4, v1, v2

    .line 56
    .line 57
    const/16 v2, 0x8

    .line 58
    .line 59
    aput-object v4, v1, v2

    .line 60
    .line 61
    const/16 v2, 0x9

    .line 62
    .line 63
    aput-object v4, v1, v2

    .line 64
    .line 65
    const/16 v2, 0xa

    .line 66
    .line 67
    aput-object v4, v1, v2

    .line 68
    .line 69
    const/16 v2, 0xb

    .line 70
    .line 71
    aput-object v4, v1, v2

    .line 72
    .line 73
    const/16 v2, 0xc

    .line 74
    .line 75
    aput-object v4, v1, v2

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v4, v1, v2

    .line 80
    .line 81
    const/16 v2, 0xe

    .line 82
    .line 83
    aput-object v4, v1, v2

    .line 84
    .line 85
    const/16 v2, 0xf

    .line 86
    .line 87
    aput-object v4, v1, v2

    .line 88
    .line 89
    aput-object v4, v1, v3

    .line 90
    .line 91
    const/16 v2, 0x11

    .line 92
    .line 93
    aput-object v0, v1, v2

    .line 94
    .line 95
    sput-object v1, Lorg/wikipedia/dataclient/page/PageSummary;->$childSerializers:[Lkotlin/Lazy;

    .line 96
    .line 97
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;Lorg/wikipedia/dataclient/page/PageSummary$Titles;Ljava/lang/String;Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;IJLjava/lang/String;JJLjava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lorg/wikipedia/dataclient/page/PageSummary;->namespace:Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->namespace:Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v1, p0, Lorg/wikipedia/dataclient/page/PageSummary;->titles:Lorg/wikipedia/dataclient/page/PageSummary$Titles;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lorg/wikipedia/dataclient/page/PageSummary;->titles:Lorg/wikipedia/dataclient/page/PageSummary$Titles;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    const-string p3, ""

    if-nez p2, :cond_2

    iput-object p3, p0, Lorg/wikipedia/dataclient/page/PageSummary;->lang:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/page/PageSummary;->lang:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v1, p0, Lorg/wikipedia/dataclient/page/PageSummary;->thumbnail:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lorg/wikipedia/dataclient/page/PageSummary;->thumbnail:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    iput-object v1, p0, Lorg/wikipedia/dataclient/page/PageSummary;->extract:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lorg/wikipedia/dataclient/page/PageSummary;->extract:Ljava/lang/String;

    :goto_4
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    iput-object v1, p0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    goto :goto_5

    :cond_5
    iput-object p7, p0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    :goto_5
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_6

    iput-object v1, p0, Lorg/wikipedia/dataclient/page/PageSummary;->originalImage:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    goto :goto_6

    :cond_6
    iput-object p8, p0, Lorg/wikipedia/dataclient/page/PageSummary;->originalImage:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    :goto_6
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_7

    iput-object v1, p0, Lorg/wikipedia/dataclient/page/PageSummary;->wikiBaseItem:Ljava/lang/String;

    goto :goto_7

    :cond_7
    iput-object p9, p0, Lorg/wikipedia/dataclient/page/PageSummary;->wikiBaseItem:Ljava/lang/String;

    :goto_7
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_8

    iput-object v1, p0, Lorg/wikipedia/dataclient/page/PageSummary;->extractHtml:Ljava/lang/String;

    goto :goto_8

    :cond_8
    iput-object p10, p0, Lorg/wikipedia/dataclient/page/PageSummary;->extractHtml:Ljava/lang/String;

    :goto_8
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_9

    iput-object p3, p0, Lorg/wikipedia/dataclient/page/PageSummary;->descriptionSource:Ljava/lang/String;

    goto :goto_9

    :cond_9
    iput-object p11, p0, Lorg/wikipedia/dataclient/page/PageSummary;->descriptionSource:Ljava/lang/String;

    :goto_9
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_a

    iput-object v1, p0, Lorg/wikipedia/dataclient/page/PageSummary;->coordinates:Landroid/location/Location;

    goto :goto_a

    :cond_a
    iput-object p12, p0, Lorg/wikipedia/dataclient/page/PageSummary;->coordinates:Landroid/location/Location;

    :goto_a
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_b

    .line 2
    const-string p2, "standard"

    .line 3
    iput-object p2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->type:Ljava/lang/String;

    goto :goto_b

    :cond_b
    iput-object p13, p0, Lorg/wikipedia/dataclient/page/PageSummary;->type:Ljava/lang/String;

    :goto_b
    and-int/lit16 p2, p1, 0x1000

    if-nez p2, :cond_c

    const/4 p2, 0x0

    :goto_c
    iput p2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->pageId:I

    goto :goto_d

    :cond_c
    move/from16 p2, p14

    goto :goto_c

    :goto_d
    and-int/lit16 p2, p1, 0x2000

    const-wide/16 p4, 0x0

    if-nez p2, :cond_d

    iput-wide p4, p0, Lorg/wikipedia/dataclient/page/PageSummary;->revision:J

    goto :goto_e

    :cond_d
    move-wide/from16 p6, p15

    iput-wide p6, p0, Lorg/wikipedia/dataclient/page/PageSummary;->revision:J

    :goto_e
    and-int/lit16 p2, p1, 0x4000

    if-nez p2, :cond_e

    iput-object p3, p0, Lorg/wikipedia/dataclient/page/PageSummary;->timestamp:Ljava/lang/String;

    goto :goto_f

    :cond_e
    move-object/from16 p2, p17

    iput-object p2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->timestamp:Ljava/lang/String;

    :goto_f
    const p2, 0x8000

    and-int/2addr p2, p1

    if-nez p2, :cond_f

    iput-wide p4, p0, Lorg/wikipedia/dataclient/page/PageSummary;->views:J

    goto :goto_10

    :cond_f
    move-wide/from16 p2, p18

    iput-wide p2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->views:J

    :goto_10
    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-nez p2, :cond_10

    iput-wide p4, p0, Lorg/wikipedia/dataclient/page/PageSummary;->rank:J

    goto :goto_11

    :cond_10
    move-wide/from16 p2, p20

    iput-wide p2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->rank:J

    :goto_11
    const/high16 p2, 0x20000

    and-int/2addr p1, p2

    if-nez p1, :cond_11

    iput-object v1, p0, Lorg/wikipedia/dataclient/page/PageSummary;->viewHistory:Ljava/util/List;

    return-void

    :cond_11
    move-object/from16 p1, p22

    iput-object p1, p0, Lorg/wikipedia/dataclient/page/PageSummary;->viewHistory:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    .line 24
    new-instance p1, Lorg/wikipedia/dataclient/page/PageSummary$Titles;

    invoke-direct {p1, p2, v0}, Lorg/wikipedia/dataclient/page/PageSummary$Titles;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, p5

    move-object p5, p3

    .line 25
    new-instance p3, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    const/4 v0, 0x0

    invoke-direct {p3, p2, v0, v0}, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;-><init>(Ljava/lang/String;II)V

    move-object p2, p6

    const p6, 0x3ffc1

    .line 26
    invoke-direct/range {p0 .. p6}, Lorg/wikipedia/dataclient/page/PageSummary;-><init>(Lorg/wikipedia/dataclient/page/PageSummary$Titles;Ljava/lang/String;Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;Lorg/wikipedia/dataclient/page/PageSummary$Titles;Ljava/lang/String;Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;IJLjava/lang/String;JJLjava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/wikipedia/dataclient/page/PageSummary;->namespace:Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;

    .line 6
    iput-object p2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->titles:Lorg/wikipedia/dataclient/page/PageSummary$Titles;

    .line 7
    iput-object p3, p0, Lorg/wikipedia/dataclient/page/PageSummary;->lang:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lorg/wikipedia/dataclient/page/PageSummary;->thumbnail:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    .line 9
    iput-object p5, p0, Lorg/wikipedia/dataclient/page/PageSummary;->extract:Ljava/lang/String;

    .line 10
    iput-object p6, p0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 11
    iput-object p7, p0, Lorg/wikipedia/dataclient/page/PageSummary;->originalImage:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    .line 12
    iput-object p8, p0, Lorg/wikipedia/dataclient/page/PageSummary;->wikiBaseItem:Ljava/lang/String;

    .line 13
    iput-object p9, p0, Lorg/wikipedia/dataclient/page/PageSummary;->extractHtml:Ljava/lang/String;

    .line 14
    iput-object p10, p0, Lorg/wikipedia/dataclient/page/PageSummary;->descriptionSource:Ljava/lang/String;

    .line 15
    iput-object p11, p0, Lorg/wikipedia/dataclient/page/PageSummary;->coordinates:Landroid/location/Location;

    .line 16
    iput-object p12, p0, Lorg/wikipedia/dataclient/page/PageSummary;->type:Ljava/lang/String;

    .line 17
    iput p13, p0, Lorg/wikipedia/dataclient/page/PageSummary;->pageId:I

    .line 18
    iput-wide p14, p0, Lorg/wikipedia/dataclient/page/PageSummary;->revision:J

    move-object/from16 p1, p16

    .line 19
    iput-object p1, p0, Lorg/wikipedia/dataclient/page/PageSummary;->timestamp:Ljava/lang/String;

    move-wide/from16 p1, p17

    .line 20
    iput-wide p1, p0, Lorg/wikipedia/dataclient/page/PageSummary;->views:J

    move-wide/from16 p1, p19

    .line 21
    iput-wide p1, p0, Lorg/wikipedia/dataclient/page/PageSummary;->rank:J

    move-object/from16 p1, p21

    .line 22
    iput-object p1, p0, Lorg/wikipedia/dataclient/page/PageSummary;->viewHistory:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/dataclient/page/PageSummary$Titles;Ljava/lang/String;Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 24

    and-int/lit8 v0, p6, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v0, p6, 0x4

    .line 23
    const-string v12, ""

    if-eqz v0, :cond_1

    move-object v5, v12

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_2

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_3

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v0, p6, 0x20

    if-eqz v0, :cond_4

    move-object v8, v1

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-string v14, "standard"

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v12

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v23}, Lorg/wikipedia/dataclient/page/PageSummary;-><init>(Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;Lorg/wikipedia/dataclient/page/PageSummary$Titles;Ljava/lang/String;Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;IJLjava/lang/String;JJLjava/util/ArrayList;)V

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

.method public final getApiTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->titles:Lorg/wikipedia/dataclient/page/PageSummary$Titles;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/dataclient/page/PageSummary$Titles;->canonical:Ljava/lang/String;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    if-nez p0, :cond_1

    .line 10
    .line 11
    const-string p0, ""

    .line 12
    .line 13
    :cond_1
    return-object p0
.end method

.method public final getDisplayTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->titles:Lorg/wikipedia/dataclient/page/PageSummary$Titles;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/dataclient/page/PageSummary$Titles;->display:Ljava/lang/String;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    if-nez p0, :cond_1

    .line 10
    .line 11
    const-string p0, ""

    .line 12
    .line 13
    :cond_1
    return-object p0
.end method

.method public final getHistoryEntry(Lorg/wikipedia/dataclient/WikiSite;I)Lorg/wikipedia/history/HistoryEntry;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v0, p2, p0}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final getLeadImageName()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    const-string v0, "/"

    .line 8
    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const-string v3, "/thumb/"

    .line 25
    .line 26
    invoke-static {p0, v3, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    const/4 v2, 0x2

    .line 37
    if-le p0, v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    sub-int/2addr p0, v2

    .line 44
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Ljava/lang/String;

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_0
    return-object v1

    .line 52
    :cond_1
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method

.method public final getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget-object v4, p0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    move-object v2, p1

    .line 21
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->extract:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p0, v0, Lorg/wikipedia/page/PageTitle;->extract:Ljava/lang/String;

    .line 27
    .line 28
    return-object v0
.end method

.method public final getThumbnailUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->thumbnail:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->source:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->namespace:Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1, p2}, Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;->writeToParcel(Landroid/os/Parcel;I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->titles:Lorg/wikipedia/dataclient/page/PageSummary$Titles;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1, p2}, Lorg/wikipedia/dataclient/page/PageSummary$Titles;->writeToParcel(Landroid/os/Parcel;I)V

    .line 32
    .line 33
    .line 34
    :goto_1
    iget-object v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->lang:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->thumbnail:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p1, p2}, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 51
    .line 52
    .line 53
    :goto_2
    iget-object v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->extract:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->originalImage:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    .line 64
    .line 65
    if-nez v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p1, p2}, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    .line 76
    .line 77
    :goto_3
    iget-object v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->wikiBaseItem:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->extractHtml:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->descriptionSource:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->coordinates:Landroid/location/Location;

    .line 93
    .line 94
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->type:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->pageId:I

    .line 103
    .line 104
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    .line 106
    .line 107
    iget-wide v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->revision:J

    .line 108
    .line 109
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->timestamp:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-wide v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->views:J

    .line 118
    .line 119
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    .line 121
    .line 122
    iget-wide v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->rank:J

    .line 123
    .line 124
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lorg/wikipedia/dataclient/page/PageSummary;->viewHistory:Ljava/util/List;

    .line 128
    .line 129
    if-nez p0, :cond_4

    .line 130
    .line 131
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    .line 137
    .line 138
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    .line 144
    .line 145
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_5

    .line 154
    .line 155
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary$ViewHistory;

    .line 160
    .line 161
    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/dataclient/page/PageSummary$ViewHistory;->writeToParcel(Landroid/os/Parcel;I)V

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_5
    return-void
.end method
