.class public final Lcom/shopify/reactnative/flash_list/BlankAreaEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "BlankAreaEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shopify/reactnative/flash_list/BlankAreaEvent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/shopify/reactnative/flash_list/BlankAreaEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0012B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0014J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/shopify/reactnative/flash_list/BlankAreaEvent;",
        "Lcom/facebook/react/uimanager/events/Event;",
        "surfaceId",
        "",
        "viewTag",
        "offsetStart",
        "",
        "offsetEnd",
        "<init>",
        "(IIDD)V",
        "getEventName",
        "",
        "getEventData",
        "Lcom/facebook/react/bridge/WritableMap;",
        "dispatch",
        "",
        "rctEventEmitter",
        "Lcom/facebook/react/uimanager/events/RCTEventEmitter;",
        "Companion",
        "shopify_flash-list_release"
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
.field public static final Companion:Lcom/shopify/reactnative/flash_list/BlankAreaEvent$Companion;

.field public static final EVENT_NAME:Ljava/lang/String; = "onBlankAreaEvent"


# instance fields
.field private final offsetEnd:D

.field private final offsetStart:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shopify/reactnative/flash_list/BlankAreaEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shopify/reactnative/flash_list/BlankAreaEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shopify/reactnative/flash_list/BlankAreaEvent;->Companion:Lcom/shopify/reactnative/flash_list/BlankAreaEvent$Companion;

    return-void
.end method

.method public constructor <init>(IIDD)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    .line 12
    iput-wide p3, p0, Lcom/shopify/reactnative/flash_list/BlankAreaEvent;->offsetStart:D

    .line 13
    iput-wide p5, p0, Lcom/shopify/reactnative/flash_list/BlankAreaEvent;->offsetEnd:D

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3

    const-string v0, "rctEventEmitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/BlankAreaEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/BlankAreaEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/shopify/reactnative/flash_list/BlankAreaEvent;->getEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 17
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 18
    const-string v1, "offsetStart"

    iget-wide v2, p0, Lcom/shopify/reactnative/flash_list/BlankAreaEvent;->offsetStart:D

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 19
    const-string v1, "offsetEnd"

    iget-wide v2, p0, Lcom/shopify/reactnative/flash_list/BlankAreaEvent;->offsetEnd:D

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 17
    const-string v1, "apply(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 15
    const-string v0, "onBlankAreaEvent"

    return-object v0
.end method
