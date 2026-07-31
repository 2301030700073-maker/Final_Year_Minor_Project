.class public final synthetic Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/nozbe/watermelondb/WMDatabase$TransactionFunction;


# instance fields
.field public final synthetic f$0:Lcom/nozbe/watermelondb/WMDatabaseDriver;

.field public final synthetic f$1:Lcom/facebook/react/bridge/ReadableArray;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/nozbe/watermelondb/WMDatabaseDriver;Lcom/facebook/react/bridge/ReadableArray;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda1;->f$0:Lcom/nozbe/watermelondb/WMDatabaseDriver;

    iput-object p2, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda1;->f$1:Lcom/facebook/react/bridge/ReadableArray;

    iput-object p3, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final applyTransactionFunction()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda1;->f$0:Lcom/nozbe/watermelondb/WMDatabaseDriver;

    iget-object v1, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda1;->f$1:Lcom/facebook/react/bridge/ReadableArray;

    iget-object v2, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->$r8$lambda$xy6DcJKbSqX7hFU21msYfEtxxIw(Lcom/nozbe/watermelondb/WMDatabaseDriver;Lcom/facebook/react/bridge/ReadableArray;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
