.class public final Lexpo/modules/updates/UpdatesPackage$createApplicationLifecycleListeners$handler$1;
.super Ljava/lang/Object;
.source "UpdatesPackage.kt"

# interfaces
.implements Lexpo/modules/core/interfaces/ApplicationLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/UpdatesPackage;->createApplicationLifecycleListeners(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "expo/modules/updates/UpdatesPackage$createApplicationLifecycleListeners$handler$1",
        "Lexpo/modules/core/interfaces/ApplicationLifecycleListener;",
        "onCreate",
        "",
        "application",
        "Landroid/app/Application;",
        "expo-updates_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lexpo/modules/updates/UpdatesPackage;


# direct methods
.method constructor <init>(Lexpo/modules/updates/UpdatesPackage;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/updates/UpdatesPackage$createApplicationLifecycleListeners$handler$1;->this$0:Lexpo/modules/updates/UpdatesPackage;

    iput-object p2, p0, Lexpo/modules/updates/UpdatesPackage$createApplicationLifecycleListeners$handler$1;->$context:Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1}, Lexpo/modules/core/interfaces/ApplicationLifecycleListener;->onCreate(Landroid/app/Application;)V

    .line 101
    iget-object p1, p0, Lexpo/modules/updates/UpdatesPackage$createApplicationLifecycleListeners$handler$1;->this$0:Lexpo/modules/updates/UpdatesPackage;

    invoke-static {p1}, Lexpo/modules/updates/UpdatesPackage;->access$isRunningAndroidTest(Lexpo/modules/updates/UpdatesPackage;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lexpo/modules/updates/UpdatesPackage$createApplicationLifecycleListeners$handler$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lexpo/modules/updates/UpdatesController;->initialize(Landroid/content/Context;)V

    .line 104
    invoke-static {}, Lexpo/modules/updates/UpdatesController;->getInstance()Lexpo/modules/updates/IUpdatesController;

    move-result-object p1

    invoke-interface {p1}, Lexpo/modules/updates/IUpdatesController;->getLaunchAssetFile()Ljava/lang/String;

    :cond_0
    return-void
.end method
