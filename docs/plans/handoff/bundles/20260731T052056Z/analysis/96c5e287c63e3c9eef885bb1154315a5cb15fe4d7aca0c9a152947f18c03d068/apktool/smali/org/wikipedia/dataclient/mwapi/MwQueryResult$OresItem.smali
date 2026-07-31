.class public final Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresItem;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresItem$Companion;


# instance fields
.field public final falseProb:F

.field public final trueProb:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresItem$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresItem;->Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresItem$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(FFI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p3, 0x1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresItem;->trueProb:F

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresItem;->trueProb:F

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p1, p3, 0x2

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iput v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresItem;->falseProb:F

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iput p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresItem;->falseProb:F

    .line 22
    .line 23
    return-void
.end method
