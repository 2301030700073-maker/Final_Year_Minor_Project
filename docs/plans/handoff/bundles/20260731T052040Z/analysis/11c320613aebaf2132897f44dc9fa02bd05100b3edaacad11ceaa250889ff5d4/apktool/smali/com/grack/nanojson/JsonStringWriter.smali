.class public final Lcom/grack/nanojson/JsonStringWriter;
.super Ljava/lang/Object;


# static fields
.field public static final FALSE:[C

.field public static final HEX:[C

.field public static final NULL:[C

.field public static final TRUE:[C

.field public static final UNICODE_LARGE:[C

.field public static final UNICODE_SMALL:[C


# instance fields
.field public final appendable:Ljava/lang/Appendable;

.field public final buffer:Ljava/lang/StringBuilder;

.field public first:Z

.field public inObject:Z

.field public indent:I

.field public final indentString:Ljava/lang/String;

.field public stateIndex:I

.field public final states:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [C

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/grack/nanojson/JsonStringWriter;->NULL:[C

    .line 8
    .line 9
    new-array v1, v0, [C

    .line 10
    .line 11
    fill-array-data v1, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v1, Lcom/grack/nanojson/JsonStringWriter;->TRUE:[C

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    new-array v1, v1, [C

    .line 18
    .line 19
    fill-array-data v1, :array_2

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/grack/nanojson/JsonStringWriter;->FALSE:[C

    .line 23
    .line 24
    const/16 v1, 0x10

    .line 25
    .line 26
    new-array v1, v1, [C

    .line 27
    .line 28
    fill-array-data v1, :array_3

    .line 29
    .line 30
    .line 31
    sput-object v1, Lcom/grack/nanojson/JsonStringWriter;->HEX:[C

    .line 32
    .line 33
    new-array v0, v0, [C

    .line 34
    .line 35
    fill-array-data v0, :array_4

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/grack/nanojson/JsonStringWriter;->UNICODE_SMALL:[C

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    new-array v0, v0, [C

    .line 42
    .line 43
    fill-array-data v0, :array_5

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/grack/nanojson/JsonStringWriter;->UNICODE_LARGE:[C

    .line 47
    .line 48
    return-void

    .line 49
    :array_0
    .array-data 2
        0x6es
        0x75s
        0x6cs
        0x6cs
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :array_1
    .array-data 2
        0x74s
        0x72s
        0x75s
        0x65s
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_2
    .array-data 2
        0x66s
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    nop

    .line 75
    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :array_4
    .array-data 2
        0x5cs
        0x75s
        0x30s
        0x30s
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_5
    .array-data 2
        0x5cs
        0x75s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/grack/nanojson/JsonStringWriter;-><init>(Ljava/lang/Appendable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/BitSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/grack/nanojson/JsonStringWriter;->states:Ljava/util/BitSet;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/grack/nanojson/JsonStringWriter;->stateIndex:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/grack/nanojson/JsonStringWriter;->first:Z

    .line 16
    .line 17
    iput v0, p0, Lcom/grack/nanojson/JsonStringWriter;->indent:I

    .line 18
    .line 19
    iput-object p1, p0, Lcom/grack/nanojson/JsonStringWriter;->appendable:Ljava/lang/Appendable;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/grack/nanojson/JsonStringWriter;->indentString:Ljava/lang/String;

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const/16 p2, 0x2800

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/grack/nanojson/JsonStringWriter;->buffer:Ljava/lang/StringBuilder;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final array(Ljava/util/Collection;Ljava/lang/String;)Lcom/grack/nanojson/JsonStringWriter;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->preValue()V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/grack/nanojson/JsonStringWriter;->stateIndex:I

    .line 7
    .line 8
    add-int/lit8 v0, p2, 0x1

    .line 9
    .line 10
    iput v0, p0, Lcom/grack/nanojson/JsonStringWriter;->stateIndex:I

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/grack/nanojson/JsonStringWriter;->inObject:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/grack/nanojson/JsonStringWriter;->states:Ljava/util/BitSet;

    .line 15
    .line 16
    invoke-virtual {v1, p2, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p0, Lcom/grack/nanojson/JsonStringWriter;->inObject:Z

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    iput-boolean p2, p0, Lcom/grack/nanojson/JsonStringWriter;->first:Z

    .line 24
    .line 25
    const/16 p2, 0x5b

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0, p2}, Lcom/grack/nanojson/JsonStringWriter;->array(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p0, p2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonStringWriter;

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 53
    .line 54
    .line 55
    return-object p0
.end method

.method public final array(Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonStringWriter;->preValue(Ljava/lang/String;)V

    iget p1, p0, Lcom/grack/nanojson/JsonStringWriter;->stateIndex:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/grack/nanojson/JsonStringWriter;->stateIndex:I

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonStringWriter;->inObject:Z

    iget-object v1, p0, Lcom/grack/nanojson/JsonStringWriter;->states:Ljava/util/BitSet;

    invoke-virtual {v1, p1, v0}, Ljava/util/BitSet;->set(IZ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/grack/nanojson/JsonStringWriter;->inObject:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/grack/nanojson/JsonStringWriter;->first:Z

    const/16 p1, 0x5b

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    return-void
.end method

.method public done()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/grack/nanojson/JsonStringWriter;->stateIndex:I

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/grack/nanojson/JsonStringWriter;->first:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->flush()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/grack/nanojson/JsonStringWriter;->appendable:Ljava/lang/Appendable;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    .line 20
    .line 21
    const-string v0, "Nothing was written to the JSON writer"

    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    .line 28
    .line 29
    const-string v0, "Unclosed JSON objects and/or arrays when closing writer"

    .line 30
    .line 31
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final emitStringValue(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/16 v0, 0x22

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v1, v3, :cond_8

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/16 v4, 0xc

    .line 19
    .line 20
    if-eq v3, v4, :cond_7

    .line 21
    .line 22
    const/16 v4, 0xd

    .line 23
    .line 24
    if-eq v3, v4, :cond_6

    .line 25
    .line 26
    const/16 v4, 0x5c

    .line 27
    .line 28
    if-eq v3, v0, :cond_5

    .line 29
    .line 30
    const/16 v5, 0x2f

    .line 31
    .line 32
    if-eq v3, v5, :cond_4

    .line 33
    .line 34
    if-eq v3, v4, :cond_5

    .line 35
    .line 36
    packed-switch v3, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    const/16 v2, 0x20

    .line 40
    .line 41
    if-lt v3, v2, :cond_2

    .line 42
    .line 43
    const/16 v2, 0x80

    .line 44
    .line 45
    if-lt v3, v2, :cond_0

    .line 46
    .line 47
    const/16 v2, 0xa0

    .line 48
    .line 49
    if-lt v3, v2, :cond_2

    .line 50
    .line 51
    :cond_0
    const/16 v2, 0x2000

    .line 52
    .line 53
    if-lt v3, v2, :cond_1

    .line 54
    .line 55
    const/16 v2, 0x2100

    .line 56
    .line 57
    if-ge v3, v2, :cond_1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    .line 61
    .line 62
    .line 63
    goto :goto_5

    .line 64
    :cond_2
    :goto_2
    const/16 v2, 0x100

    .line 65
    .line 66
    sget-object v4, Lcom/grack/nanojson/JsonStringWriter;->HEX:[C

    .line 67
    .line 68
    if-ge v3, v2, :cond_3

    .line 69
    .line 70
    sget-object v2, Lcom/grack/nanojson/JsonStringWriter;->UNICODE_SMALL:[C

    .line 71
    .line 72
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonStringWriter;->raw([C)V

    .line 73
    .line 74
    .line 75
    shr-int/lit8 v2, v3, 0x4

    .line 76
    .line 77
    and-int/lit8 v2, v2, 0xf

    .line 78
    .line 79
    aget-char v2, v4, v2

    .line 80
    .line 81
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    .line 82
    .line 83
    .line 84
    and-int/lit8 v2, v3, 0xf

    .line 85
    .line 86
    aget-char v2, v4, v2

    .line 87
    .line 88
    :goto_3
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    .line 89
    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_3
    sget-object v2, Lcom/grack/nanojson/JsonStringWriter;->UNICODE_LARGE:[C

    .line 93
    .line 94
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonStringWriter;->raw([C)V

    .line 95
    .line 96
    .line 97
    shr-int/lit8 v2, v3, 0xc

    .line 98
    .line 99
    and-int/lit8 v2, v2, 0xf

    .line 100
    .line 101
    aget-char v2, v4, v2

    .line 102
    .line 103
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    .line 104
    .line 105
    .line 106
    shr-int/lit8 v2, v3, 0x8

    .line 107
    .line 108
    and-int/lit8 v2, v2, 0xf

    .line 109
    .line 110
    aget-char v2, v4, v2

    .line 111
    .line 112
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    .line 113
    .line 114
    .line 115
    shr-int/lit8 v2, v3, 0x4

    .line 116
    .line 117
    and-int/lit8 v2, v2, 0xf

    .line 118
    .line 119
    aget-char v2, v4, v2

    .line 120
    .line 121
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    .line 122
    .line 123
    .line 124
    and-int/lit8 v2, v3, 0xf

    .line 125
    .line 126
    aget-char v2, v4, v2

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :pswitch_0
    const-string v2, "\\n"

    .line 130
    .line 131
    :goto_4
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonStringWriter;->raw(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_5

    .line 135
    :pswitch_1
    const-string v2, "\\t"

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :pswitch_2
    const-string v2, "\\b"

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_4
    const/16 v5, 0x3c

    .line 142
    .line 143
    if-ne v2, v5, :cond_1

    .line 144
    .line 145
    :cond_5
    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_6
    const-string v2, "\\r"

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_7
    const-string v2, "\\f"

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 156
    .line 157
    move v2, v3

    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_8
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final end()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/grack/nanojson/JsonStringWriter;->stateIndex:I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/grack/nanojson/JsonStringWriter;->inObject:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/grack/nanojson/JsonStringWriter;->indentString:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v2, p0, Lcom/grack/nanojson/JsonStringWriter;->indent:I

    .line 15
    .line 16
    add-int/lit8 v2, v2, -0x1

    .line 17
    .line 18
    iput v2, p0, Lcom/grack/nanojson/JsonStringWriter;->indent:I

    .line 19
    .line 20
    const/16 v2, 0xa

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    .line 23
    .line 24
    .line 25
    move v2, v1

    .line 26
    :goto_0
    iget v3, p0, Lcom/grack/nanojson/JsonStringWriter;->indent:I

    .line 27
    .line 28
    if-ge v2, v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonStringWriter;->raw(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/16 v0, 0x7d

    .line 37
    .line 38
    :goto_1
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    const/16 v0, 0x5d

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :goto_2
    iput-boolean v1, p0, Lcom/grack/nanojson/JsonStringWriter;->first:Z

    .line 46
    .line 47
    iget v0, p0, Lcom/grack/nanojson/JsonStringWriter;->stateIndex:I

    .line 48
    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    iput v0, p0, Lcom/grack/nanojson/JsonStringWriter;->stateIndex:I

    .line 52
    .line 53
    iget-object v1, p0, Lcom/grack/nanojson/JsonStringWriter;->states:Ljava/util/BitSet;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput-boolean v0, p0, Lcom/grack/nanojson/JsonStringWriter;->inObject:Z

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    .line 63
    .line 64
    const-string v0, "Invalid call to end()"

    .line 65
    .line 66
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public final flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/grack/nanojson/JsonStringWriter;->buffer:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/grack/nanojson/JsonStringWriter;->appendable:Ljava/lang/Appendable;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance v0, Lcom/grack/nanojson/JsonWriterException;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final object(Ljava/lang/String;Ljava/util/Map;)Lcom/grack/nanojson/JsonStringWriter;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->object()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_b

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    instance-of v1, v1, Ljava/lang/String;

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, "Invalid key type for map: "

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    const-string p2, "null"

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Ljava/lang/String;

    .line 84
    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0, p2}, Lcom/grack/nanojson/JsonStringWriter;->preValue(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sget-object p2, Lcom/grack/nanojson/JsonStringWriter;->NULL:[C

    .line 91
    .line 92
    invoke-virtual {p0, p2}, Lcom/grack/nanojson/JsonStringWriter;->raw([C)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    instance-of v1, v0, Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v1, :cond_4

    .line 99
    .line 100
    check-cast v0, Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p0, p2, v0}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    instance-of v1, v0, Ljava/lang/Number;

    .line 107
    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    check-cast v0, Ljava/lang/Number;

    .line 111
    .line 112
    invoke-virtual {p0, p2}, Lcom/grack/nanojson/JsonStringWriter;->preValue(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p0, p2}, Lcom/grack/nanojson/JsonStringWriter;->raw(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_5
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 124
    .line 125
    if-eqz v1, :cond_6

    .line 126
    .line 127
    check-cast v0, Ljava/lang/Boolean;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-virtual {p0, p2, v0}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_6
    instance-of v1, v0, Ljava/util/Collection;

    .line 138
    .line 139
    if-eqz v1, :cond_7

    .line 140
    .line 141
    check-cast v0, Ljava/util/Collection;

    .line 142
    .line 143
    invoke-virtual {p0, v0, p2}, Lcom/grack/nanojson/JsonStringWriter;->array(Ljava/util/Collection;Ljava/lang/String;)Lcom/grack/nanojson/JsonStringWriter;

    .line 144
    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :cond_7
    instance-of v1, v0, Ljava/util/Map;

    .line 149
    .line 150
    if-eqz v1, :cond_8

    .line 151
    .line 152
    check-cast v0, Ljava/util/Map;

    .line 153
    .line 154
    invoke-virtual {p0, p2, v0}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;Ljava/util/Map;)Lcom/grack/nanojson/JsonStringWriter;

    .line 155
    .line 156
    .line 157
    goto/16 :goto_1

    .line 158
    .line 159
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_a

    .line 168
    .line 169
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-virtual {p0, p2}, Lcom/grack/nanojson/JsonStringWriter;->array(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const/4 p2, 0x0

    .line 177
    :goto_3
    if-ge p2, v1, :cond_9

    .line 178
    .line 179
    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonStringWriter;

    .line 184
    .line 185
    .line 186
    add-int/lit8 p2, p2, 0x1

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_9
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :cond_a
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    new-instance p2, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v0, "Unable to handle type: "

    .line 203
    .line 204
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p0

    .line 218
    :cond_b
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 219
    .line 220
    .line 221
    return-object p0
.end method

.method public final object()V
    .locals 3

    .line 222
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->preValue()V

    iget v0, p0, Lcom/grack/nanojson/JsonStringWriter;->stateIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/grack/nanojson/JsonStringWriter;->stateIndex:I

    iget-boolean v1, p0, Lcom/grack/nanojson/JsonStringWriter;->inObject:Z

    iget-object v2, p0, Lcom/grack/nanojson/JsonStringWriter;->states:Ljava/util/BitSet;

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonStringWriter;->inObject:Z

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonStringWriter;->first:Z

    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    iget-object v1, p0, Lcom/grack/nanojson/JsonStringWriter;->indentString:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/grack/nanojson/JsonStringWriter;->indent:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/grack/nanojson/JsonStringWriter;->indent:I

    const/16 v0, 0xa

    .line 223
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    :cond_0
    return-void
.end method

.method public final object(Ljava/lang/String;)V
    .locals 2

    .line 224
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonStringWriter;->preValue(Ljava/lang/String;)V

    iget p1, p0, Lcom/grack/nanojson/JsonStringWriter;->stateIndex:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/grack/nanojson/JsonStringWriter;->stateIndex:I

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonStringWriter;->inObject:Z

    iget-object v1, p0, Lcom/grack/nanojson/JsonStringWriter;->states:Ljava/util/BitSet;

    invoke-virtual {v1, p1, v0}, Ljava/util/BitSet;->set(IZ)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/grack/nanojson/JsonStringWriter;->inObject:Z

    iput-boolean p1, p0, Lcom/grack/nanojson/JsonStringWriter;->first:Z

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    iget-object v0, p0, Lcom/grack/nanojson/JsonStringWriter;->indentString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/grack/nanojson/JsonStringWriter;->indent:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/grack/nanojson/JsonStringWriter;->indent:I

    const/16 p1, 0xa

    .line 225
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    :cond_0
    return-void
.end method

.method public final pre()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/grack/nanojson/JsonStringWriter;->first:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/grack/nanojson/JsonStringWriter;->first:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget v0, p0, Lcom/grack/nanojson/JsonStringWriter;->stateIndex:I

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x2c

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/grack/nanojson/JsonStringWriter;->indentString:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/grack/nanojson/JsonStringWriter;->inObject:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0xa

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void

    .line 32
    :cond_2
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    .line 33
    .line 34
    const-string v0, "Invalid call to emit a value in a finished JSON writer"

    .line 35
    .line 36
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final preValue()V
    .locals 1

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonStringWriter;->inObject:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->pre()V

    return-void

    :cond_0
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    const-string v0, "Invalid call to emit a keyless value while writing an object"

    .line 40
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p0
.end method

.method public final preValue(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/grack/nanojson/JsonStringWriter;->inObject:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->pre()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/grack/nanojson/JsonStringWriter;->indentString:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget v2, p0, Lcom/grack/nanojson/JsonStringWriter;->indent:I

    .line 14
    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonStringWriter;->raw(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonStringWriter;->emitStringValue(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/16 p1, 0x3a

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    .line 33
    .line 34
    const-string p1, "Invalid call to emit a key value while not writing an object"

    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final raw(C)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/grack/nanojson/JsonStringWriter;->buffer:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/16 v0, 0x2800

    .line 11
    .line 12
    if-le p1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->flush()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final raw(Ljava/lang/String;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/grack/nanojson/JsonStringWriter;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v0, 0x2800

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->flush()V

    :cond_0
    return-void
.end method

.method public final raw([C)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/grack/nanojson/JsonStringWriter;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v0, 0x2800

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->flush()V

    :cond_0
    return-void
.end method

.method public final value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonStringWriter;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->preValue()V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/grack/nanojson/JsonStringWriter;->NULL:[C

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonStringWriter;->raw([C)V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->preValue()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonStringWriter;->emitStringValue(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    check-cast p1, Ljava/lang/Number;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->preValue()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonStringWriter;->raw(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    check-cast p1, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->preValue()V

    .line 53
    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    sget-object p1, Lcom/grack/nanojson/JsonStringWriter;->TRUE:[C

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    sget-object p1, Lcom/grack/nanojson/JsonStringWriter;->FALSE:[C

    .line 61
    .line 62
    :goto_0
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonStringWriter;->raw([C)V

    .line 63
    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_4
    instance-of v0, p1, Ljava/util/Collection;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    check-cast p1, Ljava/util/Collection;

    .line 72
    .line 73
    invoke-virtual {p0, p1, v1}, Lcom/grack/nanojson/JsonStringWriter;->array(Ljava/util/Collection;Ljava/lang/String;)Lcom/grack/nanojson/JsonStringWriter;

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_5
    instance-of v0, p1, Ljava/util/Map;

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    check-cast p1, Ljava/util/Map;

    .line 82
    .line 83
    invoke-virtual {p0, v1, p1}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;Ljava/util/Map;)Lcom/grack/nanojson/JsonStringWriter;

    .line 84
    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_8

    .line 96
    .line 97
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->preValue()V

    .line 102
    .line 103
    .line 104
    iget v1, p0, Lcom/grack/nanojson/JsonStringWriter;->stateIndex:I

    .line 105
    .line 106
    add-int/lit8 v2, v1, 0x1

    .line 107
    .line 108
    iput v2, p0, Lcom/grack/nanojson/JsonStringWriter;->stateIndex:I

    .line 109
    .line 110
    iget-boolean v2, p0, Lcom/grack/nanojson/JsonStringWriter;->inObject:Z

    .line 111
    .line 112
    iget-object v3, p0, Lcom/grack/nanojson/JsonStringWriter;->states:Ljava/util/BitSet;

    .line 113
    .line 114
    invoke-virtual {v3, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 115
    .line 116
    .line 117
    const/4 v1, 0x0

    .line 118
    iput-boolean v1, p0, Lcom/grack/nanojson/JsonStringWriter;->inObject:Z

    .line 119
    .line 120
    const/4 v2, 0x1

    .line 121
    iput-boolean v2, p0, Lcom/grack/nanojson/JsonStringWriter;->first:Z

    .line 122
    .line 123
    const/16 v2, 0x5b

    .line 124
    .line 125
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonStringWriter;->raw(C)V

    .line 126
    .line 127
    .line 128
    :goto_1
    if-ge v1, v0, :cond_7

    .line 129
    .line 130
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonStringWriter;

    .line 135
    .line 136
    .line 137
    add-int/lit8 v1, v1, 0x1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_7
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 141
    .line 142
    .line 143
    return-object p0

    .line 144
    :cond_8
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v1, "Unable to handle type: "

    .line 153
    .line 154
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p0
.end method

.method public final value(ILjava/lang/String;)V
    .locals 0

    .line 168
    invoke-virtual {p0, p2}, Lcom/grack/nanojson/JsonStringWriter;->preValue(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonStringWriter;->raw(Ljava/lang/String;)V

    return-void
.end method

.method public final value(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonStringWriter;->preValue(Ljava/lang/String;)V

    sget-object p1, Lcom/grack/nanojson/JsonStringWriter;->NULL:[C

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonStringWriter;->raw([C)V

    return-void

    .line 170
    :cond_0
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonStringWriter;->preValue(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/grack/nanojson/JsonStringWriter;->emitStringValue(Ljava/lang/String;)V

    return-void
.end method

.method public final value(Ljava/lang/String;Z)V
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonStringWriter;->preValue(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget-object p1, Lcom/grack/nanojson/JsonStringWriter;->TRUE:[C

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/grack/nanojson/JsonStringWriter;->FALSE:[C

    :goto_0
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonStringWriter;->raw([C)V

    return-void
.end method
