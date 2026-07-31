.class public final synthetic Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    iget-object p0, p0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    and-int/lit8 v0, p2, 0x3

    .line 22
    .line 23
    if-eq v0, v3, :cond_0

    .line 24
    .line 25
    move v2, v4

    .line 26
    :cond_0
    and-int/2addr p2, v4

    .line 27
    move-object v8, p1

    .line 28
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 29
    .line 30
    invoke-virtual {v8, p2, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_6

    .line 35
    .line 36
    iget-object p1, p0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;->stream$delegate:Lkotlin/Lazy;

    .line 37
    .line 38
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream;

    .line 43
    .line 44
    iget-object p1, p1, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream;->notifications:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 45
    .line 46
    invoke-static {p1, v8}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 55
    .line 56
    if-ne p2, v0, :cond_1

    .line 57
    .line 58
    new-instance p2, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda11;

    .line 59
    .line 60
    const/4 v2, 0x5

    .line 61
    invoke-direct {p2, p1, v2}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda11;-><init>(Landroidx/compose/runtime/State;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    check-cast p2, Landroidx/compose/runtime/State;

    .line 72
    .line 73
    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    move-object v3, p1

    .line 78
    check-cast v3, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 79
    .line 80
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    if-nez p1, :cond_2

    .line 89
    .line 90
    if-ne p2, v0, :cond_3

    .line 91
    .line 92
    :cond_2
    new-instance p2, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 93
    .line 94
    const/16 p1, 0x15

    .line 95
    .line 96
    invoke-direct {p2, p1, p0}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    move-object v4, p2

    .line 103
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 104
    .line 105
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    if-nez p1, :cond_4

    .line 114
    .line 115
    if-ne p2, v0, :cond_5

    .line 116
    .line 117
    :cond_4
    new-instance p2, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;

    .line 118
    .line 119
    const/16 p1, 0xe

    .line 120
    .line 121
    invoke-direct {p2, p1, p0}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_5
    move-object v5, p2

    .line 128
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 129
    .line 130
    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 131
    .line 132
    const/4 v7, 0x0

    .line 133
    const/16 v9, 0xc00

    .line 134
    .line 135
    invoke-static/range {v3 .. v9}, Lkotlin/text/StringsKt__IndentKt;->ErrorNotificationsDialog(Lkotlinx/collections/immutable/ImmutableSet;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;I)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_6
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 140
    .line 141
    .line 142
    :goto_0
    return-object v1

    .line 143
    :pswitch_0
    and-int/lit8 v0, p2, 0x3

    .line 144
    .line 145
    if-eq v0, v3, :cond_7

    .line 146
    .line 147
    move v2, v4

    .line 148
    :cond_7
    and-int/2addr p2, v4

    .line 149
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 150
    .line 151
    invoke-virtual {p1, p2, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-eqz p2, :cond_8

    .line 156
    .line 157
    iget-object p2, p0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;->themeProvider$delegate:Lkotlin/Lazy;

    .line 158
    .line 159
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    check-cast p2, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 164
    .line 165
    new-instance v0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$$ExternalSyntheticLambda0;

    .line 166
    .line 167
    invoke-direct {v0, p0, v4}, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;I)V

    .line 168
    .line 169
    .line 170
    const p0, -0xada3c31

    .line 171
    .line 172
    .line 173
    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    const/4 v0, 0x6

    .line 178
    check-cast p2, Lapp/k9mail/provider/K9FeatureThemeProvider;

    .line 179
    .line 180
    invoke-virtual {p2, p0, p1, v0}, Lapp/k9mail/provider/K9FeatureThemeProvider;->WithTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_8
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 185
    .line 186
    .line 187
    :goto_1
    return-object v1

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
