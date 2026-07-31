.class public abstract Lcom/fsck/k9/LegacyCommonAppModuleKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final legacyCommonAppModules:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lorg/koin/core/module/Module;

    .line 9
    .line 10
    invoke-direct {v1}, Lorg/koin/core/module/Module;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    new-array v0, v0, [Lorg/koin/core/module/Module;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aput-object v1, v0, v2

    .line 22
    .line 23
    sget-object v1, Lapp/k9mail/feature/widget/message/list/KoinModuleKt;->messageListWidgetModule:Lorg/koin/core/module/Module;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    aput-object v1, v0, v2

    .line 27
    .line 28
    sget-object v1, Lapp/k9mail/feature/widget/unread/KoinModuleKt;->unreadWidgetModule:Lorg/koin/core/module/Module;

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    aput-object v1, v0, v2

    .line 32
    .line 33
    sget-object v1, Lcom/fsck/k9/notification/KoinModuleKt;->notificationModule:Lorg/koin/core/module/Module;

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    aput-object v1, v0, v2

    .line 37
    .line 38
    sget-object v1, Lcom/fsck/k9/resources/KoinModuleKt;->resourcesModule:Lorg/koin/core/module/Module;

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    aput-object v1, v0, v2

    .line 42
    .line 43
    sget-object v1, Lcom/fsck/k9/backends/KoinModuleKt;->backendsModule:Lorg/koin/core/module/Module;

    .line 44
    .line 45
    const/4 v2, 0x5

    .line 46
    aput-object v1, v0, v2

    .line 47
    .line 48
    sget-object v1, Lcom/fsck/k9/storage/KoinModuleKt;->storageModule:Lorg/koin/core/module/Module;

    .line 49
    .line 50
    const/4 v2, 0x6

    .line 51
    aput-object v1, v0, v2

    .line 52
    .line 53
    sget-object v1, Lcom/fsck/k9/account/AccountModuleKt;->newAccountModule:Lorg/koin/core/module/Module;

    .line 54
    .line 55
    const/4 v2, 0x7

    .line 56
    aput-object v1, v0, v2

    .line 57
    .line 58
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/fsck/k9/LegacyCommonAppModuleKt;->legacyCommonAppModules:Ljava/util/List;

    .line 63
    .line 64
    return-void
.end method
