.class public final Lorg/wikipedia/edit/Edit;
.super Lorg/wikipedia/dataclient/mwapi/MwPostResponse;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/edit/Edit$Companion;


# instance fields
.field public final edit:Lorg/wikipedia/edit/Edit$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/edit/Edit$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/edit/Edit;->Companion:Lorg/wikipedia/edit/Edit$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v2}, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x6

    .line 21
    new-array v1, v1, [Lkotlin/Lazy;

    .line 22
    .line 23
    aput-object v0, v1, v2

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    aput-object v2, v1, v0

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    aput-object v2, v1, v0

    .line 31
    .line 32
    const/4 v0, 0x3

    .line 33
    aput-object v2, v1, v0

    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    aput-object v2, v1, v0

    .line 37
    .line 38
    const/4 v0, 0x5

    .line 39
    aput-object v2, v1, v0

    .line 40
    .line 41
    sput-object v1, Lorg/wikipedia/edit/Edit;->$childSerializers:[Lkotlin/Lazy;

    .line 42
    .line 43
    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/lang/String;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;Ljava/lang/String;ILorg/wikipedia/edit/Edit$Result;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;-><init>(ILjava/util/List;Ljava/lang/String;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    and-int/lit8 p1, p1, 0x20

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/wikipedia/edit/Edit;->edit:Lorg/wikipedia/edit/Edit$Result;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput-object p7, p0, Lorg/wikipedia/edit/Edit;->edit:Lorg/wikipedia/edit/Edit$Result;

    .line 13
    .line 14
    return-void
.end method
