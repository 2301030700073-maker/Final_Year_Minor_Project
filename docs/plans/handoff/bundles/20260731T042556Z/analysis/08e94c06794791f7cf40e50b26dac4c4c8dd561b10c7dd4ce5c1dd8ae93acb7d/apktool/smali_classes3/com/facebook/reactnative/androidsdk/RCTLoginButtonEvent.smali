.class public Lcom/facebook/reactnative/androidsdk/RCTLoginButtonEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "RCTLoginButtonEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/reactnative/androidsdk/RCTLoginButtonEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topChange"


# instance fields
.field private final mEvent:Lcom/facebook/react/bridge/WritableMap;


# direct methods
.method public constructor <init>(IILcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    .line 14
    iput-object p3, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButtonEvent;->mEvent:Lcom/facebook/react/bridge/WritableMap;

    return-void
.end method


# virtual methods
.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButtonEvent;->mEvent:Lcom/facebook/react/bridge/WritableMap;

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 20
    const-string v0, "topChange"

    return-object v0
.end method
