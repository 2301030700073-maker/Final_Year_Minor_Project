.class public final Lorg/wikipedia/donate/DonationResult;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/donate/DonationResult$Companion;


# instance fields
.field public final amount:F

.field public final currency:Ljava/lang/String;

.field public final dateTime:Ljava/lang/String;

.field public final fromWeb:Z

.field public final recurring:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/donate/DonationResult$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/donate/DonationResult;->Companion:Lorg/wikipedia/donate/DonationResult$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZFLjava/lang/String;Z)V
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
    iput-object v1, p0, Lorg/wikipedia/donate/DonationResult;->dateTime:Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/donate/DonationResult;->dateTime:Ljava/lang/String;

    .line 14
    .line 15
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    iput-boolean v0, p0, Lorg/wikipedia/donate/DonationResult;->fromWeb:Z

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iput-boolean p3, p0, Lorg/wikipedia/donate/DonationResult;->fromWeb:Z

    .line 24
    .line 25
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 26
    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    iput p2, p0, Lorg/wikipedia/donate/DonationResult;->amount:F

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    iput p4, p0, Lorg/wikipedia/donate/DonationResult;->amount:F

    .line 34
    .line 35
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 36
    .line 37
    if-nez p2, :cond_3

    .line 38
    .line 39
    iput-object v1, p0, Lorg/wikipedia/donate/DonationResult;->currency:Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/donate/DonationResult;->currency:Ljava/lang/String;

    .line 43
    .line 44
    :goto_3
    and-int/lit8 p1, p1, 0x10

    .line 45
    .line 46
    if-nez p1, :cond_4

    .line 47
    .line 48
    iput-boolean v0, p0, Lorg/wikipedia/donate/DonationResult;->recurring:Z

    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    iput-boolean p6, p0, Lorg/wikipedia/donate/DonationResult;->recurring:Z

    .line 52
    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLjava/lang/String;Z)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/wikipedia/donate/DonationResult;->dateTime:Ljava/lang/String;

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lorg/wikipedia/donate/DonationResult;->fromWeb:Z

    .line 57
    iput p2, p0, Lorg/wikipedia/donate/DonationResult;->amount:F

    .line 58
    iput-object p3, p0, Lorg/wikipedia/donate/DonationResult;->currency:Ljava/lang/String;

    .line 59
    iput-boolean p4, p0, Lorg/wikipedia/donate/DonationResult;->recurring:Z

    return-void
.end method
