.class public final synthetic Lcom/nozbe/watermelondb/WMDatabase$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/nozbe/watermelondb/WMDatabase$TransactionFunction;


# instance fields
.field public final synthetic f$0:Lcom/nozbe/watermelondb/WMDatabase;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/nozbe/watermelondb/WMDatabase;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nozbe/watermelondb/WMDatabase$$ExternalSyntheticLambda2;->f$0:Lcom/nozbe/watermelondb/WMDatabase;

    iput-object p2, p0, Lcom/nozbe/watermelondb/WMDatabase$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final applyTransactionFunction()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabase$$ExternalSyntheticLambda2;->f$0:Lcom/nozbe/watermelondb/WMDatabase;

    iget-object v1, p0, Lcom/nozbe/watermelondb/WMDatabase$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nozbe/watermelondb/WMDatabase;->$r8$lambda$9ECmpau4ucTwmn7cZs_TANI9IoQ(Lcom/nozbe/watermelondb/WMDatabase;Ljava/lang/String;)V

    return-void
.end method
