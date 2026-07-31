.class public final Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditStreak;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditStreak$Companion;


# instance fields
.field public final datePeriod:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditDateRange;

.field public final totalEditCountForPeriod:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditStreak$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditStreak;->Companion:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditStreak$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditDateRange;I)V
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
    const/4 p2, 0x0

    .line 9
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditStreak;->datePeriod:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditDateRange;

    .line 10
    .line 11
    and-int/lit8 p1, p1, 0x2

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditStreak;->totalEditCountForPeriod:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iput p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditStreak;->totalEditCountForPeriod:I

    .line 20
    .line 21
    return-void
.end method
