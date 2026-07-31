.class public Lorg/mozilla/javascript/commonjs/module/ModuleScript;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final base:Ljava/net/URI;

.field private final script:Lorg/mozilla/javascript/Script;

.field private final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Script;Ljava/net/URI;Ljava/net/URI;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->script:Lorg/mozilla/javascript/Script;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->uri:Ljava/net/URI;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->base:Ljava/net/URI;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getBase()Ljava/net/URI;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->base:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method

.method public getScript()Lorg/mozilla/javascript/Script;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->script:Lorg/mozilla/javascript/Script;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUri()Ljava/net/URI;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->uri:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method

.method public isSandboxed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->base:Ljava/net/URI;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->uri:Ljava/net/URI;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/net/URI;->relativize(Ljava/net/URI;)Ljava/net/URI;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method
