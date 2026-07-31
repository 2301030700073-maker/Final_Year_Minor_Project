.class public final Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam$Companion;


# instance fields
.field public final aliases:Ljava/util/List;

.field public final autoValue:Ljava/lang/String;

.field public final default:Ljava/lang/String;

.field public final deprecated:Lkotlinx/serialization/json/JsonElement;

.field public final description:Ljava/lang/String;

.field public final example:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final required:Z

.field public final suggested:Z

.field public final suggestedValues:Ljava/util/List;

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->Companion:Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0xa

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
    move-result-object v1

    .line 21
    new-instance v3, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v4, 0xb

    .line 24
    .line 25
    invoke-direct {v3, v4}, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v3}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-array v3, v4, [Lkotlin/Lazy;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    aput-object v5, v3, v4

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    aput-object v5, v3, v4

    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    aput-object v5, v3, v4

    .line 43
    .line 44
    const/4 v4, 0x3

    .line 45
    aput-object v5, v3, v4

    .line 46
    .line 47
    const/4 v4, 0x4

    .line 48
    aput-object v5, v3, v4

    .line 49
    .line 50
    const/4 v4, 0x5

    .line 51
    aput-object v5, v3, v4

    .line 52
    .line 53
    const/4 v4, 0x6

    .line 54
    aput-object v5, v3, v4

    .line 55
    .line 56
    const/4 v4, 0x7

    .line 57
    aput-object v5, v3, v4

    .line 58
    .line 59
    const/16 v4, 0x8

    .line 60
    .line 61
    aput-object v1, v3, v4

    .line 62
    .line 63
    const/16 v1, 0x9

    .line 64
    .line 65
    aput-object v0, v3, v1

    .line 66
    .line 67
    aput-object v5, v3, v2

    .line 68
    .line 69
    sput-object v3, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->$childSerializers:[Lkotlin/Lazy;

    .line 70
    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->type:Ljava/lang/String;

    .line 112
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->suggestedValues:Ljava/util/List;

    .line 113
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->aliases:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/json/JsonElement;)V
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
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->label:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->label:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->description:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->description:Ljava/lang/String;

    .line 22
    .line 23
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->default:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->default:Ljava/lang/String;

    .line 31
    .line 32
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 33
    .line 34
    if-nez p2, :cond_3

    .line 35
    .line 36
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->example:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->example:Ljava/lang/String;

    .line 40
    .line 41
    :goto_3
    and-int/lit8 p2, p1, 0x10

    .line 42
    .line 43
    if-nez p2, :cond_4

    .line 44
    .line 45
    const-string p2, ""

    .line 46
    .line 47
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->type:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_4

    .line 50
    :cond_4
    iput-object p6, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->type:Ljava/lang/String;

    .line 51
    .line 52
    :goto_4
    and-int/lit8 p2, p1, 0x20

    .line 53
    .line 54
    const/4 p3, 0x0

    .line 55
    if-nez p2, :cond_5

    .line 56
    .line 57
    iput-boolean p3, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->required:Z

    .line 58
    .line 59
    goto :goto_5

    .line 60
    :cond_5
    iput-boolean p7, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->required:Z

    .line 61
    .line 62
    :goto_5
    and-int/lit8 p2, p1, 0x40

    .line 63
    .line 64
    if-nez p2, :cond_6

    .line 65
    .line 66
    iput-boolean p3, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->suggested:Z

    .line 67
    .line 68
    goto :goto_6

    .line 69
    :cond_6
    iput-boolean p8, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->suggested:Z

    .line 70
    .line 71
    :goto_6
    and-int/lit16 p2, p1, 0x80

    .line 72
    .line 73
    if-nez p2, :cond_7

    .line 74
    .line 75
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->autoValue:Ljava/lang/String;

    .line 76
    .line 77
    goto :goto_7

    .line 78
    :cond_7
    iput-object p9, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->autoValue:Ljava/lang/String;

    .line 79
    .line 80
    :goto_7
    and-int/lit16 p2, p1, 0x100

    .line 81
    .line 82
    sget-object p3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 83
    .line 84
    if-nez p2, :cond_8

    .line 85
    .line 86
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->suggestedValues:Ljava/util/List;

    .line 87
    .line 88
    goto :goto_8

    .line 89
    :cond_8
    iput-object p10, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->suggestedValues:Ljava/util/List;

    .line 90
    .line 91
    :goto_8
    and-int/lit16 p2, p1, 0x200

    .line 92
    .line 93
    if-nez p2, :cond_9

    .line 94
    .line 95
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->aliases:Ljava/util/List;

    .line 96
    .line 97
    goto :goto_9

    .line 98
    :cond_9
    iput-object p11, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->aliases:Ljava/util/List;

    .line 99
    .line 100
    :goto_9
    and-int/lit16 p1, p1, 0x400

    .line 101
    .line 102
    if-nez p1, :cond_a

    .line 103
    .line 104
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->deprecated:Lkotlinx/serialization/json/JsonElement;

    .line 105
    .line 106
    return-void

    .line 107
    :cond_a
    iput-object p12, p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->deprecated:Lkotlinx/serialization/json/JsonElement;

    .line 108
    .line 109
    return-void
.end method
