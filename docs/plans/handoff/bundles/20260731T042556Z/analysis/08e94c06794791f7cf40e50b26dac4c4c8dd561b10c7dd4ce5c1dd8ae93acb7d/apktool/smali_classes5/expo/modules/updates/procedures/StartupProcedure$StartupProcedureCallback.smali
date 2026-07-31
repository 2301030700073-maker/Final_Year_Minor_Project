.class public interface abstract Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;
.super Ljava/lang/Object;
.source "StartupProcedure.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/procedures/StartupProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StartupProcedureCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;",
        "",
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


# virtual methods
.method public abstract onFinished()V
.end method

.method public abstract onRequestRelaunch(ZLexpo/modules/updates/launcher/Launcher$LauncherCallback;)V
.end method
