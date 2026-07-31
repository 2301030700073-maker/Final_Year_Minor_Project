.class public final Lorg/wikipedia/page/tabs/Tab;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/page/tabs/Tab$Companion;


# instance fields
.field public final backStack:Ljava/util/List;

.field public backStackPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/page/tabs/Tab$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/page/tabs/Tab;->Companion:Lorg/wikipedia/page/tabs/Tab$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v2, 0x0

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
    const/4 v1, 0x2

    .line 21
    new-array v1, v1, [Lkotlin/Lazy;

    .line 22
    .line 23
    aput-object v0, v1, v2

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v2, 0x1

    .line 27
    aput-object v0, v1, v2

    .line 28
    .line 29
    sput-object v1, Lorg/wikipedia/page/tabs/Tab;->$childSerializers:[Lkotlin/Lazy;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    return-void
.end method

.method public synthetic constructor <init>(IILjava/util/List;)V
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
    new-instance p3, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iput-object p3, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 14
    .line 15
    and-int/lit8 p1, p1, 0x2

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iput p2, p0, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getBackStackPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    add-int/lit8 p0, p0, -0x1

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    return v0
.end method

.method public final getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lorg/wikipedia/page/PageBackStackItem;

    .line 20
    .line 21
    iget-object p0, p0, Lorg/wikipedia/page/PageBackStackItem;->title:Lorg/wikipedia/page/PageTitle;

    .line 22
    .line 23
    return-object p0
.end method
