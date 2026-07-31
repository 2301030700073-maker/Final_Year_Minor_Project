.class public Lorg/mozilla/javascript/BoundFunction;
.super Lorg/mozilla/javascript/BaseFunction;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final serialVersionUID:J = 0x1d6522b0e0a95d49L


# instance fields
.field private final boundArgs:[Ljava/lang/Object;

.field private final boundThis:Lorg/mozilla/javascript/Scriptable;

.field private final length:I

.field private final targetFunction:Lorg/mozilla/javascript/Callable;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/mozilla/javascript/BoundFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    .line 5
    .line 6
    iput-object p4, p0, Lorg/mozilla/javascript/BoundFunction;->boundThis:Lorg/mozilla/javascript/Scriptable;

    .line 7
    .line 8
    iput-object p5, p0, Lorg/mozilla/javascript/BoundFunction;->boundArgs:[Ljava/lang/Object;

    .line 9
    .line 10
    instance-of p4, p3, Lorg/mozilla/javascript/BaseFunction;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    check-cast p3, Lorg/mozilla/javascript/BaseFunction;

    .line 16
    .line 17
    invoke-virtual {p3}, Lorg/mozilla/javascript/BaseFunction;->getLength()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    array-length p4, p5

    .line 22
    sub-int/2addr p3, p4

    .line 23
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    iput p3, p0, Lorg/mozilla/javascript/BoundFunction;->length:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput v0, p0, Lorg/mozilla/javascript/BoundFunction;->length:I

    .line 31
    .line 32
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorThrower(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/BaseFunction;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    new-instance p4, Lorg/mozilla/javascript/NativeObject;

    .line 40
    .line 41
    invoke-direct {p4}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 42
    .line 43
    .line 44
    sget-object p5, Lorg/mozilla/javascript/TopLevel$Builtins;->Object:Lorg/mozilla/javascript/TopLevel$Builtins;

    .line 45
    .line 46
    invoke-static {p4, p2, p5}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    .line 47
    .line 48
    .line 49
    const-string p2, "get"

    .line 50
    .line 51
    invoke-virtual {p4, p2, p4, p3}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const-string p2, "set"

    .line 55
    .line 56
    invoke-virtual {p4, p2, p4, p3}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 60
    .line 61
    const-string p3, "enumerable"

    .line 62
    .line 63
    invoke-virtual {p4, p3, p4, p2}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const-string p3, "configurable"

    .line 67
    .line 68
    invoke-virtual {p4, p3, p4, p2}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p4}, Lorg/mozilla/javascript/ScriptableObject;->preventExtensions()Z

    .line 72
    .line 73
    .line 74
    const-string p2, "caller"

    .line 75
    .line 76
    invoke-virtual {p0, p1, p2, p4, v0}, Lorg/mozilla/javascript/IdScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)Z

    .line 77
    .line 78
    .line 79
    const-string p2, "arguments"

    .line 80
    .line 81
    invoke-virtual {p0, p1, p2, p4, v0}, Lorg/mozilla/javascript/IdScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)Z

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private static concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    add-int/2addr v0, v1

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    array-length p0, p0

    .line 12
    array-length v1, p1

    .line 13
    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static equalObjectGraphs(Lorg/mozilla/javascript/BoundFunction;Lorg/mozilla/javascript/BoundFunction;Lorg/mozilla/javascript/EqualObjectGraphs;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/BoundFunction;->boundThis:Lorg/mozilla/javascript/Scriptable;

    .line 2
    .line 3
    iget-object v1, p1, Lorg/mozilla/javascript/BoundFunction;->boundThis:Lorg/mozilla/javascript/Scriptable;

    .line 4
    .line 5
    invoke-virtual {p2, v0, v1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/mozilla/javascript/BoundFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    .line 12
    .line 13
    iget-object v1, p1, Lorg/mozilla/javascript/BoundFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    .line 14
    .line 15
    invoke-virtual {p2, v0, v1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lorg/mozilla/javascript/BoundFunction;->boundArgs:[Ljava/lang/Object;

    .line 22
    .line 23
    iget-object p1, p1, Lorg/mozilla/javascript/BoundFunction;->boundArgs:[Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {p2, p0, p1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p3, p0, Lorg/mozilla/javascript/BoundFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/BoundFunction;->getCallThis(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lorg/mozilla/javascript/BoundFunction;->boundArgs:[Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p0, p4}, Lorg/mozilla/javascript/BoundFunction;->concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p3, p1, p2, v0, p0}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/BoundFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    .line 2
    .line 3
    instance-of v1, v0, Lorg/mozilla/javascript/Constructable;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lorg/mozilla/javascript/Constructable;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/mozilla/javascript/BoundFunction;->boundArgs:[Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {p0, p3}, Lorg/mozilla/javascript/BoundFunction;->concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {v0, p1, p2, p0}, Lorg/mozilla/javascript/Constructable;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    new-array p0, p0, [Ljava/lang/Object;

    .line 22
    .line 23
    const-string p1, "msg.not.ctor"

    .line 24
    .line 25
    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    throw p0
.end method

.method public getBoundArgs()[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/BoundFunction;->boundArgs:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCallThis(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/BoundFunction;->boundThis:Lorg/mozilla/javascript/Scriptable;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    if-nez p0, :cond_1

    .line 16
    .line 17
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_1
    return-object p0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/BoundFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    .line 2
    .line 3
    instance-of v0, p0, Lorg/mozilla/javascript/BaseFunction;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lorg/mozilla/javascript/BaseFunction;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getFunctionName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "bound "

    .line 14
    .line 15
    invoke-static {v0, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string p0, ""

    .line 21
    .line 22
    return-object p0
.end method

.method public getLength()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/BoundFunction;->length:I

    .line 2
    .line 3
    return p0
.end method

.method public getTargetFunction()Lorg/mozilla/javascript/Callable;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/BoundFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    .line 2
    .line 3
    return-object p0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/BoundFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    .line 2
    .line 3
    instance-of v0, p0, Lorg/mozilla/javascript/Function;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lorg/mozilla/javascript/Function;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lorg/mozilla/javascript/Scriptable;->hasInstance(Lorg/mozilla/javascript/Scriptable;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    new-array p0, p0, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string p1, "msg.not.ctor"

    .line 18
    .line 19
    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    throw p0
.end method
