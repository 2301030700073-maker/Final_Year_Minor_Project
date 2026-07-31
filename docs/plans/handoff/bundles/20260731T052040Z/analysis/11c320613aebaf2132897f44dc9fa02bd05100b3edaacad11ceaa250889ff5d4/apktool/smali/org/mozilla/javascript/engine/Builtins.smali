.class public Lorg/mozilla/javascript/engine/Builtins;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field static final BUILTIN_KEY:Ljava/lang/Object;


# instance fields
.field private stdout:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/mozilla/javascript/engine/Builtins;->BUILTIN_KEY:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static getSelf(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/engine/Builtins;
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/javascript/engine/Builtins;->BUILTIN_KEY:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getTopScopeValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/mozilla/javascript/engine/Builtins;

    .line 8
    .line 9
    return-object p0
.end method

.method public static print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/mozilla/javascript/engine/Builtins;->getSelf(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/engine/Builtins;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length p1, p2

    .line 6
    const/4 p3, 0x0

    .line 7
    :goto_0
    if-ge p3, p1, :cond_0

    .line 8
    .line 9
    aget-object v0, p2, p3

    .line 10
    .line 11
    iget-object v1, p0, Lorg/mozilla/javascript/engine/Builtins;->stdout:Ljava/io/Writer;

    .line 12
    .line 13
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 p3, p3, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/engine/Builtins;->stdout:Ljava/io/Writer;

    .line 24
    .line 25
    const/16 p2, 0xa

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lorg/mozilla/javascript/engine/Builtins;->stdout:Ljava/io/Writer;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public register(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;Ljavax/script/ScriptContext;)V
    .locals 1

    .line 1
    invoke-interface {p3}, Ljavax/script/ScriptContext;->getWriter()Ljava/io/Writer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/io/OutputStreamWriter;

    .line 8
    .line 9
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 10
    .line 11
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    invoke-direct {p1, p3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/mozilla/javascript/engine/Builtins;->stdout:Ljava/io/Writer;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p3}, Ljavax/script/ScriptContext;->getWriter()Ljava/io/Writer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lorg/mozilla/javascript/engine/Builtins;->stdout:Ljava/io/Writer;

    .line 24
    .line 25
    :goto_0
    const-string p0, "print"

    .line 26
    .line 27
    filled-new-array {p0}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-class p1, Lorg/mozilla/javascript/engine/Builtins;

    .line 32
    .line 33
    const/4 p3, 0x6

    .line 34
    invoke-virtual {p2, p0, p1, p3}, Lorg/mozilla/javascript/ScriptableObject;->defineFunctionProperties([Ljava/lang/String;Ljava/lang/Class;I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
