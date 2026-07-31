.class Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;
.super Ljava/lang/ref/SoftReference;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScriptReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference<",
        "Lorg/mozilla/javascript/Script;",
        ">;"
    }
.end annotation


# instance fields
.field private final base:Ljava/net/URI;

.field private final moduleId:Ljava/lang/String;

.field private final uri:Ljava/net/URI;

.field private final validator:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Script;Ljava/lang/String;Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Script;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lorg/mozilla/javascript/Script;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->moduleId:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->uri:Ljava/net/URI;

    .line 7
    .line 8
    iput-object p4, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->base:Ljava/net/URI;

    .line 9
    .line 10
    iput-object p5, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->validator:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getCachedModuleScript()Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/mozilla/javascript/Script;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance v1, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;

    .line 12
    .line 13
    new-instance v2, Lorg/mozilla/javascript/commonjs/module/ModuleScript;

    .line 14
    .line 15
    iget-object v3, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->uri:Ljava/net/URI;

    .line 16
    .line 17
    iget-object v4, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->base:Ljava/net/URI;

    .line 18
    .line 19
    invoke-direct {v2, v0, v3, v4}, Lorg/mozilla/javascript/commonjs/module/ModuleScript;-><init>(Lorg/mozilla/javascript/Script;Ljava/net/URI;Ljava/net/URI;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->validator:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {v1, v2, p0}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;-><init>(Lorg/mozilla/javascript/commonjs/module/ModuleScript;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object v1
.end method

.method public getModuleId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->moduleId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
