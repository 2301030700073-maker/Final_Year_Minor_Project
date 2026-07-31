.class public final Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision$Companion;


# instance fields
.field public final id:J

.field public final sections:Ljava/util/List;

.field public final slotRole:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;->Companion:Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x15

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
    const/4 v1, 0x3

    .line 22
    new-array v1, v1, [Lkotlin/Lazy;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v3, v1, v2

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    aput-object v3, v1, v2

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    aput-object v0, v1, v2

    .line 33
    .line 34
    sput-object v1, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;->$childSerializers:[Lkotlin/Lazy;

    .line 35
    .line 36
    return-void
.end method

.method public synthetic constructor <init>(IJLjava/lang/String;Ljava/util/List;)V
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
    const-wide/16 p2, 0x0

    .line 9
    .line 10
    :cond_0
    iput-wide p2, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;->id:J

    .line 11
    .line 12
    and-int/lit8 p2, p1, 0x2

    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    iput-object p3, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;->slotRole:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput-object p4, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;->slotRole:Ljava/lang/String;

    .line 21
    .line 22
    :goto_0
    and-int/lit8 p1, p1, 0x4

    .line 23
    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    iput-object p3, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;->sections:Ljava/util/List;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    iput-object p5, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;->sections:Ljava/util/List;

    .line 30
    .line 31
    return-void
.end method
