.class public final Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig$Companion;


# instance fields
.field public final rate:D

.field public final unit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikimedia/testkitchen/config/sampling/SampleConfig$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;->Companion:Lorg/wikimedia/testkitchen/config/sampling/SampleConfig$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IDLjava/lang/String;)V
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
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    :cond_0
    iput-wide p2, p0, Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;->rate:D

    .line 11
    .line 12
    and-int/lit8 p1, p1, 0x2

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    const-string p1, "session"

    .line 17
    .line 18
    iput-object p1, p0, Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;->unit:Ljava/lang/String;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iput-object p4, p0, Lorg/wikimedia/testkitchen/config/sampling/SampleConfig;->unit:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method
