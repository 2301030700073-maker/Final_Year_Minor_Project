.class public Lorg/mozilla/javascript/engine/RhinoCompiledScript;
.super Ljavax/script/CompiledScript;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private final engine:Lorg/mozilla/javascript/engine/RhinoScriptEngine;

.field private final script:Lorg/mozilla/javascript/Script;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/engine/RhinoScriptEngine;Lorg/mozilla/javascript/Script;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/script/CompiledScript;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/engine/RhinoCompiledScript;->engine:Lorg/mozilla/javascript/engine/RhinoScriptEngine;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mozilla/javascript/engine/RhinoCompiledScript;->script:Lorg/mozilla/javascript/Script;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public eval(Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/engine/RhinoCompiledScript;->engine:Lorg/mozilla/javascript/engine/RhinoScriptEngine;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/mozilla/javascript/engine/RhinoCompiledScript;->script:Lorg/mozilla/javascript/Script;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->eval(Lorg/mozilla/javascript/Script;Ljavax/script/ScriptContext;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getEngine()Ljavax/script/ScriptEngine;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/engine/RhinoCompiledScript;->engine:Lorg/mozilla/javascript/engine/RhinoScriptEngine;

    .line 2
    .line 3
    return-object p0
.end method
