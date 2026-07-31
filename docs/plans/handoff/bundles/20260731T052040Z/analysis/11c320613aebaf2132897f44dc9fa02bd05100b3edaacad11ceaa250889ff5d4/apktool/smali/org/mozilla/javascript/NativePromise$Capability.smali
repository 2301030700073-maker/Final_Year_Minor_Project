.class Lorg/mozilla/javascript/NativePromise$Capability;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativePromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Capability"
.end annotation


# instance fields
.field promise:Ljava/lang/Object;

.field private rawReject:Ljava/lang/Object;

.field private rawResolve:Ljava/lang/Object;

.field reject:Lorg/mozilla/javascript/Callable;

.field resolve:Lorg/mozilla/javascript/Callable;


# direct methods
.method public static synthetic $r8$lambda$ToE33qVV-AywOXMJiRh9UT2YIEM(Lorg/mozilla/javascript/NativePromise$Capability;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/NativePromise$Capability;->lambda$new$0(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/mozilla/javascript/NativePromise$Capability;->rawResolve:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object v0, p0, Lorg/mozilla/javascript/NativePromise$Capability;->rawReject:Ljava/lang/Object;

    .line 9
    .line 10
    instance-of v0, p3, Lorg/mozilla/javascript/Constructable;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    .line 16
    .line 17
    new-instance v2, Lorg/mozilla/javascript/LambdaAccessorSlot$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v2, p0, v3}, Lorg/mozilla/javascript/LambdaAccessorSlot$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v0, p2, v4, v2}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Callable;)V

    .line 25
    .line 26
    .line 27
    check-cast p3, Lorg/mozilla/javascript/Constructable;

    .line 28
    .line 29
    new-array v2, v3, [Ljava/lang/Object;

    .line 30
    .line 31
    aput-object v0, v2, v1

    .line 32
    .line 33
    invoke-interface {p3, p1, p2, v2}, Lorg/mozilla/javascript/Constructable;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lorg/mozilla/javascript/NativePromise$Capability;->promise:Ljava/lang/Object;

    .line 38
    .line 39
    iget-object p1, p0, Lorg/mozilla/javascript/NativePromise$Capability;->rawResolve:Ljava/lang/Object;

    .line 40
    .line 41
    instance-of p2, p1, Lorg/mozilla/javascript/Callable;

    .line 42
    .line 43
    const-string p3, "msg.function.expected"

    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    check-cast p1, Lorg/mozilla/javascript/Callable;

    .line 48
    .line 49
    iput-object p1, p0, Lorg/mozilla/javascript/NativePromise$Capability;->resolve:Lorg/mozilla/javascript/Callable;

    .line 50
    .line 51
    iget-object p1, p0, Lorg/mozilla/javascript/NativePromise$Capability;->rawReject:Ljava/lang/Object;

    .line 52
    .line 53
    instance-of p2, p1, Lorg/mozilla/javascript/Callable;

    .line 54
    .line 55
    if-eqz p2, :cond_0

    .line 56
    .line 57
    check-cast p1, Lorg/mozilla/javascript/Callable;

    .line 58
    .line 59
    iput-object p1, p0, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    .line 63
    .line 64
    invoke-static {p3, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    throw p0

    .line 69
    :cond_1
    new-array p0, v1, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-static {p3, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    throw p0

    .line 76
    :cond_2
    const-string p0, "msg.constructor.expected"

    .line 77
    .line 78
    new-array p1, v1, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    throw p0
.end method

.method private executor([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise$Capability;->rawResolve:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise$Capability;->rawReject:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    array-length v0, p1

    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    aget-object v0, p1, v1

    .line 22
    .line 23
    iput-object v0, p0, Lorg/mozilla/javascript/NativePromise$Capability;->rawResolve:Ljava/lang/Object;

    .line 24
    .line 25
    :cond_0
    array-length v0, p1

    .line 26
    const/4 v1, 0x1

    .line 27
    if-le v0, v1, :cond_1

    .line 28
    .line 29
    aget-object p1, p1, v1

    .line 30
    .line 31
    iput-object p1, p0, Lorg/mozilla/javascript/NativePromise$Capability;->rawReject:Ljava/lang/Object;

    .line 32
    .line 33
    :cond_1
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_2
    const-string p0, "msg.promise.capability.state"

    .line 37
    .line 38
    new-array p1, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    throw p0
.end method

.method private synthetic lambda$new$0(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p4}, Lorg/mozilla/javascript/NativePromise$Capability;->executor([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
