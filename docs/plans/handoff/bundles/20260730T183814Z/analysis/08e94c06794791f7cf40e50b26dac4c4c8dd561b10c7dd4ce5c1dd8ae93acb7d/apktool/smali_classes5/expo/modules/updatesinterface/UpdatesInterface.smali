.class public interface abstract Lexpo/modules/updatesinterface/UpdatesInterface;
.super Ljava/lang/Object;
.source "UpdatesInterface.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updatesinterface/UpdatesInterface$Update;,
        Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001:\u0002\u001b\u001cJ\u0008\u0010\t\u001a\u00020\nH&J4\u0010\u000b\u001a\u00020\n2\"\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\rj\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0001`\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H&J,\u0010\u0012\u001a\u00020\u00132\"\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\rj\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0001`\u000fH&R \u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u000eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lexpo/modules/updatesinterface/UpdatesInterface;",
        "",
        "updatesInterfaceCallbacks",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/updatesinterface/UpdatesInterfaceCallbacks;",
        "getUpdatesInterfaceCallbacks",
        "()Ljava/lang/ref/WeakReference;",
        "setUpdatesInterfaceCallbacks",
        "(Ljava/lang/ref/WeakReference;)V",
        "reset",
        "",
        "fetchUpdateWithConfiguration",
        "configuration",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "callback",
        "Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;",
        "isValidUpdatesConfiguration",
        "",
        "runtimeVersion",
        "getRuntimeVersion",
        "()Ljava/lang/String;",
        "updateUrl",
        "Landroid/net/Uri;",
        "getUpdateUrl",
        "()Landroid/net/Uri;",
        "UpdateCallback",
        "Update",
        "expo-updates-interface_release"
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
.method public abstract fetchUpdateWithConfiguration(Ljava/util/HashMap;Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getRuntimeVersion()Ljava/lang/String;
.end method

.method public abstract getUpdateUrl()Landroid/net/Uri;
.end method

.method public abstract getUpdatesInterfaceCallbacks()Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/updatesinterface/UpdatesInterfaceCallbacks;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isValidUpdatesConfiguration(Ljava/util/HashMap;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract setUpdatesInterfaceCallbacks(Ljava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/updatesinterface/UpdatesInterfaceCallbacks;",
            ">;)V"
        }
    .end annotation
.end method
