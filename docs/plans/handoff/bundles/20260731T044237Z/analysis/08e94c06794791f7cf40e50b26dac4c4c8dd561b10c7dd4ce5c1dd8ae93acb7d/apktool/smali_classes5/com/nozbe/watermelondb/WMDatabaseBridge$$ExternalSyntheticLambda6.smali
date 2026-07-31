.class public final synthetic Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/facebook/react/bridge/ReadableArray;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda6;->f$1:Lcom/facebook/react/bridge/ReadableArray;

    return-void
.end method


# virtual methods
.method public final applyParamFunction(Lcom/nozbe/watermelondb/WMDatabaseDriver;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda6;->f$1:Lcom/facebook/react/bridge/ReadableArray;

    invoke-static {v0, v1, p1}, Lcom/nozbe/watermelondb/WMDatabaseBridge;->lambda$unsafeQueryRaw$3(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/nozbe/watermelondb/WMDatabaseDriver;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
