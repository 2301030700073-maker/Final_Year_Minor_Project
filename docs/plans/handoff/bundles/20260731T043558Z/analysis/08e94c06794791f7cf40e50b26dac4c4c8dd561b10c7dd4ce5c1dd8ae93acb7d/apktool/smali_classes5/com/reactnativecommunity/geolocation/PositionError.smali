.class public Lcom/reactnativecommunity/geolocation/PositionError;
.super Ljava/lang/Object;
.source "PositionError.java"


# static fields
.field public static ACTIVITY_NULL:I = 0x4

.field public static PERMISSION_DENIED:I = 0x1

.field public static POSITION_UNAVAILABLE:I = 0x2

.field public static TIMEOUT:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildError(ILjava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 2

    .line 42
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 43
    const-string v1, "code"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    .line 46
    const-string p0, "message"

    invoke-interface {v0, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    const-string p0, "PERMISSION_DENIED"

    sget p1, Lcom/reactnativecommunity/geolocation/PositionError;->PERMISSION_DENIED:I

    invoke-interface {v0, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 53
    const-string p0, "POSITION_UNAVAILABLE"

    sget p1, Lcom/reactnativecommunity/geolocation/PositionError;->POSITION_UNAVAILABLE:I

    invoke-interface {v0, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 54
    const-string p0, "TIMEOUT"

    sget p1, Lcom/reactnativecommunity/geolocation/PositionError;->TIMEOUT:I

    invoke-interface {v0, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 55
    const-string p0, "ACTIVITY_NULL"

    sget p1, Lcom/reactnativecommunity/geolocation/PositionError;->ACTIVITY_NULL:I

    invoke-interface {v0, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
