.class public final Lorg/wikipedia/dataclient/restbase/DiffResponse;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/restbase/DiffResponse$Companion;


# instance fields
.field public final diff:Ljava/util/List;

.field public final from:Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;

.field public final to:Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/restbase/DiffResponse$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/restbase/DiffResponse;->Companion:Lorg/wikipedia/dataclient/restbase/DiffResponse$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x13

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
    sput-object v1, Lorg/wikipedia/dataclient/restbase/DiffResponse;->$childSerializers:[Lkotlin/Lazy;

    .line 35
    .line 36
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;Ljava/util/List;)V
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
    iput-object v1, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse;->from:Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse;->from:Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse;->to:Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse;->to:Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffRevision;

    .line 22
    .line 23
    :goto_1
    and-int/lit8 p1, p1, 0x4

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 28
    .line 29
    iput-object p1, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse;->diff:Ljava/util/List;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/restbase/DiffResponse;->diff:Ljava/util/List;

    .line 33
    .line 34
    return-void
.end method
