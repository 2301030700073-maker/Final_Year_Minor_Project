.class public final Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final articlesReadByWeek:Ljava/util/List;

.field public final articlesReadThisMonth:I

.field public final articlesSaved:Ljava/util/List;

.field public final articlesSavedThisMonth:I

.field public final lastArticleReadTime:Lj$/time/LocalDateTime;

.field public final lastArticleSavedTime:Lj$/time/LocalDateTime;

.field public final timeSpentThisWeek:J

.field public final topCategories:Ljava/util/List;


# direct methods
.method public constructor <init>(JILj$/time/LocalDateTime;Ljava/util/List;ILj$/time/LocalDateTime;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-wide p1, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->timeSpentThisWeek:J

    .line 11
    .line 12
    iput p3, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->articlesReadThisMonth:I

    .line 13
    .line 14
    iput-object p4, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->lastArticleReadTime:Lj$/time/LocalDateTime;

    .line 15
    .line 16
    iput-object p5, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->articlesReadByWeek:Ljava/util/List;

    .line 17
    .line 18
    iput p6, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->articlesSavedThisMonth:I

    .line 19
    .line 20
    iput-object p7, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->lastArticleSavedTime:Lj$/time/LocalDateTime;

    .line 21
    .line 22
    iput-object p8, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->articlesSaved:Ljava/util/List;

    .line 23
    .line 24
    iput-object p9, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->topCategories:Ljava/util/List;

    .line 25
    .line 26
    return-void
.end method
