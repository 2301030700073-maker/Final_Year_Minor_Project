.class public final synthetic Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 4

    .line 1
    iget p1, p0, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x1

    .line 5
    iget-object v2, p0, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;

    .line 15
    .line 16
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 19
    .line 20
    sget-object p1, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    aget p1, p1, p2

    .line 27
    .line 28
    if-eq p1, v1, :cond_1

    .line 29
    .line 30
    if-eq p1, v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-interface {v2, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-boolean p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->isFromSettings:Z

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 56
    .line 57
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;

    .line 62
    .line 63
    sget-object p2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 64
    .line 65
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iget-boolean p2, p2, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->userEnabled:Z

    .line 70
    .line 71
    if-eqz p2, :cond_3

    .line 72
    .line 73
    iget-object p2, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->donationAmount:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 74
    .line 75
    iget-object p2, p2, Lorg/wikipedia/donate/donationreminder/SelectableOption;->selectedValue:Ljava/lang/Number;

    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget v0, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->donateAmount:F

    .line 86
    .line 87
    cmpg-float p2, p2, v0

    .line 88
    .line 89
    if-nez p2, :cond_2

    .line 90
    .line 91
    iget-object p1, p1, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;->readFrequency:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 92
    .line 93
    iget-object p1, p1, Lorg/wikipedia/donate/donationreminder/SelectableOption;->selectedValue:Ljava/lang/Number;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    iget p2, p2, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleFrequency:I

    .line 104
    .line 105
    if-eq p1, p2, :cond_3

    .line 106
    .line 107
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->saveReminder()V

    .line 108
    .line 109
    .line 110
    sget p0, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->validReadCountOnSeconds:I

    .line 111
    .line 112
    invoke-static {}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->thankYouMessageForSettings()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    :cond_3
    :goto_0
    return-void

    .line 120
    :pswitch_0
    check-cast p0, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    .line 121
    .line 122
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 123
    .line 124
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 125
    .line 126
    sget-object p1, Landroidx/lifecycle/compose/LifecycleEffectKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 127
    .line 128
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    aget p1, p1, p2

    .line 133
    .line 134
    if-eq p1, v1, :cond_6

    .line 135
    .line 136
    if-eq p1, v0, :cond_4

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    iget-object p0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p0, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1;

    .line 142
    .line 143
    if-eqz p0, :cond_5

    .line 144
    .line 145
    invoke-virtual {p0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1;->runStopOrDisposeEffect()V

    .line 146
    .line 147
    .line 148
    :cond_5
    const/4 p0, 0x0

    .line 149
    iput-object p0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_6
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    iput-object p0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 157
    .line 158
    :goto_1
    return-void

    .line 159
    :pswitch_1
    check-cast p0, Lcom/caverock/androidsvg/SVG;

    .line 160
    .line 161
    check-cast v3, Landroidx/lifecycle/Lifecycle$State;

    .line 162
    .line 163
    check-cast v2, Landroidx/core/view/MenuProvider;

    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast p1, Ljava/lang/Runnable;

    .line 171
    .line 172
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 175
    .line 176
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->Companion:Landroidx/lifecycle/Lifecycle$Event$Companion;

    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-static {v3}, Landroidx/lifecycle/Lifecycle$Event$Companion;->upTo(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-ne p2, v1, :cond_7

    .line 186
    .line 187
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_7
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 195
    .line 196
    if-ne p2, v1, :cond_8

    .line 197
    .line 198
    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/SVG;->removeMenuProvider(Landroidx/core/view/MenuProvider;)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_8
    invoke-static {v3}, Landroidx/lifecycle/Lifecycle$Event$Companion;->downFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    if-ne p2, p0, :cond_9

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 212
    .line 213
    .line 214
    :cond_9
    :goto_2
    return-void

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
