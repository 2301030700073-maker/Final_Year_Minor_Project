.class public Lorg/mozilla/javascript/engine/RhinoScriptEngine;
.super Ljavax/script/AbstractScriptEngine;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljavax/script/Compilable;
.implements Ljavax/script/Invocable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/engine/RhinoScriptEngine$CtxFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_DEBUG:Z = true

.field private static final DEFAULT_FILENAME:Ljava/lang/String; = "eval"

.field static final DEFAULT_LANGUAGE_VERSION:I = 0xc8

.field public static final INTERPRETED_MODE:Ljava/lang/String; = "org.mozilla.javascript.interpreted_mode"

.field public static final OPTIMIZATION_LEVEL:Ljava/lang/String; = "org.mozilla.javascript.optimization_level"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ctxFactory:Lorg/mozilla/javascript/engine/RhinoScriptEngine$CtxFactory;


# instance fields
.field private final builtins:Lorg/mozilla/javascript/engine/Builtins;

.field private final factory:Lorg/mozilla/javascript/engine/RhinoScriptEngineFactory;

.field private topLevelScope:Lorg/mozilla/javascript/ScriptableObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/mozilla/javascript/engine/RhinoScriptEngine$CtxFactory;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/engine/RhinoScriptEngine$CtxFactory;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->ctxFactory:Lorg/mozilla/javascript/engine/RhinoScriptEngine$CtxFactory;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/engine/RhinoScriptEngineFactory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/script/AbstractScriptEngine;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->topLevelScope:Lorg/mozilla/javascript/ScriptableObject;

    .line 6
    .line 7
    iput-object p1, p0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->factory:Lorg/mozilla/javascript/engine/RhinoScriptEngineFactory;

    .line 8
    .line 9
    new-instance p1, Lorg/mozilla/javascript/engine/Builtins;

    .line 10
    .line 11
    invoke-direct {p1}, Lorg/mozilla/javascript/engine/Builtins;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->builtins:Lorg/mozilla/javascript/engine/Builtins;

    .line 15
    .line 16
    return-void
.end method

