.class public abstract Lexpo/modules/updates/statemachine/UpdatesStateEvent;
.super Ljava/lang/Object;
.source "UpdatesStateEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/statemachine/UpdatesStateEvent$Check;,
        Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteUnavailable;,
        Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithRollback;,
        Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithUpdate;,
        Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckError;,
        Lexpo/modules/updates/statemachine/UpdatesStateEvent$Download;,
        Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadComplete;,
        Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithRollback;,
        Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithUpdate;,
        Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadError;,
        Lexpo/modules/updates/statemachine/UpdatesStateEvent$EndStartup;,
        Lexpo/modules/updates/statemachine/UpdatesStateEvent$Restart;,
        Lexpo/modules/updates/statemachine/UpdatesStateEvent$StartStartup;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\r\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014B\u0011\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u0082\u0001\r\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\u00a8\u0006\""
    }
    d2 = {
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent;",
        "",
        "type",
        "Lexpo/modules/updates/statemachine/UpdatesStateEventType;",
        "<init>",
        "(Lexpo/modules/updates/statemachine/UpdatesStateEventType;)V",
        "getType",
        "()Lexpo/modules/updates/statemachine/UpdatesStateEventType;",
        "StartStartup",
        "EndStartup",
        "Check",
        "CheckCompleteWithUpdate",
        "CheckCompleteWithRollback",
        "CheckCompleteUnavailable",
        "CheckError",
        "Download",
        "DownloadComplete",
        "DownloadCompleteWithUpdate",
        "DownloadCompleteWithRollback",
        "DownloadError",
        "Restart",
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent$Check;",
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteUnavailable;",
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithRollback;",
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithUpdate;",
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckError;",
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent$Download;",
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadComplete;",
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithRollback;",
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithUpdate;",
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadError;",
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent$EndStartup;",
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent$Restart;",
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent$StartStartup;",
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
.field private final type:Lexpo/modules/updates/statemachine/UpdatesStateEventType;


# direct methods
.method private constructor <init>(Lexpo/modules/updates/statemachine/UpdatesStateEventType;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/updates/statemachine/UpdatesStateEvent;->type:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    return-void
.end method

.method public synthetic constructor <init>(Lexpo/modules/updates/statemachine/UpdatesStateEventType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lexpo/modules/updates/statemachine/UpdatesStateEvent;-><init>(Lexpo/modules/updates/statemachine/UpdatesStateEventType;)V

    return-void
.end method


# virtual methods
.method public final getType()Lexpo/modules/updates/statemachine/UpdatesStateEventType;
    .locals 1

    .line 9
    iget-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateEvent;->type:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    return-object v0
.end method
