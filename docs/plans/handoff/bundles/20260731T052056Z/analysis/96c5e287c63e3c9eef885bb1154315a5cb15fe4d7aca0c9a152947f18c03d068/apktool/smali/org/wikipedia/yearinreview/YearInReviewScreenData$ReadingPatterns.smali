.class public final Lorg/wikipedia/yearinreview/YearInReviewScreenData$ReadingPatterns;
.super Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final favoriteDayText:Ljava/lang/String;

.field public final favoriteMonthText:Ljava/lang/String;

.field public final favoriteTimeText:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v7, 0x0

    .line 2
    const/16 v8, 0x44

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p4

    .line 10
    move-object v6, p5

    .line 11
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;-><init>(ZILandroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 12
    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$ReadingPatterns;->favoriteTimeText:Ljava/lang/String;

    .line 15
    .line 16
    move-object/from16 p1, p7

    .line 17
    .line 18
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$ReadingPatterns;->favoriteDayText:Ljava/lang/String;

    .line 19
    .line 20
    move-object/from16 p1, p8

    .line 21
    .line 22
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$ReadingPatterns;->favoriteMonthText:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method
