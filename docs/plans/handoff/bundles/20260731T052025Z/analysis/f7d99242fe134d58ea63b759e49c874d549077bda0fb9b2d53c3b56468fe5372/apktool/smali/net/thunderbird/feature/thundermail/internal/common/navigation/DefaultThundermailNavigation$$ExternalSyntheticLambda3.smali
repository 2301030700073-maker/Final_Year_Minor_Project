.class public final synthetic Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

.field public final synthetic f$1:Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavController$$ExternalSyntheticLambda0;Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;I)V
    .locals 0

    .line 12
    iput p3, p0, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;->f$0:Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    iput-object p2, p0, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;->f$1:Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;Landroidx/navigation/NavController$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;->f$1:Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;->f$0:Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;->f$1:Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    check-cast p1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 10
    .line 11
    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 17
    .line 18
    check-cast p4, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-object v7, p3

    .line 30
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 31
    .line 32
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    if-ne p2, v1, :cond_1

    .line 43
    .line 44
    :cond_0
    new-instance p2, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    const/16 p1, 0xf

    .line 47
    .line 48
    invoke-direct {p2, p1, v2}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    move-object v5, p2

    .line 55
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 56
    .line 57
    const/16 v8, 0x180

    .line 58
    .line 59
    const/4 v9, 0x0

    .line 60
    iget-object v4, p0, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;->f$0:Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 61
    .line 62
    const/4 v6, 0x1

    .line 63
    invoke-static/range {v4 .. v9}, Lcom/fsck/k9/sasl/OAuthBearer;->AccountSetupNavHost(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)V

    .line 64
    .line 65
    .line 66
    return-object v3

    .line 67
    :pswitch_0
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 68
    .line 69
    check-cast p4, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-object v8, p3

    .line 81
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 82
    .line 83
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    if-nez p1, :cond_2

    .line 92
    .line 93
    if-ne p2, v1, :cond_3

    .line 94
    .line 95
    :cond_2
    new-instance p2, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    const/16 p1, 0x16

    .line 98
    .line 99
    invoke-direct {p2, p1, v2}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    move-object v5, p2

    .line 106
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 107
    .line 108
    const/4 v7, 0x0

    .line 109
    const/4 v9, 0x6

    .line 110
    sget-object v4, Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;->ScanQrCode:Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;

    .line 111
    .line 112
    iget-object v6, p0, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;->f$0:Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 113
    .line 114
    invoke-static/range {v4 .. v9}, Landroidx/work/Data$Companion;->SettingsImportScreen(Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 115
    .line 116
    .line 117
    return-object v3

    .line 118
    :pswitch_1
    move-object v8, p3

    .line 119
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 120
    .line 121
    check-cast p4, Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    const/4 v7, 0x0

    .line 133
    const/4 v9, 0x0

    .line 134
    iget-object v4, p0, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;->f$0:Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 135
    .line 136
    iget-object v5, p0, Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation$$ExternalSyntheticLambda3;->f$1:Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    .line 137
    .line 138
    const/4 v6, 0x0

    .line 139
    invoke-static/range {v4 .. v9}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthRedirectScreenKt;->ThundermailOAuthRedirectScreen(Landroidx/navigation/NavController$$ExternalSyntheticLambda0;Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;Landroidx/compose/ui/Modifier;Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;Landroidx/compose/runtime/Composer;I)V

    .line 140
    .line 141
    .line 142
    return-object v3

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
