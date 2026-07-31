.class public interface abstract Lexpo/modules/updatesinterface/UpdatesInterface$Update;
.super Ljava/lang/Object;
.source "UpdatesInterface.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updatesinterface/UpdatesInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Update"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lexpo/modules/updatesinterface/UpdatesInterface$Update;",
        "",
        "manifest",
        "Lorg/json/JSONObject;",
        "getManifest",
        "()Lorg/json/JSONObject;",
        "launchAssetPath",
        "",
        "getLaunchAssetPath",
        "()Ljava/lang/String;",
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
.method public abstract getLaunchAssetPath()Ljava/lang/String;
.end method

.method public abstract getManifest()Lorg/json/JSONObject;
.end method
