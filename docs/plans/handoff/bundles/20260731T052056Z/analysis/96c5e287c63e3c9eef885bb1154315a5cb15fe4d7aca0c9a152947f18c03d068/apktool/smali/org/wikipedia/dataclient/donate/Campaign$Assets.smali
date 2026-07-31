.class public final Lorg/wikipedia/dataclient/donate/Campaign$Assets;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/donate/Campaign$Assets$Companion;


# instance fields
.field public final actions:[Lorg/wikipedia/dataclient/donate/Campaign$Action;

.field public final footer:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final text:Ljava/lang/String;

.field public final weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/donate/Campaign$Assets$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->Companion:Lorg/wikipedia/dataclient/donate/Campaign$Assets$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0xb

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x5

    .line 22
    new-array v1, v1, [Lkotlin/Lazy;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v3, v1, v2

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    aput-object v3, v1, v2

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    aput-object v3, v1, v2

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    aput-object v3, v1, v2

    .line 36
    .line 37
    const/4 v2, 0x4

    .line 38
    aput-object v0, v1, v2

    .line 39
    .line 40
    sput-object v1, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->$childSerializers:[Lkotlin/Lazy;

    .line 41
    .line 42
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;[Lorg/wikipedia/dataclient/donate/Campaign$Action;)V
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
    iput-object v1, p0, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->id:Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->id:Ljava/lang/String;

    .line 14
    .line 15
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    const/high16 p2, 0x3f800000    # 1.0f

    .line 20
    .line 21
    iput p2, p0, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->weight:F

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iput p3, p0, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->weight:F

    .line 25
    .line 26
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 27
    .line 28
    if-nez p2, :cond_2

    .line 29
    .line 30
    iput-object v1, p0, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->text:Ljava/lang/String;

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->text:Ljava/lang/String;

    .line 34
    .line 35
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 36
    .line 37
    if-nez p2, :cond_3

    .line 38
    .line 39
    iput-object v1, p0, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->footer:Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->footer:Ljava/lang/String;

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
    new-array p1, p1, [Lorg/wikipedia/dataclient/donate/Campaign$Action;

    .line 50
    .line 51
    iput-object p1, p0, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->actions:[Lorg/wikipedia/dataclient/donate/Campaign$Action;

    .line 52
    .line 53
    return-void

    .line 54
    :cond_4
    iput-object p6, p0, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->actions:[Lorg/wikipedia/dataclient/donate/Campaign$Action;

    .line 55
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;[Lorg/wikipedia/dataclient/donate/Campaign$Action;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->id:Ljava/lang/String;

    .line 59
    iput p2, p0, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->weight:F

    .line 60
    iput-object p3, p0, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->text:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->footer:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->actions:[Lorg/wikipedia/dataclient/donate/Campaign$Action;

    return-void
.end method
