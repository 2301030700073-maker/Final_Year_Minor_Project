.class public final Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo$Companion;


# instance fields
.field public final height:F

.field public final left:F

.field public final src:Ljava/lang/String;

.field public final top:F

.field public final width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->Companion:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(FFFFLjava/lang/String;)V
    .locals 0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->left:F

    iput p2, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->top:F

    iput p3, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->width:F

    iput p4, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->height:F

    .line 55
    iput-object p5, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->src:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IFFFFLjava/lang/String;)V
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
    iput v1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->left:F

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput p2, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->left:F

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iput v1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->top:F

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput p3, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->top:F

    .line 22
    .line 23
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    iput v1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->width:F

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    iput p4, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->width:F

    .line 31
    .line 32
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 33
    .line 34
    if-nez p2, :cond_3

    .line 35
    .line 36
    iput v1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->height:F

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    iput p5, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->height:F

    .line 40
    .line 41
    :goto_3
    and-int/lit8 p1, p1, 0x10

    .line 42
    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    const-string p1, ""

    .line 46
    .line 47
    iput-object p1, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->src:Ljava/lang/String;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_4
    iput-object p6, p0, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->src:Ljava/lang/String;

    .line 51
    .line 52
    return-void
.end method
