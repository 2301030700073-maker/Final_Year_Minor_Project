.class public Lorg/mozilla/classfile/ClassFileWriter;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final GenerateStackMap:Z

.field public static final MajorVersion:I

.field public static final MinorVersion:I


# instance fields
.field public final generatedClassName:Ljava/lang/String;

.field public itsBootstrapMethods:Ljava/util/ArrayList;

.field public itsBootstrapMethodsLength:I

.field public itsCodeBuffer:[B

.field public itsCodeBufferTop:I

.field public final itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

.field public itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

.field public itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

.field public itsExceptionTableTop:I

.field public final itsFields:Ljava/util/ArrayList;

.field public itsFixupTable:[J

.field public itsFixupTableTop:I

.field public final itsFlags:I

.field public final itsInterfaces:Ljava/util/ArrayList;

.field public itsJumpFroms:Ljava/util/HashMap;

.field public itsLabelTable:[I

.field public itsLabelTableTop:I

.field public itsLineNumberTable:[I

.field public itsLineNumberTableTop:I

.field public itsMaxLocals:I

.field public itsMaxStack:I

.field public final itsMethods:Ljava/util/ArrayList;

.field public final itsSourceFileNameIndex:I

.field public itsStackTop:I

.field public itsSuperBlockStarts:[I

.field public itsSuperBlockStartsTop:I

.field public final itsSuperClassIndex:I

.field public final itsThisClassIndex:I

.field public itsVarDescriptors:Ljava/util/ArrayList;

.field public tmpCharBuffer:[C


# direct methods
.method public static -$$Nest$mcreateInitialLocals(Lorg/mozilla/classfile/ClassFileWriter;)[I
    .locals 10

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:I

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    .line 6
    .line 7
    iget-short v2, v1, Lorg/mozilla/classfile/ClassFileMethod;->itsFlags:S

    .line 8
    .line 9
    and-int/lit8 v2, v2, 0x8

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    const-string v2, "<init>"

    .line 16
    .line 17
    iget-object v1, v1, Lorg/mozilla/classfile/ClassFileMethod;->itsName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x6

    .line 26
    aput v1, v0, v4

    .line 27
    .line 28
    :goto_0
    move v1, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:I

    .line 31
    .line 32
    invoke-static {v1}, Lokio/Okio;->OBJECT(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    aput v1, v0, v4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v1, v4

    .line 40
    :goto_1
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    .line 41
    .line 42
    iget-object v2, v2, Lorg/mozilla/classfile/ClassFileMethod;->itsType:Ljava/lang/String;

    .line 43
    .line 44
    const/16 v5, 0x28

    .line 45
    .line 46
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    const/16 v6, 0x29

    .line 51
    .line 52
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-nez v5, :cond_7

    .line 57
    .line 58
    if-ltz v6, :cond_7

    .line 59
    .line 60
    add-int/2addr v5, v3

    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    :goto_2
    if-ge v5, v6, :cond_6

    .line 67
    .line 68
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const/16 v9, 0x46

    .line 73
    .line 74
    if-eq v8, v9, :cond_4

    .line 75
    .line 76
    const/16 v9, 0x4c

    .line 77
    .line 78
    if-eq v8, v9, :cond_3

    .line 79
    .line 80
    const/16 v9, 0x53

    .line 81
    .line 82
    if-eq v8, v9, :cond_4

    .line 83
    .line 84
    const/16 v9, 0x49

    .line 85
    .line 86
    if-eq v8, v9, :cond_4

    .line 87
    .line 88
    const/16 v9, 0x4a

    .line 89
    .line 90
    if-eq v8, v9, :cond_4

    .line 91
    .line 92
    const/16 v9, 0x5a

    .line 93
    .line 94
    if-eq v8, v9, :cond_4

    .line 95
    .line 96
    const/16 v9, 0x5b

    .line 97
    .line 98
    if-eq v8, v9, :cond_2

    .line 99
    .line 100
    packed-switch v8, :pswitch_data_0

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    add-int/lit8 v5, v5, 0x1

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    const/16 v8, 0x3b

    .line 111
    .line 112
    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->indexOf(II)I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    add-int/2addr v8, v3

    .line 117
    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    move v5, v8

    .line 125
    goto :goto_3

    .line 126
    :cond_4
    :pswitch_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    add-int/lit8 v5, v5, 0x1

    .line 134
    .line 135
    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-static {v8}, Lorg/mozilla/classfile/ClassFileWriter;->descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    iget-object v9, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 144
    .line 145
    invoke-static {v8, v9}, Lokio/Okio;->fromType(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    add-int/lit8 v9, v1, 0x1

    .line 150
    .line 151
    aput v8, v0, v1

    .line 152
    .line 153
    invoke-static {v8}, Lokio/Okio;->isTwoWords(I)Z

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    if-eqz v8, :cond_5

    .line 158
    .line 159
    add-int/lit8 v1, v1, 0x2

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_5
    move v1, v9

    .line 163
    :goto_4
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_6
    return-object v0

    .line 168
    :cond_7
    const-string p0, "bad method type"

    .line 169
    .line 170
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const/4 p0, 0x0

    .line 174
    return-object p0

    .line 175
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x32

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x30

    .line 6
    .line 7
    :try_start_0
    const-class v4, Lorg/mozilla/classfile/ClassFileWriter;

    .line 8
    .line 9
    const-string v5, "ClassFileWriter.class"

    .line 10
    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    const-string v4, "org/mozilla/classfile/ClassFileWriter.class"

    .line 18
    .line 19
    invoke-static {v4}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 23
    :cond_0
    if-eqz v4, :cond_3

    .line 24
    .line 25
    const/16 v5, 0x8

    .line 26
    .line 27
    :try_start_1
    new-array v6, v5, [B

    .line 28
    .line 29
    move v7, v2

    .line 30
    :goto_0
    if-ge v7, v5, :cond_2

    .line 31
    .line 32
    rsub-int/lit8 v8, v7, 0x8

    .line 33
    .line 34
    invoke-virtual {v4, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-ltz v8, :cond_1

    .line 39
    .line 40
    add-int/2addr v7, v8

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v5, Ljava/io/IOException;

    .line 43
    .line 44
    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw v5

    .line 48
    :catchall_0
    move-exception v5

    .line 49
    move v7, v2

    .line 50
    goto :goto_4

    .line 51
    :cond_2
    const/4 v7, 0x4

    .line 52
    aget-byte v7, v6, v7

    .line 53
    .line 54
    shl-int/2addr v7, v5

    .line 55
    const/4 v8, 0x5

    .line 56
    aget-byte v8, v6, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    and-int/lit16 v8, v8, 0xff

    .line 59
    .line 60
    or-int/2addr v7, v8

    .line 61
    const/4 v8, 0x6

    .line 62
    :try_start_2
    aget-byte v8, v6, v8

    .line 63
    .line 64
    shl-int/lit8 v5, v8, 0x8

    .line 65
    .line 66
    const/4 v8, 0x7

    .line 67
    aget-byte v3, v6, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    .line 69
    and-int/lit16 v3, v3, 0xff

    .line 70
    .line 71
    or-int/2addr v3, v5

    .line 72
    goto :goto_1

    .line 73
    :catchall_1
    move-exception v5

    .line 74
    goto :goto_4

    .line 75
    :cond_3
    :try_start_3
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 76
    .line 77
    const-string v6, "Warning: Unable to read ClassFileWriter.class, using default bytecode version"

    .line 78
    .line 79
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    .line 81
    .line 82
    move v7, v2

    .line 83
    :goto_1
    if-eqz v4, :cond_4

    .line 84
    .line 85
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catchall_2
    move-exception v4

    .line 90
    goto :goto_6

    .line 91
    :cond_4
    :goto_2
    sput v7, Lorg/mozilla/classfile/ClassFileWriter;->MinorVersion:I

    .line 92
    .line 93
    sput v3, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    .line 94
    .line 95
    if-lt v3, v1, :cond_5

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    move v0, v2

    .line 99
    :goto_3
    sput-boolean v0, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    .line 100
    .line 101
    return-void

    .line 102
    :goto_4
    if-eqz v4, :cond_6

    .line 103
    .line 104
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 105
    .line 106
    .line 107
    goto :goto_5

    .line 108
    :catchall_3
    move-exception v4

    .line 109
    :try_start_6
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    :cond_6
    :goto_5
    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 113
    :catchall_4
    move-exception v4

    .line 114
    move v7, v2

    .line 115
    goto :goto_6

    .line 116
    :catch_0
    move v7, v2

    .line 117
    :catch_1
    :try_start_7
    new-instance v4, Ljava/lang/AssertionError;

    .line 118
    .line 119
    const-string v5, "Can\'t read ClassFileWriter.class to get bytecode version"

    .line 120
    .line 121
    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 125
    :goto_6
    sput v7, Lorg/mozilla/classfile/ClassFileWriter;->MinorVersion:I

    .line 126
    .line 127
    sput v3, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    .line 128
    .line 129
    if-lt v3, v1, :cond_7

    .line 130
    .line 131
    goto :goto_7

    .line 132
    :cond_7
    move v0, v2

    .line 133
    :goto_7
    sput-boolean v0, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    .line 134
    .line 135
    throw v4
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    .line 9
    .line 10
    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Ljava/util/HashMap;

    .line 11
    .line 12
    const/16 v0, 0x100

    .line 13
    .line 14
    new-array v0, v0, [B

    .line 15
    .line 16
    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethodsLength:I

    .line 40
    .line 41
    const/16 v0, 0x40

    .line 42
    .line 43
    new-array v0, v0, [C

    .line 44
    .line 45
    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    .line 46
    .line 47
    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->generatedClassName:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v0, Lorg/mozilla/classfile/ConstantPool;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lorg/mozilla/classfile/ConstantPool;-><init>(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:I

    .line 61
    .line 62
    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperClassIndex:I

    .line 67
    .line 68
    if-eqz p3, :cond_0

    .line 69
    .line 70
    invoke-virtual {v0, p3}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:I

    .line 75
    .line 76
    :cond_0
    const/16 p1, 0x21

    .line 77
    .line 78
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFlags:I

    .line 79
    .line 80
    return-void
.end method

.method public static badStack(I)V
    .locals 1

    .line 1
    if-gez p0, :cond_0

    .line 2
    .line 3
    const-string v0, "Stack underflow: "

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "Too big stack: "

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public static descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x46

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/16 v1, 0x4c

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x53

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/16 v1, 0x56

    .line 19
    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x49

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    const/16 v1, 0x4a

    .line 27
    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    const/16 v1, 0x5a

    .line 31
    .line 32
    if-eq v0, v1, :cond_1

    .line 33
    .line 34
    const/16 v1, 0x5b

    .line 35
    .line 36
    if-eq v0, v1, :cond_1

    .line 37
    .line 38
    packed-switch v0, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    const-string v0, "bad descriptor:"

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0

    .line 52
    :cond_0
    const/4 v0, 0x1

    .line 53
    invoke-static {v0, v0, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :cond_1
    :pswitch_0
    return-object p0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static putInt16([BII)I
    .locals 1

    .line 1
    ushr-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    aput-byte v0, p0, p2

    .line 5
    .line 6
    add-int/lit8 v0, p2, 0x1

    .line 7
    .line 8
    int-to-byte p1, p1

    .line 9
    aput-byte p1, p0, v0

    .line 10
    .line 11
    add-int/lit8 p2, p2, 0x2

    .line 12
    .line 13
    return p2
.end method

.method public static putInt32([BII)I
    .locals 2

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    aput-byte v0, p0, p2

    .line 5
    .line 6
    add-int/lit8 v0, p2, 0x1

    .line 7
    .line 8
    ushr-int/lit8 v1, p1, 0x10

    .line 9
    .line 10
    int-to-byte v1, v1

    .line 11
    aput-byte v1, p0, v0

    .line 12
    .line 13
    add-int/lit8 v0, p2, 0x2

    .line 14
    .line 15
    ushr-int/lit8 v1, p1, 0x8

    .line 16
    .line 17
    int-to-byte v1, v1

    .line 18
    aput-byte v1, p0, v0

    .line 19
    .line 20
    add-int/lit8 v0, p2, 0x3

    .line 21
    .line 22
    int-to-byte p1, p1

    .line 23
    aput-byte p1, p0, v0

    .line 24
    .line 25
    add-int/lit8 p2, p2, 0x4

    .line 26
    .line 27
    return p2
.end method

.method public static sizeOfParameters(Ljava/lang/String;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x29

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x3

    .line 14
    const/4 v4, 0x0

    .line 15
    if-gt v3, v1, :cond_c

    .line 16
    .line 17
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/16 v5, 0x28

    .line 22
    .line 23
    if-ne v3, v5, :cond_c

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-gt v3, v2, :cond_c

    .line 27
    .line 28
    add-int/lit8 v5, v2, 0x1

    .line 29
    .line 30
    if-ge v5, v1, :cond_c

    .line 31
    .line 32
    move v1, v3

    .line 33
    move v6, v4

    .line 34
    move v7, v6

    .line 35
    :goto_0
    const/16 v8, 0x5b

    .line 36
    .line 37
    const/16 v9, 0x5a

    .line 38
    .line 39
    const/16 v10, 0x4a

    .line 40
    .line 41
    const/16 v11, 0x49

    .line 42
    .line 43
    const/16 v12, 0x53

    .line 44
    .line 45
    const/16 v13, 0x4c

    .line 46
    .line 47
    const/16 v14, 0x46

    .line 48
    .line 49
    if-eq v1, v2, :cond_8

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v15

    .line 55
    if-eq v15, v14, :cond_5

    .line 56
    .line 57
    if-eq v15, v13, :cond_6

    .line 58
    .line 59
    if-eq v15, v12, :cond_5

    .line 60
    .line 61
    if-eq v15, v11, :cond_5

    .line 62
    .line 63
    if-eq v15, v10, :cond_4

    .line 64
    .line 65
    if-eq v15, v9, :cond_5

    .line 66
    .line 67
    if-eq v15, v8, :cond_1

    .line 68
    .line 69
    packed-switch v15, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    :goto_1
    move/from16 v16, v3

    .line 73
    .line 74
    :cond_0
    :goto_2
    move v1, v4

    .line 75
    goto :goto_6

    .line 76
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v15

    .line 82
    :goto_3
    if-ne v15, v8, :cond_2

    .line 83
    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 87
    .line 88
    .line 89
    move-result v15

    .line 90
    goto :goto_3

    .line 91
    :cond_2
    if-eq v15, v14, :cond_3

    .line 92
    .line 93
    if-eq v15, v13, :cond_6

    .line 94
    .line 95
    if-eq v15, v12, :cond_3

    .line 96
    .line 97
    if-eq v15, v9, :cond_3

    .line 98
    .line 99
    if-eq v15, v11, :cond_3

    .line 100
    .line 101
    if-eq v15, v10, :cond_3

    .line 102
    .line 103
    packed-switch v15, :pswitch_data_1

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    :pswitch_0
    add-int/lit8 v6, v6, -0x1

    .line 108
    .line 109
    add-int/lit8 v7, v7, 0x1

    .line 110
    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    :pswitch_1
    add-int/lit8 v6, v6, -0x1

    .line 115
    .line 116
    :cond_5
    :pswitch_2
    move/from16 v16, v3

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_6
    add-int/lit8 v6, v6, -0x1

    .line 120
    .line 121
    add-int/lit8 v7, v7, 0x1

    .line 122
    .line 123
    add-int/lit8 v15, v1, 0x1

    .line 124
    .line 125
    move/from16 v16, v3

    .line 126
    .line 127
    const/16 v3, 0x3b

    .line 128
    .line 129
    invoke-virtual {v0, v3, v15}, Ljava/lang/String;->indexOf(II)I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    add-int/lit8 v1, v1, 0x2

    .line 134
    .line 135
    if-gt v1, v3, :cond_0

    .line 136
    .line 137
    if-lt v3, v2, :cond_7

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_7
    add-int/lit8 v1, v3, 0x1

    .line 141
    .line 142
    :goto_4
    move/from16 v3, v16

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :goto_5
    add-int/lit8 v6, v6, -0x1

    .line 146
    .line 147
    add-int/lit8 v7, v7, 0x1

    .line 148
    .line 149
    add-int/lit8 v1, v1, 0x1

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_8
    move/from16 v16, v3

    .line 153
    .line 154
    move/from16 v1, v16

    .line 155
    .line 156
    :goto_6
    if-eqz v1, :cond_c

    .line 157
    .line 158
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eq v2, v14, :cond_a

    .line 163
    .line 164
    if-eq v2, v13, :cond_a

    .line 165
    .line 166
    if-eq v2, v12, :cond_a

    .line 167
    .line 168
    const/16 v3, 0x56

    .line 169
    .line 170
    if-eq v2, v3, :cond_b

    .line 171
    .line 172
    if-eq v2, v11, :cond_a

    .line 173
    .line 174
    if-eq v2, v10, :cond_9

    .line 175
    .line 176
    if-eq v2, v9, :cond_a

    .line 177
    .line 178
    if-eq v2, v8, :cond_a

    .line 179
    .line 180
    packed-switch v2, :pswitch_data_2

    .line 181
    .line 182
    .line 183
    move v1, v4

    .line 184
    goto :goto_7

    .line 185
    :cond_9
    :pswitch_3
    add-int/lit8 v6, v6, 0x1

    .line 186
    .line 187
    :cond_a
    :pswitch_4
    add-int/lit8 v6, v6, 0x1

    .line 188
    .line 189
    :cond_b
    :goto_7
    if-eqz v1, :cond_c

    .line 190
    .line 191
    shl-int/lit8 v0, v7, 0x10

    .line 192
    .line 193
    const v1, 0xffff

    .line 194
    .line 195
    .line 196
    and-int/2addr v1, v6

    .line 197
    or-int/2addr v0, v1

    .line 198
    return v0

    .line 199
    :cond_c
    const-string v1, "Bad parameter signature: "

    .line 200
    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return v4

    .line 209
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :pswitch_data_2
    .packed-switch 0x42
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static stackChange(I)I
    .locals 1

    .line 1
    const/16 v0, 0xfe

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xff

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const-string v0, "Bad opcode: "

    .line 13
    .line 14
    invoke-static {p0, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :pswitch_0
    const/4 p0, -0x4

    .line 24
    return p0

    .line 25
    :pswitch_1
    const/4 p0, -0x3

    .line 26
    return p0

    .line 27
    :pswitch_2
    const/4 p0, -0x2

    .line 28
    return p0

    .line 29
    :pswitch_3
    const/4 p0, -0x1

    .line 30
    return p0

    .line 31
    :pswitch_4
    const/4 p0, 0x2

    .line 32
    return p0

    .line 33
    :pswitch_5
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_0
    :pswitch_6
    const/4 p0, 0x0

    .line 36
    return p0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final acquireLabel()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-ne v0, v2, :cond_2

    .line 9
    .line 10
    :cond_0
    if-nez v1, :cond_1

    .line 11
    .line 12
    const/16 v1, 0x20

    .line 13
    .line 14
    new-array v1, v1, [I

    .line 15
    .line 16
    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    array-length v2, v1

    .line 20
    mul-int/lit8 v2, v2, 0x2

    .line 21
    .line 22
    new-array v2, v2, [I

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    .line 29
    .line 30
    :cond_2
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 31
    .line 32
    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    .line 33
    .line 34
    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    .line 35
    .line 36
    const/4 v1, -0x1

    .line 37
    aput v1, p0, v0

    .line 38
    .line 39
    const/high16 p0, -0x80000000

    .line 40
    .line 41
    or-int/2addr p0, v0

    .line 42
    return p0
.end method

.method public final add(I)V
    .locals 3

    .line 1
    const/16 v0, 0xfe

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xff

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    packed-switch p1, :pswitch_data_1

    .line 13
    .line 14
    .line 15
    const-string p0, "Bad opcode: "

    .line 16
    .line 17
    invoke-static {p1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    const-string p0, "Unexpected operands"

    .line 26
    .line 27
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    :pswitch_1
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 32
    .line 33
    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v1, v0

    .line 38
    if-ltz v1, :cond_3

    .line 39
    .line 40
    const/16 v0, 0x7fff

    .line 41
    .line 42
    if-lt v0, v1, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 45
    .line 46
    .line 47
    int-to-short v0, v1

    .line 48
    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 49
    .line 50
    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    .line 51
    .line 52
    if-le v1, v2, :cond_1

    .line 53
    .line 54
    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    .line 55
    .line 56
    :cond_1
    const/16 v0, 0xbf

    .line 57
    .line 58
    if-ne p1, v0, :cond_2

    .line 59
    .line 60
    iget p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void

    .line 66
    :cond_3
    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    throw p0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 72
    .line 73
    .line 74
    .line 75
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
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    :pswitch_data_1
    .packed-switch 0xbb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final add(II)V
    .locals 8

    .line 88
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v1, v0

    if-ltz v1, :cond_17

    const/16 v0, 0x7fff

    if-lt v0, v1, :cond_17

    const/16 v0, 0xb4

    const/high16 v2, 0x10000

    if-eq p1, v0, :cond_14

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_14

    const/16 v0, 0xbc

    .line 89
    const-string v3, "out of range index"

    const/16 v4, 0x100

    if-eq p1, v0, :cond_12

    const/16 v0, 0xc6

    if-eq p1, v0, :cond_8

    const/16 v0, 0xc7

    if-eq p1, v0, :cond_8

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 90
    const-string p0, "Unexpected opcode for 1 operand"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    return-void

    .line 91
    :pswitch_0
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    goto/16 :goto_2

    :pswitch_1
    if-ltz p2, :cond_1

    if-le v2, p2, :cond_1

    if-lt p2, v4, :cond_0

    const/16 v0, 0xc4

    .line 92
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 93
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 94
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto/16 :goto_5

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 96
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto/16 :goto_5

    .line 97
    :cond_1
    new-instance p0, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    const-string p1, "out of range variable"

    .line 98
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 99
    throw p0

    :pswitch_2
    if-ltz p2, :cond_5

    if-ge p2, v2, :cond_5

    const/16 v0, 0x13

    if-ge p2, v4, :cond_3

    if-eq p1, v0, :cond_3

    const/16 v2, 0x14

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 101
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto/16 :goto_5

    :cond_3
    :goto_0
    const/16 v2, 0x12

    if-ne p1, v2, :cond_4

    .line 102
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto :goto_1

    .line 103
    :cond_4
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 104
    :goto_1
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto/16 :goto_5

    .line 105
    :cond_5
    new-instance p0, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    .line 106
    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p0

    :pswitch_3
    int-to-short v0, p2

    if-ne v0, p2, :cond_6

    .line 108
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 109
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto/16 :goto_5

    .line 110
    :cond_6
    const-string p0, "out of range short"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    return-void

    :pswitch_4
    int-to-byte v0, p2

    if-ne v0, p2, :cond_7

    .line 111
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 112
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto/16 :goto_5

    .line 113
    :cond_7
    const-string p0, "out of range byte"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_2
    :pswitch_5
    const/high16 v0, -0x80000000

    and-int v2, p2, v0

    if-eq v2, v0, :cond_a

    if-ltz p2, :cond_9

    const v3, 0xffff

    if-gt p2, v3, :cond_9

    goto :goto_3

    .line 114
    :cond_9
    const-string p0, "Bad label for branch"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    return-void

    .line 115
    :cond_a
    :goto_3
    iget v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 116
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    if-eq v2, v0, :cond_b

    .line 117
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    add-int/2addr p2, v3

    .line 118
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 119
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 120
    :cond_b
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    sub-int p2, p1, v3

    .line 121
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    .line 122
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 123
    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_c
    add-int/lit8 v3, v3, 0x1

    if-gez p2, :cond_11

    const p1, 0x7fffffff

    and-int/2addr p1, p2

    .line 124
    iget p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    if-ge p1, p2, :cond_10

    .line 125
    iget p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    .line 126
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    array-length v4, v0

    if-ne p2, v4, :cond_f

    :cond_d
    if-nez v0, :cond_e

    const/16 v0, 0x28

    .line 127
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    goto :goto_4

    .line 128
    :cond_e
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [J

    .line 129
    invoke-static {v0, v2, v4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iput-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    :cond_f
    :goto_4
    add-int/lit8 v0, p2, 0x1

    .line 131
    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    .line 132
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    int-to-long v4, p1

    const/16 p1, 0x20

    shl-long/2addr v4, p1

    int-to-long v6, v3

    or-long/2addr v4, v6

    aput-wide v4, v0, p2

    .line 133
    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto :goto_5

    .line 134
    :cond_10
    const-string p0, "Bad label"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    return-void

    .line 135
    :cond_11
    const-string p0, "Bad label, no biscuit"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    return-void

    :cond_12
    if-ltz p2, :cond_13

    if-ge p2, v4, :cond_13

    .line 136
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 137
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto :goto_5

    .line 138
    :cond_13
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    return-void

    :cond_14
    if-ltz p2, :cond_16

    if-ge p2, v2, :cond_16

    .line 139
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 140
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    :goto_5
    int-to-short p1, v1

    .line 141
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 142
    iget p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    if-le v1, p2, :cond_15

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    :cond_15
    return-void

    .line 143
    :cond_16
    const-string p0, "out of range field"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    return-void

    .line 144
    :cond_17
    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x99
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public final add(ILjava/lang/String;)V
    .locals 2

    .line 71
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v1, v0

    if-ltz v1, :cond_3

    const/16 v0, 0x7fff

    if-lt v0, v1, :cond_3

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    const-string p0, "bad opcode for class reference"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    return-void

    .line 73
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p2

    .line 74
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 75
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    int-to-short p1, v1

    .line 76
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 77
    iget p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    if-le v1, p2, :cond_2

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    :cond_2
    return-void

    .line 78
    :cond_3
    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 79
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    invoke-static {p3}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x4a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x44

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    :goto_1
    packed-switch p3, :pswitch_data_0

    .line 81
    const-string p0, "bad opcode for field reference"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    return-void

    :pswitch_0
    sub-int/2addr v1, v0

    goto :goto_2

    :pswitch_1
    add-int/2addr v1, v0

    :goto_2
    if-ltz v1, :cond_3

    const/16 v0, 0x7fff

    if-lt v0, v1, :cond_3

    .line 82
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1, p2, p4}, Lorg/mozilla/classfile/ConstantPool;->addFieldRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result p1

    .line 83
    invoke-virtual {p0, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 84
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    int-to-short p1, v1

    .line 85
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 86
    iget p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    if-le v1, p2, :cond_2

    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    :cond_2
    return-void

    .line 87
    :cond_3
    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final addALoad(I)V
    .locals 2

    .line 1
    const/16 v0, 0x2a

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final addAStore(I)V
    .locals 2

    .line 1
    const/16 v0, 0x4b

    .line 2
    .line 3
    const/16 v1, 0x3a

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final addDLoad(I)V
    .locals 2

    .line 1
    const/16 v0, 0x26

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final addExceptionHandler(ILjava/lang/String;II)V
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    and-int v1, p1, v0

    .line 4
    .line 5
    if-ne v1, v0, :cond_5

    .line 6
    .line 7
    and-int v1, p3, v0

    .line 8
    .line 9
    if-ne v1, v0, :cond_4

    .line 10
    .line 11
    and-int v1, p4, v0

    .line 12
    .line 13
    if-ne v1, v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    move p2, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 21
    .line 22
    invoke-virtual {v1, p2}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    :goto_0
    new-instance v1, Lorg/mozilla/classfile/ExceptionTableEntry;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput p1, v1, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    .line 32
    .line 33
    iput p3, v1, Lorg/mozilla/classfile/ExceptionTableEntry;->itsEndLabel:I

    .line 34
    .line 35
    iput p4, v1, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    .line 36
    .line 37
    iput-short p2, v1, Lorg/mozilla/classfile/ExceptionTableEntry;->itsCatchType:S

    .line 38
    .line 39
    iget p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    const/4 p2, 0x4

    .line 44
    new-array p2, p2, [Lorg/mozilla/classfile/ExceptionTableEntry;

    .line 45
    .line 46
    iput-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    .line 50
    .line 51
    array-length p3, p2

    .line 52
    if-ne p1, p3, :cond_2

    .line 53
    .line 54
    mul-int/lit8 p3, p1, 0x2

    .line 55
    .line 56
    new-array p3, p3, [Lorg/mozilla/classfile/ExceptionTableEntry;

    .line 57
    .line 58
    invoke-static {p2, v0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    iput-object p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    .line 62
    .line 63
    :cond_2
    :goto_1
    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    .line 64
    .line 65
    aput-object v1, p2, p1

    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    const-string p0, "Bad handlerLabel"

    .line 73
    .line 74
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    const-string p0, "Bad endLabel"

    .line 79
    .line 80
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_5
    const-string p0, "Bad startLabel"

    .line 85
    .line 86
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final addField(Ljava/lang/String;Ljava/lang/String;S)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    new-instance v0, Lorg/mozilla/classfile/ClassFileField;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-short p1, v0, Lorg/mozilla/classfile/ClassFileField;->itsNameIndex:S

    .line 17
    .line 18
    iput-short p2, v0, Lorg/mozilla/classfile/ClassFileField;->itsTypeIndex:S

    .line 19
    .line 20
    iput-short p3, v0, Lorg/mozilla/classfile/ClassFileField;->itsFlags:S

    .line 21
    .line 22
    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final addILoad(I)V
    .locals 2

    .line 1
    const/16 v0, 0x1a

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p4}, Lorg/mozilla/classfile/ClassFileWriter;->sizeOfParameters(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    ushr-int/lit8 v1, v0, 0x10

    .line 6
    .line 7
    int-to-short v0, v0

    .line 8
    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 9
    .line 10
    add-int/2addr v2, v0

    .line 11
    invoke-static {p3}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/2addr v0, v2

    .line 16
    if-ltz v0, :cond_2

    .line 17
    .line 18
    const/16 v2, 0x7fff

    .line 19
    .line 20
    if-lt v2, v0, :cond_2

    .line 21
    .line 22
    packed-switch p3, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    const-string p0, "bad opcode for method reference"

    .line 26
    .line 27
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    invoke-virtual {p0, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 32
    .line 33
    .line 34
    const/16 v2, 0xb9

    .line 35
    .line 36
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 37
    .line 38
    if-ne p3, v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3, p2, p4}, Lorg/mozilla/classfile/ConstantPool;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)S

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    invoke-virtual {v3, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/4 v4, 0x5

    .line 49
    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 50
    .line 51
    .line 52
    iget-object v4, v3, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 53
    .line 54
    iget v5, v3, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 55
    .line 56
    add-int/lit8 v6, v5, 0x1

    .line 57
    .line 58
    iput v6, v3, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 59
    .line 60
    const/16 v7, 0xb

    .line 61
    .line 62
    aput-byte v7, v4, v5

    .line 63
    .line 64
    invoke-static {v4, v2, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iput v2, v3, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 69
    .line 70
    iget-object v4, v3, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 71
    .line 72
    invoke-static {v4, p3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    iput p3, v3, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 77
    .line 78
    new-instance p3, Lorg/mozilla/classfile/FieldOrMethodRef;

    .line 79
    .line 80
    invoke-direct {p3, p1, p2, p4}, Lorg/mozilla/classfile/FieldOrMethodRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget p1, v3, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 84
    .line 85
    invoke-virtual {v3, p1, p3}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, v3, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    .line 89
    .line 90
    iget p2, v3, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 91
    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    iget p1, v3, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 104
    .line 105
    add-int/lit8 p2, p1, 0x1

    .line 106
    .line 107
    iput p2, v3, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 108
    .line 109
    int-to-short p1, p1

    .line 110
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    .line 111
    .line 112
    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 114
    .line 115
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 116
    .line 117
    .line 118
    const/4 p1, 0x0

    .line 119
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v3, p1, p2, p4}, Lorg/mozilla/classfile/ConstantPool;->addMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    .line 128
    .line 129
    .line 130
    :goto_0
    int-to-short p1, v0

    .line 131
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 132
    .line 133
    iget p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    .line 134
    .line 135
    if-le v0, p2, :cond_1

    .line 136
    .line 137
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    .line 138
    .line 139
    :cond_1
    return-void

    .line 140
    :cond_2
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    .line 141
    .line 142
    .line 143
    const/4 p0, 0x0

    .line 144
    throw p0

    .line 145
    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final addLineNumberEntry(S)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    .line 6
    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-array v2, v1, [I

    .line 12
    .line 13
    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    .line 17
    .line 18
    array-length v3, v2

    .line 19
    if-ne v0, v3, :cond_1

    .line 20
    .line 21
    mul-int/lit8 v3, v0, 0x2

    .line 22
    .line 23
    new-array v3, v3, [I

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    iput-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    .line 32
    .line 33
    iget v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 34
    .line 35
    shl-int/lit8 v1, v3, 0x10

    .line 36
    .line 37
    add-int/2addr v1, p1

    .line 38
    aput v1, v2, v0

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    const-string p0, "No method to stop"

    .line 46
    .line 47
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final addLoadConstant(I)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x4

    .line 6
    if-eq p1, v1, :cond_4

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v3, 0x5

    .line 10
    if-eq p1, v1, :cond_3

    .line 11
    .line 12
    if-eq p1, v0, :cond_2

    .line 13
    .line 14
    if-eq p1, v2, :cond_1

    .line 15
    .line 16
    if-eq p1, v3, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/16 v0, 0x12

    .line 25
    .line 26
    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const/16 p1, 0x8

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    const/4 p1, 0x7

    .line 37
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    const/4 p1, 0x6

    .line 42
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_4
    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_5
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final addLoadThis()V
    .locals 1

    .line 1
    const/16 v0, 0x2a

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final addPush(D)V
    .locals 6

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    const/16 v3, 0x77

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-nez v2, :cond_0

    const/16 v2, 0xe

    .line 99
    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    div-double/2addr v4, p1

    cmpg-double p1, v4, v0

    if-gez p1, :cond_3

    .line 100
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void

    :cond_0
    cmpl-double v2, p1, v4

    if-eqz v2, :cond_2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v2, p1, v4

    if-nez v2, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/classfile/ConstantPool;->addConstant(D)I

    move-result p1

    const/16 p2, 0x14

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void

    :cond_2
    :goto_0
    const/16 v2, 0xf

    .line 102
    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    cmpg-double p1, p1, v0

    if-gez p1, :cond_3

    .line 103
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_3
    return-void
.end method

.method public final addPush(I)V
    .locals 2

    int-to-byte v0, p1

    if-ne v0, p1, :cond_2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x2

    .line 104
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/4 v1, 0x5

    if-gt p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x3

    int-to-byte p1, p1

    .line 105
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void

    :cond_1
    const/16 p1, 0x10

    .line 106
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void

    :cond_2
    int-to-short v0, p1

    if-ne v0, p1, :cond_3

    const/16 p1, 0x11

    .line 107
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    return-void

    .line 108
    :cond_3
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    return-void
.end method

.method public final addPush(Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v2, v0, p1}, Lorg/mozilla/classfile/ConstantPool;->getUtfEncodingLimit(IILjava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/16 v4, 0x12

    .line 16
    .line 17
    if-ne v3, v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, v4, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const/16 v5, 0xbb

    .line 28
    .line 29
    const-string v6, "java/lang/StringBuilder"

    .line 30
    .line 31
    invoke-virtual {p0, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/16 v5, 0x59

    .line 35
    .line 36
    invoke-virtual {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 40
    .line 41
    .line 42
    const-string v7, "<init>"

    .line 43
    .line 44
    const-string v8, "(I)V"

    .line 45
    .line 46
    const/16 v9, 0xb7

    .line 47
    .line 48
    invoke-virtual {p0, v6, v7, v9, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ConstantPool;->addConstant(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {p0, v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 63
    .line 64
    .line 65
    const-string v2, "append"

    .line 66
    .line 67
    const-string v7, "(Ljava/lang/String;)Ljava/lang/StringBuilder;"

    .line 68
    .line 69
    const/16 v8, 0xb6

    .line 70
    .line 71
    invoke-virtual {p0, v6, v2, v8, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/16 v2, 0x57

    .line 75
    .line 76
    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 77
    .line 78
    .line 79
    if-ne v3, v0, :cond_1

    .line 80
    .line 81
    const-string/jumbo p1, "toString"

    .line 82
    .line 83
    .line 84
    const-string v0, "()Ljava/lang/String;"

    .line 85
    .line 86
    invoke-virtual {p0, v6, p1, v8, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_1
    invoke-static {v3, v0, p1}, Lorg/mozilla/classfile/ConstantPool;->getUtfEncodingLimit(IILjava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    move v10, v3

    .line 95
    move v3, v2

    .line 96
    move v2, v10

    .line 97
    goto :goto_0
.end method

.method public final addPush(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 98
    :goto_0
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    return-void
.end method

.method public final addReservedCodeSpace(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 7
    .line 8
    add-int/2addr p1, v0

    .line 9
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 10
    .line 11
    array-length v3, v2

    .line 12
    if-le p1, v3, :cond_1

    .line 13
    .line 14
    array-length v3, v2

    .line 15
    mul-int/lit8 v3, v3, 0x2

    .line 16
    .line 17
    if-le p1, v3, :cond_0

    .line 18
    .line 19
    move v3, p1

    .line 20
    :cond_0
    new-array v3, v3, [B

    .line 21
    .line 22
    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    iput-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 26
    .line 27
    :cond_1
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 28
    .line 29
    return v0

    .line 30
    :cond_2
    const-string p0, "No method to add to"

    .line 31
    .line 32
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return v1
.end method

.method public final addSuperBlockStart(I)V
    .locals 4

    .line 1
    sget-boolean v0, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    array-length v1, v0

    .line 16
    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    .line 17
    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    mul-int/lit8 v1, v2, 0x2

    .line 21
    .line 22
    new-array v1, v1, [I

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    .line 29
    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    .line 31
    .line 32
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    .line 33
    .line 34
    add-int/lit8 v2, v1, 0x1

    .line 35
    .line 36
    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    .line 37
    .line 38
    aput p1, v0, v1

    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final addTableSwitch(II)I
    .locals 7

    .line 1
    if-gt p1, p2, :cond_3

    .line 2
    .line 3
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 4
    .line 5
    const/16 v1, 0xaa

    .line 6
    .line 7
    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    if-ltz v1, :cond_2

    .line 13
    .line 14
    const/16 v0, 0x7fff

    .line 15
    .line 16
    if-lt v0, v1, :cond_2

    .line 17
    .line 18
    sub-int v0, p2, p1

    .line 19
    .line 20
    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 21
    .line 22
    not-int v2, v2

    .line 23
    and-int/lit8 v2, v2, 0x3

    .line 24
    .line 25
    add-int/lit8 v3, v2, 0x1

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x4

    .line 28
    .line 29
    mul-int/lit8 v0, v0, 0x4

    .line 30
    .line 31
    add-int/2addr v0, v3

    .line 32
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addReservedCodeSpace(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 37
    .line 38
    add-int/lit8 v4, v0, 0x1

    .line 39
    .line 40
    const/16 v5, -0x56

    .line 41
    .line 42
    aput-byte v5, v3, v0

    .line 43
    .line 44
    :goto_0
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    add-int/lit8 v5, v4, 0x1

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    aput-byte v6, v3, v4

    .line 52
    .line 53
    add-int/lit8 v2, v2, -0x1

    .line 54
    .line 55
    move v4, v5

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    add-int/lit8 v4, v4, 0x4

    .line 58
    .line 59
    invoke-static {v3, p1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32([BII)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 64
    .line 65
    invoke-static {v2, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32([BII)I

    .line 66
    .line 67
    .line 68
    int-to-short p1, v1

    .line 69
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 70
    .line 71
    iget p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    .line 72
    .line 73
    if-le v1, p2, :cond_1

    .line 74
    .line 75
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    .line 76
    .line 77
    :cond_1
    return v0

    .line 78
    :cond_2
    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    throw p0

    .line 83
    :cond_3
    new-instance p0, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    .line 84
    .line 85
    const-string v0, "Bad bounds: "

    .line 86
    .line 87
    const-string v1, " "

    .line 88
    .line 89
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0
.end method

.method public final addToCodeBuffer(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addReservedCodeSpace(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 7
    .line 8
    int-to-byte p1, p1

    .line 9
    aput-byte p1, p0, v0

    .line 10
    .line 11
    return-void
.end method

.method public final addToCodeInt16(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addReservedCodeSpace(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 7
    .line 8
    invoke-static {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final adjustStackTop()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x7fff

    .line 8
    .line 9
    if-lt v1, v0, :cond_1

    .line 10
    .line 11
    int-to-short v1, v0

    .line 12
    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 13
    .line 14
    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    .line 15
    .line 16
    if-le v0, v2, :cond_0

    .line 17
    .line 18
    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :cond_1
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    throw p0
.end method

.method public final getLabelPC(I)I
    .locals 1

    .line 1
    if-gez p1, :cond_1

    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    and-int/2addr p1, v0

    .line 7
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    .line 8
    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    .line 12
    .line 13
    aget p0, p0, p1

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    const-string p0, "Bad label"

    .line 17
    .line 18
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_1
    const-string p0, "Bad label, no biscuit"

    .line 24
    .line 25
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public final markLabel(I)V
    .locals 3

    .line 1
    if-gez p1, :cond_2

    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    and-int/2addr p1, v0

    .line 7
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    .line 8
    .line 9
    if-gt p1, v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    .line 12
    .line 13
    aget v1, v0, p1

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    iget p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 19
    .line 20
    aput p0, v0, p1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string p0, "Can only mark label once"

    .line 24
    .line 25
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const-string p0, "Bad label"

    .line 30
    .line 31
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    const-string p0, "Bad label, no biscuit"

    .line 36
    .line 37
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final markLabel(II)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 42
    iput p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    return-void
.end method

.method public final markTableSwitchCase(II)V
    .locals 3

    .line 46
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 47
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Ljava/util/HashMap;

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->setTableSwitchJump(III)V

    return-void
.end method

.method public final markTableSwitchCase(III)V
    .locals 2

    .line 1
    if-ltz p3, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    .line 4
    .line 5
    if-gt p3, v0, :cond_0

    .line 6
    .line 7
    int-to-short p3, p3

    .line 8
    iput p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 9
    .line 10
    iget p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 11
    .line 12
    invoke-virtual {p0, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 13
    .line 14
    .line 15
    iget-object p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Ljava/util/HashMap;

    .line 16
    .line 17
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget p3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->setTableSwitchJump(III)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-string p0, "Bad stack index: "

    .line 37
    .line 38
    invoke-static {p3, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final markTableSwitchDefault(I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Ljava/util/HashMap;

    .line 7
    .line 8
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 23
    .line 24
    invoke-virtual {p0, p1, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->setTableSwitchJump(III)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final setTableSwitchJump(III)V
    .locals 4

    .line 1
    if-ltz p3, :cond_5

    .line 2
    .line 3
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 4
    .line 5
    if-lt v0, p3, :cond_5

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-lt p2, v1, :cond_4

    .line 9
    .line 10
    not-int v1, p1

    .line 11
    and-int/lit8 v1, v1, 0x3

    .line 12
    .line 13
    if-gez p2, :cond_0

    .line 14
    .line 15
    add-int/lit8 v2, p1, 0x1

    .line 16
    .line 17
    add-int/2addr v2, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 20
    .line 21
    add-int/2addr v2, v1

    .line 22
    add-int/lit8 v3, p2, 0x3

    .line 23
    .line 24
    mul-int/lit8 v3, v3, 0x4

    .line 25
    .line 26
    add-int/2addr v2, v3

    .line 27
    :goto_0
    if-ltz p1, :cond_3

    .line 28
    .line 29
    add-int/lit8 v3, v0, -0x10

    .line 30
    .line 31
    sub-int/2addr v3, v1

    .line 32
    add-int/lit8 v3, v3, -0x1

    .line 33
    .line 34
    if-lt v3, p1, :cond_3

    .line 35
    .line 36
    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 37
    .line 38
    aget-byte v1, p0, p1

    .line 39
    .line 40
    and-int/lit16 v1, v1, 0xff

    .line 41
    .line 42
    const/16 v3, 0xaa

    .line 43
    .line 44
    if-ne v1, v3, :cond_2

    .line 45
    .line 46
    if-ltz v2, :cond_1

    .line 47
    .line 48
    add-int/lit8 v1, v2, 0x4

    .line 49
    .line 50
    if-lt v0, v1, :cond_1

    .line 51
    .line 52
    sub-int/2addr p3, p1

    .line 53
    invoke-static {p0, p3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32([BII)I

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    new-instance p0, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    .line 58
    .line 59
    const-string p1, "Too big case index: "

    .line 60
    .line 61
    invoke-static {p2, p1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, " is not offset of tableswitch statement"

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p1, " is outside a possible range of tableswitch in already generated code"

    .line 103
    .line 104
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :cond_4
    const-string p0, "Bad case index: "

    .line 116
    .line 117
    invoke-static {p2, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_5
    const-string p0, "Bad jump target: "

    .line 126
    .line 127
    invoke-static {p3, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final startMethod(Ljava/lang/String;Ljava/lang/String;S)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    new-instance v2, Lorg/mozilla/classfile/ClassFileMethod;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, v2, Lorg/mozilla/classfile/ClassFileMethod;->itsName:Ljava/lang/String;

    .line 17
    .line 18
    iput-short v1, v2, Lorg/mozilla/classfile/ClassFileMethod;->itsNameIndex:S

    .line 19
    .line 20
    iput-object p2, v2, Lorg/mozilla/classfile/ClassFileMethod;->itsType:Ljava/lang/String;

    .line 21
    .line 22
    iput-short v0, v2, Lorg/mozilla/classfile/ClassFileMethod;->itsTypeIndex:S

    .line 23
    .line 24
    iput-short p3, v2, Lorg/mozilla/classfile/ClassFileMethod;->itsFlags:S

    .line 25
    .line 26
    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    .line 27
    .line 28
    new-instance p1, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Ljava/util/HashMap;

    .line 34
    .line 35
    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Ljava/util/ArrayList;

    .line 36
    .line 37
    iget-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final stopMethod(I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    .line 4
    .line 5
    if-eqz v1, :cond_31

    .line 6
    .line 7
    iget-object v1, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    iget v4, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    .line 12
    .line 13
    const/4 v5, -0x1

    .line 14
    if-ge v3, v4, :cond_2

    .line 15
    .line 16
    iget-object v4, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    .line 17
    .line 18
    aget-wide v6, v4, v3

    .line 19
    .line 20
    const/16 v4, 0x20

    .line 21
    .line 22
    shr-long v8, v6, v4

    .line 23
    .line 24
    long-to-int v4, v8

    .line 25
    long-to-int v6, v6

    .line 26
    iget-object v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    .line 27
    .line 28
    aget v4, v7, v4

    .line 29
    .line 30
    if-eq v4, v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 33
    .line 34
    .line 35
    iget-object v5, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    add-int/lit8 v8, v6, -0x1

    .line 42
    .line 43
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    sub-int/2addr v4, v8

    .line 51
    int-to-short v5, v4

    .line 52
    if-ne v5, v4, :cond_0

    .line 53
    .line 54
    shr-int/lit8 v5, v4, 0x8

    .line 55
    .line 56
    int-to-byte v5, v5

    .line 57
    aput-byte v5, v1, v6

    .line 58
    .line 59
    add-int/lit8 v6, v6, 0x1

    .line 60
    .line 61
    int-to-byte v4, v4

    .line 62
    aput-byte v4, v1, v6

    .line 63
    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    .line 68
    .line 69
    const-string v1, "Program too complex: too big jump offset"

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_1
    const-string/jumbo v0, "unlocated label"

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_2
    iput v2, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    .line 83
    .line 84
    move/from16 v1, p1

    .line 85
    .line 86
    iput v1, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:I

    .line 87
    .line 88
    iget-object v1, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 89
    .line 90
    const/4 v4, 0x1

    .line 91
    sget-boolean v6, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    .line 92
    .line 93
    if-eqz v6, :cond_14

    .line 94
    .line 95
    if-eqz v6, :cond_7

    .line 96
    .line 97
    move v6, v2

    .line 98
    :goto_1
    iget v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    .line 99
    .line 100
    if-ge v6, v7, :cond_3

    .line 101
    .line 102
    iget-object v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    .line 103
    .line 104
    aget-object v7, v7, v6

    .line 105
    .line 106
    iget v7, v7, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    .line 107
    .line 108
    invoke-virtual {v0, v7}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    invoke-virtual {v0, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 113
    .line 114
    .line 115
    add-int/lit8 v6, v6, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    iget-object v6, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    .line 119
    .line 120
    iget v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    .line 121
    .line 122
    invoke-static {v6, v2, v7}, Ljava/util/Arrays;->sort([III)V

    .line 123
    .line 124
    .line 125
    iget-object v6, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    .line 126
    .line 127
    aget v6, v6, v2

    .line 128
    .line 129
    move v7, v4

    .line 130
    move v8, v7

    .line 131
    :goto_2
    iget v9, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    .line 132
    .line 133
    if-ge v7, v9, :cond_6

    .line 134
    .line 135
    iget-object v9, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    .line 136
    .line 137
    aget v10, v9, v7

    .line 138
    .line 139
    if-eq v6, v10, :cond_5

    .line 140
    .line 141
    if-eq v8, v7, :cond_4

    .line 142
    .line 143
    aput v10, v9, v8

    .line 144
    .line 145
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 146
    .line 147
    move v6, v10

    .line 148
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_6
    iput v8, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    .line 152
    .line 153
    iget-object v6, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    .line 154
    .line 155
    sub-int/2addr v8, v4

    .line 156
    aget v6, v6, v8

    .line 157
    .line 158
    iget v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 159
    .line 160
    if-ne v6, v7, :cond_7

    .line 161
    .line 162
    iput v8, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    .line 163
    .line 164
    :cond_7
    new-instance v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;

    .line 165
    .line 166
    invoke-direct {v6, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;-><init>(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 167
    .line 168
    .line 169
    iget v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    .line 170
    .line 171
    new-array v7, v7, [Lorg/mozilla/classfile/SuperBlock;

    .line 172
    .line 173
    iput-object v7, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    .line 174
    .line 175
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->-$$Nest$mcreateInitialLocals(Lorg/mozilla/classfile/ClassFileWriter;)[I

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    move v8, v2

    .line 180
    :goto_3
    iget v9, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    .line 181
    .line 182
    if-ge v8, v9, :cond_9

    .line 183
    .line 184
    iget-object v10, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    .line 185
    .line 186
    aget v11, v10, v8

    .line 187
    .line 188
    add-int/lit8 v9, v9, -0x1

    .line 189
    .line 190
    if-ne v8, v9, :cond_8

    .line 191
    .line 192
    iget v9, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_8
    add-int/lit8 v9, v8, 0x1

    .line 196
    .line 197
    aget v9, v10, v9

    .line 198
    .line 199
    :goto_4
    iget-object v10, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    .line 200
    .line 201
    new-instance v12, Lorg/mozilla/classfile/SuperBlock;

    .line 202
    .line 203
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 204
    .line 205
    .line 206
    iput v8, v12, Lorg/mozilla/classfile/SuperBlock;->index:I

    .line 207
    .line 208
    iput v11, v12, Lorg/mozilla/classfile/SuperBlock;->start:I

    .line 209
    .line 210
    iput v9, v12, Lorg/mozilla/classfile/SuperBlock;->end:I

    .line 211
    .line 212
    array-length v9, v7

    .line 213
    new-array v9, v9, [I

    .line 214
    .line 215
    iput-object v9, v12, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    .line 216
    .line 217
    array-length v11, v7

    .line 218
    invoke-static {v7, v2, v9, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    .line 220
    .line 221
    new-array v9, v2, [I

    .line 222
    .line 223
    iput-object v9, v12, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    .line 224
    .line 225
    iput-boolean v2, v12, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    .line 226
    .line 227
    iput-boolean v2, v12, Lorg/mozilla/classfile/SuperBlock;->isInQueue:Z

    .line 228
    .line 229
    aput-object v12, v10, v8

    .line 230
    .line 231
    add-int/lit8 v8, v8, 0x1

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_9
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->-$$Nest$mcreateInitialLocals(Lorg/mozilla/classfile/ClassFileWriter;)[I

    .line 235
    .line 236
    .line 237
    move-result-object v10

    .line 238
    iget-object v7, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    .line 239
    .line 240
    aget-object v9, v7, v2

    .line 241
    .line 242
    array-length v11, v10

    .line 243
    new-array v12, v2, [I

    .line 244
    .line 245
    const/4 v13, 0x0

    .line 246
    iget-object v14, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 247
    .line 248
    invoke-virtual/range {v9 .. v14}, Lorg/mozilla/classfile/SuperBlock;->merge([II[IILorg/mozilla/classfile/ConstantPool;)Z

    .line 249
    .line 250
    .line 251
    iget-object v7, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    .line 252
    .line 253
    aget-object v7, v7, v2

    .line 254
    .line 255
    new-array v8, v4, [Lorg/mozilla/classfile/SuperBlock;

    .line 256
    .line 257
    aput-object v7, v8, v2

    .line 258
    .line 259
    iput-object v8, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    .line 260
    .line 261
    iput v4, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    .line 262
    .line 263
    invoke-virtual {v6}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeWorkList()V

    .line 264
    .line 265
    .line 266
    iget-object v7, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    .line 267
    .line 268
    array-length v8, v7

    .line 269
    move v9, v2

    .line 270
    :goto_5
    if-ge v9, v8, :cond_13

    .line 271
    .line 272
    aget-object v10, v7, v9

    .line 273
    .line 274
    iget-boolean v11, v10, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    .line 275
    .line 276
    if-nez v11, :cond_11

    .line 277
    .line 278
    new-array v11, v2, [I

    .line 279
    .line 280
    const-string v12, "java/lang/Throwable"

    .line 281
    .line 282
    invoke-virtual {v1, v12}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    .line 283
    .line 284
    .line 285
    move-result v12

    .line 286
    invoke-static {v12}, Lokio/Okio;->OBJECT(I)I

    .line 287
    .line 288
    .line 289
    move-result v12

    .line 290
    filled-new-array {v12}, [I

    .line 291
    .line 292
    .line 293
    move-result-object v13

    .line 294
    iget v12, v10, Lorg/mozilla/classfile/SuperBlock;->start:I

    .line 295
    .line 296
    iget v14, v10, Lorg/mozilla/classfile/SuperBlock;->end:I

    .line 297
    .line 298
    move v15, v2

    .line 299
    :goto_6
    iget v3, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    .line 300
    .line 301
    if-ge v15, v3, :cond_c

    .line 302
    .line 303
    iget-object v3, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    .line 304
    .line 305
    aget-object v3, v3, v15

    .line 306
    .line 307
    iget v5, v3, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    .line 308
    .line 309
    move/from16 v16, v4

    .line 310
    .line 311
    iget v4, v3, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    .line 312
    .line 313
    invoke-virtual {v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    if-le v12, v5, :cond_a

    .line 318
    .line 319
    iget v3, v3, Lorg/mozilla/classfile/ExceptionTableEntry;->itsEndLabel:I

    .line 320
    .line 321
    invoke-virtual {v0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    if-ge v12, v3, :cond_a

    .line 326
    .line 327
    invoke-virtual {v0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    invoke-virtual {v6, v3}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    iget-object v4, v3, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    .line 336
    .line 337
    array-length v5, v4

    .line 338
    new-array v11, v5, [I

    .line 339
    .line 340
    array-length v5, v4

    .line 341
    invoke-static {v4, v2, v11, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    .line 343
    .line 344
    iget-boolean v3, v3, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    .line 345
    .line 346
    if-eqz v3, :cond_b

    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_a
    if-le v5, v12, :cond_b

    .line 350
    .line 351
    if-ge v5, v14, :cond_b

    .line 352
    .line 353
    invoke-virtual {v0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    invoke-virtual {v6, v3}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    iget-boolean v4, v3, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    .line 362
    .line 363
    if-eqz v4, :cond_b

    .line 364
    .line 365
    iget-object v3, v3, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    .line 366
    .line 367
    array-length v4, v3

    .line 368
    new-array v11, v4, [I

    .line 369
    .line 370
    array-length v4, v3

    .line 371
    invoke-static {v3, v2, v11, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    .line 373
    .line 374
    goto :goto_7

    .line 375
    :cond_b
    add-int/lit8 v15, v15, 0x1

    .line 376
    .line 377
    move/from16 v4, v16

    .line 378
    .line 379
    const/4 v5, -0x1

    .line 380
    goto :goto_6

    .line 381
    :cond_c
    move/from16 v16, v4

    .line 382
    .line 383
    :goto_7
    move v3, v2

    .line 384
    :goto_8
    iget v4, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    .line 385
    .line 386
    if-ge v3, v4, :cond_10

    .line 387
    .line 388
    iget-object v4, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    .line 389
    .line 390
    aget-object v4, v4, v3

    .line 391
    .line 392
    iget v5, v4, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    .line 393
    .line 394
    invoke-virtual {v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    if-eq v5, v12, :cond_d

    .line 399
    .line 400
    iget v4, v4, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    .line 401
    .line 402
    invoke-virtual {v0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    if-ne v4, v12, :cond_f

    .line 407
    .line 408
    :cond_d
    add-int/lit8 v4, v3, 0x1

    .line 409
    .line 410
    :goto_9
    iget v5, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    .line 411
    .line 412
    if-ge v4, v5, :cond_e

    .line 413
    .line 414
    iget-object v5, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    .line 415
    .line 416
    add-int/lit8 v15, v4, -0x1

    .line 417
    .line 418
    aget-object v17, v5, v4

    .line 419
    .line 420
    aput-object v17, v5, v15

    .line 421
    .line 422
    add-int/lit8 v4, v4, 0x1

    .line 423
    .line 424
    goto :goto_9

    .line 425
    :cond_e
    add-int/lit8 v5, v5, -0x1

    .line 426
    .line 427
    iput v5, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    .line 428
    .line 429
    add-int/lit8 v3, v3, -0x1

    .line 430
    .line 431
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 432
    .line 433
    goto :goto_8

    .line 434
    :cond_10
    move v3, v12

    .line 435
    array-length v12, v11

    .line 436
    iget-object v15, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 437
    .line 438
    move v4, v14

    .line 439
    const/4 v14, 0x1

    .line 440
    invoke-virtual/range {v10 .. v15}, Lorg/mozilla/classfile/SuperBlock;->merge([II[IILorg/mozilla/classfile/ConstantPool;)Z

    .line 441
    .line 442
    .line 443
    add-int/lit8 v14, v4, -0x1

    .line 444
    .line 445
    iget-object v4, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 446
    .line 447
    const/16 v5, -0x41

    .line 448
    .line 449
    aput-byte v5, v4, v14

    .line 450
    .line 451
    move v12, v3

    .line 452
    :goto_a
    if-ge v12, v14, :cond_12

    .line 453
    .line 454
    iget-object v3, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 455
    .line 456
    aput-byte v2, v3, v12

    .line 457
    .line 458
    add-int/lit8 v12, v12, 0x1

    .line 459
    .line 460
    goto :goto_a

    .line 461
    :cond_11
    move/from16 v16, v4

    .line 462
    .line 463
    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 464
    .line 465
    move/from16 v4, v16

    .line 466
    .line 467
    const/4 v5, -0x1

    .line 468
    goto/16 :goto_5

    .line 469
    .line 470
    :cond_13
    move/from16 v16, v4

    .line 471
    .line 472
    invoke-virtual {v6}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeWorkList()V

    .line 473
    .line 474
    .line 475
    goto :goto_b

    .line 476
    :cond_14
    move/from16 v16, v4

    .line 477
    .line 478
    const/4 v6, 0x0

    .line 479
    :goto_b
    iget-object v3, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    .line 480
    .line 481
    if-eqz v3, :cond_15

    .line 482
    .line 483
    iget v3, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    .line 484
    .line 485
    mul-int/lit8 v3, v3, 0x4

    .line 486
    .line 487
    add-int/lit8 v3, v3, 0x8

    .line 488
    .line 489
    goto :goto_c

    .line 490
    :cond_15
    move v3, v2

    .line 491
    :goto_c
    iget-object v4, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    .line 492
    .line 493
    if-eqz v4, :cond_16

    .line 494
    .line 495
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    mul-int/lit8 v4, v4, 0xa

    .line 500
    .line 501
    add-int/lit8 v4, v4, 0x8

    .line 502
    .line 503
    goto :goto_d

    .line 504
    :cond_16
    move v4, v2

    .line 505
    :goto_d
    const/4 v5, 0x3

    .line 506
    if-eqz v6, :cond_23

    .line 507
    .line 508
    iget-object v7, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    .line 509
    .line 510
    array-length v8, v7

    .line 511
    add-int/lit8 v8, v8, -0x1

    .line 512
    .line 513
    iget-object v9, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    .line 514
    .line 515
    iget v10, v9, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:I

    .line 516
    .line 517
    mul-int/2addr v10, v5

    .line 518
    add-int/lit8 v10, v10, 0x7

    .line 519
    .line 520
    iget v9, v9, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    .line 521
    .line 522
    mul-int/2addr v9, v5

    .line 523
    add-int/2addr v9, v10

    .line 524
    mul-int/2addr v9, v8

    .line 525
    new-array v8, v9, [B

    .line 526
    .line 527
    iput-object v8, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    .line 528
    .line 529
    aget-object v7, v7, v2

    .line 530
    .line 531
    invoke-virtual {v7}, Lorg/mozilla/classfile/SuperBlock;->getTrimmedLocals()[I

    .line 532
    .line 533
    .line 534
    move-result-object v7

    .line 535
    move/from16 v8, v16

    .line 536
    .line 537
    const/4 v9, -0x1

    .line 538
    :goto_e
    iget-object v10, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    .line 539
    .line 540
    array-length v11, v10

    .line 541
    if-ge v8, v11, :cond_22

    .line 542
    .line 543
    aget-object v10, v10, v8

    .line 544
    .line 545
    invoke-virtual {v10}, Lorg/mozilla/classfile/SuperBlock;->getTrimmedLocals()[I

    .line 546
    .line 547
    .line 548
    move-result-object v11

    .line 549
    iget v12, v10, Lorg/mozilla/classfile/SuperBlock;->start:I

    .line 550
    .line 551
    iget-object v10, v10, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    .line 552
    .line 553
    array-length v13, v10

    .line 554
    new-array v14, v13, [I

    .line 555
    .line 556
    array-length v15, v10

    .line 557
    invoke-static {v10, v2, v14, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    .line 559
    .line 560
    sub-int v9, v12, v9

    .line 561
    .line 562
    add-int/lit8 v10, v9, -0x1

    .line 563
    .line 564
    if-nez v13, :cond_1e

    .line 565
    .line 566
    array-length v9, v7

    .line 567
    array-length v13, v11

    .line 568
    if-le v9, v13, :cond_17

    .line 569
    .line 570
    array-length v9, v11

    .line 571
    goto :goto_f

    .line 572
    :cond_17
    array-length v9, v7

    .line 573
    :goto_f
    array-length v13, v7

    .line 574
    move/from16 v17, v2

    .line 575
    .line 576
    array-length v2, v11

    .line 577
    sub-int/2addr v13, v2

    .line 578
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    move/from16 v13, v17

    .line 583
    .line 584
    :goto_10
    if-ge v13, v9, :cond_19

    .line 585
    .line 586
    aget v5, v7, v13

    .line 587
    .line 588
    aget v15, v11, v13

    .line 589
    .line 590
    if-eq v5, v15, :cond_18

    .line 591
    .line 592
    goto :goto_11

    .line 593
    :cond_18
    add-int/lit8 v13, v13, 0x1

    .line 594
    .line 595
    const/4 v5, 0x3

    .line 596
    goto :goto_10

    .line 597
    :cond_19
    :goto_11
    array-length v5, v11

    .line 598
    if-ne v13, v5, :cond_1b

    .line 599
    .line 600
    if-nez v2, :cond_1b

    .line 601
    .line 602
    iget-object v2, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    .line 603
    .line 604
    iget v5, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 605
    .line 606
    const/16 v7, 0x3f

    .line 607
    .line 608
    if-gt v10, v7, :cond_1a

    .line 609
    .line 610
    add-int/lit8 v7, v5, 0x1

    .line 611
    .line 612
    iput v7, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 613
    .line 614
    int-to-byte v7, v10

    .line 615
    aput-byte v7, v2, v5

    .line 616
    .line 617
    goto/16 :goto_13

    .line 618
    .line 619
    :cond_1a
    add-int/lit8 v7, v5, 0x1

    .line 620
    .line 621
    iput v7, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 622
    .line 623
    const/4 v9, -0x5

    .line 624
    aput-byte v9, v2, v5

    .line 625
    .line 626
    invoke-static {v2, v10, v7}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 627
    .line 628
    .line 629
    move-result v2

    .line 630
    iput v2, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 631
    .line 632
    goto/16 :goto_13

    .line 633
    .line 634
    :cond_1b
    array-length v5, v11

    .line 635
    if-ne v13, v5, :cond_1c

    .line 636
    .line 637
    const/4 v5, 0x3

    .line 638
    if-gt v2, v5, :cond_1c

    .line 639
    .line 640
    iget-object v5, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    .line 641
    .line 642
    iget v7, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 643
    .line 644
    add-int/lit8 v9, v7, 0x1

    .line 645
    .line 646
    iput v9, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 647
    .line 648
    rsub-int v2, v2, 0xfb

    .line 649
    .line 650
    int-to-byte v2, v2

    .line 651
    aput-byte v2, v5, v7

    .line 652
    .line 653
    invoke-static {v5, v10, v9}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 654
    .line 655
    .line 656
    move-result v2

    .line 657
    iput v2, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 658
    .line 659
    goto :goto_13

    .line 660
    :cond_1c
    array-length v5, v7

    .line 661
    if-ne v13, v5, :cond_1d

    .line 662
    .line 663
    const/4 v5, 0x3

    .line 664
    if-gt v2, v5, :cond_1d

    .line 665
    .line 666
    array-length v5, v11

    .line 667
    sub-int/2addr v5, v2

    .line 668
    iget-object v7, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    .line 669
    .line 670
    iget v9, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 671
    .line 672
    add-int/lit8 v13, v9, 0x1

    .line 673
    .line 674
    iput v13, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 675
    .line 676
    add-int/lit16 v2, v2, 0xfb

    .line 677
    .line 678
    int-to-byte v2, v2

    .line 679
    aput-byte v2, v7, v9

    .line 680
    .line 681
    invoke-static {v7, v10, v13}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 682
    .line 683
    .line 684
    move-result v2

    .line 685
    iput v2, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 686
    .line 687
    invoke-virtual {v6, v11, v5}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeTypes([II)I

    .line 688
    .line 689
    .line 690
    move-result v2

    .line 691
    iput v2, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 692
    .line 693
    goto :goto_13

    .line 694
    :cond_1d
    invoke-virtual {v6, v11, v14, v10}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeFullFrame([I[II)V

    .line 695
    .line 696
    .line 697
    goto :goto_13

    .line 698
    :cond_1e
    move/from16 v17, v2

    .line 699
    .line 700
    move/from16 v2, v16

    .line 701
    .line 702
    if-ne v13, v2, :cond_21

    .line 703
    .line 704
    invoke-static {v7, v11}, Ljava/util/Arrays;->equals([I[I)Z

    .line 705
    .line 706
    .line 707
    move-result v2

    .line 708
    if-eqz v2, :cond_20

    .line 709
    .line 710
    iget-object v2, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    .line 711
    .line 712
    iget v5, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 713
    .line 714
    const/16 v7, 0x3f

    .line 715
    .line 716
    if-gt v10, v7, :cond_1f

    .line 717
    .line 718
    add-int/lit8 v7, v5, 0x1

    .line 719
    .line 720
    iput v7, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 721
    .line 722
    add-int/lit8 v9, v9, 0x3f

    .line 723
    .line 724
    int-to-byte v7, v9

    .line 725
    aput-byte v7, v2, v5

    .line 726
    .line 727
    goto :goto_12

    .line 728
    :cond_1f
    add-int/lit8 v7, v5, 0x1

    .line 729
    .line 730
    iput v7, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 731
    .line 732
    const/16 v9, -0x9

    .line 733
    .line 734
    aput-byte v9, v2, v5

    .line 735
    .line 736
    invoke-static {v2, v10, v7}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 737
    .line 738
    .line 739
    move-result v2

    .line 740
    iput v2, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 741
    .line 742
    :goto_12
    aget v2, v14, v17

    .line 743
    .line 744
    invoke-virtual {v6, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeType(I)I

    .line 745
    .line 746
    .line 747
    goto :goto_13

    .line 748
    :cond_20
    invoke-virtual {v6, v11, v14, v10}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeFullFrame([I[II)V

    .line 749
    .line 750
    .line 751
    goto :goto_13

    .line 752
    :cond_21
    invoke-virtual {v6, v11, v14, v10}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeFullFrame([I[II)V

    .line 753
    .line 754
    .line 755
    :goto_13
    add-int/lit8 v8, v8, 0x1

    .line 756
    .line 757
    move-object v7, v11

    .line 758
    move v9, v12

    .line 759
    move/from16 v2, v17

    .line 760
    .line 761
    const/4 v5, 0x3

    .line 762
    const/16 v16, 0x1

    .line 763
    .line 764
    goto/16 :goto_e

    .line 765
    .line 766
    :cond_22
    move/from16 v17, v2

    .line 767
    .line 768
    iget v2, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 769
    .line 770
    add-int/lit8 v5, v2, 0x2

    .line 771
    .line 772
    if-lez v5, :cond_24

    .line 773
    .line 774
    add-int/lit8 v2, v2, 0x8

    .line 775
    .line 776
    goto :goto_14

    .line 777
    :cond_23
    move/from16 v17, v2

    .line 778
    .line 779
    :cond_24
    move/from16 v2, v17

    .line 780
    .line 781
    :goto_14
    iget v5, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 782
    .line 783
    add-int/lit8 v5, v5, 0x10

    .line 784
    .line 785
    iget v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    .line 786
    .line 787
    mul-int/lit8 v7, v7, 0x8

    .line 788
    .line 789
    add-int/2addr v7, v5

    .line 790
    const/4 v5, 0x2

    .line 791
    add-int/2addr v7, v5

    .line 792
    add-int/2addr v7, v3

    .line 793
    add-int/2addr v7, v4

    .line 794
    add-int/2addr v7, v2

    .line 795
    const/high16 v3, 0x10000

    .line 796
    .line 797
    if-gt v7, v3, :cond_30

    .line 798
    .line 799
    new-array v3, v7, [B

    .line 800
    .line 801
    const-string v4, "Code"

    .line 802
    .line 803
    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 804
    .line 805
    .line 806
    move-result v4

    .line 807
    move/from16 v8, v17

    .line 808
    .line 809
    invoke-static {v3, v4, v8}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 810
    .line 811
    .line 812
    move-result v4

    .line 813
    add-int/lit8 v7, v7, -0x6

    .line 814
    .line 815
    invoke-static {v3, v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32([BII)I

    .line 816
    .line 817
    .line 818
    move-result v4

    .line 819
    iget v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    .line 820
    .line 821
    invoke-static {v3, v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 822
    .line 823
    .line 824
    move-result v4

    .line 825
    iget v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:I

    .line 826
    .line 827
    invoke-static {v3, v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 828
    .line 829
    .line 830
    move-result v4

    .line 831
    iget v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 832
    .line 833
    invoke-static {v3, v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32([BII)I

    .line 834
    .line 835
    .line 836
    move-result v4

    .line 837
    iget-object v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 838
    .line 839
    iget v8, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 840
    .line 841
    const/4 v9, 0x0

    .line 842
    invoke-static {v7, v9, v3, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 843
    .line 844
    .line 845
    iget v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 846
    .line 847
    add-int/2addr v4, v7

    .line 848
    iget v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    .line 849
    .line 850
    if-lez v7, :cond_28

    .line 851
    .line 852
    invoke-static {v3, v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 853
    .line 854
    .line 855
    move-result v4

    .line 856
    const/4 v7, 0x0

    .line 857
    :goto_15
    iget v8, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    .line 858
    .line 859
    if-ge v7, v8, :cond_29

    .line 860
    .line 861
    iget-object v8, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    .line 862
    .line 863
    aget-object v8, v8, v7

    .line 864
    .line 865
    iget v9, v8, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    .line 866
    .line 867
    invoke-virtual {v0, v9}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    .line 868
    .line 869
    .line 870
    move-result v9

    .line 871
    iget v10, v8, Lorg/mozilla/classfile/ExceptionTableEntry;->itsEndLabel:I

    .line 872
    .line 873
    invoke-virtual {v0, v10}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    .line 874
    .line 875
    .line 876
    move-result v10

    .line 877
    iget v11, v8, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    .line 878
    .line 879
    invoke-virtual {v0, v11}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    .line 880
    .line 881
    .line 882
    move-result v11

    .line 883
    iget-short v8, v8, Lorg/mozilla/classfile/ExceptionTableEntry;->itsCatchType:S

    .line 884
    .line 885
    const/4 v12, -0x1

    .line 886
    if-eq v9, v12, :cond_27

    .line 887
    .line 888
    if-eq v10, v12, :cond_26

    .line 889
    .line 890
    if-eq v11, v12, :cond_25

    .line 891
    .line 892
    invoke-static {v3, v9, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 893
    .line 894
    .line 895
    move-result v4

    .line 896
    invoke-static {v3, v10, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 897
    .line 898
    .line 899
    move-result v4

    .line 900
    invoke-static {v3, v11, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 901
    .line 902
    .line 903
    move-result v4

    .line 904
    invoke-static {v3, v8, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 905
    .line 906
    .line 907
    move-result v4

    .line 908
    add-int/lit8 v7, v7, 0x1

    .line 909
    .line 910
    goto :goto_15

    .line 911
    :cond_25
    const-string v0, "handler label not defined"

    .line 912
    .line 913
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 914
    .line 915
    .line 916
    return-void

    .line 917
    :cond_26
    const-string v0, "end label not defined"

    .line 918
    .line 919
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    return-void

    .line 923
    :cond_27
    const-string/jumbo v0, "start label not defined"

    .line 924
    .line 925
    .line 926
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    return-void

    .line 930
    :cond_28
    const/4 v8, 0x0

    .line 931
    invoke-static {v3, v8, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 932
    .line 933
    .line 934
    move-result v4

    .line 935
    :cond_29
    iget-object v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    .line 936
    .line 937
    if-eqz v7, :cond_2a

    .line 938
    .line 939
    const/4 v7, 0x1

    .line 940
    goto :goto_16

    .line 941
    :cond_2a
    const/4 v7, 0x0

    .line 942
    :goto_16
    iget-object v8, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    .line 943
    .line 944
    if-eqz v8, :cond_2b

    .line 945
    .line 946
    add-int/lit8 v7, v7, 0x1

    .line 947
    .line 948
    :cond_2b
    if-lez v2, :cond_2c

    .line 949
    .line 950
    add-int/lit8 v7, v7, 0x1

    .line 951
    .line 952
    :cond_2c
    invoke-static {v3, v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 953
    .line 954
    .line 955
    move-result v4

    .line 956
    iget-object v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    .line 957
    .line 958
    if-eqz v7, :cond_2d

    .line 959
    .line 960
    const-string v7, "LineNumberTable"

    .line 961
    .line 962
    invoke-virtual {v1, v7}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 963
    .line 964
    .line 965
    move-result v7

    .line 966
    invoke-static {v3, v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 967
    .line 968
    .line 969
    move-result v4

    .line 970
    iget v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    .line 971
    .line 972
    mul-int/lit8 v7, v7, 0x4

    .line 973
    .line 974
    add-int/2addr v7, v5

    .line 975
    invoke-static {v3, v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32([BII)I

    .line 976
    .line 977
    .line 978
    move-result v4

    .line 979
    iget v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    .line 980
    .line 981
    invoke-static {v3, v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 982
    .line 983
    .line 984
    move-result v4

    .line 985
    const/4 v7, 0x0

    .line 986
    :goto_17
    iget v8, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    .line 987
    .line 988
    if-ge v7, v8, :cond_2d

    .line 989
    .line 990
    iget-object v8, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    .line 991
    .line 992
    aget v8, v8, v7

    .line 993
    .line 994
    invoke-static {v3, v8, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32([BII)I

    .line 995
    .line 996
    .line 997
    move-result v4

    .line 998
    add-int/lit8 v7, v7, 0x1

    .line 999
    .line 1000
    goto :goto_17

    .line 1001
    :cond_2d
    iget-object v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    .line 1002
    .line 1003
    if-eqz v7, :cond_2e

    .line 1004
    .line 1005
    const-string v7, "LocalVariableTable"

    .line 1006
    .line 1007
    invoke-virtual {v1, v7}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 1008
    .line 1009
    .line 1010
    move-result v7

    .line 1011
    invoke-static {v3, v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 1012
    .line 1013
    .line 1014
    move-result v4

    .line 1015
    iget-object v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    .line 1016
    .line 1017
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1018
    .line 1019
    .line 1020
    move-result v7

    .line 1021
    mul-int/lit8 v8, v7, 0xa

    .line 1022
    .line 1023
    add-int/2addr v8, v5

    .line 1024
    invoke-static {v3, v8, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32([BII)I

    .line 1025
    .line 1026
    .line 1027
    move-result v4

    .line 1028
    invoke-static {v3, v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 1029
    .line 1030
    .line 1031
    move-result v4

    .line 1032
    const/4 v8, 0x0

    .line 1033
    :goto_18
    if-ge v8, v7, :cond_2e

    .line 1034
    .line 1035
    iget-object v9, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    .line 1036
    .line 1037
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v9

    .line 1041
    check-cast v9, [I

    .line 1042
    .line 1043
    const/16 v17, 0x0

    .line 1044
    .line 1045
    aget v10, v9, v17

    .line 1046
    .line 1047
    const/16 v16, 0x1

    .line 1048
    .line 1049
    aget v11, v9, v16

    .line 1050
    .line 1051
    aget v12, v9, v5

    .line 1052
    .line 1053
    const/16 v18, 0x3

    .line 1054
    .line 1055
    aget v9, v9, v18

    .line 1056
    .line 1057
    iget v13, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 1058
    .line 1059
    sub-int/2addr v13, v12

    .line 1060
    invoke-static {v3, v12, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 1061
    .line 1062
    .line 1063
    move-result v4

    .line 1064
    invoke-static {v3, v13, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 1065
    .line 1066
    .line 1067
    move-result v4

    .line 1068
    invoke-static {v3, v10, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 1069
    .line 1070
    .line 1071
    move-result v4

    .line 1072
    invoke-static {v3, v11, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 1073
    .line 1074
    .line 1075
    move-result v4

    .line 1076
    invoke-static {v3, v9, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 1077
    .line 1078
    .line 1079
    move-result v4

    .line 1080
    add-int/lit8 v8, v8, 0x1

    .line 1081
    .line 1082
    goto :goto_18

    .line 1083
    :cond_2e
    if-lez v2, :cond_2f

    .line 1084
    .line 1085
    const-string v2, "StackMapTable"

    .line 1086
    .line 1087
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 1088
    .line 1089
    .line 1090
    move-result v1

    .line 1091
    invoke-static {v3, v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 1092
    .line 1093
    .line 1094
    move-result v1

    .line 1095
    iget v2, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 1096
    .line 1097
    add-int/2addr v2, v5

    .line 1098
    invoke-static {v3, v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32([BII)I

    .line 1099
    .line 1100
    .line 1101
    move-result v1

    .line 1102
    iget-object v2, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    .line 1103
    .line 1104
    array-length v2, v2

    .line 1105
    const/16 v16, 0x1

    .line 1106
    .line 1107
    add-int/lit8 v2, v2, -0x1

    .line 1108
    .line 1109
    invoke-static {v3, v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 1110
    .line 1111
    .line 1112
    move-result v1

    .line 1113
    iget-object v2, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    .line 1114
    .line 1115
    iget v4, v6, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 1116
    .line 1117
    const/4 v8, 0x0

    .line 1118
    invoke-static {v2, v8, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1119
    .line 1120
    .line 1121
    goto :goto_19

    .line 1122
    :cond_2f
    const/4 v8, 0x0

    .line 1123
    :goto_19
    iget-object v1, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    .line 1124
    .line 1125
    iput-object v3, v1, Lorg/mozilla/classfile/ClassFileMethod;->itsCodeAttribute:[B

    .line 1126
    .line 1127
    const/4 v1, 0x0

    .line 1128
    iput-object v1, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    .line 1129
    .line 1130
    iput v8, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    .line 1131
    .line 1132
    iput v8, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    .line 1133
    .line 1134
    iput v8, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 1135
    .line 1136
    iput-object v1, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    .line 1137
    .line 1138
    iput v8, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    .line 1139
    .line 1140
    iput v8, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 1141
    .line 1142
    iput v8, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    .line 1143
    .line 1144
    iput v8, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    .line 1145
    .line 1146
    iput-object v1, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    .line 1147
    .line 1148
    iput-object v1, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    .line 1149
    .line 1150
    iput v8, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    .line 1151
    .line 1152
    iput-object v1, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Ljava/util/HashMap;

    .line 1153
    .line 1154
    return-void

    .line 1155
    :cond_30
    new-instance v0, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    .line 1156
    .line 1157
    const-string v1, "generated bytecode for method exceeds 64K limit."

    .line 1158
    .line 1159
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1160
    .line 1161
    .line 1162
    throw v0

    .line 1163
    :cond_31
    const-string v0, "No method to stop"

    .line 1164
    .line 1165
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 1166
    .line 1167
    .line 1168
    return-void
.end method

.method public final toByteArray()[B
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v1, "BootstrapMethods"

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    move v5, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v4

    .line 20
    move v5, v1

    .line 21
    :goto_0
    const-string v6, "SourceFile"

    .line 22
    .line 23
    iget v7, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:I

    .line 24
    .line 25
    if-eqz v7, :cond_1

    .line 26
    .line 27
    add-int/lit8 v5, v5, 0x1

    .line 28
    .line 29
    invoke-virtual {v2, v6}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v8, v4

    .line 35
    :goto_1
    if-eqz v7, :cond_2

    .line 36
    .line 37
    invoke-virtual {v2, v6}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 38
    .line 39
    .line 40
    :cond_2
    iget v6, v2, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 41
    .line 42
    add-int/lit8 v6, v6, 0x12

    .line 43
    .line 44
    iget-object v9, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    const/4 v11, 0x2

    .line 51
    mul-int/2addr v10, v11

    .line 52
    add-int/2addr v10, v6

    .line 53
    add-int/2addr v10, v11

    .line 54
    move v6, v4

    .line 55
    :goto_2
    iget-object v12, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v13

    .line 61
    if-ge v6, v13, :cond_3

    .line 62
    .line 63
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    check-cast v12, Lorg/mozilla/classfile/ClassFileField;

    .line 68
    .line 69
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    add-int/lit8 v10, v10, 0x8

    .line 73
    .line 74
    add-int/lit8 v6, v6, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    add-int/2addr v10, v11

    .line 78
    move v6, v4

    .line 79
    :goto_3
    iget-object v13, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v14

    .line 85
    if-ge v6, v14, :cond_4

    .line 86
    .line 87
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    check-cast v13, Lorg/mozilla/classfile/ClassFileMethod;

    .line 92
    .line 93
    iget-object v13, v13, Lorg/mozilla/classfile/ClassFileMethod;->itsCodeAttribute:[B

    .line 94
    .line 95
    array-length v13, v13

    .line 96
    add-int/lit8 v13, v13, 0x8

    .line 97
    .line 98
    add-int/2addr v10, v13

    .line 99
    add-int/lit8 v6, v6, 0x1

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    add-int/lit8 v6, v10, 0x2

    .line 103
    .line 104
    if-eqz v7, :cond_5

    .line 105
    .line 106
    add-int/lit8 v6, v10, 0xa

    .line 107
    .line 108
    :cond_5
    iget-object v10, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    .line 109
    .line 110
    if-eqz v10, :cond_6

    .line 111
    .line 112
    add-int/lit8 v6, v6, 0x8

    .line 113
    .line 114
    iget v10, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethodsLength:I

    .line 115
    .line 116
    add-int/2addr v6, v10

    .line 117
    :cond_6
    new-array v10, v6, [B

    .line 118
    .line 119
    const v14, -0x35014542    # -8346975.0f

    .line 120
    .line 121
    .line 122
    invoke-static {v10, v14, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32([BII)I

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    sget v15, Lorg/mozilla/classfile/ClassFileWriter;->MinorVersion:I

    .line 127
    .line 128
    invoke-static {v10, v15, v14}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 129
    .line 130
    .line 131
    move-result v14

    .line 132
    sget v15, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    .line 133
    .line 134
    invoke-static {v10, v15, v14}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 135
    .line 136
    .line 137
    move-result v14

    .line 138
    iget v15, v2, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 139
    .line 140
    int-to-short v15, v15

    .line 141
    invoke-static {v10, v15, v14}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 142
    .line 143
    .line 144
    move-result v14

    .line 145
    iget-object v15, v2, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 146
    .line 147
    move/from16 v16, v11

    .line 148
    .line 149
    iget v11, v2, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 150
    .line 151
    invoke-static {v15, v4, v10, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    .line 153
    .line 154
    iget v2, v2, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 155
    .line 156
    add-int/2addr v14, v2

    .line 157
    iget v2, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsFlags:I

    .line 158
    .line 159
    invoke-static {v10, v2, v14}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    iget v11, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:I

    .line 164
    .line 165
    invoke-static {v10, v11, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    iget v11, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperClassIndex:I

    .line 170
    .line 171
    invoke-static {v10, v11, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    invoke-static {v10, v11, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    move v11, v4

    .line 184
    :goto_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 185
    .line 186
    .line 187
    move-result v14

    .line 188
    if-ge v11, v14, :cond_7

    .line 189
    .line 190
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v14

    .line 194
    check-cast v14, Ljava/lang/Short;

    .line 195
    .line 196
    invoke-virtual {v14}, Ljava/lang/Short;->shortValue()S

    .line 197
    .line 198
    .line 199
    move-result v14

    .line 200
    invoke-static {v10, v14, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    add-int/lit8 v11, v11, 0x1

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_7
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    invoke-static {v10, v9, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    move v9, v4

    .line 216
    :goto_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    if-ge v9, v11, :cond_8

    .line 221
    .line 222
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    check-cast v11, Lorg/mozilla/classfile/ClassFileField;

    .line 227
    .line 228
    iget-short v14, v11, Lorg/mozilla/classfile/ClassFileField;->itsFlags:S

    .line 229
    .line 230
    invoke-static {v10, v14, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    iget-short v14, v11, Lorg/mozilla/classfile/ClassFileField;->itsNameIndex:S

    .line 235
    .line 236
    invoke-static {v10, v14, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    iget-short v11, v11, Lorg/mozilla/classfile/ClassFileField;->itsTypeIndex:S

    .line 241
    .line 242
    invoke-static {v10, v11, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    invoke-static {v10, v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    add-int/lit8 v9, v9, 0x1

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    invoke-static {v10, v9, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    move v9, v4

    .line 262
    :goto_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 263
    .line 264
    .line 265
    move-result v11

    .line 266
    if-ge v9, v11, :cond_9

    .line 267
    .line 268
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    check-cast v11, Lorg/mozilla/classfile/ClassFileMethod;

    .line 273
    .line 274
    iget-short v12, v11, Lorg/mozilla/classfile/ClassFileMethod;->itsFlags:S

    .line 275
    .line 276
    invoke-static {v10, v12, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    iget-short v12, v11, Lorg/mozilla/classfile/ClassFileMethod;->itsNameIndex:S

    .line 281
    .line 282
    invoke-static {v10, v12, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    iget-short v12, v11, Lorg/mozilla/classfile/ClassFileMethod;->itsTypeIndex:S

    .line 287
    .line 288
    invoke-static {v10, v12, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    invoke-static {v10, v3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    iget-object v12, v11, Lorg/mozilla/classfile/ClassFileMethod;->itsCodeAttribute:[B

    .line 297
    .line 298
    array-length v14, v12

    .line 299
    invoke-static {v12, v4, v10, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    .line 301
    .line 302
    iget-object v11, v11, Lorg/mozilla/classfile/ClassFileMethod;->itsCodeAttribute:[B

    .line 303
    .line 304
    array-length v11, v11

    .line 305
    add-int/2addr v2, v11

    .line 306
    add-int/lit8 v9, v9, 0x1

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_9
    invoke-static {v10, v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    iget-object v3, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    .line 314
    .line 315
    if-eqz v3, :cond_a

    .line 316
    .line 317
    invoke-static {v10, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    iget v2, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethodsLength:I

    .line 322
    .line 323
    add-int/lit8 v2, v2, 0x2

    .line 324
    .line 325
    invoke-static {v10, v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32([BII)I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    iget-object v2, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    invoke-static {v10, v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    move v2, v1

    .line 340
    move v1, v4

    .line 341
    :goto_7
    iget-object v3, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    .line 342
    .line 343
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    if-ge v1, v3, :cond_a

    .line 348
    .line 349
    iget-object v3, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    check-cast v3, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;

    .line 356
    .line 357
    iget-object v5, v3, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    .line 358
    .line 359
    array-length v9, v5

    .line 360
    invoke-static {v5, v4, v10, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    .line 362
    .line 363
    iget-object v3, v3, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    .line 364
    .line 365
    array-length v3, v3

    .line 366
    add-int/2addr v2, v3

    .line 367
    add-int/lit8 v1, v1, 0x1

    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_a
    if-eqz v7, :cond_b

    .line 371
    .line 372
    invoke-static {v10, v8, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    move/from16 v1, v16

    .line 377
    .line 378
    invoke-static {v10, v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32([BII)I

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    invoke-static {v10, v7, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    :cond_b
    if-ne v2, v6, :cond_c

    .line 387
    .line 388
    return-object v10

    .line 389
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    .line 390
    .line 391
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 392
    .line 393
    .line 394
    throw v0
.end method

.method public final xop(III)V
    .locals 1

    .line 1
    if-eqz p3, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p3, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p3, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p3, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    add-int/2addr p1, v0

    .line 17
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    add-int/2addr p1, v0

    .line 22
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    add-int/2addr p1, v0

    .line 27
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_3
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
