.class public final Lorg/wikipedia/gallery/ImageInfo$Derivative;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/gallery/ImageInfo$Derivative$Companion;


# instance fields
.field public final bandwidth:J

.field public final height:I

.field public final shorttitle:Ljava/lang/String;

.field public final src:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final type:Ljava/lang/String;

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/gallery/ImageInfo$Derivative$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/gallery/ImageInfo$Derivative;->Companion:Lorg/wikipedia/gallery/ImageInfo$Derivative$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
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
    iput-object v1, p0, Lorg/wikipedia/gallery/ImageInfo$Derivative;->src:Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/gallery/ImageInfo$Derivative;->src:Ljava/lang/String;

    .line 14
    .line 15
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    iput-object v1, p0, Lorg/wikipedia/gallery/ImageInfo$Derivative;->type:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/gallery/ImageInfo$Derivative;->type:Ljava/lang/String;

    .line 23
    .line 24
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 25
    .line 26
    const/4 p3, 0x0

    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    iput-object p3, p0, Lorg/wikipedia/gallery/ImageInfo$Derivative;->title:Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/gallery/ImageInfo$Derivative;->title:Ljava/lang/String;

    .line 33
    .line 34
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 35
    .line 36
    if-nez p2, :cond_3

    .line 37
    .line 38
    iput-object p3, p0, Lorg/wikipedia/gallery/ImageInfo$Derivative;->shorttitle:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/gallery/ImageInfo$Derivative;->shorttitle:Ljava/lang/String;

    .line 42
    .line 43
    :goto_3
    and-int/lit8 p2, p1, 0x10

    .line 44
    .line 45
    const/4 p3, 0x0

    .line 46
    if-nez p2, :cond_4

    .line 47
    .line 48
    iput p3, p0, Lorg/wikipedia/gallery/ImageInfo$Derivative;->width:I

    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_4
    iput p6, p0, Lorg/wikipedia/gallery/ImageInfo$Derivative;->width:I

    .line 52
    .line 53
    :goto_4
    and-int/lit8 p2, p1, 0x20

    .line 54
    .line 55
    if-nez p2, :cond_5

    .line 56
    .line 57
    iput p3, p0, Lorg/wikipedia/gallery/ImageInfo$Derivative;->height:I

    .line 58
    .line 59
    goto :goto_5

    .line 60
    :cond_5
    iput p7, p0, Lorg/wikipedia/gallery/ImageInfo$Derivative;->height:I

    .line 61
    .line 62
    :goto_5
    and-int/lit8 p1, p1, 0x40

    .line 63
    .line 64
    if-nez p1, :cond_6

    .line 65
    .line 66
    const-wide/16 p1, 0x0

    .line 67
    .line 68
    iput-wide p1, p0, Lorg/wikipedia/gallery/ImageInfo$Derivative;->bandwidth:J

    .line 69
    .line 70
    return-void

    .line 71
    :cond_6
    iput-wide p8, p0, Lorg/wikipedia/gallery/ImageInfo$Derivative;->bandwidth:J

    .line 72
    .line 73
    return-void
.end method
