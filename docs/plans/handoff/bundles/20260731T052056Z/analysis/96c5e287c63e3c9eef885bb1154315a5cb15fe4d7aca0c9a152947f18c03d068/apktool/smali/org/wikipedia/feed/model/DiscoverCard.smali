.class public final Lorg/wikipedia/feed/model/DiscoverCard;
.super Lorg/wikipedia/feed/model/ForYouCard;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/feed/model/DiscoverCard$Companion;


# instance fields
.field public final title:Lorg/wikipedia/page/PageTitle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/feed/model/DiscoverCard$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/feed/model/DiscoverCard;->Companion:Lorg/wikipedia/feed/model/DiscoverCard$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(ILorg/wikipedia/page/PageTitle;)V
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v1, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/feed/model/DiscoverCard;->title:Lorg/wikipedia/page/PageTitle;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object p0, Lorg/wikipedia/feed/model/DiscoverCard$$serializer;->INSTANCE:Lorg/wikipedia/feed/model/DiscoverCard$$serializer;

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/wikipedia/feed/model/DiscoverCard$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    throw p0
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/wikipedia/feed/model/DiscoverCard;->title:Lorg/wikipedia/page/PageTitle;

    return-void
.end method


# virtual methods
.method public final dismissHashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/feed/model/DiscoverCard;->title:Lorg/wikipedia/page/PageTitle;

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
