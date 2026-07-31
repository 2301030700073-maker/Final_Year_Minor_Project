.class public Lorg/mozilla/javascript/NativeJavaTopPackage;
.super Lorg/mozilla/javascript/NativeJavaPackage;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/mozilla/javascript/Function;
.implements Lorg/mozilla/javascript/IdFunctionCall;


# static fields
.field private static final FTAG:Ljava/lang/Object;

.field private static final Id_getClass:I = 0x1

.field private static final commonPackages:[[Ljava/lang/String;

.field private static final serialVersionUID:J = -0x1433fecca5b554afL


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [[Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "lang"

    .line 6
    .line 7
    const-string v2, "reflect"

    .line 8
    .line 9
    const-string v3, "java"

    .line 10
    .line 11
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object v1, v0, v2

    .line 17
    .line 18
    const-string v1, "io"

    .line 19
    .line 20
    filled-new-array {v3, v1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    aput-object v1, v0, v2

    .line 26
    .line 27
    const-string v1, "math"

    .line 28
    .line 29
    filled-new-array {v3, v1}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x2

    .line 34
    aput-object v1, v0, v2

    .line 35
    .line 36
    const-string v1, "net"

    .line 37
    .line 38
    filled-new-array {v3, v1}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x3

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    const-string/jumbo v1, "util"

    .line 46
    .line 47
    .line 48
    const-string/jumbo v2, "zip"

    .line 49
    .line 50
    .line 51
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x4

    .line 56
    aput-object v1, v0, v2

    .line 57
    .line 58
    const-string/jumbo v1, "text"

    .line 59
    .line 60
    .line 61
    const-string v2, "resources"

    .line 62
    .line 63
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const/4 v2, 0x5

    .line 68
    aput-object v1, v0, v2

    .line 69
    .line 70
    const-string v1, "applet"

    .line 71
    .line 72
    filled-new-array {v3, v1}, [Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/4 v2, 0x6

    .line 77
    aput-object v1, v0, v2

    .line 78
    .line 79
    const-string v1, "javax"

    .line 80
    .line 81
    const-string/jumbo v2, "swing"

    .line 82
    .line 83
    .line 84
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const/4 v2, 0x7

    .line 89
    aput-object v1, v0, v2

    .line 90
    .line 91
    sput-object v0, Lorg/mozilla/javascript/NativeJavaTopPackage;->commonPackages:[[Ljava/lang/String;

    .line 92
    .line 93
    const-string v0, "JavaTopPackage"

    .line 94
    .line 95
    sput-object v0, Lorg/mozilla/javascript/NativeJavaTopPackage;->FTAG:Ljava/lang/Object;

    .line 96
    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, ""

    .line 3
    .line 4
    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v1, Lorg/mozilla/javascript/NativeJavaTopPackage;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lorg/mozilla/javascript/NativeJavaTopPackage;-><init>(Ljava/lang/ClassLoader;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v1, p0}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    move v0, p0

    .line 22
    :goto_0
    sget-object v2, Lorg/mozilla/javascript/NativeJavaTopPackage;->commonPackages:[[Ljava/lang/String;

    .line 23
    .line 24
    array-length v2, v2

    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    move v2, p0

    .line 28
    move-object v3, v1

    .line 29
    :goto_1
    sget-object v4, Lorg/mozilla/javascript/NativeJavaTopPackage;->commonPackages:[[Ljava/lang/String;

    .line 30
    .line 31
    aget-object v4, v4, v0

    .line 32
    .line 33
    array-length v5, v4

    .line 34
    if-eq v2, v5, :cond_0

    .line 35
    .line 36
    aget-object v4, v4, v2

    .line 37
    .line 38
    invoke-virtual {v3, v4, p1}, Lorg/mozilla/javascript/NativeJavaPackage;->forcePackage(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeJavaPackage;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Lorg/mozilla/javascript/IdFunctionObject;

    .line 49
    .line 50
    sget-object v2, Lorg/mozilla/javascript/NativeJavaTopPackage;->FTAG:Ljava/lang/Object;

    .line 51
    .line 52
    const-string v4, "getClass"

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    const/4 v3, 0x1

    .line 56
    move-object v6, p1

    .line 57
    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lorg/mozilla/javascript/ScriptRuntime;->getTopPackageNames()[Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    array-length v2, p1

    .line 65
    new-array v2, v2, [Lorg/mozilla/javascript/NativeJavaPackage;

    .line 66
    .line 67
    move v3, p0

    .line 68
    :goto_2
    array-length v4, p1

    .line 69
    if-ge v3, v4, :cond_2

    .line 70
    .line 71
    aget-object v4, p1, v3

    .line 72
    .line 73
    invoke-virtual {v1, v4, v1}, Lorg/mozilla/javascript/NativeJavaPackage;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lorg/mozilla/javascript/NativeJavaPackage;

    .line 78
    .line 79
    aput-object v4, v2, v3

    .line 80
    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    move-object v3, v6

    .line 85
    check-cast v3, Lorg/mozilla/javascript/ScriptableObject;

    .line 86
    .line 87
    if-eqz p2, :cond_3

    .line 88
    .line 89
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {v0}, Lorg/mozilla/javascript/IdFunctionObject;->exportAsScopeProperty()V

    .line 93
    .line 94
    .line 95
    const-string p2, "Packages"

    .line 96
    .line 97
    const/4 v0, 0x2

    .line 98
    invoke-virtual {v3, p2, v1, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 99
    .line 100
    .line 101
    :goto_3
    array-length p2, p1

    .line 102
    if-ge p0, p2, :cond_4

    .line 103
    .line 104
    aget-object p2, p1, p0

    .line 105
    .line 106
    aget-object v1, v2, p0

    .line 107
    .line 108
    invoke-virtual {v3, p2, v1, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 p0, p0, 0x1

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    return-void
.end method

.method private js_getClass(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 2

    .line 1
    array-length p1, p3

    .line 2
    const/4 p2, 0x0

    .line 3
    if-lez p1, :cond_2

    .line 4
    .line 5
    aget-object p1, p3, p2

    .line 6
    .line 7
    instance-of p3, p1, Lorg/mozilla/javascript/Wrapper;

    .line 8
    .line 9
    if-eqz p3, :cond_2

    .line 10
    .line 11
    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    .line 12
    .line 13
    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    move p3, p2

    .line 26
    :goto_0
    const/16 v0, 0x2e

    .line 27
    .line 28
    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->indexOf(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, -0x1

    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    :goto_1
    invoke-interface {p0, p3, p0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    instance-of p3, p0, Lorg/mozilla/javascript/Scriptable;

    .line 49
    .line 50
    if-eqz p3, :cond_2

    .line 51
    .line 52
    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    .line 53
    .line 54
    if-ne v0, v1, :cond_1

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_1
    add-int/lit8 p3, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const-string p0, "msg.not.java.obj"

    .line 61
    .line 62
    new-array p1, p2, [Ljava/lang/Object;

    .line 63
    .line 64
    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    throw p0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p4}, Lorg/mozilla/javascript/NativeJavaTopPackage;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .line 1
    array-length p0, p3

    .line 2
    const/4 p1, 0x0

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    aget-object p0, p3, p1

    .line 7
    .line 8
    instance-of p3, p0, Lorg/mozilla/javascript/Wrapper;

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    check-cast p0, Lorg/mozilla/javascript/Wrapper;

    .line 13
    .line 14
    invoke-interface {p0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_0
    instance-of p3, p0, Ljava/lang/ClassLoader;

    .line 19
    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    check-cast p0, Ljava/lang/ClassLoader;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object p0, v0

    .line 26
    :goto_0
    if-nez p0, :cond_2

    .line 27
    .line 28
    const-string p0, "msg.not.classloader"

    .line 29
    .line 30
    new-array p1, p1, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_2
    new-instance p1, Lorg/mozilla/javascript/NativeJavaPackage;

    .line 37
    .line 38
    const/4 p3, 0x1

    .line 39
    const-string v0, ""

    .line 40
    .line 41
    invoke-direct {p1, p3, v0, p0}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    .line 45
    .line 46
    .line 47
    return-object p1
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p4, Lorg/mozilla/javascript/NativeJavaTopPackage;->FTAG:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p1, p4}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p4

    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    .line 10
    .line 11
    .line 12
    move-result p4

    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p4, v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0, p2, p3, p5}, Lorg/mozilla/javascript/NativeJavaTopPackage;->js_getClass(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->unknown()Ljava/lang/RuntimeException;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    throw p0
.end method
