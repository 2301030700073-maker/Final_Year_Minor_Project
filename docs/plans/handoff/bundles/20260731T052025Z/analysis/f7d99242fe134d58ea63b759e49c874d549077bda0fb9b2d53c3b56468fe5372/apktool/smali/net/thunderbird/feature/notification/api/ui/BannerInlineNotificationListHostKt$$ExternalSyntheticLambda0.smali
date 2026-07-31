.class public final synthetic Lnet/thunderbird/feature/notification/api/ui/BannerInlineNotificationListHostKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/BannerInlineNotificationListHostKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/notification/api/ui/BannerInlineNotificationListHostKt$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/notification/api/ui/BannerInlineNotificationListHostKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/feature/notification/api/ui/BannerInlineNotificationListHostKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput p5, p0, Lnet/thunderbird/feature/notification/api/ui/BannerInlineNotificationListHostKt$$ExternalSyntheticLambda0;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Landroidx/compose/foundation/layout/RowScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    and-int/lit8 p1, p3, 0x11

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    move p1, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p1, v2

    .line 25
    :goto_0
    and-int/2addr p3, v1

    .line 26
    move-object v6, p2

    .line 27
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 28
    .line 29
    invoke-virtual {v6, p3, p1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/BannerInlineNotificationListHostKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/runtime/MutableState;

    .line 36
    .line 37
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    sget-object p2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    const p1, -0x2b33f24e

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Lnet/thunderbird/feature/notification/resources/api/String0_commonMainKt;->banner_inline_notification_learn_more$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 58
    .line 59
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lorg/jetbrains/compose/resources/StringResource;

    .line 64
    .line 65
    invoke-static {p1, v6}, Lkotlin/text/CharsKt__CharKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string p1, "learn_more_action"

    .line 70
    .line 71
    invoke-static {p2, p1}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    const/16 v7, 0x180

    .line 76
    .line 77
    const/16 v8, 0x8

    .line 78
    .line 79
    iget-object v4, p0, Lnet/thunderbird/feature/notification/api/ui/BannerInlineNotificationListHostKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 80
    .line 81
    invoke-static/range {v3 .. v8}, Landroidx/work/Data$Companion;->NotificationActionButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const p1, -0x2b2e9be2

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 95
    .line 96
    .line 97
    :goto_1
    iget-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/BannerInlineNotificationListHostKt$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;

    .line 98
    .line 99
    iget-object p1, p1, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;->actions:Lkotlinx/collections/immutable/ImmutableList;

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    if-eqz p3, :cond_4

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    add-int/lit8 v0, v2, 0x1

    .line 116
    .line 117
    if-ltz v2, :cond_2

    .line 118
    .line 119
    check-cast p3, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 120
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v3, "banner_inline_notification_list_item_action_"

    .line 124
    .line 125
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget v3, p0, Lnet/thunderbird/feature/notification/api/ui/BannerInlineNotificationListHostKt$$ExternalSyntheticLambda0;->f$4:I

    .line 129
    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v3, "_"

    .line 134
    .line 135
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {p2, v1}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const/16 v2, 0x8

    .line 150
    .line 151
    iget-object v3, p0, Lnet/thunderbird/feature/notification/api/ui/BannerInlineNotificationListHostKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function1;

    .line 152
    .line 153
    invoke-static {p3, v3, v1, v6, v2}, Lkotlin/text/CharsKt__CharKt;->ResolvedNotificationActionButton(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 154
    .line 155
    .line 156
    move v2, v0

    .line 157
    goto :goto_2

    .line 158
    :cond_2
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 159
    .line 160
    .line 161
    const/4 p0, 0x0

    .line 162
    throw p0

    .line 163
    :cond_3
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 164
    .line 165
    .line 166
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 167
    .line 168
    return-object p0
.end method
