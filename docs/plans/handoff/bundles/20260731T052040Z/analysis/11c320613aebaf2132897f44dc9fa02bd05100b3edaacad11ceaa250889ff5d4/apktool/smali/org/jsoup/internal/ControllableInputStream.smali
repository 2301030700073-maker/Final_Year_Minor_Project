.class public final Lorg/jsoup/internal/ControllableInputStream;
.super Ljava/io/FilterInputStream;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final allowClose:Z

.field public final buff:Lorg/jsoup/internal/SimpleBufferedInput;

.field public interrupted:Z

.field public markPos:I

.field public final maxSize:I

.field public readPos:I

.field public remaining:I


# direct methods
.method public constructor <init>(Lorg/jsoup/internal/SimpleBufferedInput;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/jsoup/internal/ControllableInputStream;->allowClose:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lorg/jsoup/internal/ControllableInputStream;->readPos:I

    .line 9
    .line 10
    iput-object p1, p0, Lorg/jsoup/internal/ControllableInputStream;->buff:Lorg/jsoup/internal/SimpleBufferedInput;

    .line 11
    .line 12
    iput v0, p0, Lorg/jsoup/internal/ControllableInputStream;->maxSize:I

    .line 13
    .line 14
    iput v0, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    .line 15
    .line 16
    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lorg/jsoup/internal/ControllableInputStream;->markPos:I

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/internal/ControllableInputStream;->allowClose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final mark(I)V
    .locals 0

    .line 1
    iget p1, p0, Lorg/jsoup/internal/ControllableInputStream;->readPos:I

    .line 2
    .line 3
    iput p1, p0, Lorg/jsoup/internal/ControllableInputStream;->markPos:I

    .line 4
    .line 5
    iget-object p0, p0, Lorg/jsoup/internal/ControllableInputStream;->buff:Lorg/jsoup/internal/SimpleBufferedInput;

    .line 6
    .line 7
    iget p1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    .line 8
    .line 9
    iput p1, p0, Lorg/jsoup/internal/SimpleBufferedInput;->bufMark:I

    .line 10
    .line 11
    return-void
.end method

.method public final markSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final read([BII)I
    .locals 5

    .line 1
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->maxSize:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    iget-boolean v3, p0, Lorg/jsoup/internal/ControllableInputStream;->interrupted:Z

    .line 11
    .line 12
    const/4 v4, -0x1

    .line 13
    if-nez v3, :cond_7

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget v3, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    .line 18
    .line 19
    if-gtz v3, :cond_1

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    iput-boolean v2, p0, Lorg/jsoup/internal/ControllableInputStream;->interrupted:Z

    .line 33
    .line 34
    return v4

    .line 35
    :cond_2
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget v2, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    .line 38
    .line 39
    if-le p3, v2, :cond_3

    .line 40
    .line 41
    move p3, v2

    .line 42
    :cond_3
    if-eqz v0, :cond_4

    .line 43
    .line 44
    iget v2, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    const v2, 0x7fffffff

    .line 48
    .line 49
    .line 50
    :goto_1
    iget-object v3, p0, Lorg/jsoup/internal/ControllableInputStream;->buff:Lorg/jsoup/internal/SimpleBufferedInput;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iput v1, v3, Lorg/jsoup/internal/SimpleBufferedInput;->capRemaining:I

    .line 60
    .line 61
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-ne p1, v4, :cond_5

    .line 66
    .line 67
    return p1

    .line 68
    :cond_5
    if-eqz v0, :cond_6

    .line 69
    .line 70
    if-lez p1, :cond_6

    .line 71
    .line 72
    iget p2, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    .line 73
    .line 74
    sub-int/2addr p2, p1

    .line 75
    iput p2, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    .line 76
    .line 77
    :cond_6
    iget p2, p0, Lorg/jsoup/internal/ControllableInputStream;->readPos:I

    .line 78
    .line 79
    add-int/2addr p2, p1

    .line 80
    iput p2, p0, Lorg/jsoup/internal/ControllableInputStream;->readPos:I

    .line 81
    .line 82
    return p1

    .line 83
    :cond_7
    :goto_2
    return v4
.end method

.method public final reset()V
    .locals 5

    .line 1
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->markPos:I

    .line 2
    .line 3
    const-string v1, "Resetting to invalid mark"

    .line 4
    .line 5
    if-ltz v0, :cond_2

    .line 6
    .line 7
    iget-object v2, p0, Lorg/jsoup/internal/ControllableInputStream;->buff:Lorg/jsoup/internal/SimpleBufferedInput;

    .line 8
    .line 9
    iget v3, v2, Lorg/jsoup/internal/SimpleBufferedInput;->bufMark:I

    .line 10
    .line 11
    if-ltz v3, :cond_1

    .line 12
    .line 13
    iput v3, v2, Lorg/jsoup/internal/SimpleBufferedInput;->bufPos:I

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    iput v1, v2, Lorg/jsoup/internal/SimpleBufferedInput;->bufMark:I

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    iget v4, p0, Lorg/jsoup/internal/ControllableInputStream;->maxSize:I

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    sub-int/2addr v4, v0

    .line 24
    iput v4, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    .line 25
    .line 26
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, v2, Lorg/jsoup/internal/SimpleBufferedInput;->capRemaining:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iput v3, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    .line 34
    .line 35
    const v0, 0x7fffffff

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, v2, Lorg/jsoup/internal/SimpleBufferedInput;->capRemaining:I

    .line 43
    .line 44
    :goto_0
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->markPos:I

    .line 45
    .line 46
    iput v0, p0, Lorg/jsoup/internal/ControllableInputStream;->readPos:I

    .line 47
    .line 48
    iput v1, p0, Lorg/jsoup/internal/ControllableInputStream;->markPos:I

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method
