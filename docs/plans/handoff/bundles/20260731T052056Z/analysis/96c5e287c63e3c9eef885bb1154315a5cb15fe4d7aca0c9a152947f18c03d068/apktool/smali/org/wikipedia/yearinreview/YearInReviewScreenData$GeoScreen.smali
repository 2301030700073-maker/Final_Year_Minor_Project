.class public final Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;
.super Lorg/wikipedia/yearinreview/YearInReviewScreenData;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final bodyText:Ljava/lang/String;

.field public final headlineText:Ljava/lang/String;

.field public final largestClusterBottomRight:Lkotlin/Pair;

.field public final largestClusterTopLeft:Lkotlin/Pair;

.field public final pagesWithCoordinates:Ljava/util/List;


# direct methods
.method public constructor <init>(ZLkotlin/Pair;Lkotlin/Pair;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-direct {p0, v0, p7, p1}, Lorg/wikipedia/yearinreview/YearInReviewScreenData;-><init>(ILjava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;->largestClusterTopLeft:Lkotlin/Pair;

    .line 15
    .line 16
    iput-object p3, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;->largestClusterBottomRight:Lkotlin/Pair;

    .line 17
    .line 18
    iput-object p4, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;->pagesWithCoordinates:Ljava/util/List;

    .line 19
    .line 20
    iput-object p5, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;->headlineText:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p6, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;->bodyText:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method
