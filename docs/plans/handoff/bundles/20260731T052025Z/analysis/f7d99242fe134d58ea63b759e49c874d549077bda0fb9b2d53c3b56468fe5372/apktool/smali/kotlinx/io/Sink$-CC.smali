.class public abstract synthetic Lkotlinx/io/Sink$-CC;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static $default$appendAlternativeParsingImpl(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;[Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    array-length v1, p1

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, p1, v2

    .line 12
    .line 13
    invoke-interface {p0}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->createEmpty()Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-interface {v4}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->getActualBuilder()Lokhttp3/Headers$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;

    .line 25
    .line 26
    iget-object v3, v3, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v4, v3}, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;-><init>(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-interface {p0}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->createEmpty()Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->getActualBuilder()Lokhttp3/Headers$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance p2, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;

    .line 49
    .line 50
    iget-object p1, p1, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {p2, p1}, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;-><init>(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p0}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->getActualBuilder()Lokhttp3/Headers$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance p1, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;

    .line 60
    .line 61
    invoke-direct {p1, p2, v0}, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;-><init>(Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;Ljava/util/ArrayList;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lokhttp3/Headers$Builder;->add(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public static $default$appendOptionalImpl(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->getActualBuilder()Lokhttp3/Headers$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->createEmpty()Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->getActualBuilder()Lokhttp3/Headers$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance p2, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;

    .line 17
    .line 18
    iget-object p0, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;-><init>(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    new-instance p0, Lkotlinx/datetime/internal/format/OptionalFormatStructure;

    .line 24
    .line 25
    invoke-direct {p0, p1, p2}, Lkotlinx/datetime/internal/format/OptionalFormatStructure;-><init>(Ljava/lang/String;Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Lokhttp3/Headers$Builder;->add(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static $default$build(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;)Lkotlinx/datetime/internal/format/CachedFormatStructure;
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/datetime/internal/format/CachedFormatStructure;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->getActualBuilder()Lokhttp3/Headers$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lkotlinx/datetime/internal/format/CachedFormatStructure;-><init>(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static $default$canLog(Lnet/thunderbird/core/logging/LogSink;Lnet/thunderbird/core/logging/LogLevel;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lnet/thunderbird/core/logging/LogSink;->getLevel()Lnet/thunderbird/core/logging/LogLevel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-gtz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public static $default$chars(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->getActualBuilder()Lokhttp3/Headers$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Lkotlinx/datetime/internal/format/ConstantFormatStructure;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lkotlinx/datetime/internal/format/ConstantFormatStructure;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lokhttp3/Headers$Builder;->add(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static $default$getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 1
    sget-object v0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "KoinApplication has not been started"

    .line 7
    .line 8
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public static $default$monthNumber(Lkotlinx/datetime/format/AbstractWithYearMonthBuilder;)V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    .line 2
    .line 3
    new-instance v1, Lkotlinx/datetime/format/MonthDirective;

    .line 4
    .line 5
    invoke-direct {v1}, Lkotlinx/datetime/format/MonthDirective;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lkotlinx/datetime/format/AbstractWithYearMonthBuilder;->addFormatStructureForYearMonth(Lkotlinx/datetime/internal/format/BasicFormatStructure;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static $default$onDisabledOrUnavailable(Lnet/thunderbird/core/featureflag/FeatureFlagResult;Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lnet/thunderbird/core/featureflag/FeatureFlagResult$Disabled;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of p0, p0, Lnet/thunderbird/core/featureflag/FeatureFlagResult$Unavailable;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static $default$whenEnabledOrNot(Lnet/thunderbird/core/featureflag/FeatureFlagResult;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Lnet/thunderbird/core/featureflag/FeatureFlagResult$Enabled;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    instance-of p1, p0, Lnet/thunderbird/core/featureflag/FeatureFlagResult$Disabled;

    .line 11
    .line 12
    if-nez p1, :cond_2

    .line 13
    .line 14
    sget-object p1, Lnet/thunderbird/core/featureflag/FeatureFlagResult$Unavailable;->INSTANCE:Lnet/thunderbird/core/featureflag/FeatureFlagResult$Unavailable;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :cond_2
    :goto_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static $default$withMetadata(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/jvm/functions/Function1;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;
    .locals 9

    .line 1
    instance-of v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 8
    .line 9
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 16
    .line 17
    invoke-static {p0, p1, v2, v2, v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;I)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    instance-of v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    move-object v3, p0

    .line 27
    check-cast v3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;

    .line 28
    .line 29
    iget-object p0, v3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 30
    .line 31
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    move-object v5, p0

    .line 36
    check-cast v5, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    const/16 v8, 0x37

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    invoke-static/range {v3 .. v8}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;FLnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;I)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_1
    instance-of v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SearchingMessages;

    .line 49
    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    instance-of v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 57
    .line 58
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 59
    .line 60
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 65
    .line 66
    invoke-static {p0, p1, v2, v2, v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;I)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_2
    instance-of v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 76
    .line 77
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 78
    .line 79
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 84
    .line 85
    invoke-static {p0, p1, v2, v2, v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;I)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :cond_3
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 91
    .line 92
    .line 93
    return-object v2

    .line 94
    :cond_4
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 99
    .line 100
    throw v2
.end method

.method public static $default$withPreferences(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;
    .locals 9

    .line 1
    instance-of v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 8
    .line 9
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 16
    .line 17
    invoke-static {p0, v2, p1, v2, v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;I)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    instance-of v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    move-object v3, p0

    .line 27
    check-cast v3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;

    .line 28
    .line 29
    iget-object p0, v3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    move-object v6, p0

    .line 36
    check-cast v6, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    const/16 v8, 0x2f

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-static/range {v3 .. v8}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;FLnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;I)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_1
    instance-of v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SearchingMessages;

    .line 49
    .line 50
    if-nez v0, :cond_5

    .line 51
    .line 52
    instance-of v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 57
    .line 58
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 65
    .line 66
    invoke-static {p0, v2, p1, v2, v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;I)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_2
    instance-of v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 76
    .line 77
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    move-object p1, v2

    .line 89
    :goto_0
    invoke-static {p0, v2, p1, v2, v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;I)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_4
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 95
    .line 96
    .line 97
    return-object v2

    .line 98
    :cond_5
    invoke-virtual {p1, v2}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    throw v2
.end method

.method public static $default$year(Lkotlinx/datetime/format/AbstractWithYearMonthBuilder;)V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    .line 2
    .line 3
    new-instance v1, Lkotlinx/datetime/format/YearDirective;

    .line 4
    .line 5
    invoke-direct {v1}, Lkotlinx/datetime/format/YearDirective;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lkotlinx/datetime/format/AbstractWithYearMonthBuilder;->addFormatStructureForYearMonth(Lkotlinx/datetime/internal/format/BasicFormatStructure;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V
    .locals 2

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p1, v1

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p2, v1

    .line 12
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lnet/thunderbird/core/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V
    .locals 2

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p1, v1

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p2, v1

    .line 12
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lnet/thunderbird/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic fuse$default(Lkotlinx/coroutines/flow/internal/FusibleFlow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 v0, p4, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 p2, -0x3

    .line 12
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 13
    .line 14
    if-eqz p4, :cond_2

    .line 15
    .line 16
    sget-object p3, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 17
    .line 18
    :cond_2
    invoke-interface {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/internal/FusibleFlow;->fuse(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static getOutboxFolderIdSync$default(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/feature/account/AccountId;)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, p0, p1, v2, v1}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 15
    .line 16
    invoke-static {p0, v0}, Lkotlinx/coroutines/JobKt;->runBlockingK(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/Number;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    return-wide p0
.end method

.method public static synthetic getV4(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_3

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v1, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq p0, v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    throw p0

    .line 16
    :cond_1
    return v0

    .line 17
    :cond_2
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_3
    return v0
.end method

.method public static synthetic getV6(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v1, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq p0, v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    throw p0

    .line 16
    :cond_1
    return v0

    .line 17
    :cond_2
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static synthetic info$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V
    .locals 2

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p1, v1

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p2, v1

    .line 12
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lnet/thunderbird/core/logging/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p0, p1}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static m(Lokio/Path;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/String;)Ljava/util/Set;
    .locals 1

    .line 25
    new-instance v0, Lorg/jetbrains/compose/resources/LanguageQualifier;

    .line 26
    invoke-direct {v0, p0}, Lorg/jetbrains/compose/resources/LanguageQualifier;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Lkotlinx/io/InputStreamSource;)V
    .locals 1

    .line 32
    instance-of v0, p0, Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_0
    instance-of p0, p0, Ljava/util/concurrent/ExecutorService;

    if-nez p0, :cond_1

    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic m(Lkotlinx/io/OutputStreamSink;)V
    .locals 1

    .line 33
    instance-of v0, p0, Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_0
    instance-of p0, p0, Ljava/util/concurrent/ExecutorService;

    if-nez p0, :cond_1

    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static offsetHours$default(Lkotlinx/datetime/format/UtcOffsetFormat$Builder;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlinx/datetime/internal/format/SignedFormatStructure;

    .line 5
    .line 6
    new-instance v1, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    .line 7
    .line 8
    new-instance v2, Lkotlinx/datetime/format/UtcOffsetWholeHoursDirective;

    .line 9
    .line 10
    sget-object v3, Lkotlinx/datetime/format/Padding;->ZERO:Lkotlinx/datetime/format/Padding;

    .line 11
    .line 12
    invoke-direct {v2, v3}, Lkotlinx/datetime/format/UtcOffsetWholeHoursDirective;-><init>(Lkotlinx/datetime/format/Padding;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/SignedFormatStructure;-><init>(Lkotlinx/datetime/internal/format/BasicFormatStructure;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lkotlinx/datetime/format/UtcOffsetFormat$Builder;->actualBuilder:Lokhttp3/Headers$Builder;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lokhttp3/Headers$Builder;->add(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static offsetMinutesOfHour$default(Lkotlinx/datetime/format/UtcOffsetFormat$Builder;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    .line 5
    .line 6
    new-instance v1, Lkotlinx/datetime/format/UtcOffsetMinuteOfHourDirective;

    .line 7
    .line 8
    sget-object v2, Lkotlinx/datetime/format/Padding;->ZERO:Lkotlinx/datetime/format/Padding;

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lkotlinx/datetime/format/UtcOffsetMinuteOfHourDirective;-><init>(Lkotlinx/datetime/format/Padding;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lkotlinx/datetime/format/UtcOffsetFormat$Builder;->actualBuilder:Lokhttp3/Headers$Builder;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lokhttp3/Headers$Builder;->add(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static offsetSecondsOfMinute$default(Lkotlinx/datetime/format/UtcOffsetFormat$Builder;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    .line 5
    .line 6
    new-instance v1, Lkotlinx/datetime/format/UtcOffsetSecondOfMinuteDirective;

    .line 7
    .line 8
    sget-object v2, Lkotlinx/datetime/format/Padding;->ZERO:Lkotlinx/datetime/format/Padding;

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lkotlinx/datetime/format/UtcOffsetSecondOfMinuteDirective;-><init>(Lkotlinx/datetime/format/Padding;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lkotlinx/datetime/format/UtcOffsetFormat$Builder;->actualBuilder:Lokhttp3/Headers$Builder;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lokhttp3/Headers$Builder;->add(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic stringValueOf$2(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, "null"

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_0
    const-string p0, "END_DOCUMENT"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_1
    const-string p0, "NULL"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_2
    const-string p0, "BOOLEAN"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_3
    const-string p0, "NUMBER"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_4
    const-string p0, "STRING"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_5
    const-string p0, "NAME"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_6
    const-string p0, "END_OBJECT"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_7
    const-string p0, "BEGIN_OBJECT"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_8
    const-string p0, "END_ARRAY"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_9
    const-string p0, "BEGIN_ARRAY"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic stringValueOf$4(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, "null"

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_0
    const-string p0, "EOF"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_1
    const-string p0, "XmlDecl"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_2
    const-string p0, "Character"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_3
    const-string p0, "Comment"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_4
    const-string p0, "EndTag"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_5
    const-string p0, "StartTag"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_6
    const-string p0, "Doctype"

    .line 26
    .line 27
    return-object p0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V
    .locals 2

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p1, v1

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p2, v1

    .line 12
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lnet/thunderbird/core/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V
    .locals 2

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "MainActivity"

    .line 9
    .line 10
    :goto_0
    and-int/lit8 p3, p3, 0x2

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    move-object p1, v1

    .line 15
    :cond_1
    invoke-interface {p0, v0, p1, p2}, Lnet/thunderbird/core/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static write$default(Lkotlinx/io/Buffer;[B)V
    .locals 9

    .line 1
    array-length v0, p1

    .line 2
    array-length v1, p1

    .line 3
    int-to-long v1, v1

    .line 4
    int-to-long v3, v0

    .line 5
    cmp-long v5, v3, v1

    .line 6
    .line 7
    const-wide/16 v6, 0x0

    .line 8
    .line 9
    const-string v8, "startIndex ("

    .line 10
    .line 11
    if-gtz v5, :cond_2

    .line 12
    .line 13
    cmp-long v1, v6, v3

    .line 14
    .line 15
    if-gtz v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->writableSegment()Lkotlinx/io/Segment;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, v2, Lkotlinx/io/Segment;->data:[B

    .line 25
    .line 26
    sub-int v4, v0, v1

    .line 27
    .line 28
    array-length v5, v3

    .line 29
    iget v6, v2, Lkotlinx/io/Segment;->limit:I

    .line 30
    .line 31
    sub-int/2addr v5, v6

    .line 32
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    add-int/2addr v4, v1

    .line 37
    iget v5, v2, Lkotlinx/io/Segment;->limit:I

    .line 38
    .line 39
    invoke-static {v5, v1, v4, p1, v3}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto(III[B[B)V

    .line 40
    .line 41
    .line 42
    iget v3, v2, Lkotlinx/io/Segment;->limit:I

    .line 43
    .line 44
    sub-int v1, v4, v1

    .line 45
    .line 46
    add-int/2addr v1, v3

    .line 47
    iput v1, v2, Lkotlinx/io/Segment;->limit:I

    .line 48
    .line 49
    move v1, v4

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-wide v1, p0, Lkotlinx/io/Buffer;->sizeMut:J

    .line 52
    .line 53
    int-to-long v3, v0

    .line 54
    add-long/2addr v1, v3

    .line 55
    iput-wide v1, p0, Lkotlinx/io/Buffer;->sizeMut:J

    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ") > endIndex ("

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const/16 v0, 0x29

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 90
    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, ") and endIndex ("

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v0, ") are not within the range [0..size("

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v0, "))"

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p0
.end method
