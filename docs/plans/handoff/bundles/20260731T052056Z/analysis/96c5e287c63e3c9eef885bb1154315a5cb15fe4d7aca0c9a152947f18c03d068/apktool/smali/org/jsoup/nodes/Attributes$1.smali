.class public final Lorg/jsoup/nodes/Attributes$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic $r8$classId:I

.field public expectedSize:I

.field public i:I

.field public final synthetic this$0:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->$r8$classId:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Ljava/lang/Iterable;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 22
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    move-result p1

    iput p1, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    return-void
.end method

.method public constructor <init>(Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Ljava/lang/Iterable;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;->size()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->$r8$classId:I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Ljava/lang/Iterable;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 25
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    array-length p1, p1

    .line 26
    iput p1, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/nodes/Attributes;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->$r8$classId:I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Ljava/lang/Iterable;

    .line 28
    iget p1, p1, Lorg/jsoup/nodes/Attributes;->size:I

    iput p1, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 29
    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 5

    .line 1
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 9
    .line 10
    iget p0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 11
    .line 12
    if-ge v0, p0, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    :cond_0
    return v1

    .line 16
    :pswitch_0
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 17
    .line 18
    iget p0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 19
    .line 20
    if-ge v0, p0, :cond_1

    .line 21
    .line 22
    move v1, v2

    .line 23
    :cond_1
    return v1

    .line 24
    :pswitch_1
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 25
    .line 26
    iget p0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 27
    .line 28
    if-ge v0, p0, :cond_2

    .line 29
    .line 30
    move v1, v2

    .line 31
    :cond_2
    return v1

    .line 32
    :pswitch_2
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Ljava/lang/Iterable;

    .line 33
    .line 34
    check-cast v0, Lorg/jsoup/nodes/Attributes;

    .line 35
    .line 36
    iget v3, v0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 37
    .line 38
    iget v4, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 39
    .line 40
    if-ne v3, v4, :cond_5

    .line 41
    .line 42
    :goto_0
    iget v3, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 43
    .line 44
    iget v4, v0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 45
    .line 46
    if-ge v3, v4, :cond_3

    .line 47
    .line 48
    iget-object v4, v0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 49
    .line 50
    aget-object v3, v4, v3

    .line 51
    .line 52
    invoke-static {v3}, Lorg/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    iget v3, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 59
    .line 60
    add-int/2addr v3, v2

    .line 61
    iput v3, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget p0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 65
    .line 66
    iget v0, v0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 67
    .line 68
    if-ge p0, v0, :cond_4

    .line 69
    .line 70
    move v1, v2

    .line 71
    :cond_4
    return v1

    .line 72
    :cond_5
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 73
    .line 74
    const-string v0, "Use Iterator#remove() instead to remove attributes while iterating."

    .line 75
    .line 76
    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Ljava/lang/Iterable;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes$1;->nextByte()B

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :pswitch_0
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 19
    .line 20
    iget v3, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 21
    .line 22
    if-ge v0, v3, :cond_0

    .line 23
    .line 24
    add-int/lit8 v1, v0, 0x1

    .line 25
    .line 26
    iput v1, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 27
    .line 28
    check-cast v2, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;->internalByteAt(I)B

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-object v1

    .line 43
    :pswitch_1
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 44
    .line 45
    iget v3, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 46
    .line 47
    if-ge v0, v3, :cond_1

    .line 48
    .line 49
    add-int/lit8 v1, v0, 0x1

    .line 50
    .line 51
    iput v1, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 52
    .line 53
    check-cast v2, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 54
    .line 55
    iget-object p0, v2, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 56
    .line 57
    aget-byte p0, p0, v0

    .line 58
    .line 59
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-static {}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m()V

    .line 65
    .line 66
    .line 67
    :goto_1
    return-object v1

    .line 68
    :pswitch_2
    check-cast v2, Lorg/jsoup/nodes/Attributes;

    .line 69
    .line 70
    iget v0, v2, Lorg/jsoup/nodes/Attributes;->size:I

    .line 71
    .line 72
    iget v3, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 73
    .line 74
    if-ne v0, v3, :cond_3

    .line 75
    .line 76
    iget v3, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 77
    .line 78
    if-ge v3, v0, :cond_2

    .line 79
    .line 80
    iget-object v0, v2, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 81
    .line 82
    aget-object v0, v0, v3

    .line 83
    .line 84
    new-instance v1, Lorg/jsoup/nodes/Attribute;

    .line 85
    .line 86
    iget-object v3, v2, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    .line 87
    .line 88
    iget v4, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 89
    .line 90
    aget-object v3, v3, v4

    .line 91
    .line 92
    check-cast v3, Ljava/lang/String;

    .line 93
    .line 94
    invoke-direct {v1, v0, v3, v2}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 95
    .line 96
    .line 97
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 98
    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 100
    .line 101
    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    invoke-static {}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m()V

    .line 105
    .line 106
    .line 107
    :goto_2
    return-object v1

    .line 108
    :cond_3
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 109
    .line 110
    const-string v0, "Use Iterator#remove() instead to remove attributes while iterating."

    .line 111
    .line 112
    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nextByte()B
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Ljava/lang/Iterable;

    .line 2
    .line 3
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    .line 4
    .line 5
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    .line 6
    .line 7
    iget v1, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 8
    .line 9
    add-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    iput v2, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 12
    .line 13
    aget-byte p0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw p0

    .line 12
    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :pswitch_2
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Ljava/lang/Iterable;

    .line 25
    .line 26
    check-cast v0, Lorg/jsoup/nodes/Attributes;

    .line 27
    .line 28
    iget v1, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 29
    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    iput v1, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->remove(I)V

    .line 35
    .line 36
    .line 37
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 38
    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
