.class public final Lcom/fsck/k9/mailstore/LocalStore$11;
.super Lorg/apache/james/mime4j/codec/Base64InputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$rawInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$11;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$11;->val$rawInputStream:Ljava/io/InputStream;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;I)V
    .locals 0

    .line 11
    iput p3, p0, Lcom/fsck/k9/mailstore/LocalStore$11;->$r8$classId:I

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$11;->val$rawInputStream:Ljava/io/InputStream;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/mailstore/LocalStore$11;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$11;->val$rawInputStream:Ljava/io/InputStream;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lorg/apache/james/mime4j/codec/Base64InputStream;->close()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    invoke-super {p0}, Lorg/apache/james/mime4j/codec/Base64InputStream;->close()V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/JisSupport;->closeInputStreamWithoutDeletingTemporaryFiles(Ljava/io/InputStream;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    invoke-super {p0}, Lorg/apache/james/mime4j/codec/Base64InputStream;->close()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
