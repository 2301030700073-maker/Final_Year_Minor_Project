.class public final Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field$Companion;


# instance fields
.field public final help:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final optional:Z

.field public final sensitive:Z

.field public final type:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;->Companion:Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
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
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;->type:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;->type:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;->label:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;->label:Ljava/lang/String;

    .line 22
    .line 23
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;->help:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;->help:Ljava/lang/String;

    .line 31
    .line 32
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 33
    .line 34
    const/4 p3, 0x0

    .line 35
    if-nez p2, :cond_3

    .line 36
    .line 37
    iput-boolean p3, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;->optional:Z

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_3
    iput-boolean p5, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;->optional:Z

    .line 41
    .line 42
    :goto_3
    and-int/lit8 p2, p1, 0x10

    .line 43
    .line 44
    if-nez p2, :cond_4

    .line 45
    .line 46
    iput-boolean p3, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;->sensitive:Z

    .line 47
    .line 48
    goto :goto_4

    .line 49
    :cond_4
    iput-boolean p6, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;->sensitive:Z

    .line 50
    .line 51
    :goto_4
    and-int/lit8 p1, p1, 0x20

    .line 52
    .line 53
    if-nez p1, :cond_5

    .line 54
    .line 55
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;->value:Ljava/lang/String;

    .line 56
    .line 57
    return-void

    .line 58
    :cond_5
    iput-object p7, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;->value:Ljava/lang/String;

    .line 59
    .line 60
    return-void
.end method
