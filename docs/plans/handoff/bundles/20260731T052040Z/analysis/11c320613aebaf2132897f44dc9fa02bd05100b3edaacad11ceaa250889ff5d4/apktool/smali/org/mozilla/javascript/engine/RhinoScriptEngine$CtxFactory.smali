.class final Lorg/mozilla/javascript/engine/RhinoScriptEngine$CtxFactory;
.super Lorg/mozilla/javascript/ContextFactory;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/engine/RhinoScriptEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CtxFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/mozilla/javascript/ContextFactory;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/engine/RhinoScriptEngine$CtxFactory;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public hasFeature(Lorg/mozilla/javascript/Context;I)Z
    .locals 1

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ContextFactory;->hasFeature(Lorg/mozilla/javascript/Context;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public onContextCreated(Lorg/mozilla/javascript/Context;)V
    .locals 0

    .line 1
    const/16 p0, 0xc8

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Context;->setLanguageVersion(I)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Context;->setGeneratingDebug(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
