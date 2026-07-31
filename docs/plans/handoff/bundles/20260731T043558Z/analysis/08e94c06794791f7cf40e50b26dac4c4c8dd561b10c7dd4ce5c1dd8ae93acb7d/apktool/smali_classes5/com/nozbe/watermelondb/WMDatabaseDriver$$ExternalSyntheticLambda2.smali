.class public final synthetic Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/nozbe/watermelondb/WMDatabase$TransactionFunction;


# instance fields
.field public final synthetic f$0:Lcom/nozbe/watermelondb/WMDatabaseDriver;

.field public final synthetic f$1:Lcom/nozbe/watermelondb/utils/Schema;


# direct methods
.method public synthetic constructor <init>(Lcom/nozbe/watermelondb/WMDatabaseDriver;Lcom/nozbe/watermelondb/utils/Schema;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda2;->f$0:Lcom/nozbe/watermelondb/WMDatabaseDriver;

    iput-object p2, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda2;->f$1:Lcom/nozbe/watermelondb/utils/Schema;

    return-void
.end method


# virtual methods
.method public final applyTransactionFunction()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda2;->f$0:Lcom/nozbe/watermelondb/WMDatabaseDriver;

    iget-object v1, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda2;->f$1:Lcom/nozbe/watermelondb/utils/Schema;

    invoke-static {v0, v1}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->$r8$lambda$ajwZ0tzoSVtiogCWdHXuKN73LV0(Lcom/nozbe/watermelondb/WMDatabaseDriver;Lcom/nozbe/watermelondb/utils/Schema;)V

    return-void
.end method
