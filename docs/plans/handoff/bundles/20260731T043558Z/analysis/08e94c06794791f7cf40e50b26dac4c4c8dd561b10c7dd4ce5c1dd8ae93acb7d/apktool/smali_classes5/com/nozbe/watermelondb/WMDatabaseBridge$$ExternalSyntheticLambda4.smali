.class public final synthetic Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/bridge/ReadableArray;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda4;->f$0:Lcom/facebook/react/bridge/ReadableArray;

    return-void
.end method


# virtual methods
.method public final applyParamFunction(Lcom/nozbe/watermelondb/WMDatabaseDriver;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda4;->f$0:Lcom/facebook/react/bridge/ReadableArray;

    invoke-static {v0, p1}, Lcom/nozbe/watermelondb/WMDatabaseBridge;->lambda$batch$5(Lcom/facebook/react/bridge/ReadableArray;Lcom/nozbe/watermelondb/WMDatabaseDriver;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
