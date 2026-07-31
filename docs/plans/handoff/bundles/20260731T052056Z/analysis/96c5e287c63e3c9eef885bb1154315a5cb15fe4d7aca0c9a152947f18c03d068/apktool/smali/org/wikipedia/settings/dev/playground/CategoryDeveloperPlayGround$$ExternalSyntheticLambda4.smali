.class public final synthetic Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;

    .line 6
    .line 7
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Lorg/wikipedia/settings/dev/playground/Option;

    .line 15
    .line 16
    sget p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;->$r8$clinit:I

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    aget p0, p0, p1

    .line 28
    .line 29
    if-eq p0, v6, :cond_1

    .line 30
    .line 31
    if-eq p0, v5, :cond_2

    .line 32
    .line 33
    const/4 p1, 0x3

    .line 34
    if-ne p0, p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;->getViewModel()Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;->loadCategories()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v3}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;->getViewModel()Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;->loadCategories()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    move-object v2, v4

    .line 56
    :goto_1
    return-object v2

    .line 57
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 58
    .line 59
    sget v0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;->$r8$clinit:I

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    move v1, v6

    .line 71
    :cond_3
    iget-object v9, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;

    .line 72
    .line 73
    invoke-virtual {v9, v1}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;->validateInput(Z)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_4

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    invoke-virtual {v9}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;->getViewModel()Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    invoke-static {v8}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    sget-object p1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 93
    .line 94
    new-instance v0, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 95
    .line 96
    const/16 v1, 0xd

    .line 97
    .line 98
    invoke-direct {v0, p1, v1}, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 99
    .line 100
    .line 101
    new-instance v6, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;

    .line 102
    .line 103
    const/4 v11, 0x3

    .line 104
    const/4 v10, 0x0

    .line 105
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 106
    .line 107
    .line 108
    invoke-static {p0, v0, v10, v6, v5}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 109
    .line 110
    .line 111
    :goto_2
    return-object v4

    .line 112
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 113
    .line 114
    sget p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;->$r8$clinit:I

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-nez p0, :cond_5

    .line 124
    .line 125
    move v1, v6

    .line 126
    :cond_5
    invoke-virtual {v3, v1}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;->validateInput(Z)Z

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    if-nez p0, :cond_6

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    invoke-virtual {v3}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;->getViewModel()Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sget-object v1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 146
    .line 147
    new-instance v3, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 148
    .line 149
    const/16 v6, 0xe

    .line 150
    .line 151
    invoke-direct {v3, v1, v6}, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 152
    .line 153
    .line 154
    new-instance v1, Lorg/wikipedia/random/RandomViewModel$loadMore$2;

    .line 155
    .line 156
    invoke-direct {v1, p1, p0, v2}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;-><init>(ILorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;Lkotlin/coroutines/Continuation;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v0, v3, v2, v1, v5}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 160
    .line 161
    .line 162
    :goto_3
    return-object v4

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
