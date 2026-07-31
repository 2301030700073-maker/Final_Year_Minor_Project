.class public abstract Lapp/k9mail/K9KoinModuleKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final appConfig:Lcom/fsck/k9/DefaultAppConfig;

.field public static final appModule:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

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
    invoke-virtual {v0, v1}, Landroidx/work/Data$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sput-object v1, Lapp/k9mail/K9KoinModuleKt;->appModule:Lorg/koin/core/module/Module;

    .line 17
    .line 18
    new-instance v0, Lcom/fsck/k9/DefaultAppConfig;

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    new-array v1, v1, [Ljava/lang/Class;

    .line 22
    .line 23
    const-class v2, Lcom/fsck/k9/activity/MessageCompose;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v2, v1, v3

    .line 27
    .line 28
    const-class v2, Lapp/k9mail/feature/widget/shortcut/LauncherShortcutActivity;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    aput-object v2, v1, v3

    .line 32
    .line 33
    const-class v2, Lcom/fsck/k9/provider/UnreadWidgetProvider;

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    aput-object v2, v1, v3

    .line 37
    .line 38
    const-class v2, Lcom/fsck/k9/widget/list/MessageListWidgetProvider;

    .line 39
    .line 40
    const/4 v3, 0x3

    .line 41
    aput-object v2, v1, v3

    .line 42
    .line 43
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Lcom/fsck/k9/DefaultAppConfig;-><init>(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lapp/k9mail/K9KoinModuleKt;->appConfig:Lcom/fsck/k9/DefaultAppConfig;

    .line 51
    .line 52
    return-void
.end method
