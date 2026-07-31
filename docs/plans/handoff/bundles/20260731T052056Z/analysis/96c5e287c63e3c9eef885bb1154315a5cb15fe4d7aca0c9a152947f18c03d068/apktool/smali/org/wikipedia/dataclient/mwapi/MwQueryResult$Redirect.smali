.class public final Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect$Companion;


# instance fields
.field public final from:Ljava/lang/String;

.field public final index:I

.field public final to:Ljava/lang/String;

.field public final toFragment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;->Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;->toFragment:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;->toFragment:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p3, p1, 0x2

    .line 15
    .line 16
    if-nez p3, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    :cond_1
    iput p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;->index:I

    .line 20
    .line 21
    and-int/lit8 p2, p1, 0x4

    .line 22
    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;->from:Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;->from:Ljava/lang/String;

    .line 29
    .line 30
    :goto_1
    and-int/lit8 p1, p1, 0x8

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;->to:Ljava/lang/String;

    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;->to:Ljava/lang/String;

    .line 38
    .line 39
    return-void
.end method
