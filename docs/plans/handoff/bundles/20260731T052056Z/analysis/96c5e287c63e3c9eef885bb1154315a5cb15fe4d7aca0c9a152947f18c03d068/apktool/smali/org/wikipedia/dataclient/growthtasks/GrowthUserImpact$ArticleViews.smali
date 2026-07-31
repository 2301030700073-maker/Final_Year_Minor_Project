.class public final Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews$Companion;


# instance fields
.field public final firstEditDate:Ljava/lang/String;

.field public final imageUrl:Ljava/lang/String;

.field public final newestEdit:Ljava/lang/String;

.field public final views:Lkotlinx/serialization/json/JsonElement;

.field public final viewsByDay$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final viewsCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews;->Companion:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLkotlinx/serialization/json/JsonElement;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews;->firstEditDate:Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews;->firstEditDate:Ljava/lang/String;

    .line 14
    .line 15
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews;->newestEdit:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews;->newestEdit:Ljava/lang/String;

    .line 23
    .line 24
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 25
    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews;->imageUrl:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews;->imageUrl:Ljava/lang/String;

    .line 32
    .line 33
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 34
    .line 35
    if-nez p2, :cond_3

    .line 36
    .line 37
    const-wide/16 p2, 0x0

    .line 38
    .line 39
    iput-wide p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews;->viewsCount:J

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    iput-wide p5, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews;->viewsCount:J

    .line 43
    .line 44
    :goto_3
    and-int/lit8 p1, p1, 0x10

    .line 45
    .line 46
    if-nez p1, :cond_4

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews;->views:Lkotlinx/serialization/json/JsonElement;

    .line 50
    .line 51
    goto :goto_4

    .line 52
    :cond_4
    iput-object p7, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews;->views:Lkotlinx/serialization/json/JsonElement;

    .line 53
    .line 54
    :goto_4
    new-instance p1, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    const/4 p2, 0x2

    .line 57
    invoke-direct {p1, p2, p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 61
    .line 62
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 63
    .line 64
    .line 65
    iput-object p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews;->viewsByDay$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 66
    .line 67
    return-void
.end method
