.class public final Lorg/wikipedia/dataclient/restbase/DiffResponse$RevisionSection;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/dataclient/restbase/DiffResponse$RevisionSection$Companion;


# instance fields
.field public final heading:Ljava/lang/String;

.field public final level:I

.field public final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/restbase/DiffResponse$RevisionSection$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/restbase/DiffResponse$RevisionSection;->Companion:Lorg/wikipedia/dataclient/restbase/DiffResponse$RevisionSection$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;)V
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
    iput v1, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse$RevisionSection;->level:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput p2, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse$RevisionSection;->level:I

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    iput-object p2, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse$RevisionSection;->heading:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iput-object p4, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse$RevisionSection;->heading:Ljava/lang/String;

    .line 23
    .line 24
    :goto_1
    and-int/lit8 p1, p1, 0x4

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    iput v1, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse$RevisionSection;->offset:I

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iput p3, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse$RevisionSection;->offset:I

    .line 32
    .line 33
    return-void
.end method
