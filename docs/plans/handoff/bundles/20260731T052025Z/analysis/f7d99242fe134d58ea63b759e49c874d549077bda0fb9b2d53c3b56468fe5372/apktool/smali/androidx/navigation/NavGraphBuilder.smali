.class public final Landroidx/navigation/NavGraphBuilder;
.super Landroidx/navigation/NavDestinationBuilder;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final destinations:Ljava/util/ArrayList;

.field public final provider:Landroidx/navigation/NavigatorProvider;

.field public final startDestinationObject:Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$Onboarding;

.field public final startDestinationRoute:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavigatorProvider;Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$Onboarding;Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-class v0, Landroidx/navigation/NavGraphNavigator;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/room/util/DBUtil;->getNameForNavigator$navigation_common_release(Ljava/lang/Class;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, v0, v1, p3}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;Lkotlin/jvm/internal/ClassReference;Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    new-instance p3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p3, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/ArrayList;

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/navigation/NavGraphBuilder;->provider:Landroidx/navigation/NavigatorProvider;

    .line 29
    .line 30
    iput-object p2, p0, Landroidx/navigation/NavGraphBuilder;->startDestinationObject:Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$Onboarding;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    const-class v0, Landroidx/navigation/NavGraphNavigator;

    .line 34
    invoke-static {v0}, Landroidx/room/util/DBUtil;->getNameForNavigator$navigation_common_release(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, v0, v1, v2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;ILjava/lang/String;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Landroidx/navigation/NavGraphBuilder;->provider:Landroidx/navigation/NavigatorProvider;

    .line 39
    iput-object p2, p0, Landroidx/navigation/NavGraphBuilder;->startDestinationRoute:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/navigation/NavGraph;
    .locals 7

    .line 1
    invoke-super {p0}, Landroidx/navigation/NavDestinationBuilder;->build()Landroidx/navigation/NavDestination;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/navigation/NavGraph;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroidx/navigation/NavDestination;

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/stream/RawField;->addDestination$navigation_common_release(Landroidx/navigation/NavDestination;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x0

    .line 41
    iget-object v3, p0, Landroidx/navigation/NavGraphBuilder;->startDestinationObject:Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$Onboarding;

    .line 42
    .line 43
    iget-object v4, p0, Landroidx/navigation/NavGraphBuilder;->startDestinationRoute:Ljava/lang/String;

    .line 44
    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    iget-object p0, p0, Landroidx/navigation/NavDestinationBuilder;->route:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    const-string p0, "You must set a start destination route"

    .line 54
    .line 55
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v1

    .line 59
    :cond_2
    const-string p0, "You must set a start destination id"

    .line 60
    .line 61
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_3
    if-eqz v4, :cond_4

    .line 66
    .line 67
    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/stream/RawField;->setStartDestinationRoute$navigation_common_release(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_4
    if-eqz v3, :cond_7

    .line 72
    .line 73
    const-class p0, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$Onboarding;

    .line 74
    .line 75
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Lkotlin/io/ByteStreamsKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0}, Landroidx/navigation/serialization/InternalNavType;->generateHashCode(Lkotlinx/serialization/KSerializer;)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/stream/RawField;->findNode$navigation_common_release(I)Landroidx/navigation/NavDestination;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    if-eqz v5, :cond_6

    .line 92
    .line 93
    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->getArguments()Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 98
    .line 99
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-static {v5}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-direct {v1, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 108
    .line 109
    .line 110
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Ljava/lang/Iterable;

    .line 115
    .line 116
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_5

    .line 125
    .line 126
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    check-cast v5, Ljava/util/Map$Entry;

    .line 131
    .line 132
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    check-cast v5, Landroidx/navigation/NavArgument;

    .line 141
    .line 142
    iget-object v5, v5, Landroidx/navigation/NavArgument;->type:Landroidx/navigation/NavType;

    .line 143
    .line 144
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    invoke-static {v3, v1}, Landroidx/navigation/serialization/InternalNavType;->generateRouteWithArgs(Ljava/lang/Object;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {v2, p0}, Lorg/apache/james/mime4j/stream/RawField;->setStartDestinationRoute$navigation_common_release(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iput v4, v2, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 156
    .line 157
    return-object v0

    .line 158
    :cond_6
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    const-string v0, " from NavGraph. Ensure the starting NavDestination was added with route from KClass."

    .line 167
    .line 168
    const-string v2, "Cannot find startDestination "

    .line 169
    .line 170
    invoke-static {p0, v0, v2}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-object v1

    .line 174
    :cond_7
    const/4 p0, 0x0

    .line 175
    invoke-virtual {v2, p0}, Lorg/apache/james/mime4j/stream/RawField;->setStartDestinationId$navigation_common_release(I)V

    .line 176
    .line 177
    .line 178
    return-object v0
.end method
