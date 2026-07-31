.class final Lorg/mozilla/javascript/NativeProxy$Revoker;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/mozilla/javascript/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Revoker"
.end annotation


# instance fields
.field private revocableProxy:Lorg/mozilla/javascript/NativeProxy;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/NativeProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/NativeProxy$Revoker;->revocableProxy:Lorg/mozilla/javascript/NativeProxy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/mozilla/javascript/NativeProxy$Revoker;->revocableProxy:Lorg/mozilla/javascript/NativeProxy;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lorg/mozilla/javascript/NativeProxy;->-$$Nest$fputhandlerObj(Lorg/mozilla/javascript/NativeProxy;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lorg/mozilla/javascript/NativeProxy$Revoker;->revocableProxy:Lorg/mozilla/javascript/NativeProxy;

    .line 9
    .line 10
    invoke-static {p1}, Lorg/mozilla/javascript/NativeProxy;->-$$Nest$fputtargetObj(Lorg/mozilla/javascript/NativeProxy;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lorg/mozilla/javascript/NativeProxy$Revoker;->revocableProxy:Lorg/mozilla/javascript/NativeProxy;

    .line 15
    .line 16
    :cond_0
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 17
    .line 18
    return-object p0
.end method
