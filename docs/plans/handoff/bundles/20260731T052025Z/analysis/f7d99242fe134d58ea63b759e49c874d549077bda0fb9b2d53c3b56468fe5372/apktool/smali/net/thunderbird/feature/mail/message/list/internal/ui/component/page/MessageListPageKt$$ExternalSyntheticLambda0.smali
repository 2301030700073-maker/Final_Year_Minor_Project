.class public final synthetic Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;->f$2:Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 10
    .line 11
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;->f$2:Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Landroidx/compose/foundation/layout/BoxScope;

    .line 11
    .line 12
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 13
    .line 14
    check-cast p3, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    and-int/lit8 p1, p3, 0x11

    .line 24
    .line 25
    const/16 v0, 0x10

    .line 26
    .line 27
    if-eq p1, v0, :cond_0

    .line 28
    .line 29
    move v2, v3

    .line 30
    :cond_0
    and-int/lit8 p1, p3, 0x1

    .line 31
    .line 32
    move-object v7, p2

    .line 33
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 34
    .line 35
    invoke-virtual {v7, p1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 42
    .line 43
    const/16 v8, 0xc00

    .line 44
    .line 45
    iget-object v3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;->f$2:Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;

    .line 46
    .line 47
    iget-object v4, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 48
    .line 49
    iget-object v5, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    .line 50
    .line 51
    invoke-static/range {v3 .. v8}, Lokhttp3/Handshake$Companion;->MessageList(Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-object v1

    .line 59
    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 60
    .line 61
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 62
    .line 63
    check-cast p3, Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    and-int/lit8 v0, p3, 0x6

    .line 73
    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    move-object v0, p2

    .line 77
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    const/4 v0, 0x4

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const/4 v0, 0x2

    .line 88
    :goto_1
    or-int/2addr p3, v0

    .line 89
    :cond_3
    and-int/lit8 v0, p3, 0x13

    .line 90
    .line 91
    const/16 v4, 0x12

    .line 92
    .line 93
    if-eq v0, v4, :cond_4

    .line 94
    .line 95
    move v2, v3

    .line 96
    :cond_4
    and-int/2addr p3, v3

    .line 97
    move-object v8, p2

    .line 98
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 99
    .line 100
    invoke-virtual {v8, p3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-eqz p2, :cond_7

    .line 105
    .line 106
    iget-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    .line 107
    .line 108
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-nez p3, :cond_5

    .line 117
    .line 118
    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 119
    .line 120
    if-ne v0, p3, :cond_6

    .line 121
    .line 122
    :cond_5
    new-instance v0, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;

    .line 123
    .line 124
    const/4 p3, 0x6

    .line 125
    invoke-direct {v0, p3, p2}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_6
    move-object v4, v0

    .line 132
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 133
    .line 134
    sget-object p3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 135
    .line 136
    invoke-static {p3, p1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    iget-object p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;->f$2:Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;

    .line 143
    .line 144
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 145
    .line 146
    invoke-direct {p1, p3, p0, p2}, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/jvm/functions/Function1;)V

    .line 147
    .line 148
    .line 149
    const p0, 0x246a0631

    .line 150
    .line 151
    .line 152
    invoke-static {p0, p1, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    const/16 v9, 0x6000

    .line 157
    .line 158
    const/4 v3, 0x0

    .line 159
    const/4 v6, 0x0

    .line 160
    invoke-static/range {v3 .. v9}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->PullToRefreshBox(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_7
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 165
    .line 166
    .line 167
    :goto_2
    return-object v1

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
