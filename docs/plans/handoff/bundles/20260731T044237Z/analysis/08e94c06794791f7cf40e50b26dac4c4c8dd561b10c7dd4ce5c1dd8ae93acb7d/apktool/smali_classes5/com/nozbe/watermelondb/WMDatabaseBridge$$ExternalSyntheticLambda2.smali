.class public final synthetic Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/nozbe/watermelondb/WMDatabaseBridge$ParamFunction;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final applyParamFunction(Lcom/nozbe/watermelondb/WMDatabaseDriver;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget v0, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Lcom/nozbe/watermelondb/WMDatabaseBridge$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/nozbe/watermelondb/WMDatabaseBridge;->lambda$unsafeResetDatabase$6(ILjava/lang/String;Lcom/nozbe/watermelondb/WMDatabaseDriver;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
