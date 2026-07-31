.class public final synthetic Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/navigation/NavHostController;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;I)V
    .locals 0

    .line 1
    iput p5, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12;->f$1:Landroidx/navigation/NavHostController;

    .line 6
    .line 7
    iput-object p3, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12;->f$2:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    iput-object p4, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12;->f$3:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const-string v2, "save"

    .line 6
    .line 7
    const-string/jumbo v3, "validate"

    .line 8
    .line 9
    .line 10
    const-string v4, "modify"

    .line 11
    .line 12
    iget-object v5, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12;->f$3:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    iget-object v6, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12;->f$2:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    iget-object v7, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12;->f$1:Landroidx/navigation/NavHostController;

    .line 17
    .line 18
    iget-object p0, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12;->f$0:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v8, 0x1

    .line 21
    check-cast p1, Landroidx/navigation/NavGraphBuilder;

    .line 22
    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda1;

    .line 30
    .line 31
    invoke-direct {v0, p0, v7, v6, v8}, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;I)V

    .line 32
    .line 33
    .line 34
    new-instance v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 35
    .line 36
    const v9, 0x3742f4de

    .line 37
    .line 38
    .line 39
    invoke-direct {v6, v9, v0, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v4, v6}, Lcom/fsck/k9/sasl/OAuthBearer;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda2;

    .line 46
    .line 47
    invoke-direct {v0, p0, v7, v8}, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroidx/navigation/NavHostController;I)V

    .line 48
    .line 49
    .line 50
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 51
    .line 52
    const v6, -0x2d299b9

    .line 53
    .line 54
    .line 55
    invoke-direct {v4, v6, v0, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v3, v4}, Lcom/fsck/k9/sasl/OAuthBearer;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda3;

    .line 62
    .line 63
    invoke-direct {v0, v5, p0, v7, v8}, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda3;-><init>(Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;Ljava/lang/String;Landroidx/navigation/NavHostController;I)V

    .line 64
    .line 65
    .line 66
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 67
    .line 68
    const v3, 0x17bbc266

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v3, v0, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v2, p0}, Lcom/fsck/k9/sasl/OAuthBearer;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance v0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda1;

    .line 82
    .line 83
    const/4 v9, 0x0

    .line 84
    invoke-direct {v0, p0, v7, v6, v9}, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;I)V

    .line 85
    .line 86
    .line 87
    new-instance v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 88
    .line 89
    const v10, 0x1f5528d2

    .line 90
    .line 91
    .line 92
    invoke-direct {v6, v10, v0, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1, v4, v6}, Lcom/fsck/k9/sasl/OAuthBearer;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda2;

    .line 99
    .line 100
    invoke-direct {v0, p0, v7, v9}, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroidx/navigation/NavHostController;I)V

    .line 101
    .line 102
    .line 103
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 104
    .line 105
    const v6, -0x1ac065c5

    .line 106
    .line 107
    .line 108
    invoke-direct {v4, v6, v0, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1, v3, v4}, Lcom/fsck/k9/sasl/OAuthBearer;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda3;

    .line 115
    .line 116
    invoke-direct {v0, v5, p0, v7, v9}, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda3;-><init>(Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;Ljava/lang/String;Landroidx/navigation/NavHostController;I)V

    .line 117
    .line 118
    .line 119
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 120
    .line 121
    const v3, -0x3209a6

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, v3, v0, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 125
    .line 126
    .line 127
    invoke-static {p1, v2, p0}, Lcom/fsck/k9/sasl/OAuthBearer;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 128
    .line 129
    .line 130
    return-object v1

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
