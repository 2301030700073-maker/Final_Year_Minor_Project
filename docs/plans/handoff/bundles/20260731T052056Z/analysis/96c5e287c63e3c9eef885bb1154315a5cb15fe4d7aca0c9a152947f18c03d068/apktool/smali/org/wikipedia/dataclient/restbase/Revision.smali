.class public final Lorg/wikipedia/dataclient/restbase/Revision;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/dataclient/restbase/Revision$Companion;


# instance fields
.field public final delta:Ljava/lang/Integer;

.field public final id:J

.field public final size:I

.field public final source:Ljava/lang/String;

.field public final timestamp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/restbase/Revision$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/restbase/Revision;->Companion:Lorg/wikipedia/dataclient/restbase/Revision$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lorg/wikipedia/dataclient/restbase/Revision;->timestamp:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lorg/wikipedia/dataclient/restbase/Revision;->source:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IJILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
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
    const-wide/16 p2, 0x0

    .line 9
    .line 10
    :cond_0
    iput-wide p2, p0, Lorg/wikipedia/dataclient/restbase/Revision;->id:J

    .line 11
    .line 12
    and-int/lit8 p2, p1, 0x2

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    iput p2, p0, Lorg/wikipedia/dataclient/restbase/Revision;->size:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput p4, p0, Lorg/wikipedia/dataclient/restbase/Revision;->size:I

    .line 21
    .line 22
    :goto_0
    and-int/lit8 p2, p1, 0x4

    .line 23
    .line 24
    const-string p3, ""

    .line 25
    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    iput-object p3, p0, Lorg/wikipedia/dataclient/restbase/Revision;->timestamp:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iput-object p5, p0, Lorg/wikipedia/dataclient/restbase/Revision;->timestamp:Ljava/lang/String;

    .line 32
    .line 33
    :goto_1
    and-int/lit8 p2, p1, 0x8

    .line 34
    .line 35
    if-nez p2, :cond_3

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    iput-object p2, p0, Lorg/wikipedia/dataclient/restbase/Revision;->delta:Ljava/lang/Integer;

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    iput-object p6, p0, Lorg/wikipedia/dataclient/restbase/Revision;->delta:Ljava/lang/Integer;

    .line 42
    .line 43
    :goto_2
    and-int/lit8 p1, p1, 0x10

    .line 44
    .line 45
    if-nez p1, :cond_4

    .line 46
    .line 47
    iput-object p3, p0, Lorg/wikipedia/dataclient/restbase/Revision;->source:Ljava/lang/String;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_4
    iput-object p7, p0, Lorg/wikipedia/dataclient/restbase/Revision;->source:Ljava/lang/String;

    .line 51
    .line 52
    return-void
.end method
