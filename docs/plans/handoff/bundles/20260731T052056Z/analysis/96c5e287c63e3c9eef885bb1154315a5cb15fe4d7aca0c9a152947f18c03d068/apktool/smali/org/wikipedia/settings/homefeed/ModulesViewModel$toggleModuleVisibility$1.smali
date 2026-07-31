.class public final Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $isVisible:Z

.field public final synthetic $moduleKey:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public label:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->$moduleKey:Ljava/lang/Object;

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->$isVisible:Z

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->$r8$classId:I

    .line 13
    iput-boolean p1, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->$isVisible:Z

    iput-object p2, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->$moduleKey:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->$r8$classId:I

    .line 2
    .line 3
    iget-boolean v0, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->$isVisible:Z

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->$moduleKey:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;

    .line 11
    .line 12
    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 13
    .line 14
    invoke-direct {p1, p0, v0, p2}, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_0
    new-instance p1, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;

    .line 19
    .line 20
    check-cast p0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {p1, v0, p0, p2}, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;-><init>(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->$r8$classId:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->$isVisible:Z

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->$moduleKey:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 17
    .line 18
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 19
    .line 20
    iget v7, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->label:I

    .line 21
    .line 22
    if-eqz v7, :cond_1

    .line 23
    .line 24
    if-ne v7, v5, :cond_0

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v3, v6

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-wide v7, p1, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 43
    .line 44
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lkotlin/TuplesKt;->getSelectedText(Landroidx/compose/ui/text/input/TextFieldValue;)Landroidx/compose/ui/text/AnnotatedString;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-wide v1, p1, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 66
    .line 67
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object v1, v1, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 76
    .line 77
    invoke-static {p1, p1}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 78
    .line 79
    .line 80
    move-result-wide v7

    .line 81
    invoke-static {v1, v7, v8}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->createTextFieldValue-FDrldGo(Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v1, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 86
    .line 87
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    sget-object p1, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    .line 91
    .line 92
    invoke-virtual {v4, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setHandleState(Landroidx/compose/foundation/text/HandleState;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_0
    if-nez v6, :cond_4

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    iget-object p1, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    .line 99
    .line 100
    if-eqz p1, :cond_5

    .line 101
    .line 102
    invoke-static {v6}, Landroidx/compose/foundation/internal/ClipboardUtils;->toClipEntry(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/platform/ClipEntry;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iput v5, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->label:I

    .line 107
    .line 108
    check-cast p1, Landroidx/compose/ui/platform/AndroidClipboard;

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Landroidx/compose/ui/platform/AndroidClipboard;->setClipEntry(Landroidx/compose/ui/platform/ClipEntry;)V

    .line 111
    .line 112
    .line 113
    if-ne v3, v0, :cond_5

    .line 114
    .line 115
    move-object v3, v0

    .line 116
    :cond_5
    :goto_1
    return-object v3

    .line 117
    :pswitch_0
    check-cast v4, Ljava/lang/String;

    .line 118
    .line 119
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 120
    .line 121
    iget v7, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->label:I

    .line 122
    .line 123
    const/4 v8, 0x2

    .line 124
    if-eqz v7, :cond_8

    .line 125
    .line 126
    if-eq v7, v5, :cond_7

    .line 127
    .line 128
    if-ne v7, v8, :cond_6

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_6
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    move-object v3, v6

    .line 135
    goto :goto_6

    .line 136
    :cond_7
    :goto_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    const/4 p1, 0x3

    .line 144
    if-eqz v1, :cond_a

    .line 145
    .line 146
    sget-object v1, Lorg/wikipedia/settings/SettingsRepository;->INSTANCE:Lorg/wikipedia/settings/SettingsRepository;

    .line 147
    .line 148
    iput v5, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->label:I

    .line 149
    .line 150
    sget-object v1, Lorg/wikipedia/settings/SettingsRepository;->dataStore:Landroidx/datastore/core/DataStore;

    .line 151
    .line 152
    new-instance v2, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;

    .line 153
    .line 154
    invoke-direct {v2, v4, p1, v6}, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 155
    .line 156
    .line 157
    new-instance v4, Landroidx/paging/SimpleChannelFlowKt$simpleChannelFlow$1;

    .line 158
    .line 159
    invoke-direct {v4, v2, v6, p1}, Landroidx/paging/SimpleChannelFlowKt$simpleChannelFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;I)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v1, v4, p0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    if-ne p0, v0, :cond_9

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_9
    move-object p0, v3

    .line 170
    :goto_3
    if-ne p0, v0, :cond_c

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_a
    sget-object v1, Lorg/wikipedia/settings/SettingsRepository;->INSTANCE:Lorg/wikipedia/settings/SettingsRepository;

    .line 174
    .line 175
    iput v8, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;->label:I

    .line 176
    .line 177
    sget-object v1, Lorg/wikipedia/settings/SettingsRepository;->dataStore:Landroidx/datastore/core/DataStore;

    .line 178
    .line 179
    new-instance v2, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;

    .line 180
    .line 181
    invoke-direct {v2, v4, v5, v6}, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 182
    .line 183
    .line 184
    new-instance v4, Landroidx/paging/SimpleChannelFlowKt$simpleChannelFlow$1;

    .line 185
    .line 186
    invoke-direct {v4, v2, v6, p1}, Landroidx/paging/SimpleChannelFlowKt$simpleChannelFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;I)V

    .line 187
    .line 188
    .line 189
    invoke-interface {v1, v4, p0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    if-ne p0, v0, :cond_b

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_b
    move-object p0, v3

    .line 197
    :goto_4
    if-ne p0, v0, :cond_c

    .line 198
    .line 199
    :goto_5
    move-object v3, v0

    .line 200
    :cond_c
    :goto_6
    return-object v3

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
