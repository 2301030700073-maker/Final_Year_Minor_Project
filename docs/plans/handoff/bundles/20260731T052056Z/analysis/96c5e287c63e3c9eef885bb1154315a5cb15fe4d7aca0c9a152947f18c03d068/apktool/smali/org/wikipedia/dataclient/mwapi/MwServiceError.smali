.class public final Lorg/wikipedia/dataclient/mwapi/MwServiceError;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/MwServiceError$Companion;


# instance fields
.field public final code:Ljava/lang/String;

.field public final data:Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;

.field public html:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->Companion:Lorg/wikipedia/dataclient/mwapi/MwServiceError$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;)V
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
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->code:Ljava/lang/String;

    .line 10
    .line 11
    move-object p2, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->code:Ljava/lang/String;

    .line 14
    .line 15
    :goto_0
    and-int/lit8 v0, p1, 0x2

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->html:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->html:Ljava/lang/String;

    .line 23
    .line 24
    :goto_1
    const/4 p3, 0x4

    .line 25
    and-int/2addr p1, p3

    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->data:Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;

    .line 29
    .line 30
    move-object p4, v1

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->data:Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;

    .line 33
    .line 34
    :goto_2
    const-string p1, "blocked"

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_3

    .line 41
    .line 42
    const-string p1, "autoblocked"

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_5

    .line 49
    .line 50
    :cond_3
    if-eqz p4, :cond_4

    .line 51
    .line 52
    iget-object p1, p4, Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;->blockinfo:Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    move-object p1, v1

    .line 56
    :goto_3
    if-eqz p1, :cond_5

    .line 57
    .line 58
    sget-object p1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 59
    .line 60
    new-instance p2, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 61
    .line 62
    const/4 p4, 0x7

    .line 63
    invoke-direct {p2, p1, p4}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 67
    .line 68
    invoke-direct {p1, p3, p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p2, p1}, Lkotlinx/coroutines/AwaitKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->code:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->html:Ljava/lang/String;

    const/4 p2, 0x0

    .line 78
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->data:Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;

    .line 79
    const-string p0, "blocked"

    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 81
    const-string p0, "autoblocked"

    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->code:Ljava/lang/String;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, ""

    .line 6
    .line 7
    :cond_0
    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->html:Ljava/lang/String;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    :cond_0
    invoke-static {p0}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
