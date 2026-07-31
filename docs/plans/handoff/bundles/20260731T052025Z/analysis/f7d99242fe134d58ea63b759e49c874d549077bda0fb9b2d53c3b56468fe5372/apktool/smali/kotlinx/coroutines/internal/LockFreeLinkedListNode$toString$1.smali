.class public final synthetic Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;
.super Lkotlin/jvm/internal/PropertyReference;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/reflect/KProperty0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p2, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;->$r8$classId:I

    .line 2
    .line 3
    move-object p2, p3

    .line 4
    move-object p3, p5

    .line 5
    move p5, p1

    .line 6
    move-object p1, p4

    .line 7
    move-object p4, p6

    .line 8
    invoke-direct/range {p0 .. p5}, Lkotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final computeReflected()Lkotlin/reflect/KCallable;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;

    .line 14
    .line 15
    sget-object v1, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessageListSettings()Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget v2, v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->previewLines:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isOutbox()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getGeneralSettingsManager$2()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v3, v3, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 40
    .line 41
    iget-object v3, v3, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 42
    .line 43
    iget-boolean v3, v3, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowMessageListStars:Z

    .line 44
    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v3, 0x0

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getGeneralSettingsManager$2()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget-object v4, v4, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 61
    .line 62
    iget-object v4, v4, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 63
    .line 64
    iget-boolean v4, v4, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isMessageListSenderAboveSubject:Z

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessageListSettings()Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    iget-boolean v5, v5, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowContactPicture:Z

    .line 71
    .line 72
    iget-boolean v6, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showingThreadedList:Z

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessageListSettings()Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    iget-boolean v7, v7, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isUseBackgroundAsUnreadIndicator:Z

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isShowAccountIndicator$1()Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessageListSettings()Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    iget-object v9, v9, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->uiDensity:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessageListSettings()Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    iget-object v10, p0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 95
    .line 96
    invoke-direct/range {v0 .. v10}, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;-><init>(Lcom/fsck/k9/FontSizes;IZZZZZZLnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;)V

    .line 97
    .line 98
    .line 99
    return-object v0

    .line 100
    :pswitch_0
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p0, Landroidx/compose/runtime/State;

    .line 103
    .line 104
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :pswitch_1
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p0, Landroidx/compose/runtime/State;

    .line 112
    .line 113
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0

    .line 118
    :pswitch_2
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p0, Landroidx/compose/runtime/State;

    .line 121
    .line 122
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :pswitch_3
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast p0, Landroidx/compose/runtime/State;

    .line 130
    .line 131
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :pswitch_4
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 137
    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    return-object p0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/reflect/KProperty0;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
