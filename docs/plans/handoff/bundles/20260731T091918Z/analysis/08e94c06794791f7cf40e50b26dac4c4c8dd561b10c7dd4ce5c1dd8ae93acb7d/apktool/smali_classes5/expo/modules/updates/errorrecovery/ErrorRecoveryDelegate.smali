.class public interface abstract Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;
.super Ljava/lang/Object;
.source "ErrorRecoveryDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001:\u0001\u0013J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0014\u0010\u0007\u001a\u00020\u00032\n\u0010\u0008\u001a\u00060\tj\u0002`\nH&J\u0008\u0010\u000b\u001a\u00020\u0003H&J\u0008\u0010\u000c\u001a\u00020\u0003H&J\u0008\u0010\r\u001a\u00020\u000eH&J\u0008\u0010\u000f\u001a\u00020\u0010H&J\u0008\u0010\u0011\u001a\u00020\u0012H&\u00a8\u0006\u0014"
    }
    d2 = {
        "Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;",
        "",
        "loadRemoteUpdate",
        "",
        "relaunch",
        "callback",
        "Lexpo/modules/updates/launcher/Launcher$LauncherCallback;",
        "throwException",
        "exception",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "markFailedLaunchForLaunchedUpdate",
        "markSuccessfulLaunchForLaunchedUpdate",
        "getRemoteLoadStatus",
        "Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;",
        "getCheckAutomaticallyConfiguration",
        "Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;",
        "getLaunchedUpdateSuccessfulLaunchCount",
        "",
        "RemoteLoadStatus",
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
.method public abstract getCheckAutomaticallyConfiguration()Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;
.end method

.method public abstract getLaunchedUpdateSuccessfulLaunchCount()I
.end method

.method public abstract getRemoteLoadStatus()Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;
.end method

.method public abstract loadRemoteUpdate()V
.end method

.method public abstract markFailedLaunchForLaunchedUpdate()V
.end method

.method public abstract markSuccessfulLaunchForLaunchedUpdate()V
.end method

.method public abstract relaunch(Lexpo/modules/updates/launcher/Launcher$LauncherCallback;)V
.end method

.method public abstract throwException(Ljava/lang/Exception;)V
.end method
