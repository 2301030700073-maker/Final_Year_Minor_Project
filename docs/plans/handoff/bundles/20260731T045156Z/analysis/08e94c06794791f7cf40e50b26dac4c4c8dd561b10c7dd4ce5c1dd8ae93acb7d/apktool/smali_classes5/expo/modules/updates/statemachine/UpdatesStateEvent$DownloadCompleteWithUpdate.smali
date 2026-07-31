.class public final Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithUpdate;
.super Lexpo/modules/updates/statemachine/UpdatesStateEvent;
.source "UpdatesStateEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/statemachine/UpdatesStateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadCompleteWithUpdate"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithUpdate;",
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent;",
        "manifest",
        "Lorg/json/JSONObject;",
        "<init>",
        "(Lorg/json/JSONObject;)V",
        "getManifest",
        "()Lorg/json/JSONObject;",
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
.field private final manifest:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "manifest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->DownloadComplete:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lexpo/modules/updates/statemachine/UpdatesStateEvent;-><init>(Lexpo/modules/updates/statemachine/UpdatesStateEventType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithUpdate;->manifest:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final getManifest()Lorg/json/JSONObject;
    .locals 1

    .line 24
    iget-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithUpdate;->manifest:Lorg/json/JSONObject;

    return-object v0
.end method
