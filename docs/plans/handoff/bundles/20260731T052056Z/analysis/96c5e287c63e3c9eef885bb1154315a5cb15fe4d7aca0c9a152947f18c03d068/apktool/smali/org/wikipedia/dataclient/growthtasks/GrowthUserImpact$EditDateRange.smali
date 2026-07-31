.class public final Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditDateRange;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditDateRange$Companion;


# instance fields
.field public final days:I

.field public final end:Ljava/lang/String;

.field public final start:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditDateRange$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditDateRange;->Companion:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditDateRange$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
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
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditDateRange;->start:Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-object p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditDateRange;->start:Ljava/lang/String;

    .line 14
    .line 15
    :goto_0
    and-int/lit8 p3, p1, 0x2

    .line 16
    .line 17
    if-nez p3, :cond_1

    .line 18
    .line 19
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditDateRange;->end:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iput-object p4, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditDateRange;->end:Ljava/lang/String;

    .line 23
    .line 24
    :goto_1
    and-int/lit8 p1, p1, 0x4

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditDateRange;->days:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iput p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditDateRange;->days:I

    .line 33
    .line 34
    return-void
.end method
