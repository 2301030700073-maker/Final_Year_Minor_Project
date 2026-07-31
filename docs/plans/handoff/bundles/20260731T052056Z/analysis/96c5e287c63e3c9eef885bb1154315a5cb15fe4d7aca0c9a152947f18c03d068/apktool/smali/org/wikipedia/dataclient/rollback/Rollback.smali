.class public final Lorg/wikipedia/dataclient/rollback/Rollback;
.super Lorg/wikipedia/dataclient/mwapi/MwResponse;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/rollback/Rollback$Companion;


# instance fields
.field public final lastRevision:J

.field public final oldRevision:J

.field public final pageId:I

.field public final revision:J

.field public final summary:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/rollback/Rollback$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/rollback/Rollback;->Companion:Lorg/wikipedia/dataclient/rollback/Rollback$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x1c

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    new-array v1, v1, [Lkotlin/Lazy;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aput-object v0, v1, v2

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object v2, v1, v0

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    aput-object v2, v1, v0

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    aput-object v2, v1, v0

    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    aput-object v2, v1, v0

    .line 40
    .line 41
    const/4 v0, 0x5

    .line 42
    aput-object v2, v1, v0

    .line 43
    .line 44
    const/4 v0, 0x6

    .line 45
    aput-object v2, v1, v0

    .line 46
    .line 47
    const/4 v0, 0x7

    .line 48
    aput-object v2, v1, v0

    .line 49
    .line 50
    sput-object v1, Lorg/wikipedia/dataclient/rollback/Rollback;->$childSerializers:[Lkotlin/Lazy;

    .line 51
    .line 52
    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJJ)V
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    if-ne v2, v0, :cond_5

    .line 6
    .line 7
    invoke-direct {p0, p1, p3, p2}, Lorg/wikipedia/dataclient/mwapi/MwResponse;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/dataclient/rollback/Rollback;->title:Ljava/lang/String;

    .line 11
    .line 12
    and-int/lit8 p2, p1, 0x8

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    iput p2, p0, Lorg/wikipedia/dataclient/rollback/Rollback;->pageId:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput p5, p0, Lorg/wikipedia/dataclient/rollback/Rollback;->pageId:I

    .line 21
    .line 22
    :goto_0
    and-int/lit8 p2, p1, 0x10

    .line 23
    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    iput-object v1, p0, Lorg/wikipedia/dataclient/rollback/Rollback;->summary:Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iput-object p6, p0, Lorg/wikipedia/dataclient/rollback/Rollback;->summary:Ljava/lang/String;

    .line 30
    .line 31
    :goto_1
    and-int/lit8 p2, p1, 0x20

    .line 32
    .line 33
    const-wide/16 p3, 0x0

    .line 34
    .line 35
    if-nez p2, :cond_2

    .line 36
    .line 37
    iput-wide p3, p0, Lorg/wikipedia/dataclient/rollback/Rollback;->revision:J

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    iput-wide p7, p0, Lorg/wikipedia/dataclient/rollback/Rollback;->revision:J

    .line 41
    .line 42
    :goto_2
    and-int/lit8 p2, p1, 0x40

    .line 43
    .line 44
    if-nez p2, :cond_3

    .line 45
    .line 46
    iput-wide p3, p0, Lorg/wikipedia/dataclient/rollback/Rollback;->oldRevision:J

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_3
    iput-wide p9, p0, Lorg/wikipedia/dataclient/rollback/Rollback;->oldRevision:J

    .line 50
    .line 51
    :goto_3
    and-int/lit16 p1, p1, 0x80

    .line 52
    .line 53
    if-nez p1, :cond_4

    .line 54
    .line 55
    iput-wide p3, p0, Lorg/wikipedia/dataclient/rollback/Rollback;->lastRevision:J

    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    iput-wide p11, p0, Lorg/wikipedia/dataclient/rollback/Rollback;->lastRevision:J

    .line 59
    .line 60
    return-void

    .line 61
    :cond_5
    sget-object p0, Lorg/wikipedia/dataclient/rollback/Rollback$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/rollback/Rollback$$serializer;

    .line 62
    .line 63
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/rollback/Rollback$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 68
    .line 69
    .line 70
    throw v1
.end method
