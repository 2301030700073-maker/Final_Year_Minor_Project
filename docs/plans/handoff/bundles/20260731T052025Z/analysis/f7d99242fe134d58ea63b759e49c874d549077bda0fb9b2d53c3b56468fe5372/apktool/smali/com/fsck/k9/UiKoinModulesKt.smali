.class public abstract Lcom/fsck/k9/UiKoinModulesKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final legacyUiModules:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    new-array v0, v0, [Lorg/koin/core/module/Module;

    .line 4
    .line 5
    sget-object v1, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt;->featureAccountOAuthModule:Lorg/koin/core/module/Module;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/fsck/k9/ui/base/KoinModuleKt;->uiBaseModule:Lorg/koin/core/module/Module;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/fsck/k9/activity/KoinModuleKt;->activityModule:Lorg/koin/core/module/Module;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/fsck/k9/ui/KoinModuleKt;->uiModule:Lorg/koin/core/module/Module;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lapp/k9mail/legacy/ui/folder/KoinModuleKt;->uiFolderModule:Lorg/koin/core/module/Module;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/fsck/k9/ui/settings/KoinModuleKt;->settingsUiModule:Lorg/koin/core/module/Module;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/fsck/k9/ui/endtoend/KoinModuleKt;->endToEndUiModule:Lorg/koin/core/module/Module;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/fsck/k9/ui/folders/KoinModuleKt;->foldersUiModule:Lorg/koin/core/module/Module;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/fsck/k9/ui/messagelist/KoinModuleKt;->messageListUiModule:Lorg/koin/core/module/Module;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/fsck/k9/ui/managefolders/KoinModuleKt;->manageFoldersUiModule:Lorg/koin/core/module/Module;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lcom/fsck/k9/ui/choosefolder/KoinModuleKt;->chooseFolderUiModule:Lorg/koin/core/module/Module;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lcom/fsck/k9/contacts/KoinModuleKt;->contactsModule:Lorg/koin/core/module/Module;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lcom/fsck/k9/account/KoinModuleKt;->accountModule:Lorg/koin/core/module/Module;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lcom/fsck/k9/ui/compose/KoinModuleKt;->composeModule:Lorg/koin/core/module/Module;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lcom/fsck/k9/view/KoinModuleKt;->viewModule:Lorg/koin/core/module/Module;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt;->changelogUiModule:Lorg/koin/core/module/Module;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    sget-object v1, Lcom/fsck/k9/ui/messagesource/KoinModuleKt;->messageSourceModule:Lorg/koin/core/module/Module;

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    sget-object v1, Lcom/fsck/k9/ui/account/KoinModuleKt;->accountUiModule:Lorg/koin/core/module/Module;

    .line 100
    .line 101
    const/16 v2, 0x11

    .line 102
    .line 103
    aput-object v1, v0, v2

    .line 104
    .line 105
    sget-object v1, Lcom/fsck/k9/ui/messagedetails/KoinModuleKt;->messageDetailsUiModule:Lorg/koin/core/module/Module;

    .line 106
    .line 107
    const/16 v2, 0x12

    .line 108
    .line 109
    aput-object v1, v0, v2

    .line 110
    .line 111
    sget-object v1, Lcom/fsck/k9/ui/messageview/KoinModuleKt;->messageViewUiModule:Lorg/koin/core/module/Module;

    .line 112
    .line 113
    const/16 v2, 0x13

    .line 114
    .line 115
    aput-object v1, v0, v2

    .line 116
    .line 117
    sget-object v1, Lcom/fsck/k9/ui/identity/KoinModuleKt;->identityUiModule:Lorg/koin/core/module/Module;

    .line 118
    .line 119
    const/16 v2, 0x14

    .line 120
    .line 121
    aput-object v1, v0, v2

    .line 122
    .line 123
    sget-object v1, Lapp/k9mail/feature/launcher/di/FeatureLauncherModuleKt;->featureLauncherModule:Lorg/koin/core/module/Module;

    .line 124
    .line 125
    const/16 v2, 0x15

    .line 126
    .line 127
    aput-object v1, v0, v2

    .line 128
    .line 129
    sget-object v1, Lcom/fsck/k9/activity/setup/KoinModuleKt;->setUpModule:Lorg/koin/core/module/Module;

    .line 130
    .line 131
    const/16 v2, 0x16

    .line 132
    .line 133
    aput-object v1, v0, v2

    .line 134
    .line 135
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    sput-object v0, Lcom/fsck/k9/UiKoinModulesKt;->legacyUiModules:Ljava/util/List;

    .line 140
    .line 141
    return-void
.end method
