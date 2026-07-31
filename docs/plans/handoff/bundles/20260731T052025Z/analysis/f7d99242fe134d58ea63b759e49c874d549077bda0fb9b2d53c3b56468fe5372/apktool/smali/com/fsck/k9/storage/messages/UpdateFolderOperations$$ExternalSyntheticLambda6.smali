.class public final synthetic Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;ZI)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-wide p1, p0, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;->f$0:J

    .line 4
    .line 5
    iput-object p3, p0, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;->f$2:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;->f$2:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;->f$0:J

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
    const-string v0, "new_message"

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "messages"

    .line 35
    .line 36
    const-string v2, "folder_id = ? AND uid = ?"

    .line 37
    .line 38
    invoke-virtual {p1, v1, p0, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :pswitch_0
    new-instance p0, Landroid/content/ContentValues;

    .line 48
    .line 49
    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    filled-new-array {v0}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "folders"

    .line 68
    .line 69
    const-string v2, "id = ?"

    .line 70
    .line 71
    invoke-virtual {p1, v1, p0, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
