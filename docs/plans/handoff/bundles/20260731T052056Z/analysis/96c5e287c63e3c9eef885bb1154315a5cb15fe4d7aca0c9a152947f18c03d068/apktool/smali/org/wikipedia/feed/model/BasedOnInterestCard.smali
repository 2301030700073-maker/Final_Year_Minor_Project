.class public final Lorg/wikipedia/feed/model/BasedOnInterestCard;
.super Lorg/wikipedia/feed/model/ForYouCard;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/feed/model/BasedOnInterestCard$Companion;


# instance fields
.field public final interestArticle:Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;

.field public final interestTopic:Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;

.field public final title:Lorg/wikipedia/page/PageTitle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/feed/model/BasedOnInterestCard$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/feed/model/BasedOnInterestCard;->Companion:Lorg/wikipedia/feed/model/BasedOnInterestCard$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(ILorg/wikipedia/page/PageTitle;Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;)V
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v2, v0, :cond_2

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lorg/wikipedia/feed/model/BasedOnInterestCard;->title:Lorg/wikipedia/page/PageTitle;

    .line 11
    .line 12
    and-int/lit8 p2, p1, 0x2

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    iput-object v1, p0, Lorg/wikipedia/feed/model/BasedOnInterestCard;->interestTopic:Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-object p3, p0, Lorg/wikipedia/feed/model/BasedOnInterestCard;->interestTopic:Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;

    .line 20
    .line 21
    :goto_0
    and-int/lit8 p1, p1, 0x4

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    iput-object v1, p0, Lorg/wikipedia/feed/model/BasedOnInterestCard;->interestArticle:Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iput-object p4, p0, Lorg/wikipedia/feed/model/BasedOnInterestCard;->interestArticle:Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    sget-object p0, Lorg/wikipedia/feed/model/BasedOnInterestCard$$serializer;->INSTANCE:Lorg/wikipedia/feed/model/BasedOnInterestCard$$serializer;

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/wikipedia/feed/model/BasedOnInterestCard$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 38
    .line 39
    .line 40
    throw v1
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;I)V
    .locals 2

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v1

    .line 41
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/wikipedia/feed/model/BasedOnInterestCard;->title:Lorg/wikipedia/page/PageTitle;

    .line 44
    iput-object p2, p0, Lorg/wikipedia/feed/model/BasedOnInterestCard;->interestTopic:Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;

    .line 45
    iput-object p3, p0, Lorg/wikipedia/feed/model/BasedOnInterestCard;->interestArticle:Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;

    return-void
.end method


# virtual methods
.method public final dismissHashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/feed/model/BasedOnInterestCard;->title:Lorg/wikipedia/page/PageTitle;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
