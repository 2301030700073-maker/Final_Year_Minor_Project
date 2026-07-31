.class public final Lcom/fsck/k9/storage/messages/DatabaseMessagePart;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final boundary:Ljava/lang/String;

.field public final charset:Ljava/lang/String;

.field public final contentId:Ljava/lang/String;

.field public final data:[B

.field public final dataLocation:I

.field public final decodedBodySize:Ljava/lang/Long;

.field public final displayName:Ljava/lang/String;

.field public final encoding:Ljava/lang/String;

.field public final epilogue:[B

.field public final header:[B

.field public final id:J

.field public final mimeType:Ljava/lang/String;

.field public final parent:J

.field public final preamble:[B

.field public final seq:I

.field public final serverExtra:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(JIJILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I[B[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->id:J

    .line 5
    .line 6
    iput p3, p0, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->type:I

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->parent:J

    .line 9
    .line 10
    iput p6, p0, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->seq:I

    .line 11
    .line 12
    iput-object p7, p0, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->mimeType:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p8, p0, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->decodedBodySize:Ljava/lang/Long;

    .line 15
    .line 16
    iput-object p9, p0, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->displayName:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p10, p0, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->header:[B

    .line 19
    .line 20
    iput-object p11, p0, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->encoding:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p12, p0, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->charset:Ljava/lang/String;

    .line 23
    .line 24
    iput p13, p0, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->dataLocation:I

    .line 25
    .line 26
    iput-object p14, p0, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->data:[B

    .line 27
    .line 28
    iput-object p15, p0, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->preamble:[B

    .line 29
    .line 30
    move-object/from16 p1, p16

    .line 31
    .line 32
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->epilogue:[B

    .line 33
    .line 34
    move-object/from16 p1, p17

    .line 35
    .line 36
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->boundary:Ljava/lang/String;

    .line 37
    .line 38
    move-object/from16 p1, p18

    .line 39
    .line 40
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->contentId:Ljava/lang/String;

    .line 41
    .line 42
    move-object/from16 p1, p19

    .line 43
    .line 44
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->serverExtra:Ljava/lang/String;

    .line 45
    .line 46
    return-void
.end method
