.class public final Lcom/squareup/moshi/JsonUtf8Writer;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field public static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field public deferredName:Ljava/lang/String;

.field public flattenStackSize:I

.field public pathIndices:[I

.field public pathNames:[Ljava/lang/String;

.field public promoteValueToName:Z

.field public scopes:[I

.field public serializeNulls:Z

.field public final sink:Lokio/Buffer;

.field public stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    .line 5
    sput-object v0, Lcom/squareup/moshi/JsonUtf8Writer;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    const/16 v2, 0x1f

    .line 10
    .line 11
    if-gt v1, v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Lcom/squareup/moshi/JsonUtf8Writer;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x1

    .line 20
    new-array v4, v4, [Ljava/lang/Object;

    .line 21
    .line 22
    aput-object v3, v4, v0

    .line 23
    .line 24
    const-string v3, "\\u%04x"

    .line 25
    .line 26
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    aput-object v3, v2, v1

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object v0, Lcom/squareup/moshi/JsonUtf8Writer;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 36
    .line 37
    const/16 v1, 0x22

    .line 38
    .line 39
    const-string v2, "\\\""

    .line 40
    .line 41
    aput-object v2, v0, v1

    .line 42
    .line 43
    const/16 v1, 0x5c

    .line 44
    .line 45
    const-string v2, "\\\\"

    .line 46
    .line 47
    aput-object v2, v0, v1

    .line 48
    .line 49
    const/16 v1, 0x9

    .line 50
    .line 51
    const-string v2, "\\t"

    .line 52
    .line 53
    aput-object v2, v0, v1

    .line 54
    .line 55
    const/16 v1, 0x8

    .line 56
    .line 57
    const-string v2, "\\b"

    .line 58
    .line 59
    aput-object v2, v0, v1

    .line 60
    .line 61
    const/16 v1, 0xa

    .line 62
    .line 63
    const-string v2, "\\n"

    .line 64
    .line 65
    aput-object v2, v0, v1

    .line 66
    .line 67
    const/16 v1, 0xd

    .line 68
    .line 69
    const-string v2, "\\r"

    .line 70
    .line 71
    aput-object v2, v0, v1

    .line 72
    .line 73
    const/16 v1, 0xc

    .line 74
    .line 75
    const-string v2, "\\f"

    .line 76
    .line 77
    aput-object v2, v0, v1

    .line 78
    .line 79
    return-void
.end method

.method public constructor <init>(Lokio/Buffer;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x20

    .line 5
    .line 6
    new-array v1, v0, [I

    .line 7
    .line 8
    iput-object v1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->scopes:[I

    .line 9
    .line 10
    new-array v2, v0, [Ljava/lang/String;

    .line 11
    .line 12
    iput-object v2, p0, Lcom/squareup/moshi/JsonUtf8Writer;->pathNames:[Ljava/lang/String;

    .line 13
    .line 14
    new-array v0, v0, [I

    .line 15
    .line 16
    iput-object v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->pathIndices:[I

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->flattenStackSize:I

    .line 20
    .line 21
    iput-object p1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->sink:Lokio/Buffer;

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    const/4 p1, 0x6

    .line 28
    aput p1, v1, p0

    .line 29
    .line 30
    return-void
.end method

.method public static string(Lokio/Buffer;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/16 v0, 0x22

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v2, v1, :cond_5

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/16 v5, 0x80

    .line 19
    .line 20
    if-ge v4, v5, :cond_0

    .line 21
    .line 22
    sget-object v5, Lcom/squareup/moshi/JsonUtf8Writer;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 23
    .line 24
    aget-object v4, v5, v4

    .line 25
    .line 26
    if-nez v4, :cond_2

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    const/16 v5, 0x2028

    .line 30
    .line 31
    if-ne v4, v5, :cond_1

    .line 32
    .line 33
    const-string v4, "\\u2028"

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v5, 0x2029

    .line 37
    .line 38
    if-ne v4, v5, :cond_4

    .line 39
    .line 40
    const-string v4, "\\u2029"

    .line 41
    .line 42
    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0, v3, p1, v2}, Lokio/Buffer;->writeUtf8(ILjava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-virtual {p0, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v3, v2, 0x1

    .line 51
    .line 52
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    if-ge v3, v1, :cond_6

    .line 56
    .line 57
    invoke-virtual {p0, v3, p1, v1}, Lokio/Buffer;->writeUtf8(ILjava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    :cond_6
    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)V

    .line 61
    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final beforeValue()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->peekScope()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_5

    .line 8
    .line 9
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Writer;->sink:Lokio/Buffer;

    .line 10
    .line 11
    if-eq v0, v1, :cond_4

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq v0, v1, :cond_3

    .line 15
    .line 16
    const/16 v1, 0x9

    .line 17
    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x6

    .line 21
    const/4 v3, 0x7

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    if-eq v0, v3, :cond_0

    .line 25
    .line 26
    const-string p0, "Nesting problem."

    .line 27
    .line 28
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-string p0, "JSON must have only one top-level value."

    .line 33
    .line 34
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    move v1, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string p0, "Sink from valueSink() was not closed"

    .line 41
    .line 42
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    const-string v0, ":"

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x5

    .line 52
    goto :goto_0

    .line 53
    :cond_4
    const/16 v0, 0x2c

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Lokio/Buffer;->writeByte(I)V

    .line 56
    .line 57
    .line 58
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->scopes:[I

    .line 59
    .line 60
    iget p0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    .line 61
    .line 62
    sub-int/2addr p0, v2

    .line 63
    aput v1, v0, p0

    .line 64
    .line 65
    return-void
.end method

.method public final beginArray()Lcom/squareup/moshi/JsonUtf8Writer;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->promoteValueToName:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->writeDeferredName()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    const/16 v1, 0x5b

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {p0, v1, v2, v0}, Lcom/squareup/moshi/JsonUtf8Writer;->open(CII)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->getPath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "Array cannot be used as a map key in JSON at path "

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public final beginObject()Lcom/squareup/moshi/JsonUtf8Writer;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->promoteValueToName:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->writeDeferredName()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    const/16 v1, 0x7b

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    invoke-virtual {p0, v1, v2, v0}, Lcom/squareup/moshi/JsonUtf8Writer;->open(CII)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->getPath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "Object cannot be used as a map key in JSON at path "

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public final close()V
    .locals 3

    .line 63
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Writer;->scopes:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    return-void

    .line 66
    :cond_1
    const-string p0, "Incomplete document"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    return-void
.end method

.method public final close(CII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->peekScope()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p3, :cond_1

    .line 6
    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "Nesting problem."

    .line 11
    .line 12
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/squareup/moshi/JsonUtf8Writer;->deferredName:Ljava/lang/String;

    .line 17
    .line 18
    if-nez p2, :cond_3

    .line 19
    .line 20
    iget p2, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    .line 21
    .line 22
    iget p3, p0, Lcom/squareup/moshi/JsonUtf8Writer;->flattenStackSize:I

    .line 23
    .line 24
    not-int p3, p3

    .line 25
    if-ne p2, p3, :cond_2

    .line 26
    .line 27
    iput p3, p0, Lcom/squareup/moshi/JsonUtf8Writer;->flattenStackSize:I

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    add-int/lit8 p3, p2, -0x1

    .line 31
    .line 32
    iput p3, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    .line 33
    .line 34
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->pathNames:[Ljava/lang/String;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    aput-object v1, v0, p3

    .line 38
    .line 39
    iget-object p3, p0, Lcom/squareup/moshi/JsonUtf8Writer;->pathIndices:[I

    .line 40
    .line 41
    add-int/lit8 p2, p2, -0x2

    .line 42
    .line 43
    aget v0, p3, p2

    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    aput v0, p3, p2

    .line 48
    .line 49
    iget-object p0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->sink:Lokio/Buffer;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    const-string p1, "Dangling name: "

    .line 56
    .line 57
    iget-object p0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->deferredName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {p0, p1}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    iget p0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "JsonWriter is closed."

    .line 7
    .line 8
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getPath()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->scopes:[I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Writer;->pathNames:[Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->pathIndices:[I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p0}, Lcom/squareup/moshi/Types;->getPath(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget v1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->peekScope()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x3

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->deferredName:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->promoteValueToName:Z

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iput-object p1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->deferredName:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->pathNames:[Ljava/lang/String;

    .line 29
    .line 30
    iget v1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    .line 31
    .line 32
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    aput-object p1, v0, v1

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    const-string p0, "Nesting problem."

    .line 38
    .line 39
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_2
    const-string p0, "JsonWriter is closed."

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_3
    const-string p0, "name == null"

    .line 50
    .line 51
    invoke-static {p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public final nullValue()Lcom/squareup/moshi/JsonUtf8Writer;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->promoteValueToName:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->deferredName:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->serializeNulls:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->writeDeferredName()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput-object v1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->deferredName:Ljava/lang/String;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->beforeValue()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->sink:Lokio/Buffer;

    .line 25
    .line 26
    const-string v1, "null"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->pathIndices:[I

    .line 32
    .line 33
    iget v1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    aget v2, v0, v1

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    aput v2, v0, v1

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->getPath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v0, "null cannot be used as a map key in JSON at path "

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v1
.end method

.method public final open(CII)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    .line 2
    .line 3
    iget v1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->flattenStackSize:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Writer;->scopes:[I

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    aget v0, v2, v0

    .line 12
    .line 13
    if-eq v0, p2, :cond_0

    .line 14
    .line 15
    if-ne v0, p3, :cond_1

    .line 16
    .line 17
    :cond_0
    not-int p1, v1

    .line 18
    iput p1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->flattenStackSize:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->beforeValue()V

    .line 22
    .line 23
    .line 24
    iget p3, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    .line 25
    .line 26
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->scopes:[I

    .line 27
    .line 28
    array-length v1, v0

    .line 29
    if-eq p3, v1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/16 v1, 0x100

    .line 33
    .line 34
    if-eq p3, v1, :cond_3

    .line 35
    .line 36
    array-length p3, v0

    .line 37
    mul-int/lit8 p3, p3, 0x2

    .line 38
    .line 39
    invoke-static {v0, p3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    iput-object p3, p0, Lcom/squareup/moshi/JsonUtf8Writer;->scopes:[I

    .line 44
    .line 45
    iget-object p3, p0, Lcom/squareup/moshi/JsonUtf8Writer;->pathNames:[Ljava/lang/String;

    .line 46
    .line 47
    array-length v0, p3

    .line 48
    mul-int/lit8 v0, v0, 0x2

    .line 49
    .line 50
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    check-cast p3, [Ljava/lang/String;

    .line 55
    .line 56
    iput-object p3, p0, Lcom/squareup/moshi/JsonUtf8Writer;->pathNames:[Ljava/lang/String;

    .line 57
    .line 58
    iget-object p3, p0, Lcom/squareup/moshi/JsonUtf8Writer;->pathIndices:[I

    .line 59
    .line 60
    array-length v0, p3

    .line 61
    mul-int/lit8 v0, v0, 0x2

    .line 62
    .line 63
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    iput-object p3, p0, Lcom/squareup/moshi/JsonUtf8Writer;->pathIndices:[I

    .line 68
    .line 69
    :goto_0
    iget-object p3, p0, Lcom/squareup/moshi/JsonUtf8Writer;->scopes:[I

    .line 70
    .line 71
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    .line 72
    .line 73
    add-int/lit8 v1, v0, 0x1

    .line 74
    .line 75
    iput v1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    .line 76
    .line 77
    aput p2, p3, v0

    .line 78
    .line 79
    iget-object p2, p0, Lcom/squareup/moshi/JsonUtf8Writer;->pathIndices:[I

    .line 80
    .line 81
    const/4 p3, 0x0

    .line 82
    aput p3, p2, v0

    .line 83
    .line 84
    iget-object p0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->sink:Lokio/Buffer;

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    new-instance p1, Lcom/squareup/moshi/JsonDataException;

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->getPath()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string p3, "Nesting too deep at "

    .line 99
    .line 100
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p0, ": circular reference?"

    .line 107
    .line 108
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1
.end method

.method public final peekScope()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->scopes:[I

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    aget p0, p0, v0

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const-string p0, "JsonWriter is closed."

    .line 13
    .line 14
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final value(J)Lcom/squareup/moshi/JsonUtf8Writer;
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->promoteValueToName:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->promoteValueToName:Z

    .line 79
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/JsonUtf8Writer;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    return-object p0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->writeDeferredName()V

    .line 81
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->beforeValue()V

    .line 82
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->sink:Lokio/Buffer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {v0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->pathIndices:[I

    iget p2, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    add-int/lit8 p2, p2, -0x1

    aget v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, p2

    return-object p0
.end method

.method public final value(Ljava/lang/Number;)Lcom/squareup/moshi/JsonUtf8Writer;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->nullValue()Lcom/squareup/moshi/JsonUtf8Writer;

    .line 4
    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "-Infinity"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    const-string v1, "Infinity"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    const-string v1, "NaN"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    iget-boolean p1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->promoteValueToName:Z

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->promoteValueToName:Z

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/squareup/moshi/JsonUtf8Writer;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->writeDeferredName()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->beforeValue()V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->sink:Lokio/Buffer;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->pathIndices:[I

    .line 58
    .line 59
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    .line 60
    .line 61
    add-int/lit8 v0, v0, -0x1

    .line 62
    .line 63
    aget v1, p1, v0

    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    aput v1, p1, v0

    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_2
    const-string p0, "Numeric values must be finite, but was "

    .line 71
    .line 72
    invoke-static {p1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 p0, 0x0

    .line 76
    return-object p0
.end method

.method public final value(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;
    .locals 2

    if-nez p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->nullValue()Lcom/squareup/moshi/JsonUtf8Writer;

    return-object p0

    .line 86
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->promoteValueToName:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->promoteValueToName:Z

    .line 88
    invoke-virtual {p0, p1}, Lcom/squareup/moshi/JsonUtf8Writer;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    return-object p0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->writeDeferredName()V

    .line 90
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->beforeValue()V

    .line 91
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->sink:Lokio/Buffer;

    invoke-static {v0, p1}, Lcom/squareup/moshi/JsonUtf8Writer;->string(Lokio/Buffer;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->pathIndices:[I

    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-object p0
.end method

.method public final writeDeferredName()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->deferredName:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Writer;->peekScope()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x5

    .line 10
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Writer;->sink:Lokio/Buffer;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const/16 v0, 0x2c

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Lokio/Buffer;->writeByte(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x3

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    :goto_0
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->scopes:[I

    .line 24
    .line 25
    iget v1, p0, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    .line 26
    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    aput v3, v0, v1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->deferredName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v2, v0}, Lcom/squareup/moshi/JsonUtf8Writer;->string(Lokio/Buffer;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/squareup/moshi/JsonUtf8Writer;->deferredName:Ljava/lang/String;

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const-string p0, "Nesting problem."

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method
