.class public final Lcom/fsck/k9/storage/messages/DeleteFolderOperations;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final attachmentFileManager:Lcom/google/zxing/BinaryBitmap;

.field public final lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lcom/google/zxing/BinaryBitmap;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    packed-switch p3, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/DeleteFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/fsck/k9/storage/messages/DeleteFolderOperations;->attachmentFileManager:Lcom/google/zxing/BinaryBitmap;

    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/DeleteFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/fsck/k9/storage/messages/DeleteFolderOperations;->attachmentFileManager:Lcom/google/zxing/BinaryBitmap;

    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
