.class public final Lorg/wikipedia/dataclient/watch/Watch;
.super Lorg/wikipedia/dataclient/mwapi/MwResponse;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/watch/Watch$Companion;


# instance fields
.field public final expiry:Ljava/lang/String;

.field public final missing:Z

.field public final ns:I

.field public final pageid:I

.field public final title:Ljava/lang/String;

.field public final unwatched:Z

.field public final watched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/watch/Watch$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/watch/Watch;->Companion:Lorg/wikipedia/dataclient/watch/Watch$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/16 v1, 0x9

    .line 21
    .line 22
    new-array v1, v1, [Lkotlin/Lazy;

    .line 23
    .line 24
    aput-object v0, v1, v2

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    aput-object v2, v1, v0

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    aput-object v2, v1, v0

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    aput-object v2, v1, v0

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    aput-object v2, v1, v0

    .line 38
    .line 39
    const/4 v0, 0x5

    .line 40
    aput-object v2, v1, v0

    .line 41
    .line 42
    const/4 v0, 0x6

    .line 43
    aput-object v2, v1, v0

    .line 44
    .line 45
    const/4 v0, 0x7

    .line 46
    aput-object v2, v1, v0

    .line 47
    .line 48
    const/16 v0, 0x8

    .line 49
    .line 50
    aput-object v2, v1, v0

    .line 51
    .line 52
    sput-object v1, Lorg/wikipedia/dataclient/watch/Watch;->$childSerializers:[Lkotlin/Lazy;

    .line 53
    .line 54
    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZZZ)V
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    if-ne v2, v0, :cond_6

    .line 6
    .line 7
    invoke-direct {p0, p1, p3, p2}, Lorg/wikipedia/dataclient/mwapi/MwResponse;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/dataclient/watch/Watch;->title:Ljava/lang/String;

    .line 11
    .line 12
    and-int/lit8 p2, p1, 0x8

    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    iput p3, p0, Lorg/wikipedia/dataclient/watch/Watch;->ns:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput p5, p0, Lorg/wikipedia/dataclient/watch/Watch;->ns:I

    .line 21
    .line 22
    :goto_0
    and-int/lit8 p2, p1, 0x10

    .line 23
    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    iput p3, p0, Lorg/wikipedia/dataclient/watch/Watch;->pageid:I

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iput p6, p0, Lorg/wikipedia/dataclient/watch/Watch;->pageid:I

    .line 30
    .line 31
    :goto_1
    and-int/lit8 p2, p1, 0x20

    .line 32
    .line 33
    if-nez p2, :cond_2

    .line 34
    .line 35
    iput-object v1, p0, Lorg/wikipedia/dataclient/watch/Watch;->expiry:Ljava/lang/String;

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    iput-object p7, p0, Lorg/wikipedia/dataclient/watch/Watch;->expiry:Ljava/lang/String;

    .line 39
    .line 40
    :goto_2
    and-int/lit8 p2, p1, 0x40

    .line 41
    .line 42
    if-nez p2, :cond_3

    .line 43
    .line 44
    iput-boolean p3, p0, Lorg/wikipedia/dataclient/watch/Watch;->watched:Z

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_3
    iput-boolean p8, p0, Lorg/wikipedia/dataclient/watch/Watch;->watched:Z

    .line 48
    .line 49
    :goto_3
    and-int/lit16 p2, p1, 0x80

    .line 50
    .line 51
    if-nez p2, :cond_4

    .line 52
    .line 53
    iput-boolean p3, p0, Lorg/wikipedia/dataclient/watch/Watch;->unwatched:Z

    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_4
    iput-boolean p9, p0, Lorg/wikipedia/dataclient/watch/Watch;->unwatched:Z

    .line 57
    .line 58
    :goto_4
    and-int/lit16 p1, p1, 0x100

    .line 59
    .line 60
    if-nez p1, :cond_5

    .line 61
    .line 62
    iput-boolean p3, p0, Lorg/wikipedia/dataclient/watch/Watch;->missing:Z

    .line 63
    .line 64
    return-void

    .line 65
    :cond_5
    iput-boolean p10, p0, Lorg/wikipedia/dataclient/watch/Watch;->missing:Z

    .line 66
    .line 67
    return-void

    .line 68
    :cond_6
    sget-object p0, Lorg/wikipedia/dataclient/watch/Watch$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/watch/Watch$$serializer;

    .line 69
    .line 70
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/watch/Watch$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 75
    .line 76
    .line 77
    throw v1
.end method
