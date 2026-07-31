.class public Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final base:Ljava/net/URI;

.field private final reader:Ljava/io/Reader;

.field private final securityDomain:Ljava/lang/Object;

.field private final uri:Ljava/net/URI;

.field private final validator:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ljava/lang/Object;Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->reader:Ljava/io/Reader;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->securityDomain:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->uri:Ljava/net/URI;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->base:Ljava/net/URI;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->validator:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getBase()Ljava/net/URI;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->base:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->reader:Ljava/io/Reader;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSecurityDomain()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->securityDomain:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUri()Ljava/net/URI;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->uri:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method

.method public getValidator()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->validator:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method
