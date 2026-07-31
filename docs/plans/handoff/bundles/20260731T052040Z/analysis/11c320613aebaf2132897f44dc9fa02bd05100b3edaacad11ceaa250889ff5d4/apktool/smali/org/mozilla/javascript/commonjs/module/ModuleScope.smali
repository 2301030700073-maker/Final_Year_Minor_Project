.class public Lorg/mozilla/javascript/commonjs/module/ModuleScope;
.super Lorg/mozilla/javascript/TopLevel;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final base:Ljava/net/URI;

.field private final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/net/URI;Ljava/net/URI;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/TopLevel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScope;->uri:Ljava/net/URI;

    .line 5
    .line 6
    iput-object p3, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScope;->base:Ljava/net/URI;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/TopLevel;->cacheBuiltins(Lorg/mozilla/javascript/Scriptable;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public getBase()Ljava/net/URI;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScope;->base:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUri()Ljava/net/URI;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScope;->uri:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method
