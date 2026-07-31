.class public final Lcom/fsck/k9/mail/filter/LineWrapOutputStream;
.super Ljava/io/FilterOutputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final CRLF:[B


# instance fields
.field public final buffer:[B

.field public bufferStart:I

.field public endOfLastWord:I

.field public lineLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->CRLF:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/filter/SmtpDataStuffing;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->bufferStart:I

    .line 6
    .line 7
    iput p1, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->lineLength:I

    .line 8
    .line 9
    iput p1, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->endOfLastWord:I

    .line 10
    .line 11
    const/16 p1, 0x3e6

    .line 12
    .line 13
    new-array p1, p1, [B

    .line 14
    .line 15
    iput-object p1, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->buffer:[B

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->lineLength:I

    .line 2
    .line 3
    iget v1, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->bufferStart:I

    .line 4
    .line 5
    if-le v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->buffer:[B

    .line 11
    .line 12
    invoke-virtual {v2, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->lineLength:I

    .line 16
    .line 17
    array-length v1, v3

    .line 18
    const/4 v2, 0x0

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    move v0, v2

    .line 22
    :cond_0
    iput v0, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->bufferStart:I

    .line 23
    .line 24
    iput v2, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->endOfLastWord:I

    .line 25
    .line 26
    :cond_1
    iget-object p0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final write(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->lineLength:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->buffer:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v0, v2, :cond_2

    .line 8
    .line 9
    iget v0, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->endOfLastWord:I

    .line 10
    .line 11
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 12
    .line 13
    sget-object v4, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->CRLF:[B

    .line 14
    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    iget v5, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->bufferStart:I

    .line 18
    .line 19
    sub-int/2addr v0, v5

    .line 20
    invoke-virtual {v2, v1, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 26
    .line 27
    .line 28
    iput v3, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->bufferStart:I

    .line 29
    .line 30
    iget v0, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->endOfLastWord:I

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    iput v0, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->endOfLastWord:I

    .line 35
    .line 36
    array-length v2, v1

    .line 37
    sub-int/2addr v2, v0

    .line 38
    iput v2, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->lineLength:I

    .line 39
    .line 40
    if-lez v2, :cond_0

    .line 41
    .line 42
    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iput v3, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->endOfLastWord:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget v0, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->bufferStart:I

    .line 49
    .line 50
    array-length v5, v1

    .line 51
    sub-int/2addr v5, v0

    .line 52
    invoke-virtual {v2, v1, v0, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 56
    .line 57
    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 58
    .line 59
    .line 60
    iput v3, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->lineLength:I

    .line 61
    .line 62
    iput v3, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->bufferStart:I

    .line 63
    .line 64
    :cond_2
    :goto_0
    const/16 v0, 0xa

    .line 65
    .line 66
    if-eq p1, v0, :cond_5

    .line 67
    .line 68
    const/16 v0, 0xd

    .line 69
    .line 70
    if-ne p1, v0, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const/16 v0, 0x20

    .line 74
    .line 75
    if-ne p1, v0, :cond_4

    .line 76
    .line 77
    iget v0, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->lineLength:I

    .line 78
    .line 79
    iput v0, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->endOfLastWord:I

    .line 80
    .line 81
    :cond_4
    iget v0, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->lineLength:I

    .line 82
    .line 83
    int-to-byte p1, p1

    .line 84
    aput-byte p1, v1, v0

    .line 85
    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 87
    .line 88
    iput v0, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->lineLength:I

    .line 89
    .line 90
    return-void

    .line 91
    :cond_5
    :goto_1
    iget v0, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->lineLength:I

    .line 92
    .line 93
    iget v2, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->bufferStart:I

    .line 94
    .line 95
    sub-int v4, v0, v2

    .line 96
    .line 97
    if-lez v4, :cond_6

    .line 98
    .line 99
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 100
    .line 101
    sub-int/2addr v0, v2

    .line 102
    invoke-virtual {v4, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 103
    .line 104
    .line 105
    :cond_6
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 108
    .line 109
    .line 110
    iput v3, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->lineLength:I

    .line 111
    .line 112
    iput v3, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->bufferStart:I

    .line 113
    .line 114
    iput v3, p0, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;->endOfLastWord:I

    .line 115
    .line 116
    return-void
.end method