.method private configureContext(Lorg/mozilla/javascript/Context;)V
    .locals 1

    .line 1
    const-string v0, "javax.script.language_version"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->parseInteger(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->setLanguageVersion(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const-string v0, "org.mozilla.javascript.optimization_level"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-static {v0}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->parseInteger(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const-string v0, "org.mozilla.javascript.interpreted_mode"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    invoke-static {p0}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->parseBoolean(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Context;->setInterpretedMode(Z)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method private getFilename()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "javax.script.filename"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of v0, p0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, "eval"

    .line 15
    .line 16
    return-object p0
.end method

.method private initScope(Lorg/mozilla/javascript/Context;Ljavax/script/ScriptContext;)Lorg/mozilla/javascript/Scriptable;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->configureContext(Lorg/mozilla/javascript/Context;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->topLevelScope:Lorg/mozilla/javascript/ScriptableObject;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->initStandardObjects()Lorg/mozilla/javascript/ScriptableObject;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->topLevelScope:Lorg/mozilla/javascript/ScriptableObject;

    .line 13
    .line 14
    sget-object v1, Lorg/mozilla/javascript/engine/Builtins;->BUILTIN_KEY:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v2, p0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->builtins:Lorg/mozilla/javascript/engine/Builtins;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->builtins:Lorg/mozilla/javascript/engine/Builtins;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->topLevelScope:Lorg/mozilla/javascript/ScriptableObject;

    .line 24
    .line 25
    invoke-virtual {v0, p1, v1, p2}, Lorg/mozilla/javascript/engine/Builtins;->register(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;Ljavax/script/ScriptContext;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    new-instance p1, Lorg/mozilla/javascript/engine/BindingsObject;

    .line 29
    .line 30
    const/16 v0, 0x64

    .line 31
    .line 32
    invoke-interface {p2, v0}, Ljavax/script/ScriptContext;->getBindings(I)Ljavax/script/Bindings;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p1, v0}, Lorg/mozilla/javascript/engine/BindingsObject;-><init>(Ljavax/script/Bindings;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-interface {p1, v0}, Lorg/mozilla/javascript/Scriptable;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->topLevelScope:Lorg/mozilla/javascript/ScriptableObject;

    .line 44
    .line 45
    invoke-interface {p1, v1}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 46
    .line 47
    .line 48
    const/16 v1, 0xc8

    .line 49
    .line 50
    invoke-interface {p2, v1}, Ljavax/script/ScriptContext;->getBindings(I)Ljavax/script/Bindings;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    new-instance v2, Lorg/mozilla/javascript/engine/BindingsObject;

    .line 57
    .line 58
    invoke-interface {p2, v1}, Ljavax/script/ScriptContext;->getBindings(I)Ljavax/script/Bindings;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-direct {v2, p2}, Lorg/mozilla/javascript/engine/BindingsObject;-><init>(Ljavax/script/Bindings;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v2, v0}, Lorg/mozilla/javascript/Scriptable;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->topLevelScope:Lorg/mozilla/javascript/ScriptableObject;

    .line 69
    .line 70
    invoke-interface {v2, p0}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v2}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-object p1
.end method

.method private static methodsMissing(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_2

    .line 9
    .line 10
    aget-object v3, p1, v2

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const-class v5, Ljava/lang/Object;

    .line 17
    .line 18
    if-ne v4, v5, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {p0, v3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    instance-of v3, v3, Lorg/mozilla/javascript/Callable;

    .line 30
    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return v1
.end method

.method private static parseBoolean(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_1
    new-instance p0, Ljavax/script/ScriptException;

    .line 24
    .line 25
    const-string v0, "Value must be a string or boolean"

    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method private static parseInteger(Ljava/lang/Object;)I
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    move-object v0, p0

    .line 6
    check-cast v0, Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return p0

    .line 13
    :catch_0
    new-instance v0, Ljavax/script/ScriptException;

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v1, "Invalid number "

    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    check-cast p0, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_1
    new-instance p0, Ljavax/script/ScriptException;

    .line 41
    .line 42
    const-string v0, "Value must be a string or number"

    .line 43
    .line 44
    invoke-direct {p0, v0}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method


# virtual methods
.method public compile(Ljava/io/Reader;)Ljavax/script/CompiledScript;
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->ctxFactory:Lorg/mozilla/javascript/engine/RhinoScriptEngine$CtxFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mozilla/javascript/ContextFactory;->enterContext()Lorg/mozilla/javascript/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->configureContext(Lorg/mozilla/javascript/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->getFilename()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/mozilla/javascript/Context;->compileReader(Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v1, Lorg/mozilla/javascript/engine/RhinoCompiledScript;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1}, Lorg/mozilla/javascript/engine/RhinoCompiledScript;-><init>(Lorg/mozilla/javascript/engine/RhinoScriptEngine;Lorg/mozilla/javascript/Script;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_2
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->close()V
    :try_end_2
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    :try_start_3
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_1
    move-exception p1

    .line 37
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    throw p0
    :try_end_4
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    new-instance p1, Ljavax/script/ScriptException;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Ljavax/script/ScriptException;-><init>(Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :catch_1
    move-exception p0

    .line 49
    new-instance p1, Ljavax/script/ScriptException;

    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->getMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->sourceName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->columnNumber()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-direct {p1, v0, v1, v2, p0}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    throw p1
.end method

.method public compile(Ljava/lang/String;)Ljavax/script/CompiledScript;
    .locals 4

    .line 71
    :try_start_0
    sget-object v0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->ctxFactory:Lorg/mozilla/javascript/engine/RhinoScriptEngine$CtxFactory;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ContextFactory;->enterContext()Lorg/mozilla/javascript/Context;

    move-result-object v0
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :try_start_1
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->configureContext(Lorg/mozilla/javascript/Context;)V

    .line 73
    invoke-direct {p0}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->getFilename()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object p1

    .line 74
    new-instance v1, Lorg/mozilla/javascript/engine/RhinoCompiledScript;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/javascript/engine/RhinoCompiledScript;-><init>(Lorg/mozilla/javascript/engine/RhinoScriptEngine;Lorg/mozilla/javascript/Script;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->close()V
    :try_end_2
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    .line 76
    :try_start_3
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
    :try_end_4
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 77
    new-instance p1, Ljavax/script/ScriptException;

    .line 78
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->sourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result v2

    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->columnNumber()I

    move-result p0

    invoke-direct {p1, v0, v1, v2, p0}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw p1
.end method

.method public createBindings()Ljavax/script/Bindings;
    .locals 0

    .line 1
    new-instance p0, Ljavax/script/SimpleBindings;

    .line 2
    .line 3
    invoke-direct {p0}, Ljavax/script/SimpleBindings;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public eval(Ljava/io/Reader;Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->ctxFactory:Lorg/mozilla/javascript/engine/RhinoScriptEngine$CtxFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mozilla/javascript/ContextFactory;->enterContext()Lorg/mozilla/javascript/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->initScope(Lorg/mozilla/javascript/Context;Ljavax/script/ScriptContext;)Lorg/mozilla/javascript/Scriptable;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {p0}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->getFilename()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v3, p1

    .line 18
    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/Context;->evaluateReader(Lorg/mozilla/javascript/Scriptable;Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-class p1, Ljava/lang/Object;

    .line 23
    .line 24
    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->close()V
    :try_end_2
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    move-object p0, v0

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    :try_start_3
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_1
    move-exception v0

    .line 41
    move-object p1, v0

    .line 42
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    throw p0
    :try_end_4
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    move-object p0, v0

    .line 48
    new-instance p1, Ljavax/script/ScriptException;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Ljavax/script/ScriptException;-><init>(Ljava/lang/Exception;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :catch_1
    move-exception v0

    .line 55
    move-object p0, v0

    .line 56
    new-instance p1, Ljavax/script/ScriptException;

    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->sourceName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->columnNumber()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    invoke-direct {p1, p2, v0, v1, p0}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method

.method public eval(Ljava/lang/String;Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .locals 7

    .line 78
    :try_start_0
    sget-object v0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->ctxFactory:Lorg/mozilla/javascript/engine/RhinoScriptEngine$CtxFactory;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ContextFactory;->enterContext()Lorg/mozilla/javascript/Context;

    move-result-object v1
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->initScope(Lorg/mozilla/javascript/Context;Ljavax/script/ScriptContext;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 80
    invoke-direct {p0}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->getFilename()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 81
    const-class p1, Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :try_start_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->close()V
    :try_end_2
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    if-eqz v1, :cond_0

    .line 83
    :try_start_3
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
    :try_end_4
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 84
    new-instance p1, Ljavax/script/ScriptException;

    .line 85
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->sourceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result v1

    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->columnNumber()I

    move-result p0

    invoke-direct {p1, p2, v0, v1, p0}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw p1
.end method

.method public eval(Lorg/mozilla/javascript/Script;Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .locals 2

    .line 86
    :try_start_0
    sget-object v0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->ctxFactory:Lorg/mozilla/javascript/engine/RhinoScriptEngine$CtxFactory;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ContextFactory;->enterContext()Lorg/mozilla/javascript/Context;

    move-result-object v0
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    invoke-direct {p0, v0, p2}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->initScope(Lorg/mozilla/javascript/Context;Ljavax/script/ScriptContext;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 88
    invoke-interface {p1, v0, p0}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    .line 89
    const-class p1, Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 90
    :try_start_2
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->close()V
    :try_end_2
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 91
    :try_start_3
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
    :try_end_4
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 92
    new-instance p1, Ljavax/script/ScriptException;

    .line 93
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->sourceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result v1

    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->columnNumber()I

    move-result p0

    invoke-direct {p1, p2, v0, v1, p0}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw p1
.end method

.method public getFactory()Ljavax/script/ScriptEngineFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->factory:Lorg/mozilla/javascript/engine/RhinoScriptEngineFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 86
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    :try_start_0
    sget-object v1, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->ctxFactory:Lorg/mozilla/javascript/engine/RhinoScriptEngine$CtxFactory;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ContextFactory;->enterContext()Lorg/mozilla/javascript/Context;

    move-result-object v1
    :try_end_0
    .catch Ljavax/script/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :try_start_1
    iget-object v2, p0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->context:Ljavax/script/ScriptContext;

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->initScope(Lorg/mozilla/javascript/Context;Ljavax/script/ScriptContext;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 89
    invoke-static {v2, p1}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->methodsMissing(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 90
    :try_start_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->close()V

    :cond_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->close()V
    :try_end_2
    .catch Ljavax/script/ScriptException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance p1, Lorg/mozilla/javascript/engine/RhinoInvocationHandler;

    invoke-direct {p1, p0, v0}, Lorg/mozilla/javascript/engine/RhinoInvocationHandler;-><init>(Lorg/mozilla/javascript/engine/RhinoScriptEngine;Ljava/lang/Object;)V

    .line 92
    invoke-static {v1, v2, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    .line 93
    :try_start_3
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0
    :try_end_4
    .catch Ljavax/script/ScriptException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v0

    .line 94
    :cond_4
    const-string p0, "Not an interface"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    return-object v0
.end method

.method public getInterface(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_4

    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    :try_start_0
    sget-object v1, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->ctxFactory:Lorg/mozilla/javascript/engine/RhinoScriptEngine$CtxFactory;

    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/mozilla/javascript/ContextFactory;->enterContext()Lorg/mozilla/javascript/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1
    :try_end_0
    .catch Ljavax/script/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    iget-object v2, p0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->context:Ljavax/script/ScriptContext;

    .line 17
    .line 18
    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->initScope(Lorg/mozilla/javascript/Context;Ljavax/script/ScriptContext;)Lorg/mozilla/javascript/Scriptable;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {p1, v2}, Lorg/mozilla/javascript/Context;->toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2, p2}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->methodsMissing(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Z

    .line 27
    .line 28
    .line 29
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    :try_start_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->close()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-object v0

    .line 38
    :cond_1
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->close()V
    :try_end_2
    .catch Ljavax/script/ScriptException; {:try_start_2 .. :try_end_2} :catch_0

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x1

    .line 52
    new-array v1, v1, [Ljava/lang/Class;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    aput-object p2, v1, v2

    .line 56
    .line 57
    new-instance p2, Lorg/mozilla/javascript/engine/RhinoInvocationHandler;

    .line 58
    .line 59
    invoke-direct {p2, p0, p1}, Lorg/mozilla/javascript/engine/RhinoInvocationHandler;-><init>(Lorg/mozilla/javascript/engine/RhinoScriptEngine;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1, p2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    :try_start_3
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_1
    move-exception p1

    .line 75
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_0
    throw p0
    :try_end_4
    .catch Ljavax/script/ScriptException; {:try_start_4 .. :try_end_4} :catch_0

    .line 79
    :catch_0
    return-object v0

    .line 80
    :cond_4
    const-string p0, "Not an interface"

    .line 81
    .line 82
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-object v0
.end method

.method public varargs invokeFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->invokeMethodRaw(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public varargs invokeMethodRaw(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const-string v0, "\""

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->ctxFactory:Lorg/mozilla/javascript/engine/RhinoScriptEngine$CtxFactory;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/mozilla/javascript/ContextFactory;->enterContext()Lorg/mozilla/javascript/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    iget-object v2, p0, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->context:Ljavax/script/ScriptContext;

    .line 10
    .line 11
    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->initScope(Lorg/mozilla/javascript/Context;Ljavax/script/ScriptContext;)Lorg/mozilla/javascript/Scriptable;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    move-object p1, p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p1, p0}, Lorg/mozilla/javascript/Context;->toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    .line 28
    .line 29
    if-eq v2, v3, :cond_6

    .line 30
    .line 31
    instance-of v3, v2, Lorg/mozilla/javascript/Callable;

    .line 32
    .line 33
    if-eqz v3, :cond_5

    .line 34
    .line 35
    check-cast v2, Lorg/mozilla/javascript/Callable;

    .line 36
    .line 37
    if-eqz p4, :cond_1

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    :goto_1
    array-length v0, p4

    .line 41
    if-ge p2, v0, :cond_1

    .line 42
    .line 43
    aget-object v0, p4, p2

    .line 44
    .line 45
    invoke-static {v0, p0}, Lorg/mozilla/javascript/Context;->javaToJS(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    aput-object v0, p4, p2

    .line 50
    .line 51
    add-int/lit8 p2, p2, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    invoke-interface {v2, v1, p0, p1, p4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 61
    .line 62
    if-ne p3, p1, :cond_3

    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    return-object p0

    .line 69
    :cond_3
    invoke-static {p0, p3}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->close()V
    :try_end_2
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    .line 77
    .line 78
    :cond_4
    return-object p0

    .line 79
    :cond_5
    :try_start_3
    new-instance p0, Ljavax/script/ScriptException;

    .line 80
    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p2, "\" is not a function"

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {p0, p1}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_6
    new-instance p0, Ljava/lang/NoSuchMethodException;

    .line 103
    .line 104
    invoke-direct {p0, p2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    :goto_3
    if-eqz v1, :cond_7

    .line 109
    .line 110
    :try_start_4
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :catchall_1
    move-exception p1

    .line 115
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    :cond_7
    :goto_4
    throw p0
    :try_end_5
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_5 .. :try_end_5} :catch_0

    .line 119
    :catch_0
    move-exception p0

    .line 120
    new-instance p1, Ljavax/script/ScriptException;

    .line 121
    .line 122
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->getMessage()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->sourceName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    .line 131
    .line 132
    .line 133
    move-result p4

    .line 134
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->columnNumber()I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    invoke-direct {p1, p2, p3, p4, p0}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 139
    .line 140
    .line 141
    throw p1
.end method
