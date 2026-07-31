.class Lorg/mozilla/javascript/NativePromise$Reaction;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativePromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reaction"
.end annotation


# instance fields
.field capability:Lorg/mozilla/javascript/NativePromise$Capability;

.field handler:Lorg/mozilla/javascript/Callable;

.field reaction:Lorg/mozilla/javascript/NativePromise$ReactionType;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/NativePromise$Capability;Lorg/mozilla/javascript/NativePromise$ReactionType;Lorg/mozilla/javascript/Callable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/mozilla/javascript/NativePromise$ReactionType;->FULFILL:Lorg/mozilla/javascript/NativePromise$ReactionType;

    .line 5
    .line 6
    iput-object p1, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    .line 7
    .line 8
    iput-object p2, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->reaction:Lorg/mozilla/javascript/NativePromise$ReactionType;

    .line 9
    .line 10
    iput-object p3, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->handler:Lorg/mozilla/javascript/Callable;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public invoke(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    iget-object v2, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->handler:Lorg/mozilla/javascript/Callable;

    .line 4
    .line 5
    if-nez v2, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->reaction:Lorg/mozilla/javascript/NativePromise$ReactionType;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    if-eq v2, v1, :cond_0

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    .line 20
    .line 21
    iget-object v2, v2, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    .line 22
    .line 23
    sget-object v3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    .line 24
    .line 25
    new-array v4, v1, [Ljava/lang/Object;

    .line 26
    .line 27
    aput-object p3, v4, v0

    .line 28
    .line 29
    invoke-interface {v2, p1, p2, v3, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception p3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    sget-object v3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    .line 36
    .line 37
    new-array v4, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object p3, v4, v0

    .line 40
    .line 41
    invoke-interface {v2, p1, p2, v3, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    .line 46
    .line 47
    iget-object v2, v2, Lorg/mozilla/javascript/NativePromise$Capability;->resolve:Lorg/mozilla/javascript/Callable;

    .line 48
    .line 49
    sget-object v3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    .line 50
    .line 51
    new-array v4, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object p3, v4, v0

    .line 54
    .line 55
    invoke-interface {v2, p1, p2, v3, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :goto_1
    iget-object p0, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    .line 60
    .line 61
    iget-object p0, p0, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    .line 62
    .line 63
    sget-object v2, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    .line 64
    .line 65
    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/NativePromise;->-$$Nest$smgetErrorObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/RhinoException;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    new-array v1, v1, [Ljava/lang/Object;

    .line 70
    .line 71
    aput-object p3, v1, v0

    .line 72
    .line 73
    invoke-interface {p0, p1, p2, v2, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    return-void
.end method
