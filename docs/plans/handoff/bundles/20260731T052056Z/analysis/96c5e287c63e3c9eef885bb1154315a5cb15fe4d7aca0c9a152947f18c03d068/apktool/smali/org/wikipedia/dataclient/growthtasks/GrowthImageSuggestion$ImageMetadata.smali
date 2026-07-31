.class public final Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata$Companion;


# instance fields
.field public final author:Ljava/lang/String;

.field public final caption:Ljava/lang/String;

.field public final categories:Ljava/util/List;

.field public final contentLanguageName:Ljava/lang/String;

.field public final date:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final descriptionUrl:Ljava/lang/String;

.field public final fullUrl:Ljava/lang/String;

.field public final license:Ljava/lang/String;

.field public final mediaType:Ljava/lang/String;

.field public final originalHeight:I

.field public final originalWidth:I

.field public final reason:Ljava/lang/String;

.field public final thumbUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->Companion:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x15

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
    const/16 v1, 0xe

    .line 22
    .line 23
    new-array v1, v1, [Lkotlin/Lazy;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    aput-object v3, v1, v2

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    aput-object v3, v1, v2

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    aput-object v3, v1, v2

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    aput-object v3, v1, v2

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    aput-object v3, v1, v2

    .line 40
    .line 41
    const/4 v2, 0x5

    .line 42
    aput-object v3, v1, v2

    .line 43
    .line 44
    const/4 v2, 0x6

    .line 45
    aput-object v3, v1, v2

    .line 46
    .line 47
    const/4 v2, 0x7

    .line 48
    aput-object v3, v1, v2

    .line 49
    .line 50
    const/16 v2, 0x8

    .line 51
    .line 52
    aput-object v3, v1, v2

    .line 53
    .line 54
    const/16 v2, 0x9

    .line 55
    .line 56
    aput-object v3, v1, v2

    .line 57
    .line 58
    const/16 v2, 0xa

    .line 59
    .line 60
    aput-object v3, v1, v2

    .line 61
    .line 62
    const/16 v2, 0xb

    .line 63
    .line 64
    aput-object v0, v1, v2

    .line 65
    .line 66
    const/16 v0, 0xc

    .line 67
    .line 68
    aput-object v3, v1, v0

    .line 69
    .line 70
    const/16 v0, 0xd

    .line 71
    .line 72
    aput-object v3, v1, v0

    .line 73
    .line 74
    sput-object v1, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->$childSerializers:[Lkotlin/Lazy;

    .line 75
    .line 76
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->descriptionUrl:Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->descriptionUrl:Ljava/lang/String;

    .line 14
    .line 15
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->thumbUrl:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->thumbUrl:Ljava/lang/String;

    .line 23
    .line 24
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 25
    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->fullUrl:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->fullUrl:Ljava/lang/String;

    .line 32
    .line 33
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 34
    .line 35
    const/4 p3, 0x0

    .line 36
    if-nez p2, :cond_3

    .line 37
    .line 38
    iput p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->originalWidth:I

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    iput p5, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->originalWidth:I

    .line 42
    .line 43
    :goto_3
    and-int/lit8 p2, p1, 0x10

    .line 44
    .line 45
    if-nez p2, :cond_4

    .line 46
    .line 47
    iput p3, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->originalHeight:I

    .line 48
    .line 49
    goto :goto_4

    .line 50
    :cond_4
    iput p6, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->originalHeight:I

    .line 51
    .line 52
    :goto_4
    and-int/lit8 p2, p1, 0x20

    .line 53
    .line 54
    if-nez p2, :cond_5

    .line 55
    .line 56
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->mediaType:Ljava/lang/String;

    .line 57
    .line 58
    goto :goto_5

    .line 59
    :cond_5
    iput-object p7, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->mediaType:Ljava/lang/String;

    .line 60
    .line 61
    :goto_5
    and-int/lit8 p2, p1, 0x40

    .line 62
    .line 63
    if-nez p2, :cond_6

    .line 64
    .line 65
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->description:Ljava/lang/String;

    .line 66
    .line 67
    goto :goto_6

    .line 68
    :cond_6
    iput-object p8, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->description:Ljava/lang/String;

    .line 69
    .line 70
    :goto_6
    and-int/lit16 p2, p1, 0x80

    .line 71
    .line 72
    if-nez p2, :cond_7

    .line 73
    .line 74
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->author:Ljava/lang/String;

    .line 75
    .line 76
    goto :goto_7

    .line 77
    :cond_7
    iput-object p9, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->author:Ljava/lang/String;

    .line 78
    .line 79
    :goto_7
    and-int/lit16 p2, p1, 0x100

    .line 80
    .line 81
    if-nez p2, :cond_8

    .line 82
    .line 83
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->license:Ljava/lang/String;

    .line 84
    .line 85
    goto :goto_8

    .line 86
    :cond_8
    iput-object p10, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->license:Ljava/lang/String;

    .line 87
    .line 88
    :goto_8
    and-int/lit16 p2, p1, 0x200

    .line 89
    .line 90
    if-nez p2, :cond_9

    .line 91
    .line 92
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->date:Ljava/lang/String;

    .line 93
    .line 94
    goto :goto_9

    .line 95
    :cond_9
    iput-object p11, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->date:Ljava/lang/String;

    .line 96
    .line 97
    :goto_9
    and-int/lit16 p2, p1, 0x400

    .line 98
    .line 99
    if-nez p2, :cond_a

    .line 100
    .line 101
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->caption:Ljava/lang/String;

    .line 102
    .line 103
    goto :goto_a

    .line 104
    :cond_a
    iput-object p12, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->caption:Ljava/lang/String;

    .line 105
    .line 106
    :goto_a
    and-int/lit16 p2, p1, 0x800

    .line 107
    .line 108
    if-nez p2, :cond_b

    .line 109
    .line 110
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 111
    .line 112
    iput-object p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->categories:Ljava/util/List;

    .line 113
    .line 114
    goto :goto_b

    .line 115
    :cond_b
    iput-object p13, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->categories:Ljava/util/List;

    .line 116
    .line 117
    :goto_b
    and-int/lit16 p2, p1, 0x1000

    .line 118
    .line 119
    if-nez p2, :cond_c

    .line 120
    .line 121
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->reason:Ljava/lang/String;

    .line 122
    .line 123
    goto :goto_c

    .line 124
    :cond_c
    move-object/from16 p2, p14

    .line 125
    .line 126
    iput-object p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->reason:Ljava/lang/String;

    .line 127
    .line 128
    :goto_c
    and-int/lit16 p1, p1, 0x2000

    .line 129
    .line 130
    if-nez p1, :cond_d

    .line 131
    .line 132
    iput-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->contentLanguageName:Ljava/lang/String;

    .line 133
    .line 134
    return-void

    .line 135
    :cond_d
    move-object/from16 p1, p15

    .line 136
    .line 137
    iput-object p1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->contentLanguageName:Ljava/lang/String;

    .line 138
    .line 139
    return-void
.end method
