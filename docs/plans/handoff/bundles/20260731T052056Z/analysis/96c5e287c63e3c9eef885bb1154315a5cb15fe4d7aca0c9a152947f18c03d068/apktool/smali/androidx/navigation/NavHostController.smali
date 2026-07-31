.class public final Landroidx/navigation/NavHostController;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final activity:Landroid/app/Activity;

.field public final context:Landroid/content/Context;

.field public deepLinkHandled:Z

.field public final enableOnBackPressedCallback:Z

.field public final impl:Landroidx/navigation/internal/NavControllerImpl;

.field public final navContext:Landroidx/navigation/internal/NavContext;

.field public final onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/navigation/NavHostController;->context:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v0, Landroidx/navigation/internal/NavControllerImpl;

    .line 10
    .line 11
    new-instance v1, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, v2}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Landroidx/navigation/internal/NavControllerImpl;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavController$$ExternalSyntheticLambda0;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 21
    .line 22
    new-instance v0, Landroidx/navigation/internal/NavContext;

    .line 23
    .line 24
    invoke-direct {v0, p1, v2}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;Z)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/navigation/NavHostController;->navContext:Landroidx/navigation/internal/NavContext;

    .line 28
    .line 29
    new-instance v0, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/16 v1, 0x11

    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    move-object v1, v0

    .line 55
    check-cast v1, Landroid/content/Context;

    .line 56
    .line 57
    instance-of v1, v1, Landroid/app/Activity;

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    .line 63
    :goto_0
    check-cast v0, Landroid/app/Activity;

    .line 64
    .line 65
    iput-object v0, p0, Landroidx/navigation/NavHostController;->activity:Landroid/app/Activity;

    .line 66
    .line 67
    new-instance p1, Landroidx/fragment/app/FragmentManager$1;

    .line 68
    .line 69
    const/4 v0, 0x3

    .line 70
    invoke-direct {p1, p0, v2, v0}, Landroidx/fragment/app/FragmentManager$1;-><init>(Ljava/lang/Object;ZI)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Landroidx/navigation/NavHostController;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 74
    .line 75
    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Landroidx/navigation/NavHostController;->enableOnBackPressedCallback:Z

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 79
    .line 80
    iget-object v0, v0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 81
    .line 82
    new-instance v1, Landroidx/navigation/NavGraphNavigator;

    .line 83
    .line 84
    invoke-direct {v1, v0}, Landroidx/navigation/NavGraphNavigator;-><init>(Landroidx/navigation/NavigatorProvider;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 91
    .line 92
    iget-object v0, v0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 93
    .line 94
    new-instance v1, Landroidx/navigation/ActivityNavigator;

    .line 95
    .line 96
    iget-object v2, p0, Landroidx/navigation/NavHostController;->context:Landroid/content/Context;

    .line 97
    .line 98
    invoke-direct {v1, v2}, Landroidx/navigation/ActivityNavigator;-><init>(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    invoke-direct {v0, p0, p1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 107
    .line 108
    .line 109
    new-instance p0, Lkotlin/SynchronizedLazyImpl;

    .line 110
    .line 111
    invoke-direct {p0, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public static navigate$default(Landroidx/navigation/NavHostController;Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lkotlin/TuplesKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Landroidx/navigation/serialization/InternalNavType;->generateHashCode(Lkotlinx/serialization/KSerializer;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-static {v0, v2, v3, v4}, Landroidx/navigation/internal/NavControllerImpl;->findDestinationComprehensive$navigation_runtime_release(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getArguments()Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/Iterable;

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_0

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Ljava/util/Map$Entry;

    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Landroidx/navigation/NavArgument;

    .line 93
    .line 94
    iget-object v2, v2, Landroidx/navigation/NavArgument;->type:Landroidx/navigation/NavType;

    .line 95
    .line 96
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    invoke-static {p1, v1}, Landroidx/navigation/serialization/InternalNavType;->generateRouteWithArgs(Ljava/lang/Object;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const-string v0, " cannot be found in navigation graph "

    .line 118
    .line 119
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 120
    .line 121
    const-string v2, "Destination with route "

    .line 122
    .line 123
    invoke-static {v2, p1, v0, v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    move-object p1, v3

    .line 127
    :goto_1
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 128
    .line 129
    if-eqz v0, :cond_5

    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getTopGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0, p1, v4, v0}, Landroidx/navigation/NavGraph;->matchRouteComprehensive(Ljava/lang/String;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    iget-object p1, v0, Landroidx/navigation/NavDestination$DeepLinkMatch;->destination:Landroidx/navigation/NavDestination;

    .line 142
    .line 143
    iget-object v0, v0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-nez v0, :cond_2

    .line 150
    .line 151
    const/4 v0, 0x0

    .line 152
    new-array v1, v0, [Lkotlin/Pair;

    .line 153
    .line 154
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, [Lkotlin/Pair;

    .line 159
    .line 160
    invoke-static {v0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    :cond_2
    sget v1, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 165
    .line 166
    iget-object v1, p1, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 167
    .line 168
    iget-object v1, v1, Landroidx/compose/ui/node/RulerTrackingMap;->layoutNodes:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v1, Ljava/lang/String;

    .line 171
    .line 172
    if-eqz v1, :cond_3

    .line 173
    .line 174
    const-string v2, "android-app://androidx.navigation/"

    .line 175
    .line 176
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    goto :goto_2

    .line 181
    :cond_3
    const-string v1, ""

    .line 182
    .line 183
    :goto_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    new-instance v2, Landroid/content/Intent;

    .line 191
    .line 192
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    const-string v1, "android-support-nav:controller:deepLinkIntent"

    .line 202
    .line 203
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, p1, v0, v3}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_4
    const-string v0, "Navigation destination that matches route "

    .line 211
    .line 212
    const-string v1, " cannot be found in the navigation graph "

    .line 213
    .line 214
    invoke-static {v0, p1, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 219
    .line 220
    invoke-static {p1, p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :cond_5
    const-string v0, ". Navigation graph has not been set for NavController "

    .line 225
    .line 226
    const/16 v1, 0x2e

    .line 227
    .line 228
    const-string v2, "Cannot navigate to "

    .line 229
    .line 230
    invoke-static {v2, p1, v0, p0, v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 231
    .line 232
    .line 233
    return-void
.end method


# virtual methods
.method public final getDestinationCountOnBackStack()I
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 30
    .line 31
    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 32
    .line 33
    instance-of v1, v1, Landroidx/navigation/NavGraph;

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    if-ltz v0, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-static {}, Landroidx/room/Room;->throwCountOverflow()V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    throw p0

    .line 47
    :cond_3
    return v0
.end method

.method public final navigateUp()Z
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->getDestinationCountOnBackStack()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_11

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/navigation/NavHostController;->activity:Landroid/app/Activity;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v3, v2

    .line 25
    :goto_0
    const-string v4, "android-support-nav:controller:deepLinkIds"

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object v3, v2

    .line 35
    :goto_1
    const-string v5, "android-support-nav:controller:deepLinkExtras"

    .line 36
    .line 37
    const-string v6, "android-support-nav:controller:deepLinkIntent"

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    iget-object v8, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 41
    .line 42
    if-eqz v3, :cond_b

    .line 43
    .line 44
    iget-boolean v3, p0, Landroidx/navigation/NavHostController;->deepLinkHandled:Z

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    goto/16 :goto_7

    .line 49
    .line 50
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9, v4}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v10, Ljava/util/ArrayList;

    .line 72
    .line 73
    array-length v11, v4

    .line 74
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .line 76
    .line 77
    array-length v11, v4

    .line 78
    move v12, v7

    .line 79
    :goto_2
    if-ge v12, v11, :cond_3

    .line 80
    .line 81
    aget v13, v4, v12

    .line 82
    .line 83
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    add-int/lit8 v12, v12, 0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    const-string v4, "android-support-nav:controller:deepLinkArgs"

    .line 94
    .line 95
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    const/4 v12, 0x2

    .line 104
    if-ge v11, v12, :cond_4

    .line 105
    .line 106
    goto/16 :goto_7

    .line 107
    .line 108
    :cond_4
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    check-cast v11, Ljava/lang/Number;

    .line 113
    .line 114
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    if-eqz v4, :cond_5

    .line 119
    .line 120
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    check-cast v12, Landroid/os/Bundle;

    .line 125
    .line 126
    :cond_5
    invoke-virtual {v8}, Landroidx/navigation/internal/NavControllerImpl;->getGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    invoke-static {v11, v12, v2, v7}, Landroidx/navigation/internal/NavControllerImpl;->findDestinationComprehensive$navigation_runtime_release(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    instance-of v13, v12, Landroidx/navigation/NavGraph;

    .line 135
    .line 136
    if-eqz v13, :cond_6

    .line 137
    .line 138
    sget v11, Landroidx/navigation/NavGraph;->$r8$clinit:I

    .line 139
    .line 140
    check-cast v12, Landroidx/navigation/NavGraph;

    .line 141
    .line 142
    new-instance v11, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;

    .line 143
    .line 144
    const/16 v13, 0x16

    .line 145
    .line 146
    invoke-direct {v11, v13}, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;-><init>(I)V

    .line 147
    .line 148
    .line 149
    invoke-static {v12, v11}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    invoke-static {v11}, Lkotlin/sequences/SequencesKt;->last(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    check-cast v11, Landroidx/navigation/NavDestination;

    .line 158
    .line 159
    iget-object v11, v11, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 160
    .line 161
    iget v11, v11, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 162
    .line 163
    :cond_6
    invoke-virtual {v8}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    if-eqz v8, :cond_10

    .line 168
    .line 169
    iget-object v8, v8, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 170
    .line 171
    iget v8, v8, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 172
    .line 173
    if-ne v11, v8, :cond_10

    .line 174
    .line 175
    new-instance v8, Lokhttp3/Request$Builder;

    .line 176
    .line 177
    invoke-direct {v8, p0}, Lokhttp3/Request$Builder;-><init>(Landroidx/navigation/NavHostController;)V

    .line 178
    .line 179
    .line 180
    new-array p0, v7, [Lkotlin/Pair;

    .line 181
    .line 182
    invoke-static {p0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    check-cast p0, [Lkotlin/Pair;

    .line 187
    .line 188
    invoke-static {p0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {p0, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v9, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    if-eqz v3, :cond_7

    .line 200
    .line 201
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 202
    .line 203
    .line 204
    :cond_7
    iget-object v3, v8, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v3, Landroid/content/Intent;

    .line 207
    .line 208
    invoke-virtual {v3, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v3, :cond_a

    .line 220
    .line 221
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    add-int/lit8 v5, v7, 0x1

    .line 226
    .line 227
    if-ltz v7, :cond_9

    .line 228
    .line 229
    check-cast v3, Ljava/lang/Number;

    .line 230
    .line 231
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-eqz v4, :cond_8

    .line 236
    .line 237
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    check-cast v6, Landroid/os/Bundle;

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_8
    move-object v6, v2

    .line 245
    :goto_4
    iget-object v7, v8, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v7, Ljava/util/ArrayList;

    .line 248
    .line 249
    new-instance v9, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;

    .line 250
    .line 251
    invoke-direct {v9, v3, v6}, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;-><init>(ILandroid/os/Bundle;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    invoke-virtual {v8}, Lokhttp3/Request$Builder;->verifyAllDestinations()V

    .line 258
    .line 259
    .line 260
    move v7, v5

    .line 261
    goto :goto_3

    .line 262
    :cond_9
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 263
    .line 264
    .line 265
    throw v2

    .line 266
    :cond_a
    invoke-virtual {v8}, Lokhttp3/Request$Builder;->createTaskStackBuilder()Landroidx/core/app/TaskStackBuilder;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-virtual {p0}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 274
    .line 275
    .line 276
    return v1

    .line 277
    :cond_b
    invoke-virtual {v8}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    iget-object v4, v3, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 285
    .line 286
    iget v4, v4, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 287
    .line 288
    iget-object v3, v3, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 289
    .line 290
    :goto_5
    if-eqz v3, :cond_10

    .line 291
    .line 292
    iget-object v9, v3, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 293
    .line 294
    iget-object v10, v3, Landroidx/navigation/NavGraph;->impl:Lokhttp3/Dispatcher;

    .line 295
    .line 296
    iget v10, v10, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 297
    .line 298
    if-eq v10, v4, :cond_f

    .line 299
    .line 300
    new-array v3, v7, [Lkotlin/Pair;

    .line 301
    .line 302
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    check-cast v3, [Lkotlin/Pair;

    .line 307
    .line 308
    invoke-static {v3}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    if-eqz v0, :cond_d

    .line 313
    .line 314
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    if-eqz v4, :cond_d

    .line 319
    .line 320
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    if-eqz v4, :cond_d

    .line 329
    .line 330
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v8}, Landroidx/navigation/internal/NavControllerImpl;->getTopGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    new-instance v7, Lcom/caverock/androidsvg/SVG;

    .line 352
    .line 353
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v10

    .line 361
    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    const/16 v11, 0x15

    .line 366
    .line 367
    invoke-direct {v7, v8, v10, v6, v11}, Lcom/caverock/androidsvg/SVG;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v4, v7, v4}, Landroidx/navigation/NavGraph;->matchDeepLinkComprehensive(Lcom/caverock/androidsvg/SVG;Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    if-eqz v4, :cond_c

    .line 375
    .line 376
    iget-object v6, v4, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    .line 377
    .line 378
    goto :goto_6

    .line 379
    :cond_c
    move-object v6, v2

    .line 380
    :goto_6
    if-eqz v6, :cond_d

    .line 381
    .line 382
    iget-object v6, v4, Landroidx/navigation/NavDestination$DeepLinkMatch;->destination:Landroidx/navigation/NavDestination;

    .line 383
    .line 384
    iget-object v4, v4, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    .line 385
    .line 386
    invoke-virtual {v6, v4}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    if-eqz v4, :cond_d

    .line 391
    .line 392
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 393
    .line 394
    .line 395
    :cond_d
    new-instance v4, Lokhttp3/Request$Builder;

    .line 396
    .line 397
    invoke-direct {v4, p0}, Lokhttp3/Request$Builder;-><init>(Landroidx/navigation/NavHostController;)V

    .line 398
    .line 399
    .line 400
    iget p0, v9, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 401
    .line 402
    iget-object v6, v4, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast v6, Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 407
    .line 408
    .line 409
    new-instance v7, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;

    .line 410
    .line 411
    invoke-direct {v7, p0, v2}, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;-><init>(ILandroid/os/Bundle;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->verifyAllDestinations()V

    .line 418
    .line 419
    .line 420
    iget-object p0, v4, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast p0, Landroid/content/Intent;

    .line 423
    .line 424
    invoke-virtual {p0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->createTaskStackBuilder()Landroidx/core/app/TaskStackBuilder;

    .line 428
    .line 429
    .line 430
    move-result-object p0

    .line 431
    invoke-virtual {p0}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 432
    .line 433
    .line 434
    if-eqz v0, :cond_e

    .line 435
    .line 436
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 437
    .line 438
    .line 439
    :cond_e
    return v1

    .line 440
    :cond_f
    iget v4, v9, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 441
    .line 442
    iget-object v3, v3, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 443
    .line 444
    goto/16 :goto_5

    .line 445
    .line 446
    :cond_10
    :goto_7
    return v7

    .line 447
    :cond_11
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 448
    .line 449
    .line 450
    move-result p0

    .line 451
    return p0
.end method

.method public final popBackStack()Z
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 21
    .line 22
    iget v0, v0, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {p0, v0, v2, v1}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(IZZ)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->dispatchOnDestinationChanged$navigation_runtime_release()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    return v2

    .line 38
    :cond_1
    :goto_0
    return v1
.end method
