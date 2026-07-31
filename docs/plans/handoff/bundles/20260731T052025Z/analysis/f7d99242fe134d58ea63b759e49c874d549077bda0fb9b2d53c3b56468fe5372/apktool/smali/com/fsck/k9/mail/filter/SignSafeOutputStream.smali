.class public final Lcom/fsck/k9/mail/filter/SignSafeOutputStream;
.super Ljava/io/FilterOutputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final ESCAPED_SPACE:[B


# instance fields
.field public closed:Z

.field public final outBuffer:[B

.field public outputIndex:I

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->ESCAPED_SPACE:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x3dt
        0x32t
        0x30t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x3

    .line 5
    iput p1, p0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->state:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->closed:Z

    .line 9
    .line 10
    const/16 p1, 0x400

    .line 11
    .line 12
    new-array p1, p1, [B

    .line 13
    .line 14
    iput-object p1, p0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->outBuffer:[B

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->closed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->closed:Z

    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    iput-boolean v0, p0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->closed:Z

    .line 15
    .line 16
    throw v1
.end method

.method public final encode(B)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->state:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/16 v2, 0xd

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    if-eq p1, v2, :cond_0

    .line 13
    .line 14
    :goto_0
    move v0, v4

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    move v0, v3

    .line 17
    goto :goto_1

    .line 18
    :pswitch_0
    if-eq p1, v2, :cond_0

    .line 19
    .line 20
    const/16 v0, 0x20

    .line 21
    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v0, v1

    .line 26
    goto :goto_1

    .line 27
    :pswitch_1
    if-eq p1, v2, :cond_0

    .line 28
    .line 29
    const/16 v0, 0x6d

    .line 30
    .line 31
    if-eq p1, v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x7

    .line 35
    goto :goto_1

    .line 36
    :pswitch_2
    if-eq p1, v2, :cond_0

    .line 37
    .line 38
    const/16 v0, 0x6f

    .line 39
    .line 40
    if-eq p1, v0, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/4 v0, 0x6

    .line 44
    goto :goto_1

    .line 45
    :pswitch_3
    if-eq p1, v2, :cond_0

    .line 46
    .line 47
    const/16 v0, 0x72

    .line 48
    .line 49
    if-eq p1, v0, :cond_4

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    const/4 v0, 0x5

    .line 53
    goto :goto_1

    .line 54
    :pswitch_4
    if-eq p1, v2, :cond_0

    .line 55
    .line 56
    const/16 v0, 0x46

    .line 57
    .line 58
    if-eq p1, v0, :cond_5

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_5
    const/4 v0, 0x4

    .line 62
    goto :goto_1

    .line 63
    :pswitch_5
    const/16 v0, 0xa

    .line 64
    .line 65
    if-eq p1, v0, :cond_6

    .line 66
    .line 67
    if-eq p1, v2, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_6
    const/4 v0, 0x3

    .line 71
    goto :goto_1

    .line 72
    :pswitch_6
    if-eq p1, v2, :cond_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :goto_1
    if-ne v0, v1, :cond_7

    .line 76
    .line 77
    iput v4, p0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->state:I

    .line 78
    .line 79
    const/4 p1, 0x0

    .line 80
    sget-object v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->ESCAPED_SPACE:[B

    .line 81
    .line 82
    aget-byte p1, v0, p1

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->writeToBuffer(B)V

    .line 85
    .line 86
    .line 87
    aget-byte p1, v0, v4

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->writeToBuffer(B)V

    .line 90
    .line 91
    .line 92
    aget-byte p1, v0, v3

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->writeToBuffer(B)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_7
    iput v0, p0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->state:I

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->writeToBuffer(B)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final flush()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->outputIndex:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->outBuffer:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-ge v0, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v3, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iput v4, p0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->outputIndex:I

    .line 19
    .line 20
    iget-object p0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final write(I)V
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->closed:Z

    if-nez v0, :cond_0

    int-to-byte p1, p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->encode(B)V

    return-void

    .line 27
    :cond_0
    const-string p0, "Stream has been closed"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    return-void
.end method

.method public final write([BII)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    move v0, p2

    .line 6
    :goto_0
    add-int v1, p3, p2

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    aget-byte v1, p1, v0

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->encode(B)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    const-string p0, "Stream has been closed"

    .line 20
    .line 21
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final writeToBuffer(B)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->outputIndex:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->outputIndex:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->outBuffer:[B

    .line 8
    .line 9
    aput-byte p1, v2, v0

    .line 10
    .line 11
    array-length p1, v2

    .line 12
    if-lt v1, p1, :cond_1

    .line 13
    .line 14
    array-length p1, v2

    .line 15
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-ge v1, p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iput v3, p0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->outputIndex:I

    .line 28
    .line 29
    :cond_1
    return-void
.end method
