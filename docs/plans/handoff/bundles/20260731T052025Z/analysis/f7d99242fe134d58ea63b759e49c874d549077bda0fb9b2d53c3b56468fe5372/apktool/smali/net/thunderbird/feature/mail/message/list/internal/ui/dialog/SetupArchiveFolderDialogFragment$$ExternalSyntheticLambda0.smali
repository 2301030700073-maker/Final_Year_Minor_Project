.class public final synthetic Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment;

.field public final synthetic f$1:Lnet/thunderbird/feature/account/AccountId;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/feature/account/AccountId;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment;Lnet/thunderbird/feature/account/AccountId;)V
    .locals 1

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment;

    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/feature/account/AccountId;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object v5, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment;

    .line 9
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
    move-object v10, p1

    .line 28
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 29
    .line 30
    invoke-virtual {v10, p2, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 47
    .line 48
    if-ne p2, p1, :cond_2

    .line 49
    .line 50
    :cond_1
    new-instance p2, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    const/16 p1, 0xa

    .line 53
    .line 54
    invoke-direct {p2, p1, v5}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v10, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    move-object v7, p2

    .line 61
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 62
    .line 63
    const/4 v9, 0x0

    .line 64
    const/4 v11, 0x0

    .line 65
    iget-object v6, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/feature/account/AccountId;

    .line 66
    .line 67
    const/4 v8, 0x0

    .line 68
    invoke-static/range {v6 .. v11}, Lorg/jsoup/Jsoup;->SetupArchiveFolderDialog(Lnet/thunderbird/feature/account/AccountId;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$ViewModel;Landroidx/compose/runtime/Composer;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-object v1

    .line 76
    :pswitch_0
    and-int/lit8 v0, p2, 0x3

    .line 77
    .line 78
    if-eq v0, v3, :cond_4

    .line 79
    .line 80
    move v2, v4

    .line 81
    :cond_4
    and-int/2addr p2, v4

    .line 82
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 83
    .line 84
    invoke-virtual {p1, p2, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_5

    .line 89
    .line 90
    iget-object p2, v5, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment;->themeProvider$delegate:Lkotlin/Lazy;

    .line 91
    .line 92
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    check-cast p2, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 97
    .line 98
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/feature/account/AccountId;

    .line 101
    .line 102
    invoke-direct {v0, p0, v5}, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment;)V

    .line 103
    .line 104
    .line 105
    const p0, -0x3e4004af

    .line 106
    .line 107
    .line 108
    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const/4 v0, 0x6

    .line 113
    check-cast p2, Lapp/k9mail/provider/K9FeatureThemeProvider;

    .line 114
    .line 115
    invoke-virtual {p2, p0, p1, v0}, Lapp/k9mail/provider/K9FeatureThemeProvider;->WithTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 120
    .line 121
    .line 122
    :goto_1
    return-object v1

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
