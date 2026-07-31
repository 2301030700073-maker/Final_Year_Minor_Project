.class public final Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $cardKey:Ljava/lang/String;

.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->$cardKey:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->$cardKey:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-direct {v0, p0, v1, p2}, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;

    .line 18
    .line 19
    iget-object p0, p0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->$cardKey:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-direct {v0, p0, v1, p2}, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, v0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->L$0:Ljava/lang/Object;

    .line 26
    .line 27
    return-object v0

    .line 28
    :pswitch_1
    new-instance v0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;

    .line 29
    .line 30
    iget-object p0, p0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->$cardKey:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-direct {v0, p0, v1, p2}, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, v0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->L$0:Ljava/lang/Object;

    .line 37
    .line 38
    return-object v0

    .line 39
    :pswitch_2
    new-instance v0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;

    .line 40
    .line 41
    iget-object p0, p0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->$cardKey:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-direct {v0, p0, v1, p2}, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, v0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    return-object v0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->$cardKey:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;->L$0:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lorg/wikipedia/settings/SettingsRepository;->hiddenModulesKey:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/Set;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v3, v0

    .line 31
    :goto_0
    invoke-static {v3, v2}, Lkotlin/uuid/UuidKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lorg/wikipedia/settings/SettingsRepository;->hiddenCardsKey:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/util/Set;

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move-object v3, v0

    .line 54
    :goto_1
    invoke-static {v3, v2}, Lkotlin/uuid/UuidKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    sget-object p1, Lorg/wikipedia/settings/SettingsRepository;->hiddenModulesKey:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/util/Set;

    .line 72
    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    move-object v3, v0

    .line 77
    :goto_2
    invoke-static {v3, v2}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-object v1

    .line 85
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object p1, Lorg/wikipedia/settings/SettingsRepository;->hiddenCardsKey:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/util/Set;

    .line 95
    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_3
    move-object v3, v0

    .line 100
    :goto_3
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    const/16 v4, 0x64

    .line 105
    .line 106
    if-lt v0, v4, :cond_4

    .line 107
    .line 108
    check-cast v3, Ljava/lang/Iterable;

    .line 109
    .line 110
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    :cond_4
    invoke-static {v3, v2}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    return-object v1

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
