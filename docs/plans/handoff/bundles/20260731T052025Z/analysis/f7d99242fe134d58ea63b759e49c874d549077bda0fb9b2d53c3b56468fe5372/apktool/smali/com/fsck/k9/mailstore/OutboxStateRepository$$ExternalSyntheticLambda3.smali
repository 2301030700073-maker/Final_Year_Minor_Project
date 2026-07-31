.class public final synthetic Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JJLjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda3;->f$0:J

    .line 8
    .line 9
    iput-wide p3, p0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda3;->f$1:J

    .line 10
    .line 11
    iput-object p5, p0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;J)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda3;->f$0:J

    iput-object p3, p0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-wide p4, p0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda3;->f$1:J

    return-void
.end method


# virtual methods
.method public final doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda3;->f$1:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda3;->f$0:J

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p0, Landroid/content/ContentValues;

    .line 13
    .line 14
    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "folder_id"

    .line 18
    .line 19
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {p0, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "name"

    .line 27
    .line 28
    invoke-virtual {p0, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "value_integer"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    const/4 v1, 0x5

    .line 43
    const-string v2, "folder_extra_values"

    .line 44
    .line 45
    invoke-virtual {p1, v2, v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 46
    .line 47
    .line 48
    move-result-wide p0

    .line 49
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_0
    new-instance p0, Landroid/content/ContentValues;

    .line 55
    .line 56
    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v0, "send_state"

    .line 60
    .line 61
    const-string v6, "error"

    .line 62
    .line 63
    invoke-virtual {p0, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "error_timestamp"

    .line 67
    .line 68
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    filled-new-array {v0}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "outbox_state"

    .line 87
    .line 88
    const-string v2, "message_id = ?"

    .line 89
    .line 90
    invoke-virtual {p1, v1, p0, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
