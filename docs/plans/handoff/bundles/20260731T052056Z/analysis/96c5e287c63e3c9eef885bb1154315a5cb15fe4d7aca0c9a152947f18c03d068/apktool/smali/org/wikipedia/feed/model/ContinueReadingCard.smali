.class public final Lorg/wikipedia/feed/model/ContinueReadingCard;
.super Lorg/wikipedia/feed/model/ForYouCard;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/feed/model/ContinueReadingCard$Companion;


# instance fields
.field public final source:I

.field public final title:Lorg/wikipedia/page/PageTitle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/feed/model/ContinueReadingCard$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/feed/model/ContinueReadingCard;->Companion:Lorg/wikipedia/feed/model/ContinueReadingCard$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(ILorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lorg/wikipedia/feed/model/ContinueReadingCard;->title:Lorg/wikipedia/page/PageTitle;

    .line 27
    iput p1, p0, Lorg/wikipedia/feed/model/ContinueReadingCard;->source:I

    return-void
.end method

.method public constructor <init>(ILorg/wikipedia/page/PageTitle;I)V
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v1, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/feed/model/ContinueReadingCard;->title:Lorg/wikipedia/page/PageTitle;

    .line 10
    .line 11
    iput p3, p0, Lorg/wikipedia/feed/model/ContinueReadingCard;->source:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-object p0, Lorg/wikipedia/feed/model/ContinueReadingCard$$serializer;->INSTANCE:Lorg/wikipedia/feed/model/ContinueReadingCard$$serializer;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/wikipedia/feed/model/ContinueReadingCard$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    throw p0
.end method


# virtual methods
.method public final dismissHashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/feed/model/ContinueReadingCard;->title:Lorg/wikipedia/page/PageTitle;

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
