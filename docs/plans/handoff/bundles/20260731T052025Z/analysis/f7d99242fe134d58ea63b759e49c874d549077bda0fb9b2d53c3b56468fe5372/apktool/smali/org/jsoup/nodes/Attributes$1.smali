.class public final Lorg/jsoup/nodes/Attributes$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

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

    .line 1
    const/4 v0, 0x1

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
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

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

.method public constructor <init>(Lorg/jsoup/nodes/Attributes;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->$r8$classId:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Ljava/lang/Iterable;

    .line 20
    iget p1, p1, Lorg/jsoup/nodes/Attributes;->size:I

    .line 21
    iput p1, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 22
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
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Ljava/lang/Iterable;

    .line 17
    .line 18
    check-cast v0, Lorg/jsoup/nodes/Attributes;

    .line 19
    .line 20
    iget v3, v0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 21
    .line 22
    iget v4, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 23
    .line 24
    if-ne v3, v4, :cond_3

    .line 25
    .line 26
    :goto_0
    iget v3, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 27
    .line 28
    iget v4, v0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 29
    .line 30
    if-ge v3, v4, :cond_1

    .line 31
    .line 32
    iget-object v4, v0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 33
    .line 34
    aget-object v3, v4, v3

    .line 35
    .line 36
    invoke-static {v3}, Lorg/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    iget v3, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 43
    .line 44
    add-int/2addr v3, v2

    .line 45
    iput v3, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget p0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 49
    .line 50
    iget v0, v0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 51
    .line 52
    if-ge p0, v0, :cond_2

    .line 53
    .line 54
    move v1, v2

    .line 55
    :cond_2
    return v1

    .line 56
    :cond_3
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 57
    .line 58
    const-string v0, "Use Iterator#remove() instead to remove attributes while iterating."

    .line 59
    .line 60
    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
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
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 10
    .line 11
    iget v3, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 12
    .line 13
    if-ge v0, v3, :cond_0

    .line 14
    .line 15
    add-int/lit8 v1, v0, 0x1

    .line 16
    .line 17
    iput v1, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 18
    .line 19
    check-cast v2, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->internalByteAt(I)B

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m()V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-object v1

    .line 34
    :pswitch_0
    check-cast v2, Lorg/jsoup/nodes/Attributes;

    .line 35
    .line 36
    iget v0, v2, Lorg/jsoup/nodes/Attributes;->size:I

    .line 37
    .line 38
    iget v3, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 39
    .line 40
    if-ne v0, v3, :cond_2

    .line 41
    .line 42
    iget v3, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 43
    .line 44
    if-ge v3, v0, :cond_1

    .line 45
    .line 46
    iget-object v0, v2, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 47
    .line 48
    aget-object v0, v0, v3

    .line 49
    .line 50
    new-instance v1, Lorg/jsoup/nodes/Attribute;

    .line 51
    .line 52
    iget-object v3, v2, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    .line 53
    .line 54
    iget v4, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 55
    .line 56
    aget-object v3, v3, v4

    .line 57
    .line 58
    check-cast v3, Ljava/lang/String;

    .line 59
    .line 60
    invoke-direct {v1, v0, v3, v2}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 61
    .line 62
    .line 63
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 64
    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-static {}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m()V

    .line 71
    .line 72
    .line 73
    :goto_1
    return-object v1

    .line 74
    :cond_2
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 75
    .line 76
    const-string v0, "Use Iterator#remove() instead to remove attributes while iterating."

    .line 77
    .line 78
    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
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
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Ljava/lang/Iterable;

    .line 13
    .line 14
    check-cast v0, Lorg/jsoup/nodes/Attributes;

    .line 15
    .line 16
    iget v1, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    iput v1, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->remove(I)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 26
    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
