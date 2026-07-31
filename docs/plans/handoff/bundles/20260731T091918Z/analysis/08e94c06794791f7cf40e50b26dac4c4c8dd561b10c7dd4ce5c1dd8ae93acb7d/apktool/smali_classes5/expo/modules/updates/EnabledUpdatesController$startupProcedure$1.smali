.class public final Lexpo/modules/updates/EnabledUpdatesController$startupProcedure$1;
.super Ljava/lang/Object;
.source "EnabledUpdatesController.kt"

# interfaces
.implements Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/EnabledUpdatesController;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "expo/modules/updates/EnabledUpdatesController$startupProcedure$1",
        "Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;",
        "onFinished",
        "",
        "onRequestRelaunch",
        "shouldRunReaper",
        "",
        "callback",
        "Lexpo/modules/updates/launcher/Launcher$LauncherCallback;",
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
.field final synthetic this$0:Lexpo/modules/updates/EnabledUpdatesController;


# direct methods
.method constructor <init>(Lexpo/modules/updates/EnabledUpdatesController;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/updates/EnabledUpdatesController$startupProcedure$1;->this$0:Lexpo/modules/updates/EnabledUpdatesController;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 1

    .line 103
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController$startupProcedure$1;->this$0:Lexpo/modules/updates/EnabledUpdatesController;

    invoke-static {v0}, Lexpo/modules/updates/EnabledUpdatesController;->access$onStartupProcedureFinished(Lexpo/modules/updates/EnabledUpdatesController;)V

    return-void
.end method

.method public onRequestRelaunch(ZLexpo/modules/updates/launcher/Launcher$LauncherCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lexpo/modules/updates/EnabledUpdatesController$startupProcedure$1;->this$0:Lexpo/modules/updates/EnabledUpdatesController;

    invoke-static {v0, p1, p2}, Lexpo/modules/updates/EnabledUpdatesController;->access$relaunchReactApplication(Lexpo/modules/updates/EnabledUpdatesController;ZLexpo/modules/updates/launcher/Launcher$LauncherCallback;)V

    return-void
.end method
