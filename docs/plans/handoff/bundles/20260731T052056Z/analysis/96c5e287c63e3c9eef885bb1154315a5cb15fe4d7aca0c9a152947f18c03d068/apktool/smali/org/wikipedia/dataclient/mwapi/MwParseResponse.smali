.class public final Lorg/wikipedia/dataclient/mwapi/MwParseResponse;
.super Lorg/wikipedia/dataclient/mwapi/MwResponse;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/MwParseResponse$Companion;


# instance fields
.field public final parse:Lorg/wikipedia/dataclient/mwapi/MwParseResponse$Parse;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwParseResponse$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;->Companion:Lorg/wikipedia/dataclient/mwapi/MwParseResponse$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x1c

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;-><init>(I)V

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
    aput-object v0, v1, v2

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    aput-object v2, v1, v0

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    aput-object v2, v1, v0

    .line 33
    .line 34
    sput-object v1, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;->$childSerializers:[Lkotlin/Lazy;

    .line 35
    .line 36
    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/lang/String;Lorg/wikipedia/dataclient/mwapi/MwParseResponse$Parse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p2}, Lorg/wikipedia/dataclient/mwapi/MwResponse;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    and-int/lit8 p1, p1, 0x4

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;->parse:Lorg/wikipedia/dataclient/mwapi/MwParseResponse$Parse;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;->parse:Lorg/wikipedia/dataclient/mwapi/MwParseResponse$Parse;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;->parse:Lorg/wikipedia/dataclient/mwapi/MwParseResponse$Parse;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwParseResponse$Parse;->text:Ljava/lang/String;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    if-nez p0, :cond_1

    .line 10
    .line 11
    const-string p0, ""

    .line 12
    .line 13
    :cond_1
    return-object p0
.end method
