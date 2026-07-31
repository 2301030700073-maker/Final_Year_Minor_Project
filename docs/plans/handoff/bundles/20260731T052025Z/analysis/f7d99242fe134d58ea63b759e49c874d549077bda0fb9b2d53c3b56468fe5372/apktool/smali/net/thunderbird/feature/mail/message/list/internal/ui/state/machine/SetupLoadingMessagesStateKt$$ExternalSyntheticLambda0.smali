.class public final synthetic Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadingMessagesStateKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/room/InvalidationTracker$implementation$1;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/InvalidationTracker$implementation$1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadingMessagesStateKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadingMessagesStateKt$$ExternalSyntheticLambda0;->f$0:Landroidx/room/InvalidationTracker$implementation$1;

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
    .locals 9

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadingMessagesStateKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/16 v2, 0x12

    .line 6
    .line 7
    const/16 v3, 0x11

    .line 8
    .line 9
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadingMessagesStateKt$$ExternalSyntheticLambda0;->f$0:Landroidx/room/InvalidationTracker$implementation$1;

    .line 10
    .line 11
    const/16 v4, 0x10

    .line 12
    .line 13
    check-cast p1, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v5, 0xe

    .line 24
    .line 25
    invoke-direct {v0, v5, p0}, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p1, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->onEnter:Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    new-instance p0, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    const/16 v0, 0xf

    .line 33
    .line 34
    invoke-direct {p0, v0}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p1, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->stateClass:Lkotlin/jvm/internal/ClassReference;

    .line 38
    .line 39
    const-class v5, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdatePreferences;

    .line 40
    .line 41
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    new-instance v6, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 46
    .line 47
    const/16 v7, 0x1a

    .line 48
    .line 49
    invoke-direct {v6, v7}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 50
    .line 51
    .line 52
    new-instance v7, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 53
    .line 54
    const/16 v8, 0x18

    .line 55
    .line 56
    invoke-direct {v7, v8, p0}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0, v5, v6, v7}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 60
    .line 61
    .line 62
    new-instance p0, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 63
    .line 64
    invoke-direct {p0, v4}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 65
    .line 66
    .line 67
    const-class v4, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$SortCriteriaLoaded;

    .line 68
    .line 69
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 74
    .line 75
    const/16 v6, 0x1b

    .line 76
    .line 77
    invoke-direct {v5, v6}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 78
    .line 79
    .line 80
    new-instance v6, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 81
    .line 82
    const/16 v7, 0x19

    .line 83
    .line 84
    invoke-direct {v6, v7, p0}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0, v4, v5, v6}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 88
    .line 89
    .line 90
    new-instance p0, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 91
    .line 92
    invoke-direct {p0, v3}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 96
    .line 97
    invoke-direct {v3, v2}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 98
    .line 99
    .line 100
    const-class v2, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$AllConfigsReady;

    .line 101
    .line 102
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    new-instance v4, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 107
    .line 108
    const/16 v5, 0x16

    .line 109
    .line 110
    invoke-direct {v4, v5, p0}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    new-instance p0, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 114
    .line 115
    const/16 v5, 0x17

    .line 116
    .line 117
    invoke-direct {p0, v5, v3}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0, v2, v4, p0}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 121
    .line 122
    .line 123
    return-object v1

    .line 124
    :pswitch_0
    new-instance v0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;

    .line 125
    .line 126
    const/4 v5, 0x4

    .line 127
    invoke-direct {v0, v5, p0}, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object p0, p1, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->stateClass:Lkotlin/jvm/internal/ClassReference;

    .line 131
    .line 132
    const-class v5, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdateLoadingProgress;

    .line 133
    .line 134
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    new-instance v6, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 139
    .line 140
    invoke-direct {v6, v4}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 141
    .line 142
    .line 143
    new-instance v7, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 144
    .line 145
    invoke-direct {v7, v2, v0}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p0, v5, v6, v7}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 152
    .line 153
    const/16 v2, 0xa

    .line 154
    .line 155
    invoke-direct {v0, v2}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 156
    .line 157
    .line 158
    new-instance v2, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 159
    .line 160
    const/16 v5, 0xb

    .line 161
    .line 162
    invoke-direct {v2, v5}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 163
    .line 164
    .line 165
    const-class v5, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$MessagesLoaded;

    .line 166
    .line 167
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    new-instance v6, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 172
    .line 173
    invoke-direct {v6, v4, v0}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    new-instance v0, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 177
    .line 178
    invoke-direct {v0, v3, v2}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p0, v5, v6, v0}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 182
    .line 183
    .line 184
    return-object v1

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
