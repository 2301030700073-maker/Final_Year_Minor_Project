.class public final synthetic Lcom/fsck/k9/ui/messagelist/item/MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;I)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/item/MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;IB)V
    .locals 0

    .line 10
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/item/MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/item/MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/item/MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;

    .line 9
    .line 10
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    and-int/lit8 v0, p2, 0x3

    .line 22
    .line 23
    if-eq v0, v2, :cond_0

    .line 24
    .line 25
    move v0, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v4

    .line 28
    :goto_0
    and-int/2addr p2, v3

    .line 29
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 30
    .line 31
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, p1, v4}, Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;->Content(Landroidx/compose/runtime/Composer;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 42
    .line 43
    .line 44
    :goto_1
    return-object v1

    .line 45
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;->Content(Landroidx/compose/runtime/Composer;I)V

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    and-int/lit8 v0, p2, 0x3

    .line 61
    .line 62
    if-eq v0, v2, :cond_2

    .line 63
    .line 64
    move v0, v3

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    move v0, v4

    .line 67
    :goto_2
    and-int/2addr p2, v3

    .line 68
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 69
    .line 70
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_5

    .line 75
    .line 76
    invoke-static {p1}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    or-int/2addr v3, v5

    .line 90
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    if-nez v3, :cond_3

    .line 95
    .line 96
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 97
    .line 98
    if-ne v5, v3, :cond_4

    .line 99
    .line 100
    :cond_3
    const-class v3, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 101
    .line 102
    invoke-static {v3, p2, v0, v0, p1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    :cond_4
    check-cast v5, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 107
    .line 108
    new-instance p2, Lcom/fsck/k9/ui/messagelist/item/MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0;

    .line 109
    .line 110
    invoke-direct {p2, p0, v2, v4}, Lcom/fsck/k9/ui/messagelist/item/MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;IB)V

    .line 111
    .line 112
    .line 113
    const p0, 0x70ff954d

    .line 114
    .line 115
    .line 116
    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const/4 p2, 0x6

    .line 121
    check-cast v5, Lapp/k9mail/provider/K9FeatureThemeProvider;

    .line 122
    .line 123
    invoke-virtual {v5, p0, p1, p2}, Lapp/k9mail/provider/K9FeatureThemeProvider;->WithTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 128
    .line 129
    .line 130
    :goto_3
    return-object v1

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
