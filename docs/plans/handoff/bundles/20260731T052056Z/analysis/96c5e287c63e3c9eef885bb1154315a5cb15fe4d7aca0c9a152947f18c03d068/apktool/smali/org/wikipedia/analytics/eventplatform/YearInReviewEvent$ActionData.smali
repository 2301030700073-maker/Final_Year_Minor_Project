.class public final Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData$Companion;


# instance fields
.field public final campaignId:Ljava/lang/String;

.field public final feedbackSelect:Ljava/lang/Integer;

.field public final feedbackText:Ljava/lang/String;

.field public final groupAssigned:Ljava/lang/String;

.field public final slide:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData;->Companion:Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData;->slide:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p3, p0, Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData;->slide:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p3, p1, 0x2

    .line 15
    .line 16
    if-nez p3, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData;->campaignId:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-object p4, p0, Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData;->campaignId:Ljava/lang/String;

    .line 22
    .line 23
    :goto_1
    and-int/lit8 p3, p1, 0x4

    .line 24
    .line 25
    if-nez p3, :cond_2

    .line 26
    .line 27
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData;->groupAssigned:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    iput-object p5, p0, Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData;->groupAssigned:Ljava/lang/String;

    .line 31
    .line 32
    :goto_2
    and-int/lit8 p3, p1, 0x8

    .line 33
    .line 34
    if-nez p3, :cond_3

    .line 35
    .line 36
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData;->feedbackSelect:Ljava/lang/Integer;

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    iput-object p2, p0, Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData;->feedbackSelect:Ljava/lang/Integer;

    .line 40
    .line 41
    :goto_3
    and-int/lit8 p1, p1, 0x10

    .line 42
    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    iput-object v1, p0, Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData;->feedbackText:Ljava/lang/String;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_4
    iput-object p6, p0, Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData;->feedbackText:Ljava/lang/String;

    .line 49
    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData;->slide:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData;->campaignId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData;->groupAssigned:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData;->feedbackSelect:Ljava/lang/Integer;

    .line 56
    iput-object p4, p0, Lorg/wikipedia/analytics/eventplatform/YearInReviewEvent$ActionData;->feedbackText:Ljava/lang/String;

    return-void
.end method
