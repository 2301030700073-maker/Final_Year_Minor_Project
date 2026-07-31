.class public final Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue$Companion;


# instance fields
.field public final altitude:D

.field public final latitude:D

.field public final longitude:D

.field public final precision:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;->Companion:Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IDDDD)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-wide v1, p0, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;->latitude:D

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-wide p2, p0, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;->latitude:D

    .line 14
    .line 15
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    iput-wide v1, p0, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;->longitude:D

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iput-wide p4, p0, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;->longitude:D

    .line 23
    .line 24
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 25
    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    iput-wide v1, p0, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;->altitude:D

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    iput-wide p6, p0, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;->altitude:D

    .line 32
    .line 33
    :goto_2
    and-int/lit8 p1, p1, 0x8

    .line 34
    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    iput-wide v1, p0, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;->precision:D

    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    iput-wide p8, p0, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;->precision:D

    .line 41
    .line 42
    return-void
.end method
