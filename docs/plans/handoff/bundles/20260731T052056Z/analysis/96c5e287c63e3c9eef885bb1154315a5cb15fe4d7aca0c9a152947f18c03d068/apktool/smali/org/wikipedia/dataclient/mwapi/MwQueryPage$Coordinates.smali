.class public final Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates$Companion;


# instance fields
.field public final lat:D

.field public final lon:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;->Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(DDI)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p5, 0x1

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-wide v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;->lat:D

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-wide p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;->lat:D

    .line 14
    .line 15
    :goto_0
    and-int/lit8 p1, p5, 0x2

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    iput-wide v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;->lon:D

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iput-wide p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;->lon:D

    .line 23
    .line 24
    return-void
.end method
