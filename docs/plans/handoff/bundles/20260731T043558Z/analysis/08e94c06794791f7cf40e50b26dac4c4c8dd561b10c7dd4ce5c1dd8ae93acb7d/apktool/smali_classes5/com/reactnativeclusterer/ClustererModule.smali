.class public Lcom/reactnativeclusterer/ClustererModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "ClustererModule.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "Clusterer"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method private static native initialize(JLjava/lang/String;)V
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 20
    const-string v0, "Clusterer"

    return-object v0
.end method

.method public install()Z
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 26
    :try_start_0
    const-string v0, "rnclusterer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/reactnativeclusterer/ClustererModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v1

    .line 31
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v1, v2, v0}, Lcom/reactnativeclusterer/ClustererModule;->initialize(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
