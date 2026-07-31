.class public Lcom/nozbe/watermelondb/WMDatabaseBridge;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "WMDatabaseBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "WMDatabaseBridge"


# instance fields
.field private final connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/nozbe/watermelondb/Connection;",
            ">;"
        }
    .end annotation
.end field

.field reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public static synthetic $r8$lambda$-g7Dd0fFaq3lUeGA9HRU7y5rsv4(Lcom/nozbe/watermelondb/WMDatabaseBridge;ILcom/facebook/react/bridge/Promise;Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nozbe/watermelondb/WMDatabaseBridge;->lambda$withDriver$8(ILcom/facebook/react/bridge/Promise;Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge;->connections:Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method private connectDriver(ILcom/nozbe/watermelondb/WMDatabaseDriver;Lcom/facebook/react/bridge/Promise;)V
    .locals 3

    .line 197
    invoke-direct {p0, p1}, Lcom/nozbe/watermelondb/WMDatabaseBridge;->getQueue(I)Ljava/util/List;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge;->connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Lcom/nozbe/watermelondb/Connection$Connected;

    invoke-direct {v2, p2}, Lcom/nozbe/watermelondb/Connection$Connected;-><init>(Lcom/nozbe/watermelondb/WMDatabaseDriver;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    .line 201
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 203
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method private disconnectDriver(I)V
    .locals 2

    .line 207
    invoke-direct {p0, p1}, Lcom/nozbe/watermelondb/WMDatabaseBridge;->getQueue(I)Ljava/util/List;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge;->connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 212
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private find(ILjava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 86
    new-instance v0, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p3}, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "find "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p4, v0, p2}, Lcom/nozbe/watermelondb/WMDatabaseBridge;->withDriver(ILcom/facebook/react/bridge/Promise;Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;Ljava/lang/String;)V

    return-void
.end method

.method private getQueue(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge;->connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge;->connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nozbe/watermelondb/Connection;

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1}, Lcom/nozbe/watermelondb/Connection;->getQueue()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 162
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 165
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p1
.end method

.method static synthetic lambda$batch$5(Lcom/facebook/react/bridge/ReadableArray;Lcom/nozbe/watermelondb/WMDatabaseDriver;)Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p1, p0}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->batch(Lcom/facebook/react/bridge/ReadableArray;)V

    const/4 p0, 0x1

    .line 113
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$count$4(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/nozbe/watermelondb/WMDatabaseDriver;)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->count(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$find$0(Ljava/lang/String;Ljava/lang/String;Lcom/nozbe/watermelondb/WMDatabaseDriver;)Ljava/lang/Object;
    .locals 0

    .line 86
    invoke-virtual {p2, p0, p1}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getLocal$7(Ljava/lang/String;Lcom/nozbe/watermelondb/WMDatabaseDriver;)Ljava/lang/Object;
    .locals 0

    .line 127
    invoke-virtual {p1, p0}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->getLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$invalidate$9()V
    .locals 4

    .line 253
    :try_start_0
    const-string v0, "com.nozbe.watermelondb.jsi.WatermelonJSI"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 254
    const-string v1, "onCatalystInstanceDestroy"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 255
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic lambda$onCatalystInstanceDestroy$10()V
    .locals 4

    .line 272
    :try_start_0
    const-string v0, "com.nozbe.watermelondb.jsi.WatermelonJSI"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 273
    const-string v1, "onCatalystInstanceDestroy"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 274
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic lambda$query$1(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/nozbe/watermelondb/WMDatabaseDriver;)Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p0, p1, p2}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->cachedQuery(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$queryIds$2(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/nozbe/watermelondb/WMDatabaseDriver;)Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->queryIds(Ljava/lang/String;[Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$unsafeQueryRaw$3(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/nozbe/watermelondb/WMDatabaseDriver;)Ljava/lang/Object;
    .locals 0

    .line 101
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->unsafeQueryRaw(Ljava/lang/String;[Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$unsafeResetDatabase$6(ILjava/lang/String;Lcom/nozbe/watermelondb/WMDatabaseDriver;)Ljava/lang/Object;
    .locals 1

    .line 120
    new-instance v0, Lcom/nozbe/watermelondb/utils/Schema;

    invoke-direct {v0, p0, p1}, Lcom/nozbe/watermelondb/utils/Schema;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->unsafeResetDatabase(Lcom/nozbe/watermelondb/utils/Schema;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$withDriver$8(ILcom/facebook/react/bridge/Promise;Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;Ljava/lang/String;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nozbe/watermelondb/WMDatabaseBridge;->withDriver(ILcom/facebook/react/bridge/Promise;Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;Ljava/lang/String;)V

    return-void
.end method

.method private withDriver(ILcom/facebook/react/bridge/Promise;Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;Ljava/lang/String;)V
    .locals 9

    const-string v0, "No driver with tag "

    const-string v1, "WMDatabaseBridge."

    .line 176
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge;->connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nozbe/watermelondb/Connection;

    if-nez v1, :cond_0

    .line 179
    new-instance p3, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " available"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 180
    :cond_0
    instance-of v0, v1, Lcom/nozbe/watermelondb/Connection$Connected;

    if-eqz v0, :cond_2

    .line 181
    check-cast v1, Lcom/nozbe/watermelondb/Connection$Connected;

    iget-object p1, v1, Lcom/nozbe/watermelondb/Connection$Connected;->driver:Lcom/nozbe/watermelondb/WMDatabaseDriver;

    invoke-interface {p3, p1}, Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;->applyParamFunction(Lcom/nozbe/watermelondb/WMDatabaseDriver;)Ljava/lang/Object;

    move-result-object p1

    .line 182
    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, p3, :cond_1

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_1
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 183
    :cond_2
    instance-of v0, v1, Lcom/nozbe/watermelondb/Connection$Waiting;

    if-eqz v0, :cond_3

    .line 185
    invoke-virtual {v1}, Lcom/nozbe/watermelondb/Connection;->getQueue()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v8, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda8;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda8;-><init>(Lcom/nozbe/watermelondb/WMDatabaseBridge;ILcom/facebook/react/bridge/Promise;Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object p3, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge;->connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/nozbe/watermelondb/Connection$Waiting;

    invoke-virtual {v1}, Lcom/nozbe/watermelondb/Connection;->getQueue()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nozbe/watermelondb/Connection$Waiting;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 189
    :try_start_1
    invoke-interface {p2, p4, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 192
    throw p1
.end method


# virtual methods
.method public batch(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 111
    new-instance v0, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2}, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda4;-><init>(Lcom/facebook/react/bridge/ReadableArray;)V

    const-string p2, "batch"

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/nozbe/watermelondb/WMDatabaseBridge;->withDriver(ILcom/facebook/react/bridge/Promise;Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;Ljava/lang/String;)V

    return-void
.end method

.method public count(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 106
    new-instance v0, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda10;

    invoke-direct {v0, p2, p3}, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string p2, "count"

    invoke-direct {p0, p1, p4, v0, p2}, Lcom/nozbe/watermelondb/WMDatabaseBridge;->withDriver(ILcom/facebook/react/bridge/Promise;Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;Ljava/lang/String;)V

    return-void
.end method

.method public getLocal(ILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 127
    new-instance v0, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2}, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    const-string p2, "getLocal"

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/nozbe/watermelondb/WMDatabaseBridge;->withDriver(ILcom/facebook/react/bridge/Promise;Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;Ljava/lang/String;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "WMDatabaseBridge"

    return-object v0
.end method

.method public getRandomBytes(I)Lcom/facebook/react/bridge/WritableArray;
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    const/16 v0, 0x100

    if-ne p1, v0, :cond_1

    .line 236
    new-array p1, v0, [B

    .line 237
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 238
    invoke-virtual {v1, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 240
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 241
    aget-byte v3, p1, v2

    .line 242
    invoke-static {v3}, Lio/sentry/react/RNSentryPackage$$ExternalSyntheticBackport0;->m(B)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 233
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expected getRandomBytes to be called with 256"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/lang/Integer;Ljava/lang/String;IZLcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 47
    const-string v0, "code"

    iget-object v1, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge;->connections:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge;->connections:Ljava/util/Map;

    new-instance v3, Lcom/nozbe/watermelondb/Connection$Connected;

    new-instance v4, Lcom/nozbe/watermelondb/WMDatabaseDriver;

    iget-object v5, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v4, v5, p2, p3, p4}, Lcom/nozbe/watermelondb/WMDatabaseDriver;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    invoke-direct {v3, v4}, Lcom/nozbe/watermelondb/Connection$Connected;-><init>(Lcom/nozbe/watermelondb/WMDatabaseDriver;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string p2, "ok"

    invoke-interface {v1, v0, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-interface {p5, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nozbe/watermelondb/SchemaNeededError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nozbe/watermelondb/MigrationNeededError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 60
    iget-object p3, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge;->connections:Ljava/util/Map;

    new-instance p4, Lcom/nozbe/watermelondb/Connection$Waiting;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p4, v2}, Lcom/nozbe/watermelondb/Connection$Waiting;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {p3, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string p1, "migrations_needed"

    invoke-interface {v1, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string p1, "databaseVersion"

    iget p2, p2, Lcom/nozbe/watermelondb/MigrationNeededError;->databaseVersion:I

    invoke-interface {v1, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 63
    invoke-interface {p5, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :catch_2
    iget-object p2, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge;->connections:Ljava/util/Map;

    new-instance p3, Lcom/nozbe/watermelondb/Connection$Waiting;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p3, p4}, Lcom/nozbe/watermelondb/Connection$Waiting;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string p1, "schema_needed"

    invoke-interface {v1, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-interface {p5, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "A driver with tag "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " already set up"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public invalidate()V
    .locals 2

    .line 250
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->invalidate()V

    .line 251
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    new-instance v1, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnJSQueueThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 269
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->onCatalystInstanceDestroy()V

    .line 270
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/bridge/CatalystInstance;->getReactQueueConfiguration()Lcom/facebook/react/bridge/queue/ReactQueueConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/bridge/queue/ReactQueueConfiguration;->getJSQueueThread()Lcom/facebook/react/bridge/queue/MessageQueueThread;

    move-result-object v0

    new-instance v1, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/queue/MessageQueueThread;->runOnQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public provideSyncJson(ILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 221
    :try_start_0
    const-string v0, "com.nozbe.watermelondb.jsi.WatermelonJSI"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 222
    const-string v1, "provideSyncJson"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, [B

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 226
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public query(ILjava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 91
    new-instance v0, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p3, p4}, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string p2, "query"

    invoke-direct {p0, p1, p5, v0, p2}, Lcom/nozbe/watermelondb/WMDatabaseBridge;->withDriver(ILcom/facebook/react/bridge/Promise;Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;Ljava/lang/String;)V

    return-void
.end method

.method public queryIds(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 96
    new-instance v0, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p3}, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string p2, "queryIds"

    invoke-direct {p0, p1, p4, v0, p2}, Lcom/nozbe/watermelondb/WMDatabaseBridge;->withDriver(ILcom/facebook/react/bridge/Promise;Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;Ljava/lang/String;)V

    return-void
.end method

.method public setUpWithMigrations(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IIZLcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 77
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/nozbe/watermelondb/WMDatabaseDriver;

    iget-object v2, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    new-instance v3, Lcom/nozbe/watermelondb/utils/MigrationSet;

    invoke-direct {v3, p4, p5, p3}, Lcom/nozbe/watermelondb/utils/MigrationSet;-><init>(IILjava/lang/String;)V

    invoke-direct {v1, v2, p2, v3, p6}, Lcom/nozbe/watermelondb/WMDatabaseDriver;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/nozbe/watermelondb/utils/MigrationSet;Z)V

    invoke-direct {p0, v0, v1, p7}, Lcom/nozbe/watermelondb/WMDatabaseBridge;->connectDriver(ILcom/nozbe/watermelondb/WMDatabaseDriver;Lcom/facebook/react/bridge/Promise;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 79
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/nozbe/watermelondb/WMDatabaseBridge;->disconnectDriver(I)V

    .line 80
    invoke-interface {p7, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setUpWithSchema(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IZLcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 71
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v0, Lcom/nozbe/watermelondb/WMDatabaseDriver;

    iget-object v1, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    new-instance v2, Lcom/nozbe/watermelondb/utils/Schema;

    invoke-direct {v2, p4, p3}, Lcom/nozbe/watermelondb/utils/Schema;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1, p2, v2, p5}, Lcom/nozbe/watermelondb/WMDatabaseDriver;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/nozbe/watermelondb/utils/Schema;Z)V

    invoke-direct {p0, p1, v0, p6}, Lcom/nozbe/watermelondb/WMDatabaseBridge;->connectDriver(ILcom/nozbe/watermelondb/WMDatabaseDriver;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public unsafeGetLocalSynchronously(ILjava/lang/String;)Lcom/facebook/react/bridge/WritableArray;
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    const-string v0, "No driver with tag "

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge;->connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nozbe/watermelondb/Connection;

    if-eqz v1, :cond_2

    .line 137
    instance-of p1, v1, Lcom/nozbe/watermelondb/Connection$Connected;

    if-eqz p1, :cond_0

    .line 138
    check-cast v1, Lcom/nozbe/watermelondb/Connection$Connected;

    iget-object p1, v1, Lcom/nozbe/watermelondb/Connection$Connected;->driver:Lcom/nozbe/watermelondb/WMDatabaseDriver;

    invoke-virtual {p1, p2}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->getLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p2

    .line 140
    const-string v0, "result"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    .line 141
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    return-object p2

    .line 143
    :cond_0
    instance-of p1, v1, Lcom/nozbe/watermelondb/Connection$Waiting;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 144
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Waiting connection unexpected for unsafeGetLocalSynchronously"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_2
    new-instance p2, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " available"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 147
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p2

    .line 148
    const-string v0, "error"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    return-object p2
.end method

.method public unsafeQueryRaw(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 101
    new-instance v0, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2, p3}, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string p2, "unsafeQueryRaw"

    invoke-direct {p0, p1, p4, v0, p2}, Lcom/nozbe/watermelondb/WMDatabaseBridge;->withDriver(ILcom/facebook/react/bridge/Promise;Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;Ljava/lang/String;)V

    return-void
.end method

.method public unsafeResetDatabase(ILjava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 119
    new-instance v0, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3, p2}, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;)V

    const-string p2, "unsafeResetDatabase"

    invoke-direct {p0, p1, p4, v0, p2}, Lcom/nozbe/watermelondb/WMDatabaseBridge;->withDriver(ILcom/facebook/react/bridge/Promise;Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;Ljava/lang/String;)V

    return-void
.end method
