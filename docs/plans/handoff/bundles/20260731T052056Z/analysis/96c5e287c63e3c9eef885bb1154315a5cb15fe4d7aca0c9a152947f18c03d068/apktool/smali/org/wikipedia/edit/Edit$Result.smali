.class public final Lorg/wikipedia/edit/Edit$Result;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/edit/Edit$Result$Companion;


# instance fields
.field public final captcha:Lorg/wikipedia/edit/Edit$Captcha;

.field public final code:Ljava/lang/String;

.field public final info:Ljava/lang/String;

.field public final newRevId:J

.field public final spamblacklist:Ljava/lang/String;

.field public final status:Ljava/lang/String;

.field public final warning:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/edit/Edit$Result$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/edit/Edit$Result;->Companion:Lorg/wikipedia/edit/Edit$Result$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/edit/Edit$Captcha;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object v1, p0, Lorg/wikipedia/edit/Edit$Result;->captcha:Lorg/wikipedia/edit/Edit$Captcha;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/edit/Edit$Result;->captcha:Lorg/wikipedia/edit/Edit$Captcha;

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Lorg/wikipedia/edit/Edit$Result;->status:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/edit/Edit$Result;->status:Ljava/lang/String;

    .line 22
    .line 23
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    const-wide/16 p2, 0x0

    .line 28
    .line 29
    iput-wide p2, p0, Lorg/wikipedia/edit/Edit$Result;->newRevId:J

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    iput-wide p4, p0, Lorg/wikipedia/edit/Edit$Result;->newRevId:J

    .line 33
    .line 34
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 35
    .line 36
    if-nez p2, :cond_3

    .line 37
    .line 38
    iput-object v1, p0, Lorg/wikipedia/edit/Edit$Result;->code:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    iput-object p6, p0, Lorg/wikipedia/edit/Edit$Result;->code:Ljava/lang/String;

    .line 42
    .line 43
    :goto_3
    and-int/lit8 p2, p1, 0x10

    .line 44
    .line 45
    if-nez p2, :cond_4

    .line 46
    .line 47
    iput-object v1, p0, Lorg/wikipedia/edit/Edit$Result;->info:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_4

    .line 50
    :cond_4
    iput-object p7, p0, Lorg/wikipedia/edit/Edit$Result;->info:Ljava/lang/String;

    .line 51
    .line 52
    :goto_4
    and-int/lit8 p2, p1, 0x20

    .line 53
    .line 54
    if-nez p2, :cond_5

    .line 55
    .line 56
    iput-object v1, p0, Lorg/wikipedia/edit/Edit$Result;->warning:Ljava/lang/String;

    .line 57
    .line 58
    goto :goto_5

    .line 59
    :cond_5
    iput-object p8, p0, Lorg/wikipedia/edit/Edit$Result;->warning:Ljava/lang/String;

    .line 60
    .line 61
    :goto_5
    and-int/lit8 p1, p1, 0x40

    .line 62
    .line 63
    if-nez p1, :cond_6

    .line 64
    .line 65
    iput-object v1, p0, Lorg/wikipedia/edit/Edit$Result;->spamblacklist:Ljava/lang/String;

    .line 66
    .line 67
    return-void

    .line 68
    :cond_6
    iput-object p9, p0, Lorg/wikipedia/edit/Edit$Result;->spamblacklist:Ljava/lang/String;

    .line 69
    .line 70
    return-void
.end method
