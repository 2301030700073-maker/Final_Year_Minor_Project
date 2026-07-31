.class public Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedModuleScript"
.end annotation


# instance fields
.field private final moduleScript:Lorg/mozilla/javascript/commonjs/module/ModuleScript;

.field private final validator:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/commonjs/module/ModuleScript;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;->moduleScript:Lorg/mozilla/javascript/commonjs/module/ModuleScript;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;->validator:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getModule()Lorg/mozilla/javascript/commonjs/module/ModuleScript;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;->moduleScript:Lorg/mozilla/javascript/commonjs/module/ModuleScript;

    .line 2
    .line 3
    return-object p0
.end method

.method public getValidator()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;->validator:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method
