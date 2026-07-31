.class public final Lorg/wikipedia/feed/onthisday/OnThisDay$Event;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/feed/onthisday/OnThisDay$Event$Companion;


# instance fields
.field public final pages:Ljava/util/List;

.field public final text:Ljava/lang/String;

.field public final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->Companion:Lorg/wikipedia/feed/onthisday/OnThisDay$Event$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v2, 0x5

    .line 13
    invoke-direct {v1, v2}, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x3

    .line 21
    new-array v1, v1, [Lkotlin/Lazy;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object v0, v1, v2

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    aput-object v2, v1, v0

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    aput-object v2, v1, v0

    .line 32
    .line 33
    sput-object v1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->$childSerializers:[Lkotlin/Lazy;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->pages:Ljava/util/List;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->text:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 9
    .line 10
    :cond_0
    iput-object p4, p0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->pages:Ljava/util/List;

    .line 11
    .line 12
    and-int/lit8 p4, p1, 0x2

    .line 13
    .line 14
    if-nez p4, :cond_1

    .line 15
    .line 16
    const-string p3, ""

    .line 17
    .line 18
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->text:Ljava/lang/String;

    .line 19
    .line 20
    and-int/lit8 p1, p1, 0x4

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    iput p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 29
    .line 30
    return-void
.end method
