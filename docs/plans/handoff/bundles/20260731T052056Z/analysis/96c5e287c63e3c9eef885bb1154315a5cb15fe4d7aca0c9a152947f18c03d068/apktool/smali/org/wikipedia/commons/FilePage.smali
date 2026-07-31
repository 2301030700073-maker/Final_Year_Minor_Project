.class public final Lorg/wikipedia/commons/FilePage;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final imageFromCommons:Z

.field public final imageTags:Ljava/util/Map;

.field public final page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

.field public final showEditButton:Z

.field public final showFilename:Z

.field public final thumbnailHeight:I

.field public final thumbnailWidth:I


# direct methods
.method public constructor <init>(IIZZZLorg/wikipedia/dataclient/mwapi/MwQueryPage;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lorg/wikipedia/commons/FilePage;->thumbnailWidth:I

    .line 11
    .line 12
    iput p2, p0, Lorg/wikipedia/commons/FilePage;->thumbnailHeight:I

    .line 13
    .line 14
    iput-boolean p3, p0, Lorg/wikipedia/commons/FilePage;->imageFromCommons:Z

    .line 15
    .line 16
    iput-boolean p4, p0, Lorg/wikipedia/commons/FilePage;->showEditButton:Z

    .line 17
    .line 18
    iput-boolean p5, p0, Lorg/wikipedia/commons/FilePage;->showFilename:Z

    .line 19
    .line 20
    iput-object p6, p0, Lorg/wikipedia/commons/FilePage;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 21
    .line 22
    iput-object p7, p0, Lorg/wikipedia/commons/FilePage;->imageTags:Ljava/util/Map;

    .line 23
    .line 24
    return-void
.end method
