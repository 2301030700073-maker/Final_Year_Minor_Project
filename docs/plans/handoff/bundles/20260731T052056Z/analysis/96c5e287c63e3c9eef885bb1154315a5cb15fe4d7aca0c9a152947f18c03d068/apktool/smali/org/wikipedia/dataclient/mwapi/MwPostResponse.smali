.class public Lorg/wikipedia/dataclient/mwapi/MwPostResponse;
.super Lorg/wikipedia/dataclient/mwapi/MwResponse;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/MwPostResponse$Companion;


# instance fields
.field public final options:Ljava/lang/String;

.field public final pageInfo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

.field public final success:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwPostResponse$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;->Companion:Lorg/wikipedia/dataclient/mwapi/MwPostResponse$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x1d

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
    const/4 v1, 0x5

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
    const/4 v0, 0x3

    .line 35
    aput-object v2, v1, v0

    .line 36
    .line 37
    const/4 v0, 0x4

    .line 38
    aput-object v2, v1, v0

    .line 39
    .line 40
    sput-object v1, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;->$childSerializers:[Lkotlin/Lazy;

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/lang/String;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p2}, Lorg/wikipedia/dataclient/mwapi/MwResponse;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    and-int/lit8 p2, p1, 0x4

    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;->pageInfo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;->pageInfo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x8

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;->options:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-object p5, p0, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;->options:Ljava/lang/String;

    .line 22
    .line 23
    :goto_1
    and-int/lit8 p1, p1, 0x10

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;->success:I

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    iput p6, p0, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;->success:I

    .line 32
    .line 33
    :goto_2
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_3

    .line 38
    .line 39
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 40
    .line 41
    const-wide/16 p0, 0x0

    .line 42
    .line 43
    const p2, 0x7f120696

    .line 44
    .line 45
    .line 46
    invoke-static {p0, p1, p2}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(JI)J

    .line 47
    .line 48
    .line 49
    move-result-wide p3

    .line 50
    cmp-long p0, p3, p0

    .line 51
    .line 52
    if-nez p0, :cond_3

    .line 53
    .line 54
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lj$/time/LocalDate;->toEpochDay()J

    .line 59
    .line 60
    .line 61
    move-result-wide p0

    .line 62
    invoke-static {p0, p1, p2}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(JI)V

    .line 63
    .line 64
    .line 65
    :cond_3
    return-void
.end method

.method public static final synthetic write$Self(Lorg/wikipedia/dataclient/mwapi/MwPostResponse;Lkotlin/uuid/UuidKt;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 1
    invoke-static {p0, p1, p2}, Lorg/wikipedia/dataclient/mwapi/MwResponse;->write$Self(Lorg/wikipedia/dataclient/mwapi/MwResponse;Lkotlin/uuid/UuidKt;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;->success:I

    .line 5
    .line 6
    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;->options:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;->pageInfo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-eqz p0, :cond_1

    .line 18
    .line 19
    :goto_0
    sget-object v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$serializer;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-virtual {p1, p2, v3, v2, p0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p1, p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    if-eqz v1, :cond_3

    .line 33
    .line 34
    :goto_1
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    invoke-virtual {p1, p2, v2, p0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    invoke-virtual {p1, p2}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_4

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    if-eqz v0, :cond_5

    .line 48
    .line 49
    :goto_2
    const/4 p0, 0x4

    .line 50
    invoke-virtual {p1, p0, v0, p2}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 51
    .line 52
    .line 53
    :cond_5
    return-void
.end method
