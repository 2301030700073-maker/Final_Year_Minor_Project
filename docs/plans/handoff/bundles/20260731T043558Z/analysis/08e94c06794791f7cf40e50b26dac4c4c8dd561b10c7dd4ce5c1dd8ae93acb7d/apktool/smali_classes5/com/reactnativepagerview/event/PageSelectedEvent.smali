.class public final Lcom/reactnativepagerview/event/PageSelectedEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "PageSelectedEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactnativepagerview/event/PageSelectedEvent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/reactnativepagerview/event/PageSelectedEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/reactnativepagerview/event/PageSelectedEvent;",
        "Lcom/facebook/react/uimanager/events/Event;",
        "viewTag",
        "",
        "mPosition",
        "<init>",
        "(II)V",
        "getEventName",
        "",
        "canCoalesce",
        "",
        "dispatch",
        "",
        "rctEventEmitter",
        "Lcom/facebook/react/uimanager/events/RCTEventEmitter;",
        "serializeEventData",
        "Lcom/facebook/react/bridge/WritableMap;",
        "Companion",
        "react-native-pager-view_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/reactnativepagerview/event/PageSelectedEvent$Companion;

.field public static final EVENT_NAME:Ljava/lang/String; = "topPageSelected"


# instance fields
.field private final mPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/reactnativepagerview/event/PageSelectedEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/reactnativepagerview/event/PageSelectedEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/reactnativepagerview/event/PageSelectedEvent;->Companion:Lcom/reactnativepagerview/event/PageSelectedEvent$Companion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    iput p2, p0, Lcom/reactnativepagerview/event/PageSelectedEvent;->mPosition:I

    return-void
.end method

.method private final serializeEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 29
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 30
    const-string v1, "position"

    iget v2, p0, Lcom/reactnativepagerview/event/PageSelectedEvent;->mPosition:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 31
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3

    const-string v0, "rctEventEmitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/reactnativepagerview/event/PageSelectedEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/reactnativepagerview/event/PageSelectedEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/reactnativepagerview/event/PageSelectedEvent;->serializeEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, "topPageSelected"

    return-object v0
.end method
