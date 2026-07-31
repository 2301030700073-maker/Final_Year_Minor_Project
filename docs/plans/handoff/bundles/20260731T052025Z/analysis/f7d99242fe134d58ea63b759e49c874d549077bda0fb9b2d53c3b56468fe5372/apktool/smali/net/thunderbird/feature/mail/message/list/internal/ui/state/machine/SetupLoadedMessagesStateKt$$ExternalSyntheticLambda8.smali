.class public final synthetic Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadedMessagesStateKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadedMessagesStateKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadedMessagesStateKt$$ExternalSyntheticLambda8;->f$0:Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;

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
    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadedMessagesStateKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadedMessagesStateKt$$ExternalSyntheticLambda8;->f$0:Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object v1, p1

    .line 9
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v5, p0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;->message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    const/16 v9, 0x7ef

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    invoke-static/range {v1 .. v9}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;Lkotlinx/collections/immutable/PersistentMap;Lkotlinx/collections/immutable/PersistentMap;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;ZI)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_0
    move-object v0, p1

    .line 30
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget-object p1, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->state:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;

    .line 36
    .line 37
    iget-object v1, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->id:Ljava/lang/String;

    .line 38
    .line 39
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;->message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 40
    .line 41
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->id:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/4 v3, 0x0

    .line 48
    const/16 v5, 0x7fff

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-static/range {v0 .. v5}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;ZZI)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    sget-object p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;->Read:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;

    .line 57
    .line 58
    if-eqz v4, :cond_0

    .line 59
    .line 60
    if-eq p1, p0, :cond_0

    .line 61
    .line 62
    move-object v7, p0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move-object v7, p1

    .line 65
    :goto_0
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object v0, v6, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->senders:Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

    .line 70
    .line 71
    iget-object v1, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->displayName:Ljava/lang/String;

    .line 72
    .line 73
    const/16 v2, 0x2c

    .line 74
    .line 75
    const/4 v3, 0x6

    .line 76
    const/4 v4, 0x0

    .line 77
    invoke-static {v1, v2, v4, v3}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    const/4 v3, -0x1

    .line 82
    if-ne v2, v3, :cond_1

    .line 83
    .line 84
    if-eq v7, p0, :cond_1

    .line 85
    .line 86
    new-instance p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Bold;

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0, v2}, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Bold;-><init>(Ljava/lang/Integer;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    if-ltz v2, :cond_2

    .line 97
    .line 98
    const v3, 0x7fffffff

    .line 99
    .line 100
    .line 101
    if-gt v2, v3, :cond_2

    .line 102
    .line 103
    if-eq v7, p0, :cond_2

    .line 104
    .line 105
    new-instance p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Bold;

    .line 106
    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-direct {p0, v3}, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Bold;-><init>(Ljava/lang/Integer;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    new-instance p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Regular;

    .line 118
    .line 119
    invoke-direct {p0, v2}, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Regular;-><init>(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    new-instance p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Regular;

    .line 127
    .line 128
    invoke-direct {p0, v4}, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Regular;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    :goto_1
    invoke-static {p1}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {p0}, Lokio/Okio;->toPersistentList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    iget-object p1, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->avatar:Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar;

    .line 143
    .line 144
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->color:Landroidx/compose/ui/graphics/Color;

    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    new-instance v8, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

    .line 150
    .line 151
    invoke-direct {v8, v1, p0, p1, v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;-><init>(Ljava/lang/String;Lkotlinx/collections/immutable/ImmutableList;Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar;Landroidx/compose/ui/graphics/Color;)V

    .line 152
    .line 153
    .line 154
    const/4 v10, 0x0

    .line 155
    const v11, 0xffee

    .line 156
    .line 157
    .line 158
    const/4 v9, 0x0

    .line 159
    invoke-static/range {v6 .. v11}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;ZZI)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    return-object p0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
