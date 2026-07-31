.class public final Lcom/google/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/protobuf/Schema;


# static fields
.field public static final EMPTY_INT_ARRAY:[I

.field public static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field public final buffer:[I

.field public final checkInitializedCount:I

.field public final defaultInstance:Lcom/google/protobuf/MessageLite;

.field public final intArray:[I

.field public final listFieldSchema:Lcom/google/protobuf/ListFieldSchemaLite;

.field public final mapFieldSchema:Lcom/google/protobuf/MapFieldSchemaLite;

.field public final maxFieldNumber:I

.field public final minFieldNumber:I

.field public final newInstanceSchema:Lcom/google/protobuf/NewInstanceSchemaLite;

.field public final objects:[Ljava/lang/Object;

.field public final oneofFieldPositionsStart:I

.field public final unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSetLiteSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lcom/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 5
    .line 6
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;[IIILcom/google/protobuf/NewInstanceSchemaLite;Lcom/google/protobuf/ListFieldSchemaLite;Lcom/google/protobuf/UnknownFieldSetLiteSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MapFieldSchemaLite;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/protobuf/MessageSchema;->minFieldNumber:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/protobuf/MessageSchema;->maxFieldNumber:I

    .line 11
    .line 12
    iput-object p6, p0, Lcom/google/protobuf/MessageSchema;->intArray:[I

    .line 13
    .line 14
    iput p7, p0, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    .line 15
    .line 16
    iput p8, p0, Lcom/google/protobuf/MessageSchema;->oneofFieldPositionsStart:I

    .line 17
    .line 18
    iput-object p9, p0, Lcom/google/protobuf/MessageSchema;->newInstanceSchema:Lcom/google/protobuf/NewInstanceSchemaLite;

    .line 19
    .line 20
    iput-object p10, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchemaLite;

    .line 21
    .line 22
    iput-object p11, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    .line 23
    .line 24
    iput-object p5, p0, Lcom/google/protobuf/MessageSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 25
    .line 26
    iput-object p13, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchemaLite;

    .line 27
    .line 28
    return-void
.end method

.method public static checkMutable(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "Mutating immutable message: "

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static isMutable(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->isMutable()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static newSchemaForRawMessageInfo(Lcom/google/protobuf/RawMessageInfo;Lcom/google/protobuf/NewInstanceSchemaLite;Lcom/google/protobuf/ListFieldSchemaLite;Lcom/google/protobuf/UnknownFieldSetLiteSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MapFieldSchemaLite;)Lcom/google/protobuf/MessageSchema;
    .locals 34

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 5
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    .line 7
    sget-object v7, Lcom/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move/from16 v16, v13

    move-object v15, v7

    move/from16 v7, v16

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 9
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 10
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 11
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 12
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 13
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 14
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 15
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 16
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 17
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 18
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 19
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 20
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_12

    :goto_8
    add-int/lit8 v13, v14, 0x1

    .line 21
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11

    move v14, v13

    goto :goto_8

    :cond_11
    move v14, v13

    :cond_12
    add-int/lit8 v13, v14, 0x1

    .line 22
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v13, 0x1

    .line 23
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_13

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v15

    or-int/2addr v14, v13

    add-int/lit8 v15, v15, 0xd

    move/from16 v13, v16

    goto :goto_9

    :cond_13
    shl-int/2addr v13, v15

    or-int/2addr v14, v13

    move/from16 v13, v16

    :cond_14
    add-int v15, v14, v12

    add-int/2addr v15, v4

    .line 24
    new-array v15, v15, [I

    mul-int/lit8 v16, v4, 0x2

    add-int v16, v16, v7

    move v7, v12

    move v12, v9

    move v9, v7

    move v7, v4

    move v4, v13

    move v13, v10

    move/from16 v10, v16

    move/from16 v16, v14

    .line 25
    :goto_a
    sget-object v14, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 26
    iget-object v3, v0, Lcom/google/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    .line 27
    iget-object v8, v0, Lcom/google/protobuf/RawMessageInfo;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 28
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    mul-int/lit8 v5, v11, 0x3

    .line 29
    new-array v5, v5, [I

    mul-int/lit8 v11, v11, 0x2

    .line 30
    new-array v11, v11, [Ljava/lang/Object;

    add-int v9, v16, v9

    move/from16 v22, v9

    move/from16 v23, v16

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_b
    if-ge v4, v2, :cond_36

    add-int/lit8 v24, v4, 0x1

    .line 31
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v6, v24

    const/16 v24, 0xd

    :goto_c
    add-int/lit8 v26, v6, 0x1

    .line 32
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v2

    const v2, 0xd800

    if-lt v6, v2, :cond_15

    and-int/lit16 v2, v6, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v4, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v6, v26

    move/from16 v2, v27

    goto :goto_c

    :cond_15
    shl-int v2, v6, v24

    or-int/2addr v4, v2

    move/from16 v2, v26

    goto :goto_d

    :cond_16
    move/from16 v27, v2

    move/from16 v2, v24

    :goto_d
    add-int/lit8 v6, v2, 0x1

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v24, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_18

    and-int/lit16 v2, v2, 0x1fff

    const/16 v26, 0xd

    :goto_e
    add-int/lit8 v28, v6, 0x1

    .line 34
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v3, :cond_17

    and-int/lit16 v3, v6, 0x1fff

    shl-int v3, v3, v26

    or-int/2addr v2, v3

    add-int/lit8 v26, v26, 0xd

    move/from16 v6, v28

    const v3, 0xd800

    goto :goto_e

    :cond_17
    shl-int v3, v6, v26

    or-int/2addr v2, v3

    move/from16 v6, v28

    :cond_18
    and-int/lit16 v3, v2, 0xff

    move/from16 v26, v4

    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_19

    add-int/lit8 v4, v20, 0x1

    .line 35
    aput v21, v15, v20

    move/from16 v20, v4

    :cond_19
    const/16 v4, 0x33

    move-object/from16 v30, v5

    if-lt v3, v4, :cond_24

    add-int/lit8 v4, v6, 0x1

    .line 36
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v5, 0xd800

    if-lt v6, v5, :cond_1b

    and-int/lit16 v6, v6, 0x1fff

    const/16 v32, 0xd

    :goto_f
    add-int/lit8 v33, v4, 0x1

    .line 37
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1a

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v32

    or-int/2addr v6, v4

    add-int/lit8 v32, v32, 0xd

    move/from16 v4, v33

    const v5, 0xd800

    goto :goto_f

    :cond_1a
    shl-int v4, v4, v32

    or-int/2addr v6, v4

    move/from16 v4, v33

    :cond_1b
    add-int/lit8 v5, v3, -0x33

    move/from16 v32, v4

    const/16 v4, 0x9

    if-eq v5, v4, :cond_20

    const/16 v4, 0x11

    if-ne v5, v4, :cond_1c

    goto :goto_12

    :cond_1c
    const/16 v4, 0xc

    if-ne v5, v4, :cond_21

    .line 38
    invoke-virtual {v0}, Lcom/google/protobuf/RawMessageInfo;->getSyntax()I

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    const/4 v4, 0x1

    goto :goto_10

    :cond_1d
    const/4 v4, 0x0

    :goto_10
    if-nez v4, :cond_1e

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_21

    .line 39
    :cond_1e
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    const/16 v19, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v10, 0x1

    aget-object v10, v24, v10

    aput-object v10, v11, v4

    :goto_11
    move v10, v5

    goto :goto_13

    :cond_1f
    const/4 v0, 0x0

    .line 40
    throw v0

    .line 41
    :cond_20
    :goto_12
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    const/16 v19, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v10, 0x1

    aget-object v10, v24, v10

    aput-object v10, v11, v4

    goto :goto_11

    :cond_21
    :goto_13
    mul-int/lit8 v6, v6, 0x2

    .line 42
    aget-object v4, v24, v6

    .line 43
    instance-of v5, v4, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_22

    .line 44
    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_14

    .line 45
    :cond_22
    check-cast v4, Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 46
    aput-object v4, v24, v6

    add-int/lit8 v5, v22, 0x1

    .line 47
    aput v21, v15, v22

    move/from16 v22, v5

    .line 48
    :goto_14
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    add-int/lit8 v6, v6, 0x1

    .line 49
    aget-object v5, v24, v6

    move/from16 v28, v4

    .line 50
    instance-of v4, v5, Ljava/lang/reflect/Field;

    if-eqz v4, :cond_23

    .line 51
    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_15

    .line 52
    :cond_23
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 53
    aput-object v5, v24, v6

    .line 54
    :goto_15
    invoke-virtual {v14, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v31, v1

    move v1, v3

    move v3, v4

    move/from16 v29, v10

    move/from16 v4, v28

    const/4 v6, 0x0

    move/from16 v28, v7

    move-object v10, v8

    goto/16 :goto_1f

    :cond_24
    add-int/lit8 v4, v10, 0x1

    .line 55
    aget-object v5, v24, v10

    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move/from16 v32, v4

    const/16 v4, 0x9

    if-eq v3, v4, :cond_25

    const/16 v4, 0x11

    if-ne v3, v4, :cond_26

    :cond_25
    move/from16 v28, v7

    const/4 v7, 0x1

    goto/16 :goto_19

    :cond_26
    const/16 v4, 0x1b

    if-eq v3, v4, :cond_27

    const/16 v4, 0x31

    if-ne v3, v4, :cond_28

    :cond_27
    move/from16 v28, v7

    const/4 v7, 0x1

    goto :goto_18

    :cond_28
    const/16 v4, 0xc

    if-eq v3, v4, :cond_2c

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_2c

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_29

    goto :goto_16

    :cond_29
    const/16 v4, 0x32

    if-ne v3, v4, :cond_2b

    add-int/lit8 v4, v23, 0x1

    .line 56
    aput v21, v15, v23

    .line 57
    div-int/lit8 v23, v21, 0x3

    mul-int/lit8 v23, v23, 0x2

    add-int/lit8 v28, v10, 0x2

    aget-object v29, v24, v32

    aput-object v29, v11, v23

    move/from16 v29, v4

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_2a

    add-int/lit8 v23, v23, 0x1

    add-int/lit8 v4, v10, 0x3

    .line 58
    aget-object v10, v24, v28

    aput-object v10, v11, v23

    move/from16 v28, v7

    move-object v10, v8

    move/from16 v23, v29

    goto :goto_1b

    :cond_2a
    move-object v10, v8

    move/from16 v4, v28

    move/from16 v23, v29

    move/from16 v28, v7

    goto :goto_1b

    :cond_2b
    move/from16 v28, v7

    const/4 v7, 0x1

    goto :goto_1a

    .line 59
    :cond_2c
    :goto_16
    invoke-virtual {v0}, Lcom/google/protobuf/RawMessageInfo;->getSyntax()I

    move-result v4

    move/from16 v28, v7

    const/4 v7, 0x1

    if-eq v4, v7, :cond_2d

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_2e

    .line 60
    :cond_2d
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    add-int/lit8 v10, v10, 0x2

    aget-object v19, v24, v32

    aput-object v19, v11, v4

    :goto_17
    move v4, v10

    move-object v10, v8

    goto :goto_1b

    .line 61
    :goto_18
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    add-int/lit8 v10, v10, 0x2

    aget-object v19, v24, v32

    aput-object v19, v11, v4

    goto :goto_17

    .line 62
    :goto_19
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v11, v4

    :cond_2e
    :goto_1a
    move-object v10, v8

    move/from16 v4, v32

    .line 63
    :goto_1b
    invoke-virtual {v14, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v5, v7

    and-int/lit16 v7, v2, 0x1000

    if-eqz v7, :cond_32

    const/16 v7, 0x11

    if-gt v3, v7, :cond_32

    add-int/lit8 v7, v6, 0x1

    .line 64
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v8, 0xd800

    if-lt v6, v8, :cond_30

    and-int/lit16 v6, v6, 0x1fff

    const/16 v25, 0xd

    :goto_1c
    add-int/lit8 v29, v7, 0x1

    .line 65
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_2f

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v25

    or-int/2addr v6, v7

    add-int/lit8 v25, v25, 0xd

    move/from16 v7, v29

    goto :goto_1c

    :cond_2f
    shl-int v7, v7, v25

    or-int/2addr v6, v7

    move/from16 v7, v29

    :cond_30
    mul-int/lit8 v25, v28, 0x2

    .line 66
    div-int/lit8 v29, v6, 0x20

    add-int v29, v29, v25

    .line 67
    aget-object v8, v24, v29

    move-object/from16 v31, v1

    .line 68
    instance-of v1, v8, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_31

    .line 69
    check-cast v8, Ljava/lang/reflect/Field;

    :goto_1d
    move v1, v3

    move/from16 v29, v4

    goto :goto_1e

    .line 70
    :cond_31
    check-cast v8, Ljava/lang/String;

    invoke-static {v10, v8}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 71
    aput-object v8, v24, v29

    goto :goto_1d

    .line 72
    :goto_1e
    invoke-virtual {v14, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v4, v3

    .line 73
    rem-int/lit8 v6, v6, 0x20

    move v3, v4

    move v4, v5

    move/from16 v32, v7

    goto :goto_1f

    :cond_32
    move-object/from16 v31, v1

    move v1, v3

    move/from16 v29, v4

    const v4, 0xfffff

    move v3, v4

    move v4, v5

    move/from16 v32, v6

    const/4 v6, 0x0

    :goto_1f
    add-int/lit8 v5, v21, 0x1

    .line 74
    aput v26, v30, v21

    add-int/lit8 v7, v21, 0x2

    and-int/lit16 v8, v2, 0x200

    if-eqz v8, :cond_33

    const/high16 v8, 0x20000000

    goto :goto_20

    :cond_33
    const/4 v8, 0x0

    :goto_20
    move/from16 v26, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_34

    const/high16 v1, 0x10000000

    goto :goto_21

    :cond_34
    const/4 v1, 0x0

    :goto_21
    or-int/2addr v1, v8

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_35

    const/high16 v2, -0x80000000

    goto :goto_22

    :cond_35
    const/4 v2, 0x0

    :goto_22
    or-int/2addr v1, v2

    shl-int/lit8 v2, v26, 0x14

    or-int/2addr v1, v2

    or-int/2addr v1, v4

    .line 75
    aput v1, v30, v5

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v1, v6, 0x14

    or-int/2addr v1, v3

    .line 76
    aput v1, v30, v7

    move-object v8, v10

    move-object/from16 v3, v24

    move/from16 v2, v27

    move/from16 v7, v28

    move/from16 v10, v29

    move-object/from16 v5, v30

    move-object/from16 v1, v31

    move/from16 v4, v32

    const v6, 0xd800

    goto/16 :goto_b

    :cond_36
    move-object/from16 v30, v5

    .line 77
    new-instance v1, Lcom/google/protobuf/MessageSchema;

    .line 78
    iget-object v14, v0, Lcom/google/protobuf/RawMessageInfo;->defaultInstance:Lcom/google/protobuf/MessageLite;

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move/from16 v17, v9

    move-object/from16 v10, v30

    move-object v9, v1

    .line 79
    invoke-direct/range {v9 .. v22}, Lcom/google/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;[IIILcom/google/protobuf/NewInstanceSchemaLite;Lcom/google/protobuf/ListFieldSchemaLite;Lcom/google/protobuf/UnknownFieldSetLiteSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MapFieldSchemaLite;)V

    return-object v9
.end method

.method public static oneofIntAt(JLjava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static oneofLongAt(JLjava/lang/Object;)J
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method public static reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_1

    .line 14
    .line 15
    aget-object v4, v1, v3

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    return-object v4

    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    .line 32
    .line 33
    const-string v3, "Field "

    .line 34
    .line 35
    const-string v4, " for "

    .line 36
    .line 37
    invoke-static {v3, p1, v4}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p0, " not found. Known fields are "

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw v2
.end method

.method public static type(I)I
    .locals 1

    .line 1
    const/high16 v0, 0xff00000

    .line 2
    .line 3
    and-int/2addr p0, v0

    .line 4
    ushr-int/lit8 p0, p0, 0x14

    .line 5
    .line 6
    return p0
.end method


# virtual methods
.method public final arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p3, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final equals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    const v4, 0xfffff

    .line 7
    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    if-ge v3, v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0, v3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->type(I)I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    const/16 v8, 0x32

    .line 21
    .line 22
    if-le v7, v8, :cond_0

    .line 23
    .line 24
    const/16 v8, 0x45

    .line 25
    .line 26
    if-ge v7, v8, :cond_0

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    and-int/2addr v6, v4

    .line 31
    int-to-long v8, v6

    .line 32
    packed-switch v7, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :pswitch_0
    add-int/lit8 v6, v3, 0x2

    .line 38
    .line 39
    aget v6, v0, v6

    .line 40
    .line 41
    and-int/2addr v4, v6

    .line 42
    int-to-long v6, v4

    .line 43
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 44
    .line 45
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v10

    .line 49
    invoke-virtual {v4, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-ne v10, v6, :cond_1

    .line 54
    .line 55
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v6, v4}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :cond_1
    move v5, v2

    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :pswitch_1
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 75
    .line 76
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v5, v4}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :pswitch_2
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 91
    .line 92
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-static {v5, v4}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_1

    .line 111
    .line 112
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 113
    .line 114
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {v6, v4}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_1

    .line 127
    .line 128
    goto/16 :goto_1

    .line 129
    .line 130
    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_1

    .line 135
    .line 136
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 137
    .line 138
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 139
    .line 140
    .line 141
    move-result-wide v6

    .line 142
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 143
    .line 144
    .line 145
    move-result-wide v8

    .line 146
    cmp-long v4, v6, v8

    .line 147
    .line 148
    if-nez v4, :cond_1

    .line 149
    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_1

    .line 157
    .line 158
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 159
    .line 160
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-ne v6, v4, :cond_1

    .line 169
    .line 170
    goto/16 :goto_1

    .line 171
    .line 172
    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-eqz v4, :cond_1

    .line 177
    .line 178
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 179
    .line 180
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 181
    .line 182
    .line 183
    move-result-wide v6

    .line 184
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 185
    .line 186
    .line 187
    move-result-wide v8

    .line 188
    cmp-long v4, v6, v8

    .line 189
    .line 190
    if-nez v4, :cond_1

    .line 191
    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-eqz v4, :cond_1

    .line 199
    .line 200
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 201
    .line 202
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-ne v6, v4, :cond_1

    .line 211
    .line 212
    goto/16 :goto_1

    .line 213
    .line 214
    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-eqz v4, :cond_1

    .line 219
    .line 220
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 221
    .line 222
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    if-ne v6, v4, :cond_1

    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-eqz v4, :cond_1

    .line 239
    .line 240
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 241
    .line 242
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    if-ne v6, v4, :cond_1

    .line 251
    .line 252
    goto/16 :goto_1

    .line 253
    .line 254
    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    if-eqz v4, :cond_1

    .line 259
    .line 260
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 261
    .line 262
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-static {v6, v4}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-eqz v4, :cond_1

    .line 275
    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-eqz v4, :cond_1

    .line 283
    .line 284
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 285
    .line 286
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    invoke-static {v6, v4}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-eqz v4, :cond_1

    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    if-eqz v4, :cond_1

    .line 307
    .line 308
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 309
    .line 310
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    invoke-static {v6, v4}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    if-eqz v4, :cond_1

    .line 323
    .line 324
    goto/16 :goto_1

    .line 325
    .line 326
    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    if-eqz v4, :cond_1

    .line 331
    .line 332
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 333
    .line 334
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v6

    .line 338
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    if-ne v6, v4, :cond_1

    .line 343
    .line 344
    goto/16 :goto_1

    .line 345
    .line 346
    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    if-eqz v4, :cond_1

    .line 351
    .line 352
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 353
    .line 354
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 355
    .line 356
    .line 357
    move-result v6

    .line 358
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    if-ne v6, v4, :cond_1

    .line 363
    .line 364
    goto/16 :goto_1

    .line 365
    .line 366
    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    if-eqz v4, :cond_1

    .line 371
    .line 372
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 373
    .line 374
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 375
    .line 376
    .line 377
    move-result-wide v6

    .line 378
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 379
    .line 380
    .line 381
    move-result-wide v8

    .line 382
    cmp-long v4, v6, v8

    .line 383
    .line 384
    if-nez v4, :cond_1

    .line 385
    .line 386
    goto/16 :goto_1

    .line 387
    .line 388
    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z

    .line 389
    .line 390
    .line 391
    move-result v4

    .line 392
    if-eqz v4, :cond_1

    .line 393
    .line 394
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 395
    .line 396
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 397
    .line 398
    .line 399
    move-result v6

    .line 400
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 401
    .line 402
    .line 403
    move-result v4

    .line 404
    if-ne v6, v4, :cond_1

    .line 405
    .line 406
    goto :goto_1

    .line 407
    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z

    .line 408
    .line 409
    .line 410
    move-result v4

    .line 411
    if-eqz v4, :cond_1

    .line 412
    .line 413
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 414
    .line 415
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 416
    .line 417
    .line 418
    move-result-wide v6

    .line 419
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 420
    .line 421
    .line 422
    move-result-wide v8

    .line 423
    cmp-long v4, v6, v8

    .line 424
    .line 425
    if-nez v4, :cond_1

    .line 426
    .line 427
    goto :goto_1

    .line 428
    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    if-eqz v4, :cond_1

    .line 433
    .line 434
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 435
    .line 436
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 437
    .line 438
    .line 439
    move-result-wide v6

    .line 440
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 441
    .line 442
    .line 443
    move-result-wide v8

    .line 444
    cmp-long v4, v6, v8

    .line 445
    .line 446
    if-nez v4, :cond_1

    .line 447
    .line 448
    goto :goto_1

    .line 449
    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z

    .line 450
    .line 451
    .line 452
    move-result v4

    .line 453
    if-eqz v4, :cond_1

    .line 454
    .line 455
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 456
    .line 457
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 462
    .line 463
    .line 464
    move-result v6

    .line 465
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 466
    .line 467
    .line 468
    move-result v4

    .line 469
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 470
    .line 471
    .line 472
    move-result v4

    .line 473
    if-ne v6, v4, :cond_1

    .line 474
    .line 475
    goto :goto_1

    .line 476
    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/GeneratedMessageLite;I)Z

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    if-eqz v4, :cond_1

    .line 481
    .line 482
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 483
    .line 484
    invoke-virtual {v4, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 485
    .line 486
    .line 487
    move-result-wide v6

    .line 488
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 489
    .line 490
    .line 491
    move-result-wide v6

    .line 492
    invoke-virtual {v4, v8, v9, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 493
    .line 494
    .line 495
    move-result-wide v8

    .line 496
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 497
    .line 498
    .line 499
    move-result-wide v8

    .line 500
    cmp-long v4, v6, v8

    .line 501
    .line 502
    if-nez v4, :cond_1

    .line 503
    .line 504
    :goto_1
    if-nez v5, :cond_2

    .line 505
    .line 506
    goto :goto_5

    .line 507
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x3

    .line 508
    .line 509
    goto/16 :goto_0

    .line 510
    .line 511
    :cond_3
    iget v1, p0, Lcom/google/protobuf/MessageSchema;->oneofFieldPositionsStart:I

    .line 512
    .line 513
    :goto_3
    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->intArray:[I

    .line 514
    .line 515
    array-length v6, v3

    .line 516
    if-ge v1, v6, :cond_7

    .line 517
    .line 518
    aget v3, v3, v1

    .line 519
    .line 520
    add-int/lit8 v6, v3, 0x2

    .line 521
    .line 522
    aget v6, v0, v6

    .line 523
    .line 524
    and-int/2addr v6, v4

    .line 525
    int-to-long v6, v6

    .line 526
    sget-object v8, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 527
    .line 528
    invoke-virtual {v8, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 529
    .line 530
    .line 531
    move-result v9

    .line 532
    invoke-virtual {v8, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 533
    .line 534
    .line 535
    move-result v6

    .line 536
    if-ne v9, v6, :cond_6

    .line 537
    .line 538
    invoke-virtual {p0, v2, v3, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v6

    .line 542
    if-eqz v6, :cond_4

    .line 543
    .line 544
    goto :goto_4

    .line 545
    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 546
    .line 547
    .line 548
    move-result v3

    .line 549
    and-int/2addr v3, v4

    .line 550
    int-to-long v6, v3

    .line 551
    invoke-virtual {v8, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    invoke-virtual {v8, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v6

    .line 559
    invoke-static {v3, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    move-result v3

    .line 563
    if-nez v3, :cond_5

    .line 564
    .line 565
    goto :goto_5

    .line 566
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 567
    .line 568
    goto :goto_3

    .line 569
    :cond_6
    return v2

    .line 570
    :cond_7
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    .line 571
    .line 572
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 576
    .line 577
    iget-object p1, p2, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 578
    .line 579
    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    move-result p0

    .line 583
    if-nez p0, :cond_8

    .line 584
    .line 585
    :goto_5
    return v2

    .line 586
    :cond_8
    return v5

    .line 587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
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
    .end packed-switch
.end method

.method public final getEnumFieldVerifier(I)V
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 8
    .line 9
    aget-object p0, p0, p1

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final getMapFieldDefaultEntry(I)Ljava/lang/Object;
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object p0, p0, p1

    .line 8
    .line 9
    return-object p0
.end method

.method public final getMessageFieldSchema(I)Lcom/google/protobuf/Schema;
    .locals 2

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object v0, p0, p1

    .line 8
    .line 9
    check-cast v0, Lcom/google/protobuf/Schema;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-object v0, Lcom/google/protobuf/Protobuf;->INSTANCE:Lcom/google/protobuf/Protobuf;

    .line 15
    .line 16
    add-int/lit8 v1, p1, 0x1

    .line 17
    .line 18
    aget-object v1, p0, v1

    .line 19
    .line 20
    check-cast v1, Ljava/lang/Class;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    aput-object v0, p0, p1

    .line 27
    .line 28
    return-object v0
.end method

.method public final getSerializedSize(Lcom/google/protobuf/GeneratedMessageLite;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v6, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    const v8, 0xfffff

    .line 9
    .line 10
    .line 11
    move v2, v7

    .line 12
    move v4, v2

    .line 13
    move v9, v4

    .line 14
    move v3, v8

    .line 15
    :goto_0
    iget-object v5, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 16
    .line 17
    array-length v10, v5

    .line 18
    if-ge v2, v10, :cond_1c

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 21
    .line 22
    .line 23
    move-result v10

    .line 24
    invoke-static {v10}, Lcom/google/protobuf/MessageSchema;->type(I)I

    .line 25
    .line 26
    .line 27
    move-result v11

    .line 28
    aget v12, v5, v2

    .line 29
    .line 30
    add-int/lit8 v13, v2, 0x2

    .line 31
    .line 32
    aget v5, v5, v13

    .line 33
    .line 34
    and-int v13, v5, v8

    .line 35
    .line 36
    const/16 v14, 0x11

    .line 37
    .line 38
    const/4 v15, 0x1

    .line 39
    if-gt v11, v14, :cond_2

    .line 40
    .line 41
    if-eq v13, v3, :cond_1

    .line 42
    .line 43
    if-ne v13, v8, :cond_0

    .line 44
    .line 45
    move v4, v7

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    int-to-long v3, v13

    .line 48
    invoke-virtual {v6, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    move v4, v3

    .line 53
    :goto_1
    move v3, v13

    .line 54
    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    .line 55
    .line 56
    shl-int v5, v15, v5

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move v5, v7

    .line 60
    :goto_2
    and-int/2addr v10, v8

    .line 61
    int-to-long v13, v10

    .line 62
    sget-object v10, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 63
    .line 64
    invoke-virtual {v10}, Lcom/google/protobuf/FieldType;->id()I

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    if-lt v11, v10, :cond_3

    .line 69
    .line 70
    sget-object v10, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 71
    .line 72
    invoke-virtual {v10}, Lcom/google/protobuf/FieldType;->id()I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    :cond_3
    packed-switch v11, :pswitch_data_0

    .line 77
    .line 78
    .line 79
    goto/16 :goto_1f

    .line 80
    .line 81
    :pswitch_0
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_1b

    .line 86
    .line 87
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    check-cast v5, Lcom/google/protobuf/MessageLite;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    sget-object v11, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 98
    .line 99
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    mul-int/lit8 v11, v11, 0x2

    .line 104
    .line 105
    check-cast v5, Lcom/google/protobuf/AbstractMessageLite;

    .line 106
    .line 107
    invoke-virtual {v5, v10}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    :goto_3
    add-int/2addr v5, v11

    .line 112
    :goto_4
    add-int/2addr v9, v5

    .line 113
    goto/16 :goto_1f

    .line 114
    .line 115
    :pswitch_1
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_1b

    .line 120
    .line 121
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v10

    .line 125
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    invoke-static {v10, v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeSInt64SizeNoTag(J)I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    :goto_5
    add-int/2addr v10, v5

    .line 134
    :goto_6
    add-int/2addr v9, v10

    .line 135
    goto/16 :goto_1f

    .line 136
    .line 137
    :pswitch_2
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-eqz v5, :cond_1b

    .line 142
    .line 143
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeSInt32SizeNoTag(I)I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    :goto_7
    add-int/2addr v5, v10

    .line 156
    goto :goto_4

    .line 157
    :pswitch_3
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-eqz v5, :cond_1b

    .line 162
    .line 163
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    :goto_8
    add-int/lit8 v5, v5, 0x8

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :pswitch_4
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    if-eqz v5, :cond_1b

    .line 175
    .line 176
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    :goto_9
    add-int/lit8 v5, v5, 0x4

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :pswitch_5
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-eqz v5, :cond_1b

    .line 188
    .line 189
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    int-to-long v11, v5

    .line 198
    invoke-static {v11, v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    goto :goto_7

    .line 203
    :pswitch_6
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_1b

    .line 208
    .line 209
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    goto :goto_7

    .line 222
    :pswitch_7
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-eqz v5, :cond_1b

    .line 227
    .line 228
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    check-cast v5, Lcom/google/protobuf/ByteString;

    .line 233
    .line 234
    invoke-static {v12, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    goto :goto_4

    .line 239
    :pswitch_8
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    if-eqz v5, :cond_1b

    .line 244
    .line 245
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    sget-object v11, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 254
    .line 255
    check-cast v5, Lcom/google/protobuf/AbstractMessageLite;

    .line 256
    .line 257
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 258
    .line 259
    .line 260
    move-result v11

    .line 261
    invoke-virtual {v5, v10}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 266
    .line 267
    .line 268
    move-result v10

    .line 269
    :goto_a
    add-int/2addr v10, v5

    .line 270
    add-int/2addr v10, v11

    .line 271
    goto/16 :goto_6

    .line 272
    .line 273
    :pswitch_9
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    if-eqz v5, :cond_1b

    .line 278
    .line 279
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    instance-of v10, v5, Lcom/google/protobuf/ByteString;

    .line 284
    .line 285
    if-eqz v10, :cond_4

    .line 286
    .line 287
    check-cast v5, Lcom/google/protobuf/ByteString;

    .line 288
    .line 289
    invoke-static {v12, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    add-int/2addr v5, v9

    .line 294
    move v9, v5

    .line 295
    goto/16 :goto_1f

    .line 296
    .line 297
    :cond_4
    check-cast v5, Ljava/lang/String;

    .line 298
    .line 299
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 300
    .line 301
    .line 302
    move-result v10

    .line 303
    invoke-static {v5}, Lcom/google/protobuf/Utf8;->encodedLength(Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 308
    .line 309
    .line 310
    move-result v11

    .line 311
    add-int/2addr v11, v5

    .line 312
    add-int/2addr v11, v10

    .line 313
    add-int/2addr v11, v9

    .line 314
    move v9, v11

    .line 315
    goto/16 :goto_1f

    .line 316
    .line 317
    :pswitch_a
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-eqz v5, :cond_1b

    .line 322
    .line 323
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    add-int/2addr v5, v15

    .line 328
    goto/16 :goto_4

    .line 329
    .line 330
    :pswitch_b
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    if-eqz v5, :cond_1b

    .line 335
    .line 336
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    goto/16 :goto_9

    .line 341
    .line 342
    :pswitch_c
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    if-eqz v5, :cond_1b

    .line 347
    .line 348
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    goto/16 :goto_8

    .line 353
    .line 354
    :pswitch_d
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    if-eqz v5, :cond_1b

    .line 359
    .line 360
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 361
    .line 362
    .line 363
    move-result v5

    .line 364
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 365
    .line 366
    .line 367
    move-result v10

    .line 368
    int-to-long v11, v5

    .line 369
    invoke-static {v11, v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    goto/16 :goto_7

    .line 374
    .line 375
    :pswitch_e
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    if-eqz v5, :cond_1b

    .line 380
    .line 381
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 382
    .line 383
    .line 384
    move-result-wide v10

    .line 385
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    invoke-static {v10, v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    .line 390
    .line 391
    .line 392
    move-result v10

    .line 393
    goto/16 :goto_5

    .line 394
    .line 395
    :pswitch_f
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    if-eqz v5, :cond_1b

    .line 400
    .line 401
    invoke-static {v13, v14, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 402
    .line 403
    .line 404
    move-result-wide v10

    .line 405
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    invoke-static {v10, v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    .line 410
    .line 411
    .line 412
    move-result v10

    .line 413
    goto/16 :goto_5

    .line 414
    .line 415
    :pswitch_10
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    if-eqz v5, :cond_1b

    .line 420
    .line 421
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    goto/16 :goto_9

    .line 426
    .line 427
    :pswitch_11
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v5

    .line 431
    if-eqz v5, :cond_1b

    .line 432
    .line 433
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    goto/16 :goto_8

    .line 438
    .line 439
    :pswitch_12
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v10

    .line 447
    iget-object v11, v0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchemaLite;

    .line 448
    .line 449
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    check-cast v5, Lcom/google/protobuf/MapFieldLite;

    .line 453
    .line 454
    if-nez v10, :cond_7

    .line 455
    .line 456
    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 457
    .line 458
    .line 459
    move-result v10

    .line 460
    if-eqz v10, :cond_5

    .line 461
    .line 462
    goto/16 :goto_1f

    .line 463
    .line 464
    :cond_5
    invoke-virtual {v5}, Lcom/google/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 473
    .line 474
    .line 475
    move-result v10

    .line 476
    if-nez v10, :cond_6

    .line 477
    .line 478
    goto/16 :goto_1f

    .line 479
    .line 480
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    check-cast v0, Ljava/util/Map$Entry;

    .line 485
    .line 486
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    const/4 v0, 0x0

    .line 493
    throw v0

    .line 494
    :cond_7
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2()V

    .line 495
    .line 496
    .line 497
    return v7

    .line 498
    :pswitch_13
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v5

    .line 502
    check-cast v5, Ljava/util/List;

    .line 503
    .line 504
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 505
    .line 506
    .line 507
    move-result-object v10

    .line 508
    sget-object v11, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 509
    .line 510
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 511
    .line 512
    .line 513
    move-result v11

    .line 514
    if-nez v11, :cond_8

    .line 515
    .line 516
    move v14, v7

    .line 517
    goto :goto_c

    .line 518
    :cond_8
    move v13, v7

    .line 519
    move v14, v13

    .line 520
    :goto_b
    if-ge v13, v11, :cond_9

    .line 521
    .line 522
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v15

    .line 526
    check-cast v15, Lcom/google/protobuf/MessageLite;

    .line 527
    .line 528
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 529
    .line 530
    .line 531
    move-result v16

    .line 532
    mul-int/lit8 v16, v16, 0x2

    .line 533
    .line 534
    check-cast v15, Lcom/google/protobuf/AbstractMessageLite;

    .line 535
    .line 536
    invoke-virtual {v15, v10}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    .line 537
    .line 538
    .line 539
    move-result v15

    .line 540
    add-int v15, v15, v16

    .line 541
    .line 542
    add-int/2addr v14, v15

    .line 543
    add-int/lit8 v13, v13, 0x1

    .line 544
    .line 545
    goto :goto_b

    .line 546
    :cond_9
    :goto_c
    add-int/2addr v9, v14

    .line 547
    goto/16 :goto_1f

    .line 548
    .line 549
    :pswitch_14
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v5

    .line 553
    check-cast v5, Ljava/util/List;

    .line 554
    .line 555
    invoke-static {v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    .line 556
    .line 557
    .line 558
    move-result v5

    .line 559
    if-lez v5, :cond_1b

    .line 560
    .line 561
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 562
    .line 563
    .line 564
    move-result v10

    .line 565
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 566
    .line 567
    .line 568
    move-result v11

    .line 569
    :goto_d
    add-int/2addr v11, v10

    .line 570
    add-int/2addr v11, v5

    .line 571
    add-int/2addr v9, v11

    .line 572
    goto/16 :goto_1f

    .line 573
    .line 574
    :pswitch_15
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    check-cast v5, Ljava/util/List;

    .line 579
    .line 580
    invoke-static {v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    .line 581
    .line 582
    .line 583
    move-result v5

    .line 584
    if-lez v5, :cond_1b

    .line 585
    .line 586
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 587
    .line 588
    .line 589
    move-result v10

    .line 590
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 591
    .line 592
    .line 593
    move-result v11

    .line 594
    goto :goto_d

    .line 595
    :pswitch_16
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v5

    .line 599
    check-cast v5, Ljava/util/List;

    .line 600
    .line 601
    sget-object v10, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 602
    .line 603
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 604
    .line 605
    .line 606
    move-result v5

    .line 607
    mul-int/lit8 v5, v5, 0x8

    .line 608
    .line 609
    if-lez v5, :cond_1b

    .line 610
    .line 611
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 612
    .line 613
    .line 614
    move-result v10

    .line 615
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 616
    .line 617
    .line 618
    move-result v11

    .line 619
    goto :goto_d

    .line 620
    :pswitch_17
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v5

    .line 624
    check-cast v5, Ljava/util/List;

    .line 625
    .line 626
    sget-object v10, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 627
    .line 628
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 629
    .line 630
    .line 631
    move-result v5

    .line 632
    mul-int/lit8 v5, v5, 0x4

    .line 633
    .line 634
    if-lez v5, :cond_1b

    .line 635
    .line 636
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 637
    .line 638
    .line 639
    move-result v10

    .line 640
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 641
    .line 642
    .line 643
    move-result v11

    .line 644
    goto :goto_d

    .line 645
    :pswitch_18
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v5

    .line 649
    check-cast v5, Ljava/util/List;

    .line 650
    .line 651
    invoke-static {v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    .line 652
    .line 653
    .line 654
    move-result v5

    .line 655
    if-lez v5, :cond_1b

    .line 656
    .line 657
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 658
    .line 659
    .line 660
    move-result v10

    .line 661
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 662
    .line 663
    .line 664
    move-result v11

    .line 665
    goto :goto_d

    .line 666
    :pswitch_19
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v5

    .line 670
    check-cast v5, Ljava/util/List;

    .line 671
    .line 672
    invoke-static {v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    .line 673
    .line 674
    .line 675
    move-result v5

    .line 676
    if-lez v5, :cond_1b

    .line 677
    .line 678
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 679
    .line 680
    .line 681
    move-result v10

    .line 682
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 683
    .line 684
    .line 685
    move-result v11

    .line 686
    goto :goto_d

    .line 687
    :pswitch_1a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v5

    .line 691
    check-cast v5, Ljava/util/List;

    .line 692
    .line 693
    sget-object v10, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 694
    .line 695
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 696
    .line 697
    .line 698
    move-result v5

    .line 699
    if-lez v5, :cond_1b

    .line 700
    .line 701
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 702
    .line 703
    .line 704
    move-result v10

    .line 705
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 706
    .line 707
    .line 708
    move-result v11

    .line 709
    goto/16 :goto_d

    .line 710
    .line 711
    :pswitch_1b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v5

    .line 715
    check-cast v5, Ljava/util/List;

    .line 716
    .line 717
    sget-object v10, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 718
    .line 719
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 720
    .line 721
    .line 722
    move-result v5

    .line 723
    mul-int/lit8 v5, v5, 0x4

    .line 724
    .line 725
    if-lez v5, :cond_1b

    .line 726
    .line 727
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 728
    .line 729
    .line 730
    move-result v10

    .line 731
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 732
    .line 733
    .line 734
    move-result v11

    .line 735
    goto/16 :goto_d

    .line 736
    .line 737
    :pswitch_1c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v5

    .line 741
    check-cast v5, Ljava/util/List;

    .line 742
    .line 743
    sget-object v10, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 744
    .line 745
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 746
    .line 747
    .line 748
    move-result v5

    .line 749
    mul-int/lit8 v5, v5, 0x8

    .line 750
    .line 751
    if-lez v5, :cond_1b

    .line 752
    .line 753
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 754
    .line 755
    .line 756
    move-result v10

    .line 757
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 758
    .line 759
    .line 760
    move-result v11

    .line 761
    goto/16 :goto_d

    .line 762
    .line 763
    :pswitch_1d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v5

    .line 767
    check-cast v5, Ljava/util/List;

    .line 768
    .line 769
    invoke-static {v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    .line 770
    .line 771
    .line 772
    move-result v5

    .line 773
    if-lez v5, :cond_1b

    .line 774
    .line 775
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 776
    .line 777
    .line 778
    move-result v10

    .line 779
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 780
    .line 781
    .line 782
    move-result v11

    .line 783
    goto/16 :goto_d

    .line 784
    .line 785
    :pswitch_1e
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v5

    .line 789
    check-cast v5, Ljava/util/List;

    .line 790
    .line 791
    invoke-static {v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    .line 792
    .line 793
    .line 794
    move-result v5

    .line 795
    if-lez v5, :cond_1b

    .line 796
    .line 797
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 798
    .line 799
    .line 800
    move-result v10

    .line 801
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 802
    .line 803
    .line 804
    move-result v11

    .line 805
    goto/16 :goto_d

    .line 806
    .line 807
    :pswitch_1f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v5

    .line 811
    check-cast v5, Ljava/util/List;

    .line 812
    .line 813
    invoke-static {v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    .line 814
    .line 815
    .line 816
    move-result v5

    .line 817
    if-lez v5, :cond_1b

    .line 818
    .line 819
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 820
    .line 821
    .line 822
    move-result v10

    .line 823
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 824
    .line 825
    .line 826
    move-result v11

    .line 827
    goto/16 :goto_d

    .line 828
    .line 829
    :pswitch_20
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    move-result-object v5

    .line 833
    check-cast v5, Ljava/util/List;

    .line 834
    .line 835
    sget-object v10, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 836
    .line 837
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 838
    .line 839
    .line 840
    move-result v5

    .line 841
    mul-int/lit8 v5, v5, 0x4

    .line 842
    .line 843
    if-lez v5, :cond_1b

    .line 844
    .line 845
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 846
    .line 847
    .line 848
    move-result v10

    .line 849
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 850
    .line 851
    .line 852
    move-result v11

    .line 853
    goto/16 :goto_d

    .line 854
    .line 855
    :pswitch_21
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v5

    .line 859
    check-cast v5, Ljava/util/List;

    .line 860
    .line 861
    sget-object v10, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 862
    .line 863
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 864
    .line 865
    .line 866
    move-result v5

    .line 867
    mul-int/lit8 v5, v5, 0x8

    .line 868
    .line 869
    if-lez v5, :cond_1b

    .line 870
    .line 871
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 872
    .line 873
    .line 874
    move-result v10

    .line 875
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 876
    .line 877
    .line 878
    move-result v11

    .line 879
    goto/16 :goto_d

    .line 880
    .line 881
    :pswitch_22
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    move-result-object v5

    .line 885
    check-cast v5, Ljava/util/List;

    .line 886
    .line 887
    sget-object v10, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 888
    .line 889
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 890
    .line 891
    .line 892
    move-result v10

    .line 893
    if-nez v10, :cond_a

    .line 894
    .line 895
    :goto_e
    move v11, v7

    .line 896
    goto :goto_10

    .line 897
    :cond_a
    invoke-static {v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    .line 898
    .line 899
    .line 900
    move-result v5

    .line 901
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 902
    .line 903
    .line 904
    move-result v11

    .line 905
    :goto_f
    mul-int/2addr v11, v10

    .line 906
    add-int/2addr v11, v5

    .line 907
    :cond_b
    :goto_10
    add-int/2addr v9, v11

    .line 908
    goto/16 :goto_1f

    .line 909
    .line 910
    :pswitch_23
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object v5

    .line 914
    check-cast v5, Ljava/util/List;

    .line 915
    .line 916
    sget-object v10, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 917
    .line 918
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 919
    .line 920
    .line 921
    move-result v10

    .line 922
    if-nez v10, :cond_c

    .line 923
    .line 924
    goto :goto_e

    .line 925
    :cond_c
    invoke-static {v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    .line 926
    .line 927
    .line 928
    move-result v5

    .line 929
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 930
    .line 931
    .line 932
    move-result v11

    .line 933
    goto :goto_f

    .line 934
    :pswitch_24
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    move-result-object v5

    .line 938
    check-cast v5, Ljava/util/List;

    .line 939
    .line 940
    invoke-static {v12, v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;)I

    .line 941
    .line 942
    .line 943
    move-result v5

    .line 944
    goto/16 :goto_4

    .line 945
    .line 946
    :pswitch_25
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 947
    .line 948
    .line 949
    move-result-object v5

    .line 950
    check-cast v5, Ljava/util/List;

    .line 951
    .line 952
    invoke-static {v12, v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;)I

    .line 953
    .line 954
    .line 955
    move-result v5

    .line 956
    goto/16 :goto_4

    .line 957
    .line 958
    :pswitch_26
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    move-result-object v5

    .line 962
    check-cast v5, Ljava/util/List;

    .line 963
    .line 964
    sget-object v10, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 965
    .line 966
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 967
    .line 968
    .line 969
    move-result v10

    .line 970
    if-nez v10, :cond_d

    .line 971
    .line 972
    goto :goto_e

    .line 973
    :cond_d
    invoke-static {v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    .line 974
    .line 975
    .line 976
    move-result v5

    .line 977
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 978
    .line 979
    .line 980
    move-result v11

    .line 981
    goto :goto_f

    .line 982
    :pswitch_27
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 983
    .line 984
    .line 985
    move-result-object v5

    .line 986
    check-cast v5, Ljava/util/List;

    .line 987
    .line 988
    sget-object v10, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 989
    .line 990
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 991
    .line 992
    .line 993
    move-result v10

    .line 994
    if-nez v10, :cond_e

    .line 995
    .line 996
    goto :goto_e

    .line 997
    :cond_e
    invoke-static {v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    .line 998
    .line 999
    .line 1000
    move-result v5

    .line 1001
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1002
    .line 1003
    .line 1004
    move-result v11

    .line 1005
    goto :goto_f

    .line 1006
    :pswitch_28
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v5

    .line 1010
    check-cast v5, Ljava/util/List;

    .line 1011
    .line 1012
    sget-object v10, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1013
    .line 1014
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1015
    .line 1016
    .line 1017
    move-result v10

    .line 1018
    if-nez v10, :cond_f

    .line 1019
    .line 1020
    goto :goto_e

    .line 1021
    :cond_f
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1022
    .line 1023
    .line 1024
    move-result v11

    .line 1025
    mul-int/2addr v11, v10

    .line 1026
    move v10, v7

    .line 1027
    :goto_11
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1028
    .line 1029
    .line 1030
    move-result v12

    .line 1031
    if-ge v10, v12, :cond_b

    .line 1032
    .line 1033
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v12

    .line 1037
    check-cast v12, Lcom/google/protobuf/ByteString;

    .line 1038
    .line 1039
    invoke-virtual {v12}, Lcom/google/protobuf/ByteString;->size()I

    .line 1040
    .line 1041
    .line 1042
    move-result v12

    .line 1043
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 1044
    .line 1045
    .line 1046
    move-result v13

    .line 1047
    add-int/2addr v13, v12

    .line 1048
    add-int/2addr v11, v13

    .line 1049
    add-int/lit8 v10, v10, 0x1

    .line 1050
    .line 1051
    goto :goto_11

    .line 1052
    :pswitch_29
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v5

    .line 1056
    check-cast v5, Ljava/util/List;

    .line 1057
    .line 1058
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v10

    .line 1062
    sget-object v11, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1063
    .line 1064
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1065
    .line 1066
    .line 1067
    move-result v11

    .line 1068
    if-nez v11, :cond_10

    .line 1069
    .line 1070
    move v12, v7

    .line 1071
    goto :goto_13

    .line 1072
    :cond_10
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1073
    .line 1074
    .line 1075
    move-result v12

    .line 1076
    mul-int/2addr v12, v11

    .line 1077
    move v13, v7

    .line 1078
    :goto_12
    if-ge v13, v11, :cond_11

    .line 1079
    .line 1080
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v14

    .line 1084
    check-cast v14, Lcom/google/protobuf/AbstractMessageLite;

    .line 1085
    .line 1086
    invoke-virtual {v14, v10}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    .line 1087
    .line 1088
    .line 1089
    move-result v14

    .line 1090
    invoke-static {v14}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 1091
    .line 1092
    .line 1093
    move-result v15

    .line 1094
    add-int/2addr v15, v14

    .line 1095
    add-int/2addr v12, v15

    .line 1096
    add-int/lit8 v13, v13, 0x1

    .line 1097
    .line 1098
    goto :goto_12

    .line 1099
    :cond_11
    :goto_13
    add-int/2addr v9, v12

    .line 1100
    goto/16 :goto_1f

    .line 1101
    .line 1102
    :pswitch_2a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v5

    .line 1106
    check-cast v5, Ljava/util/List;

    .line 1107
    .line 1108
    sget-object v10, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1109
    .line 1110
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1111
    .line 1112
    .line 1113
    move-result v10

    .line 1114
    if-nez v10, :cond_12

    .line 1115
    .line 1116
    goto/16 :goto_e

    .line 1117
    .line 1118
    :cond_12
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1119
    .line 1120
    .line 1121
    move-result v11

    .line 1122
    mul-int/2addr v11, v10

    .line 1123
    move v12, v7

    .line 1124
    :goto_14
    if-ge v12, v10, :cond_b

    .line 1125
    .line 1126
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v13

    .line 1130
    instance-of v14, v13, Lcom/google/protobuf/ByteString;

    .line 1131
    .line 1132
    if-eqz v14, :cond_13

    .line 1133
    .line 1134
    check-cast v13, Lcom/google/protobuf/ByteString;

    .line 1135
    .line 1136
    invoke-virtual {v13}, Lcom/google/protobuf/ByteString;->size()I

    .line 1137
    .line 1138
    .line 1139
    move-result v13

    .line 1140
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 1141
    .line 1142
    .line 1143
    move-result v14

    .line 1144
    :goto_15
    add-int/2addr v14, v13

    .line 1145
    add-int/2addr v14, v11

    .line 1146
    move v11, v14

    .line 1147
    goto :goto_16

    .line 1148
    :cond_13
    check-cast v13, Ljava/lang/String;

    .line 1149
    .line 1150
    invoke-static {v13}, Lcom/google/protobuf/Utf8;->encodedLength(Ljava/lang/String;)I

    .line 1151
    .line 1152
    .line 1153
    move-result v13

    .line 1154
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 1155
    .line 1156
    .line 1157
    move-result v14

    .line 1158
    goto :goto_15

    .line 1159
    :goto_16
    add-int/lit8 v12, v12, 0x1

    .line 1160
    .line 1161
    goto :goto_14

    .line 1162
    :pswitch_2b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v5

    .line 1166
    check-cast v5, Ljava/util/List;

    .line 1167
    .line 1168
    sget-object v10, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1169
    .line 1170
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1171
    .line 1172
    .line 1173
    move-result v5

    .line 1174
    if-nez v5, :cond_14

    .line 1175
    .line 1176
    move v10, v7

    .line 1177
    goto :goto_17

    .line 1178
    :cond_14
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1179
    .line 1180
    .line 1181
    move-result v10

    .line 1182
    add-int/2addr v10, v15

    .line 1183
    mul-int/2addr v10, v5

    .line 1184
    :goto_17
    add-int/2addr v9, v10

    .line 1185
    goto/16 :goto_1f

    .line 1186
    .line 1187
    :pswitch_2c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v5

    .line 1191
    check-cast v5, Ljava/util/List;

    .line 1192
    .line 1193
    invoke-static {v12, v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;)I

    .line 1194
    .line 1195
    .line 1196
    move-result v5

    .line 1197
    goto/16 :goto_4

    .line 1198
    .line 1199
    :pswitch_2d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v5

    .line 1203
    check-cast v5, Ljava/util/List;

    .line 1204
    .line 1205
    invoke-static {v12, v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;)I

    .line 1206
    .line 1207
    .line 1208
    move-result v5

    .line 1209
    goto/16 :goto_4

    .line 1210
    .line 1211
    :pswitch_2e
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v5

    .line 1215
    check-cast v5, Ljava/util/List;

    .line 1216
    .line 1217
    sget-object v10, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1218
    .line 1219
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1220
    .line 1221
    .line 1222
    move-result v10

    .line 1223
    if-nez v10, :cond_15

    .line 1224
    .line 1225
    goto/16 :goto_e

    .line 1226
    .line 1227
    :cond_15
    invoke-static {v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    .line 1228
    .line 1229
    .line 1230
    move-result v5

    .line 1231
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1232
    .line 1233
    .line 1234
    move-result v11

    .line 1235
    goto/16 :goto_f

    .line 1236
    .line 1237
    :pswitch_2f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v5

    .line 1241
    check-cast v5, Ljava/util/List;

    .line 1242
    .line 1243
    sget-object v10, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1244
    .line 1245
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1246
    .line 1247
    .line 1248
    move-result v10

    .line 1249
    if-nez v10, :cond_16

    .line 1250
    .line 1251
    goto/16 :goto_e

    .line 1252
    .line 1253
    :cond_16
    invoke-static {v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    .line 1254
    .line 1255
    .line 1256
    move-result v5

    .line 1257
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1258
    .line 1259
    .line 1260
    move-result v11

    .line 1261
    goto/16 :goto_f

    .line 1262
    .line 1263
    :pswitch_30
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v5

    .line 1267
    check-cast v5, Ljava/util/List;

    .line 1268
    .line 1269
    sget-object v10, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1270
    .line 1271
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1272
    .line 1273
    .line 1274
    move-result v10

    .line 1275
    if-nez v10, :cond_17

    .line 1276
    .line 1277
    goto/16 :goto_e

    .line 1278
    .line 1279
    :cond_17
    invoke-static {v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    .line 1280
    .line 1281
    .line 1282
    move-result v10

    .line 1283
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1284
    .line 1285
    .line 1286
    move-result v5

    .line 1287
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1288
    .line 1289
    .line 1290
    move-result v11

    .line 1291
    mul-int/2addr v11, v5

    .line 1292
    add-int/2addr v11, v10

    .line 1293
    goto/16 :goto_10

    .line 1294
    .line 1295
    :pswitch_31
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v5

    .line 1299
    check-cast v5, Ljava/util/List;

    .line 1300
    .line 1301
    invoke-static {v12, v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;)I

    .line 1302
    .line 1303
    .line 1304
    move-result v5

    .line 1305
    goto/16 :goto_4

    .line 1306
    .line 1307
    :pswitch_32
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v5

    .line 1311
    check-cast v5, Ljava/util/List;

    .line 1312
    .line 1313
    invoke-static {v12, v5}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;)I

    .line 1314
    .line 1315
    .line 1316
    move-result v5

    .line 1317
    goto/16 :goto_4

    .line 1318
    .line 1319
    :pswitch_33
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1320
    .line 1321
    .line 1322
    move-result v5

    .line 1323
    if-eqz v5, :cond_1b

    .line 1324
    .line 1325
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v5

    .line 1329
    check-cast v5, Lcom/google/protobuf/MessageLite;

    .line 1330
    .line 1331
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v10

    .line 1335
    sget-object v11, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1336
    .line 1337
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1338
    .line 1339
    .line 1340
    move-result v11

    .line 1341
    mul-int/lit8 v11, v11, 0x2

    .line 1342
    .line 1343
    check-cast v5, Lcom/google/protobuf/AbstractMessageLite;

    .line 1344
    .line 1345
    invoke-virtual {v5, v10}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    .line 1346
    .line 1347
    .line 1348
    move-result v5

    .line 1349
    goto/16 :goto_3

    .line 1350
    .line 1351
    :pswitch_34
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1352
    .line 1353
    .line 1354
    move-result v5

    .line 1355
    if-eqz v5, :cond_18

    .line 1356
    .line 1357
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1358
    .line 1359
    .line 1360
    move-result-wide v10

    .line 1361
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1362
    .line 1363
    .line 1364
    move-result v0

    .line 1365
    invoke-static {v10, v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeSInt64SizeNoTag(J)I

    .line 1366
    .line 1367
    .line 1368
    move-result v5

    .line 1369
    :goto_18
    add-int/2addr v5, v0

    .line 1370
    add-int/2addr v9, v5

    .line 1371
    :cond_18
    :goto_19
    move-object/from16 v0, p0

    .line 1372
    .line 1373
    goto/16 :goto_1f

    .line 1374
    .line 1375
    :pswitch_35
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1376
    .line 1377
    .line 1378
    move-result v5

    .line 1379
    if-eqz v5, :cond_18

    .line 1380
    .line 1381
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1382
    .line 1383
    .line 1384
    move-result v0

    .line 1385
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1386
    .line 1387
    .line 1388
    move-result v5

    .line 1389
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeSInt32SizeNoTag(I)I

    .line 1390
    .line 1391
    .line 1392
    move-result v0

    .line 1393
    :goto_1a
    add-int/2addr v0, v5

    .line 1394
    :goto_1b
    add-int/2addr v9, v0

    .line 1395
    goto :goto_19

    .line 1396
    :pswitch_36
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1397
    .line 1398
    .line 1399
    move-result v5

    .line 1400
    if-eqz v5, :cond_19

    .line 1401
    .line 1402
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1403
    .line 1404
    .line 1405
    move-result v0

    .line 1406
    :goto_1c
    add-int/lit8 v0, v0, 0x8

    .line 1407
    .line 1408
    :goto_1d
    add-int/2addr v9, v0

    .line 1409
    :cond_19
    move-object/from16 v0, p0

    .line 1410
    .line 1411
    move-object/from16 v1, p1

    .line 1412
    .line 1413
    goto/16 :goto_1f

    .line 1414
    .line 1415
    :pswitch_37
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1416
    .line 1417
    .line 1418
    move-result v5

    .line 1419
    if-eqz v5, :cond_19

    .line 1420
    .line 1421
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1422
    .line 1423
    .line 1424
    move-result v0

    .line 1425
    :goto_1e
    add-int/lit8 v0, v0, 0x4

    .line 1426
    .line 1427
    goto :goto_1d

    .line 1428
    :pswitch_38
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1429
    .line 1430
    .line 1431
    move-result v5

    .line 1432
    if-eqz v5, :cond_18

    .line 1433
    .line 1434
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1435
    .line 1436
    .line 1437
    move-result v0

    .line 1438
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1439
    .line 1440
    .line 1441
    move-result v5

    .line 1442
    int-to-long v10, v0

    .line 1443
    invoke-static {v10, v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    .line 1444
    .line 1445
    .line 1446
    move-result v0

    .line 1447
    goto :goto_1a

    .line 1448
    :pswitch_39
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1449
    .line 1450
    .line 1451
    move-result v5

    .line 1452
    if-eqz v5, :cond_18

    .line 1453
    .line 1454
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1455
    .line 1456
    .line 1457
    move-result v0

    .line 1458
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1459
    .line 1460
    .line 1461
    move-result v5

    .line 1462
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 1463
    .line 1464
    .line 1465
    move-result v0

    .line 1466
    goto :goto_1a

    .line 1467
    :pswitch_3a
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1468
    .line 1469
    .line 1470
    move-result v5

    .line 1471
    if-eqz v5, :cond_18

    .line 1472
    .line 1473
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v0

    .line 1477
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1478
    .line 1479
    invoke-static {v12, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 1480
    .line 1481
    .line 1482
    move-result v0

    .line 1483
    goto :goto_1b

    .line 1484
    :pswitch_3b
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1485
    .line 1486
    .line 1487
    move-result v5

    .line 1488
    if-eqz v5, :cond_1b

    .line 1489
    .line 1490
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v5

    .line 1494
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v10

    .line 1498
    sget-object v11, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1499
    .line 1500
    check-cast v5, Lcom/google/protobuf/AbstractMessageLite;

    .line 1501
    .line 1502
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1503
    .line 1504
    .line 1505
    move-result v11

    .line 1506
    invoke-virtual {v5, v10}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    .line 1507
    .line 1508
    .line 1509
    move-result v5

    .line 1510
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 1511
    .line 1512
    .line 1513
    move-result v10

    .line 1514
    goto/16 :goto_a

    .line 1515
    .line 1516
    :pswitch_3c
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1517
    .line 1518
    .line 1519
    move-result v5

    .line 1520
    if-eqz v5, :cond_18

    .line 1521
    .line 1522
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v0

    .line 1526
    instance-of v5, v0, Lcom/google/protobuf/ByteString;

    .line 1527
    .line 1528
    if-eqz v5, :cond_1a

    .line 1529
    .line 1530
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1531
    .line 1532
    invoke-static {v12, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 1533
    .line 1534
    .line 1535
    move-result v0

    .line 1536
    add-int/2addr v0, v9

    .line 1537
    move v9, v0

    .line 1538
    goto/16 :goto_19

    .line 1539
    .line 1540
    :cond_1a
    check-cast v0, Ljava/lang/String;

    .line 1541
    .line 1542
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1543
    .line 1544
    .line 1545
    move-result v5

    .line 1546
    invoke-static {v0}, Lcom/google/protobuf/Utf8;->encodedLength(Ljava/lang/String;)I

    .line 1547
    .line 1548
    .line 1549
    move-result v0

    .line 1550
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 1551
    .line 1552
    .line 1553
    move-result v10

    .line 1554
    add-int/2addr v10, v0

    .line 1555
    add-int/2addr v10, v5

    .line 1556
    add-int/2addr v10, v9

    .line 1557
    move v9, v10

    .line 1558
    goto/16 :goto_19

    .line 1559
    .line 1560
    :pswitch_3d
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1561
    .line 1562
    .line 1563
    move-result v5

    .line 1564
    if-eqz v5, :cond_19

    .line 1565
    .line 1566
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1567
    .line 1568
    .line 1569
    move-result v0

    .line 1570
    add-int/2addr v0, v15

    .line 1571
    goto/16 :goto_1d

    .line 1572
    .line 1573
    :pswitch_3e
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1574
    .line 1575
    .line 1576
    move-result v5

    .line 1577
    if-eqz v5, :cond_19

    .line 1578
    .line 1579
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1580
    .line 1581
    .line 1582
    move-result v0

    .line 1583
    goto/16 :goto_1e

    .line 1584
    .line 1585
    :pswitch_3f
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1586
    .line 1587
    .line 1588
    move-result v5

    .line 1589
    if-eqz v5, :cond_19

    .line 1590
    .line 1591
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1592
    .line 1593
    .line 1594
    move-result v0

    .line 1595
    goto/16 :goto_1c

    .line 1596
    .line 1597
    :pswitch_40
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1598
    .line 1599
    .line 1600
    move-result v5

    .line 1601
    if-eqz v5, :cond_18

    .line 1602
    .line 1603
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1604
    .line 1605
    .line 1606
    move-result v0

    .line 1607
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1608
    .line 1609
    .line 1610
    move-result v5

    .line 1611
    int-to-long v10, v0

    .line 1612
    invoke-static {v10, v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    .line 1613
    .line 1614
    .line 1615
    move-result v0

    .line 1616
    goto/16 :goto_1a

    .line 1617
    .line 1618
    :pswitch_41
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1619
    .line 1620
    .line 1621
    move-result v5

    .line 1622
    if-eqz v5, :cond_18

    .line 1623
    .line 1624
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1625
    .line 1626
    .line 1627
    move-result-wide v10

    .line 1628
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1629
    .line 1630
    .line 1631
    move-result v0

    .line 1632
    invoke-static {v10, v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    .line 1633
    .line 1634
    .line 1635
    move-result v5

    .line 1636
    goto/16 :goto_18

    .line 1637
    .line 1638
    :pswitch_42
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1639
    .line 1640
    .line 1641
    move-result v5

    .line 1642
    if-eqz v5, :cond_18

    .line 1643
    .line 1644
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1645
    .line 1646
    .line 1647
    move-result-wide v10

    .line 1648
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1649
    .line 1650
    .line 1651
    move-result v0

    .line 1652
    invoke-static {v10, v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt64SizeNoTag(J)I

    .line 1653
    .line 1654
    .line 1655
    move-result v5

    .line 1656
    goto/16 :goto_18

    .line 1657
    .line 1658
    :pswitch_43
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1659
    .line 1660
    .line 1661
    move-result v5

    .line 1662
    if-eqz v5, :cond_19

    .line 1663
    .line 1664
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1665
    .line 1666
    .line 1667
    move-result v0

    .line 1668
    goto/16 :goto_1e

    .line 1669
    .line 1670
    :pswitch_44
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1671
    .line 1672
    .line 1673
    move-result v5

    .line 1674
    if-eqz v5, :cond_1b

    .line 1675
    .line 1676
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 1677
    .line 1678
    .line 1679
    move-result v5

    .line 1680
    goto/16 :goto_8

    .line 1681
    .line 1682
    :cond_1b
    :goto_1f
    add-int/lit8 v2, v2, 0x3

    .line 1683
    .line 1684
    goto/16 :goto_0

    .line 1685
    .line 1686
    :cond_1c
    iget-object v0, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    .line 1687
    .line 1688
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1689
    .line 1690
    .line 1691
    iget-object v0, v1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 1692
    .line 1693
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    .line 1694
    .line 1695
    .line 1696
    move-result v0

    .line 1697
    add-int/2addr v0, v9

    .line 1698
    return v0

    .line 1699
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode(Lcom/google/protobuf/GeneratedMessageLite;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    move v3, v2

    .line 7
    :goto_0
    const v4, 0xfffff

    .line 8
    .line 9
    .line 10
    if-ge v2, v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->type(I)I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    const/16 v7, 0x32

    .line 21
    .line 22
    if-le v6, v7, :cond_0

    .line 23
    .line 24
    const/16 v7, 0x45

    .line 25
    .line 26
    if-ge v6, v7, :cond_0

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    and-int/2addr v4, v5

    .line 31
    int-to-long v4, v4

    .line 32
    const/16 v7, 0x25

    .line 33
    .line 34
    packed-switch v6, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :pswitch_0
    mul-int/lit8 v3, v3, 0x35

    .line 40
    .line 41
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 42
    .line 43
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    :goto_1
    add-int/2addr v3, v4

    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :pswitch_1
    mul-int/lit8 v3, v3, 0x35

    .line 55
    .line 56
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 57
    .line 58
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    goto :goto_1

    .line 67
    :pswitch_2
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 68
    .line 69
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    if-eqz v4, :cond_1

    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    :cond_1
    :goto_2
    mul-int/lit8 v3, v3, 0x35

    .line 80
    .line 81
    add-int/2addr v3, v7

    .line 82
    goto/16 :goto_3

    .line 83
    .line 84
    :pswitch_3
    mul-int/lit8 v3, v3, 0x35

    .line 85
    .line 86
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 87
    .line 88
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    goto :goto_1

    .line 97
    :pswitch_4
    mul-int/lit8 v3, v3, 0x35

    .line 98
    .line 99
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 100
    .line 101
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    goto :goto_1

    .line 106
    :pswitch_5
    mul-int/lit8 v3, v3, 0x35

    .line 107
    .line 108
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 109
    .line 110
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v4

    .line 114
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    goto :goto_1

    .line 119
    :pswitch_6
    mul-int/lit8 v3, v3, 0x35

    .line 120
    .line 121
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 122
    .line 123
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    goto :goto_1

    .line 128
    :pswitch_7
    mul-int/lit8 v3, v3, 0x35

    .line 129
    .line 130
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 131
    .line 132
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    goto :goto_1

    .line 137
    :pswitch_8
    mul-int/lit8 v3, v3, 0x35

    .line 138
    .line 139
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 140
    .line 141
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    goto :goto_1

    .line 146
    :pswitch_9
    mul-int/lit8 v3, v3, 0x35

    .line 147
    .line 148
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 149
    .line 150
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    goto :goto_1

    .line 159
    :pswitch_a
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 160
    .line 161
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    if-eqz v4, :cond_1

    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    goto :goto_2

    .line 172
    :pswitch_b
    mul-int/lit8 v3, v3, 0x35

    .line 173
    .line 174
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 175
    .line 176
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    check-cast v4, Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    goto/16 :goto_1

    .line 187
    .line 188
    :pswitch_c
    mul-int/lit8 v3, v3, 0x35

    .line 189
    .line 190
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 191
    .line 192
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    sget-object v5, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    .line 197
    .line 198
    if-eqz v4, :cond_2

    .line 199
    .line 200
    const/16 v4, 0x4cf

    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_2
    const/16 v4, 0x4d5

    .line 205
    .line 206
    goto/16 :goto_1

    .line 207
    .line 208
    :pswitch_d
    mul-int/lit8 v3, v3, 0x35

    .line 209
    .line 210
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 211
    .line 212
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    goto/16 :goto_1

    .line 217
    .line 218
    :pswitch_e
    mul-int/lit8 v3, v3, 0x35

    .line 219
    .line 220
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 221
    .line 222
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 223
    .line 224
    .line 225
    move-result-wide v4

    .line 226
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    goto/16 :goto_1

    .line 231
    .line 232
    :pswitch_f
    mul-int/lit8 v3, v3, 0x35

    .line 233
    .line 234
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 235
    .line 236
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    goto/16 :goto_1

    .line 241
    .line 242
    :pswitch_10
    mul-int/lit8 v3, v3, 0x35

    .line 243
    .line 244
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 245
    .line 246
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 247
    .line 248
    .line 249
    move-result-wide v4

    .line 250
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    goto/16 :goto_1

    .line 255
    .line 256
    :pswitch_11
    mul-int/lit8 v3, v3, 0x35

    .line 257
    .line 258
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 259
    .line 260
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 261
    .line 262
    .line 263
    move-result-wide v4

    .line 264
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    goto/16 :goto_1

    .line 269
    .line 270
    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    .line 271
    .line 272
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 273
    .line 274
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    goto/16 :goto_1

    .line 283
    .line 284
    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    .line 285
    .line 286
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 287
    .line 288
    invoke-virtual {v6, v4, v5, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 289
    .line 290
    .line 291
    move-result-wide v4

    .line 292
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 293
    .line 294
    .line 295
    move-result-wide v4

    .line 296
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :goto_3
    add-int/lit8 v2, v2, 0x3

    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :cond_3
    iget v0, p0, Lcom/google/protobuf/MessageSchema;->oneofFieldPositionsStart:I

    .line 307
    .line 308
    :goto_4
    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->intArray:[I

    .line 309
    .line 310
    array-length v5, v2

    .line 311
    if-ge v0, v5, :cond_5

    .line 312
    .line 313
    aget v2, v2, v0

    .line 314
    .line 315
    invoke-virtual {p0, v1, v2, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    if-eqz v5, :cond_4

    .line 320
    .line 321
    goto :goto_5

    .line 322
    :cond_4
    mul-int/lit8 v3, v3, 0x35

    .line 323
    .line 324
    invoke-virtual {p0, v2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    and-int/2addr v2, v4

    .line 329
    int-to-long v5, v2

    .line 330
    sget-object v2, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 331
    .line 332
    invoke-virtual {v2, v5, v6, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    add-int/2addr v2, v3

    .line 341
    move v3, v2

    .line 342
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 343
    .line 344
    goto :goto_4

    .line 345
    :cond_5
    mul-int/lit8 v3, v3, 0x35

    .line 346
    .line 347
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    .line 348
    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 353
    .line 354
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSetLite;->hashCode()I

    .line 355
    .line 356
    .line 357
    move-result p0

    .line 358
    add-int/2addr p0, v3

    .line 359
    return p0

    .line 360
    nop

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
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
    .end packed-switch
.end method

.method public final isFieldPresent(ILjava/lang/Object;)Z
    .locals 7

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 4
    .line 5
    aget v0, v1, v0

    .line 6
    .line 7
    const v1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/32 v4, 0xfffff

    .line 14
    .line 15
    .line 16
    cmp-long v4, v2, v4

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-nez v4, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    and-int p1, p0, v1

    .line 27
    .line 28
    int-to-long v0, p1

    .line 29
    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->type(I)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    packed-switch p0, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1()V

    .line 39
    .line 40
    .line 41
    return v5

    .line 42
    :pswitch_0
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 43
    .line 44
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :pswitch_1
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 53
    .line 54
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 55
    .line 56
    .line 57
    move-result-wide p0

    .line 58
    cmp-long p0, p0, v2

    .line 59
    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :pswitch_2
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 65
    .line 66
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_3

    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :pswitch_3
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 75
    .line 76
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 77
    .line 78
    .line 79
    move-result-wide p0

    .line 80
    cmp-long p0, p0, v2

    .line 81
    .line 82
    if-eqz p0, :cond_3

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :pswitch_4
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 87
    .line 88
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_3

    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :pswitch_5
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 97
    .line 98
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_3

    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :pswitch_6
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 107
    .line 108
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_3

    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :pswitch_7
    sget-object p0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 117
    .line 118
    sget-object p1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 119
    .line 120
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    xor-int/2addr p0, v6

    .line 129
    return p0

    .line 130
    :pswitch_8
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 131
    .line 132
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    if-eqz p0, :cond_3

    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :pswitch_9
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 141
    .line 142
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    instance-of p1, p0, Ljava/lang/String;

    .line 147
    .line 148
    if-eqz p1, :cond_0

    .line 149
    .line 150
    check-cast p0, Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    xor-int/2addr p0, v6

    .line 157
    return p0

    .line 158
    :cond_0
    instance-of p1, p0, Lcom/google/protobuf/ByteString;

    .line 159
    .line 160
    if-eqz p1, :cond_1

    .line 161
    .line 162
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 163
    .line 164
    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    xor-int/2addr p0, v6

    .line 169
    return p0

    .line 170
    :cond_1
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1()V

    .line 171
    .line 172
    .line 173
    return v5

    .line 174
    :pswitch_a
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 175
    .line 176
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    return p0

    .line 181
    :pswitch_b
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 182
    .line 183
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    if-eqz p0, :cond_3

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :pswitch_c
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 191
    .line 192
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 193
    .line 194
    .line 195
    move-result-wide p0

    .line 196
    cmp-long p0, p0, v2

    .line 197
    .line 198
    if-eqz p0, :cond_3

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :pswitch_d
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 202
    .line 203
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    if-eqz p0, :cond_3

    .line 208
    .line 209
    goto :goto_0

    .line 210
    :pswitch_e
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 211
    .line 212
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 213
    .line 214
    .line 215
    move-result-wide p0

    .line 216
    cmp-long p0, p0, v2

    .line 217
    .line 218
    if-eqz p0, :cond_3

    .line 219
    .line 220
    goto :goto_0

    .line 221
    :pswitch_f
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 222
    .line 223
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 224
    .line 225
    .line 226
    move-result-wide p0

    .line 227
    cmp-long p0, p0, v2

    .line 228
    .line 229
    if-eqz p0, :cond_3

    .line 230
    .line 231
    goto :goto_0

    .line 232
    :pswitch_10
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 233
    .line 234
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 235
    .line 236
    .line 237
    move-result p0

    .line 238
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    if-eqz p0, :cond_3

    .line 243
    .line 244
    goto :goto_0

    .line 245
    :pswitch_11
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 246
    .line 247
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 248
    .line 249
    .line 250
    move-result-wide p0

    .line 251
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 252
    .line 253
    .line 254
    move-result-wide p0

    .line 255
    cmp-long p0, p0, v2

    .line 256
    .line 257
    if-eqz p0, :cond_3

    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_2
    ushr-int/lit8 p0, v0, 0x14

    .line 261
    .line 262
    shl-int p0, v6, p0

    .line 263
    .line 264
    sget-object p1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 265
    .line 266
    invoke-virtual {p1, v2, v3, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    and-int/2addr p0, p1

    .line 271
    if-eqz p0, :cond_3

    .line 272
    .line 273
    :goto_0
    return v6

    .line 274
    :cond_3
    return v5

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isFieldPresent(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 275
    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    and-int p0, p4, p5

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 14

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    move v3, v0

    .line 6
    move v2, v1

    .line 7
    move v4, v2

    .line 8
    :goto_0
    iget v5, p0, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    if-ge v2, v5, :cond_c

    .line 12
    .line 13
    iget-object v5, p0, Lcom/google/protobuf/MessageSchema;->intArray:[I

    .line 14
    .line 15
    aget v9, v5, v2

    .line 16
    .line 17
    invoke-virtual {p0, v9}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    add-int/lit8 v7, v9, 0x2

    .line 22
    .line 23
    iget-object v13, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 24
    .line 25
    aget v7, v13, v7

    .line 26
    .line 27
    and-int v8, v7, v0

    .line 28
    .line 29
    ushr-int/lit8 v7, v7, 0x14

    .line 30
    .line 31
    shl-int v12, v6, v7

    .line 32
    .line 33
    if-eq v8, v3, :cond_1

    .line 34
    .line 35
    if-eq v8, v0, :cond_0

    .line 36
    .line 37
    sget-object v3, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 38
    .line 39
    int-to-long v6, v8

    .line 40
    invoke-virtual {v3, p1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    :cond_0
    move v11, v4

    .line 45
    move v10, v8

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v10, v3

    .line 48
    move v11, v4

    .line 49
    :goto_1
    const/high16 v3, 0x10000000

    .line 50
    .line 51
    and-int/2addr v3, v5

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    move-object v7, p0

    .line 55
    move-object v8, p1

    .line 56
    invoke-virtual/range {v7 .. v12}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_3

    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :cond_2
    move-object v7, p0

    .line 65
    move-object v8, p1

    .line 66
    :cond_3
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->type(I)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    const/16 p1, 0x9

    .line 71
    .line 72
    if-eq p0, p1, :cond_a

    .line 73
    .line 74
    const/16 p1, 0x11

    .line 75
    .line 76
    if-eq p0, p1, :cond_a

    .line 77
    .line 78
    const/16 p1, 0x1b

    .line 79
    .line 80
    if-eq p0, p1, :cond_7

    .line 81
    .line 82
    const/16 p1, 0x3c

    .line 83
    .line 84
    if-eq p0, p1, :cond_6

    .line 85
    .line 86
    const/16 p1, 0x44

    .line 87
    .line 88
    if-eq p0, p1, :cond_6

    .line 89
    .line 90
    const/16 p1, 0x31

    .line 91
    .line 92
    if-eq p0, p1, :cond_7

    .line 93
    .line 94
    const/16 p1, 0x32

    .line 95
    .line 96
    if-eq p0, p1, :cond_4

    .line 97
    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :cond_4
    and-int p0, v5, v0

    .line 101
    .line 102
    int-to-long p0, p0

    .line 103
    sget-object v3, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 104
    .line 105
    invoke-virtual {v3, p0, p1, v8}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    iget-object p1, v7, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchemaLite;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    check-cast p0, Lcom/google/protobuf/MapFieldLite;

    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-eqz p0, :cond_5

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_5
    invoke-virtual {v7, v9}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    const/4 p0, 0x0

    .line 131
    throw p0

    .line 132
    :cond_6
    aget p0, v13, v9

    .line 133
    .line 134
    invoke-virtual {v7, p0, v9, v8}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-eqz p0, :cond_b

    .line 139
    .line 140
    invoke-virtual {v7, v9}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    and-int p1, v5, v0

    .line 145
    .line 146
    int-to-long v3, p1

    .line 147
    sget-object p1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 148
    .line 149
    invoke-virtual {p1, v3, v4, v8}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-interface {p0, p1}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-nez p0, :cond_b

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_7
    and-int p0, v5, v0

    .line 161
    .line 162
    int-to-long p0, p0

    .line 163
    sget-object v3, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 164
    .line 165
    invoke-virtual {v3, p0, p1, v8}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    check-cast p0, Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_8

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_8
    invoke-virtual {v7, v9}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    move v3, v1

    .line 183
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    if-ge v3, v4, :cond_b

    .line 188
    .line 189
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-interface {p1, v4}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-nez v4, :cond_9

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_a
    invoke-virtual/range {v7 .. v12}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    if-eqz p0, :cond_b

    .line 208
    .line 209
    invoke-virtual {v7, v9}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    and-int p1, v5, v0

    .line 214
    .line 215
    int-to-long v3, p1

    .line 216
    sget-object p1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 217
    .line 218
    invoke-virtual {p1, v3, v4, v8}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-interface {p0, p1}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    if-nez p0, :cond_b

    .line 227
    .line 228
    :goto_3
    return v1

    .line 229
    :cond_b
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 230
    .line 231
    move-object p0, v7

    .line 232
    move-object p1, v8

    .line 233
    move v3, v10

    .line 234
    move v4, v11

    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :cond_c
    return v6
.end method

.method public final isOneofPresent(IILjava/lang/Object;)Z
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 4
    .line 5
    aget p0, p0, p2

    .line 6
    .line 7
    const p2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, p2

    .line 11
    int-to-long v0, p0

    .line 12
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-ne p0, p1, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final makeImmutable(Ljava/lang/Object;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/GeneratedMessageLite;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 16
    .line 17
    const v2, 0x7fffffff

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite;->setMemoizedSerializedSize(I)V

    .line 21
    .line 22
    .line 23
    iput v1, v0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->markImmutable()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 29
    .line 30
    array-length v2, v0

    .line 31
    move v3, v1

    .line 32
    :goto_0
    if-ge v3, v2, :cond_5

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const v5, 0xfffff

    .line 39
    .line 40
    .line 41
    and-int/2addr v5, v4

    .line 42
    int-to-long v5, v5

    .line 43
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->type(I)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/16 v7, 0x9

    .line 48
    .line 49
    if-eq v4, v7, :cond_3

    .line 50
    .line 51
    const/16 v7, 0x3c

    .line 52
    .line 53
    if-eq v4, v7, :cond_2

    .line 54
    .line 55
    const/16 v7, 0x44

    .line 56
    .line 57
    if-eq v4, v7, :cond_2

    .line 58
    .line 59
    packed-switch v4, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :pswitch_0
    sget-object v4, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 64
    .line 65
    invoke-virtual {v4, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    if-eqz v7, :cond_4

    .line 70
    .line 71
    iget-object v8, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchemaLite;

    .line 72
    .line 73
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-object v8, v7

    .line 77
    check-cast v8, Lcom/google/protobuf/MapFieldLite;

    .line 78
    .line 79
    invoke-virtual {v8}, Lcom/google/protobuf/MapFieldLite;->makeImmutable()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, p1, v5, v6, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchemaLite;

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 92
    .line 93
    invoke-virtual {v4, v5, v6, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lcom/google/protobuf/Internal$ProtobufList;

    .line 98
    .line 99
    check-cast v4, Lcom/google/protobuf/AbstractProtobufList;

    .line 100
    .line 101
    iget-boolean v5, v4, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    .line 102
    .line 103
    if-eqz v5, :cond_4

    .line 104
    .line 105
    iput-boolean v1, v4, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    aget v4, v0, v3

    .line 109
    .line 110
    invoke-virtual {p0, v4, v3, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_4

    .line 115
    .line 116
    invoke-virtual {p0, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    sget-object v7, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 121
    .line 122
    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-interface {v4, v5}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    :pswitch_2
    invoke-virtual {p0, v3, p1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_4

    .line 135
    .line 136
    invoke-virtual {p0, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    sget-object v7, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 141
    .line 142
    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-interface {v4, v5}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x3

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_5
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    .line 153
    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    .line 158
    .line 159
    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 160
    .line 161
    iget-boolean p1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 162
    .line 163
    if-eqz p1, :cond_6

    .line 164
    .line 165
    iput-boolean v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 166
    .line 167
    :cond_6
    :goto_2
    return-void

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
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
    .end packed-switch
.end method

.method public final mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/MessageSchema;->checkMutable(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    if-ge v0, v2, :cond_4

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const v3, 0xfffff

    .line 20
    .line 21
    .line 22
    and-int/2addr v3, v2

    .line 23
    int-to-long v6, v3

    .line 24
    aget v1, v1, v0

    .line 25
    .line 26
    invoke-static {v2}, Lcom/google/protobuf/MessageSchema;->type(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    packed-switch v2, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_1
    move-object v5, p1

    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    sget-object v2, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 47
    .line 48
    invoke-virtual {v2, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v6, v7, p1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    sget-object v2, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 70
    .line 71
    invoke-virtual {v2, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v6, v7, p1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :pswitch_4
    sget-object v1, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 83
    .line 84
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 85
    .line 86
    invoke-virtual {v1, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchemaLite;

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {v2, v1}, Lcom/google/protobuf/MapFieldSchemaLite;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v6, v7, p1, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :pswitch_5
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchemaLite;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 113
    .line 114
    invoke-virtual {v1, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Lcom/google/protobuf/Internal$ProtobufList;

    .line 119
    .line 120
    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Lcom/google/protobuf/Internal$ProtobufList;

    .line 125
    .line 126
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-lez v3, :cond_2

    .line 135
    .line 136
    if-lez v4, :cond_2

    .line 137
    .line 138
    move-object v5, v2

    .line 139
    check-cast v5, Lcom/google/protobuf/AbstractProtobufList;

    .line 140
    .line 141
    iget-boolean v5, v5, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    .line 142
    .line 143
    if-nez v5, :cond_1

    .line 144
    .line 145
    add-int/2addr v4, v3

    .line 146
    invoke-interface {v2, v4}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    .line 152
    .line 153
    :cond_2
    if-lez v3, :cond_3

    .line 154
    .line 155
    move-object v1, v2

    .line 156
    :cond_3
    invoke-static {v6, v7, p1, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_0

    .line 169
    .line 170
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 171
    .line 172
    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 173
    .line 174
    .line 175
    move-result-wide v1

    .line 176
    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_0

    .line 189
    .line 190
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 191
    .line 192
    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_0

    .line 209
    .line 210
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 211
    .line 212
    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 213
    .line 214
    .line 215
    move-result-wide v1

    .line 216
    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-eqz v1, :cond_0

    .line 229
    .line 230
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 231
    .line 232
    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-eqz v1, :cond_0

    .line 249
    .line 250
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 251
    .line 252
    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_1

    .line 263
    .line 264
    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_0

    .line 269
    .line 270
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 271
    .line 272
    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_1

    .line 283
    .line 284
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-eqz v1, :cond_0

    .line 289
    .line 290
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 291
    .line 292
    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-static {v6, v7, p1, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_1

    .line 303
    .line 304
    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_1

    .line 308
    .line 309
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-eqz v1, :cond_0

    .line 314
    .line 315
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 316
    .line 317
    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-static {v6, v7, p1, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_1

    .line 328
    .line 329
    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_0

    .line 334
    .line 335
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 336
    .line 337
    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    invoke-virtual {v1, p1, v6, v7, v2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_1

    .line 348
    .line 349
    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    if-eqz v1, :cond_0

    .line 354
    .line 355
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 356
    .line 357
    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_1

    .line 368
    .line 369
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-eqz v1, :cond_0

    .line 374
    .line 375
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 376
    .line 377
    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 378
    .line 379
    .line 380
    move-result-wide v1

    .line 381
    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    goto/16 :goto_1

    .line 388
    .line 389
    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    if-eqz v1, :cond_0

    .line 394
    .line 395
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 396
    .line 397
    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_1

    .line 408
    .line 409
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-eqz v1, :cond_0

    .line 414
    .line 415
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 416
    .line 417
    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 418
    .line 419
    .line 420
    move-result-wide v1

    .line 421
    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    goto/16 :goto_1

    .line 428
    .line 429
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-eqz v1, :cond_0

    .line 434
    .line 435
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 436
    .line 437
    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 438
    .line 439
    .line 440
    move-result-wide v1

    .line 441
    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    goto/16 :goto_1

    .line 448
    .line 449
    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    if-eqz v1, :cond_0

    .line 454
    .line 455
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 456
    .line 457
    invoke-virtual {v1, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    invoke-virtual {v1, p1, v6, v7, v2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 465
    .line 466
    .line 467
    goto/16 :goto_1

    .line 468
    .line 469
    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    if-eqz v1, :cond_0

    .line 474
    .line 475
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 476
    .line 477
    invoke-virtual {v4, v6, v7, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 478
    .line 479
    .line 480
    move-result-wide v8

    .line 481
    move-object v5, p1

    .line 482
    invoke-virtual/range {v4 .. v9}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {p0, v0, v5}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    :goto_2
    add-int/lit8 v0, v0, 0x3

    .line 489
    .line 490
    move-object p1, v5

    .line 491
    goto/16 :goto_0

    .line 492
    .line 493
    :cond_4
    move-object v5, p1

    .line 494
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    .line 495
    .line 496
    invoke-static {p0, v5, p2}, Lcom/google/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSetLiteSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    return-void

    .line 500
    nop

    .line 501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/ArrayDecoders$Registers;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 501
    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/MessageSchema;->parseMessage(Ljava/lang/Object;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    return-void
.end method

.method public final mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p3, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    int-to-long v0, v0

    .line 17
    sget-object v2, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 18
    .line 19
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v3}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p2}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p2, v4, v3}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {v2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    if-nez p3, :cond_3

    .line 68
    .line 69
    invoke-interface {p2}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-interface {p2, p3, p0}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1, v0, v1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p0, p3

    .line 80
    :cond_3
    invoke-interface {p2, p0, v3}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 87
    .line 88
    aget p0, p0, p3

    .line 89
    .line 90
    new-instance p3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v0, "Source subfield "

    .line 93
    .line 94
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p0, " is present but null: "

    .line 101
    .line 102
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1
.end method

.method public final mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 2
    .line 3
    aget v1, v0, p3

    .line 4
    .line 5
    invoke-virtual {p0, v1, p3, p2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    int-to-long v2, v2

    .line 21
    sget-object v4, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 22
    .line 23
    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p0, v1, p3, p1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v4, p1, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p2}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p2, v0, v5}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p0, v1, p3, p1}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-nez p3, :cond_3

    .line 72
    .line 73
    invoke-interface {p2}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-interface {p2, p3, p0}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, p1, v2, v3, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object p0, p3

    .line 84
    :cond_3
    invoke-interface {p2, p0, v5}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    aget p1, v0, p3

    .line 91
    .line 92
    new-instance p3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v0, "Source subfield "

    .line 95
    .line 96
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p1, " is present but null: "

    .line 103
    .line 104
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0
.end method

.method public final mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    int-to-long v1, v1

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    sget-object p0, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p0, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p1, p0}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p1
.end method

.method public final mutableOneofMessageFieldForMerge(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object p1, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const p2, 0xfffff

    .line 23
    .line 24
    .line 25
    and-int/2addr p0, p2

    .line 26
    int-to-long v1, p0

    .line 27
    invoke-virtual {p1, p3, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/google/protobuf/Schema;->newInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p1, p0}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p1
.end method

.method public final newInstance()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->newInstanceSchema:Lcom/google/protobuf/NewInstanceSchemaLite;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 7
    .line 8
    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMutableInstance$1()Lcom/google/protobuf/GeneratedMessageLite;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final parseMapField(IJLjava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p4, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchemaLite;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-object p0, v1

    .line 17
    check-cast p0, Lcom/google/protobuf/MapFieldLite;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    sget-object p0, Lcom/google/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Lcom/google/protobuf/MapFieldLite;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0, v1}, Lcom/google/protobuf/MapFieldSchemaLite;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p4, p2, p3, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    throw p0
.end method

.method public final parseMessage(Ljava/lang/Object;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v14, p5

    move-object/from16 v13, p6

    .line 1
    invoke-static {v2}, Lcom/google/protobuf/MessageSchema;->checkMutable(Ljava/lang/Object;)V

    .line 2
    sget-object v1, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    move/from16 v5, p3

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xfffff

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_0
    const v16, 0xfffff

    .line 3
    :goto_1
    iget-object v15, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    if-ge v5, v4, :cond_22

    add-int/lit8 v12, v5, 0x1

    .line 4
    aget-byte v5, v3, v5

    if-gez v5, :cond_0

    .line 5
    invoke-static {v5, v3, v12, v13}, Lokhttp3/Cookie$Companion;->decodeVarint32(I[BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v12

    .line 6
    iget v5, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    :cond_0
    move/from16 v26, v12

    move v12, v5

    move/from16 v5, v26

    ushr-int/lit8 v11, v12, 0x3

    and-int/lit8 v10, v12, 0x7

    .line 7
    iget v3, v0, Lcom/google/protobuf/MessageSchema;->maxFieldNumber:I

    const/16 p3, 0x3

    iget v4, v0, Lcom/google/protobuf/MessageSchema;->minFieldNumber:I

    if-le v11, v6, :cond_2

    .line 8
    div-int/lit8 v7, v7, 0x3

    if-lt v11, v4, :cond_1

    if-gt v11, v3, :cond_1

    .line 9
    invoke-virtual {v0, v11, v7}, Lcom/google/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v3

    goto :goto_2

    :cond_1
    const/4 v3, -0x1

    :goto_2
    move v4, v3

    const/4 v3, 0x0

    :goto_3
    const/4 v6, -0x1

    goto :goto_4

    :cond_2
    if-lt v11, v4, :cond_3

    if-gt v11, v3, :cond_3

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v11, v3}, Lcom/google/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v4

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    const/4 v4, -0x1

    goto :goto_3

    :goto_4
    if-ne v4, v6, :cond_4

    move v7, v3

    move/from16 v20, v7

    move/from16 v21, v6

    move/from16 v24, v8

    move/from16 v19, v11

    move-object/from16 v18, v15

    move-object v6, v0

    move-object v15, v1

    move-object v8, v2

    move v2, v5

    move v5, v12

    goto/16 :goto_1d

    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 11
    aget v7, v15, v7

    .line 12
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v3

    and-int v6, v7, v16

    move/from16 v19, v5

    int-to-long v5, v6

    move-wide/from16 v20, v5

    const/16 v5, 0x11

    if-gt v3, v5, :cond_16

    add-int/lit8 v5, v4, 0x2

    .line 13
    aget v5, v15, v5

    ushr-int/lit8 v22, v5, 0x14

    const/4 v6, 0x1

    shl-int v22, v6, v22

    and-int v5, v5, v16

    if-eq v5, v8, :cond_7

    move/from16 v6, v16

    move/from16 v23, v7

    if-eq v8, v6, :cond_5

    int-to-long v6, v8

    .line 14
    invoke-virtual {v1, v2, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v6, 0xfffff

    :cond_5
    if-ne v5, v6, :cond_6

    const/4 v9, 0x0

    goto :goto_5

    :cond_6
    int-to-long v6, v5

    .line 15
    invoke-virtual {v1, v2, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v9, v6

    :goto_5
    move/from16 v24, v5

    :goto_6
    move/from16 v25, v9

    goto :goto_7

    :cond_7
    move/from16 v23, v7

    move/from16 v24, v8

    goto :goto_6

    :goto_7
    const/4 v5, 0x5

    packed-switch v3, :pswitch_data_0

    move-object/from16 v9, p2

    move-object v10, v1

    move-object v1, v2

    move-object v7, v13

    move/from16 v8, v19

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v13, v4

    goto/16 :goto_18

    :pswitch_0
    move/from16 v3, p3

    if-ne v10, v3, :cond_8

    .line 16
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/MessageSchema;->mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    shl-int/lit8 v5, v11, 0x3

    or-int/lit8 v8, v5, 0x4

    move v7, v4

    .line 17
    invoke-virtual {v0, v7}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v4

    move-object/from16 v5, p2

    move-object v9, v13

    move/from16 v6, v19

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v13, v7

    move/from16 v7, p4

    .line 18
    invoke-static/range {v3 .. v9}, Lokhttp3/Cookie$Companion;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    move-object v7, v5

    .line 19
    invoke-virtual {v0, v2, v3, v13}, Lcom/google/protobuf/MessageSchema;->storeMessageField(Ljava/lang/Object;Ljava/lang/Object;I)V

    or-int v3, v25, v22

    move-object v5, v9

    move v9, v3

    move-object v3, v7

    move v7, v13

    move-object v13, v5

    move v5, v4

    move v6, v11

    move/from16 v8, v24

    const v16, 0xfffff

    :goto_8
    move/from16 v4, p4

    goto/16 :goto_1

    :cond_8
    move-object v9, v13

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v13, v4

    move-object v10, v1

    move-object v1, v2

    move-object v7, v9

    move/from16 v8, v19

    move-object/from16 v9, p2

    goto/16 :goto_18

    :pswitch_1
    move-object/from16 v7, p2

    move-object v9, v13

    move/from16 v3, v19

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v13, v4

    if-nez v10, :cond_9

    .line 20
    invoke-static {v7, v3, v9}, Lokhttp3/Cookie$Companion;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 21
    iget-wide v3, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 22
    invoke-static {v3, v4}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->decodeZigZag64(J)J

    move-result-wide v5

    move-wide/from16 v3, v20

    .line 23
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v26, v2

    move-object v2, v1

    move-object/from16 v1, v26

    or-int v3, v25, v22

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object v4, v9

    move v9, v3

    move-object v3, v7

    move v7, v13

    move-object v13, v4

    :goto_9
    move/from16 v4, p4

    move v5, v8

    :goto_a
    move v6, v11

    :goto_b
    move/from16 v8, v24

    goto/16 :goto_0

    :cond_9
    move-object/from16 v26, v2

    move-object v2, v1

    move-object/from16 v1, v26

    :cond_a
    move-object v8, v9

    move-object v9, v7

    move-object v7, v8

    move-object v10, v2

    :goto_c
    move v8, v3

    goto/16 :goto_18

    :pswitch_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v7, p2

    move-object v9, v13

    move/from16 v3, v19

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v13, v4

    move-wide/from16 v4, v20

    if-nez v10, :cond_a

    .line 24
    invoke-static {v7, v3, v9}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 25
    iget v6, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 26
    invoke-static {v6}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->decodeZigZag32(I)I

    move-result v6

    .line 27
    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_d
    or-int v4, v25, v22

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move v5, v3

    move-object v3, v7

    move v6, v11

    move v7, v13

    move/from16 v8, v24

    const v16, 0xfffff

    move-object v13, v9

    move v9, v4

    goto :goto_8

    :pswitch_3
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v7, p2

    move-object v9, v13

    move/from16 v3, v19

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v13, v4

    move-wide/from16 v4, v20

    if-nez v10, :cond_a

    .line 28
    invoke-static {v7, v3, v9}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 29
    iget v6, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 30
    invoke-virtual {v0, v13}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    .line 31
    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_d

    :pswitch_4
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v7, p2

    move-object v9, v13

    move/from16 v3, v19

    const/4 v6, 0x2

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v13, v4

    move-wide/from16 v4, v20

    if-ne v10, v6, :cond_a

    .line 32
    invoke-static {v7, v3, v9}, Lokhttp3/Cookie$Companion;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 33
    iget-object v6, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d

    :pswitch_5
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v7, p2

    move-object v9, v13

    move/from16 v3, v19

    const/4 v6, 0x2

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v13, v4

    if-ne v10, v6, :cond_b

    move-object v4, v1

    .line 34
    invoke-virtual {v0, v13, v4}, Lcom/google/protobuf/MessageSchema;->mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v2

    .line 35
    invoke-virtual {v0, v13}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v2

    move-object v6, v4

    move v4, v3

    move-object v3, v7

    move-object v7, v6

    move-object v8, v5

    move-object v6, v9

    move/from16 v5, p4

    .line 36
    invoke-static/range {v1 .. v6}, Lokhttp3/Cookie$Companion;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move-object v9, v3

    move-object v3, v1

    move-object v1, v6

    .line 37
    invoke-virtual {v0, v7, v3, v13}, Lcom/google/protobuf/MessageSchema;->storeMessageField(Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_e
    or-int v3, v25, v22

    move-object v4, v9

    move v9, v3

    move-object v3, v4

    move/from16 v4, p4

    move v5, v2

    move-object v2, v7

    move v6, v11

    move v7, v13

    const v16, 0xfffff

    :goto_f
    move-object v13, v1

    move-object v1, v8

    :goto_10
    move/from16 v8, v24

    goto/16 :goto_1

    :cond_b
    move-object v8, v7

    move-object v7, v1

    move-object v1, v9

    move-object v9, v8

    move-object v8, v2

    move-object v10, v7

    move-object v7, v1

    move-object v1, v10

    move-object v10, v8

    goto/16 :goto_c

    :pswitch_6
    move-object/from16 v9, p2

    move-object v8, v1

    move-object v7, v2

    move-object v1, v13

    move/from16 v2, v19

    const/4 v6, 0x2

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v13, v4

    move-wide/from16 v4, v20

    if-ne v10, v6, :cond_12

    const/high16 v3, 0x20000000

    and-int v3, v23, v3

    .line 38
    const-string v6, ""

    if-eqz v3, :cond_f

    .line 39
    invoke-static {v9, v2, v1}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 40
    iget v3, v1, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v3, :cond_e

    if-nez v3, :cond_c

    .line 41
    iput-object v6, v1, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_13

    :cond_c
    if-nez v3, :cond_d

    .line 42
    sget-object v10, Lcom/google/protobuf/Utf8;->processor:Landroidx/work/OperationKt;

    goto :goto_11

    .line 43
    :cond_d
    sget-object v6, Lcom/google/protobuf/Utf8;->processor:Landroidx/work/OperationKt;

    invoke-virtual {v6, v9, v2, v3}, Landroidx/work/OperationKt;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v6

    .line 44
    :goto_11
    iput-object v6, v1, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    :goto_12
    add-int/2addr v2, v3

    goto :goto_13

    .line 45
    :cond_e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 46
    :cond_f
    invoke-static {v9, v2, v1}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 47
    iget v3, v1, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v3, :cond_11

    if-nez v3, :cond_10

    .line 48
    iput-object v6, v1, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_13

    .line 49
    :cond_10
    new-instance v6, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v9, v2, v3, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v6, v1, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_12

    .line 50
    :goto_13
    iget-object v3, v1, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v8, v7, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_e

    .line 51
    :cond_11
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_12
    move-object v10, v7

    move-object v7, v1

    move-object v1, v10

    move-object v10, v8

    move v8, v2

    goto/16 :goto_18

    :pswitch_7
    move-object/from16 v9, p2

    move-object v8, v1

    move-object v7, v2

    move-object v1, v13

    move/from16 v2, v19

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v13, v4

    move-wide/from16 v4, v20

    if-nez v10, :cond_12

    .line 52
    invoke-static {v9, v2, v1}, Lokhttp3/Cookie$Companion;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 p3, v2

    .line 53
    iget-wide v2, v1, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v19, 0x0

    cmp-long v2, v2, v19

    if-eqz v2, :cond_13

    const/4 v3, 0x1

    goto :goto_14

    :cond_13
    move/from16 v3, v18

    .line 54
    :goto_14
    sget-object v2, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v2, v7, v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    or-int v2, v25, v22

    move/from16 v5, p3

    :goto_15
    move/from16 v4, p4

    move-object v3, v9

    move v6, v11

    const v16, 0xfffff

    move v9, v2

    move-object v2, v7

    move v7, v13

    goto/16 :goto_f

    :pswitch_8
    move-object/from16 v9, p2

    move-object v8, v1

    move-object v7, v2

    move-object v1, v13

    move/from16 v2, v19

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v13, v4

    move-wide/from16 v3, v20

    if-ne v10, v5, :cond_12

    .line 55
    invoke-static {v2, v9}, Lokhttp3/Cookie$Companion;->decodeFixed32(I[B)I

    move-result v5

    invoke-virtual {v8, v7, v3, v4, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v5, v2, 0x4

    or-int v2, v25, v22

    goto :goto_15

    :pswitch_9
    move-object/from16 v9, p2

    move-object v8, v1

    move-object v7, v2

    move-object v1, v13

    move/from16 v2, v19

    const/4 v5, 0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v13, v4

    move-wide/from16 v3, v20

    if-ne v10, v5, :cond_14

    .line 56
    invoke-static {v2, v9}, Lokhttp3/Cookie$Companion;->decodeFixed64(I[B)J

    move-result-wide v5

    move-object/from16 v26, v7

    move-object v7, v1

    move-object v1, v8

    move v8, v2

    move-object/from16 v2, v26

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v5, v8, 0x8

    :goto_16
    or-int v3, v25, v22

    move-object v4, v9

    move v9, v3

    move-object v3, v4

    move v4, v13

    move-object v13, v7

    move v7, v4

    move/from16 v4, p4

    goto/16 :goto_a

    :cond_14
    move-object/from16 v26, v7

    move-object v7, v1

    move-object v1, v8

    move v8, v2

    move-object/from16 v2, v26

    :cond_15
    move-object v10, v1

    move-object v1, v2

    goto/16 :goto_18

    :pswitch_a
    move-object/from16 v9, p2

    move-object v7, v13

    move/from16 v8, v19

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v13, v4

    move-wide/from16 v3, v20

    if-nez v10, :cond_15

    .line 57
    invoke-static {v9, v8, v7}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    .line 58
    iget v6, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_16

    :pswitch_b
    move-object/from16 v9, p2

    move-object v7, v13

    move/from16 v8, v19

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v13, v4

    move-wide/from16 v3, v20

    if-nez v10, :cond_15

    .line 59
    invoke-static {v9, v8, v7}, Lokhttp3/Cookie$Companion;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 60
    iget-wide v5, v7, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v3, v25, v22

    move-object v4, v9

    move v9, v3

    move-object v3, v4

    move v4, v13

    move-object v13, v7

    move v7, v4

    goto/16 :goto_9

    :pswitch_c
    move-object/from16 v9, p2

    move-object v7, v13

    move/from16 v8, v19

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v13, v4

    move-wide/from16 v3, v20

    if-ne v10, v5, :cond_15

    .line 61
    invoke-static {v8, v9}, Lokhttp3/Cookie$Companion;->decodeFixed32(I[B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 62
    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    add-int/lit8 v5, v8, 0x4

    goto :goto_16

    :pswitch_d
    move-object/from16 v9, p2

    move-object v7, v13

    move/from16 v8, v19

    const/4 v5, 0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v13, v4

    move-wide/from16 v3, v20

    if-ne v10, v5, :cond_15

    .line 63
    invoke-static {v8, v9}, Lokhttp3/Cookie$Companion;->decodeFixed64(I[B)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    move-object v10, v1

    .line 64
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    move-object v1, v2

    add-int/lit8 v5, v8, 0x8

    or-int v2, v25, v22

    move v3, v13

    move-object v13, v7

    move v7, v3

    move/from16 v4, p4

    move-object v3, v9

    move v6, v11

    move/from16 v8, v24

    const v16, 0xfffff

    move v9, v2

    move-object v2, v1

    :goto_17
    move-object v1, v10

    goto/16 :goto_1

    :goto_18
    move-object v6, v0

    move v2, v8

    move/from16 v19, v11

    move v5, v12

    move v7, v13

    move/from16 v21, v17

    move/from16 v20, v18

    move/from16 v9, v25

    move-object v8, v1

    move-object/from16 v18, v15

    move-object v15, v10

    goto/16 :goto_1d

    :cond_16
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move/from16 v23, v7

    move v5, v12

    move-object v7, v13

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v13, v4

    move/from16 v4, v19

    move/from16 v19, v11

    move-wide/from16 v11, v20

    const/16 v6, 0x1b

    if-ne v3, v6, :cond_1a

    const/4 v6, 0x2

    if-ne v10, v6, :cond_19

    .line 65
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Internal$ProtobufList;

    .line 66
    move-object v6, v3

    check-cast v6, Lcom/google/protobuf/AbstractProtobufList;

    .line 67
    iget-boolean v6, v6, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    if-nez v6, :cond_18

    .line 68
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_17

    const/16 v6, 0xa

    goto :goto_19

    :cond_17
    mul-int/lit8 v6, v6, 0x2

    .line 69
    :goto_19
    invoke-interface {v3, v6}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v3

    .line 70
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_18
    move-object v6, v3

    .line 71
    invoke-virtual {v0, v13}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    move-object/from16 v3, p2

    move-object v10, v2

    move v2, v5

    move/from16 v5, p4

    .line 72
    invoke-static/range {v1 .. v7}, Lokhttp3/Cookie$Companion;->decodeMessageList(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    move v5, v2

    move-object/from16 v2, p1

    move/from16 v4, p4

    move v12, v5

    move v7, v13

    move/from16 v6, v19

    const v16, 0xfffff

    move-object/from16 v13, p6

    move v5, v1

    goto :goto_17

    :cond_19
    move-object/from16 v1, p1

    move/from16 v24, v8

    move v7, v13

    move/from16 v21, v17

    move/from16 v20, v18

    move/from16 v17, v9

    move-object/from16 v18, v15

    move-object v15, v2

    goto/16 :goto_1b

    :cond_1a
    move-object v1, v2

    const/16 v2, 0x31

    if-gt v3, v2, :cond_1c

    move/from16 v24, v8

    move v6, v9

    move/from16 v2, v23

    int-to-long v8, v2

    move-object/from16 v2, p2

    move v7, v13

    move/from16 v21, v17

    move/from16 v20, v18

    move-object/from16 v13, p6

    move/from16 v17, v6

    move v6, v10

    move-object/from16 v18, v15

    move-object v15, v1

    move v10, v3

    move v3, v4

    move-object/from16 v1, p1

    move/from16 v4, p4

    .line 73
    invoke-virtual/range {v0 .. v13}, Lcom/google/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIJIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    move v4, v3

    if-eq v6, v4, :cond_1b

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v13, p6

    move-object v2, v1

    move v12, v5

    move v5, v6

    :goto_1a
    move-object v1, v15

    move/from16 v9, v17

    move/from16 v6, v19

    goto/16 :goto_b

    :cond_1b
    move-object v8, v1

    move v2, v6

    move/from16 v9, v17

    move-object v6, v0

    goto/16 :goto_1d

    :cond_1c
    move/from16 v24, v8

    move v6, v10

    move v7, v13

    move/from16 v21, v17

    move/from16 v20, v18

    move/from16 v2, v23

    move/from16 v17, v9

    move-object/from16 v18, v15

    move-object v15, v1

    move v9, v3

    move-object/from16 v1, p1

    const/16 v3, 0x32

    if-ne v9, v3, :cond_1e

    const/4 v3, 0x2

    if-eq v6, v3, :cond_1d

    :goto_1b
    move-object v6, v0

    move-object v8, v1

    move v2, v4

    :goto_1c
    move/from16 v9, v17

    goto :goto_1d

    .line 74
    :cond_1d
    invoke-virtual {v0, v7, v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->parseMapField(IJLjava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_1e
    move-object/from16 v13, p6

    move v8, v2

    move v3, v4

    move-wide v10, v11

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v12, v7

    move v7, v6

    move/from16 v6, v19

    .line 75
    invoke-virtual/range {v0 .. v13}, Lcom/google/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    move-object v8, v1

    move v4, v3

    move-object v6, v0

    if-eq v7, v4, :cond_1f

    move v0, v12

    move v12, v5

    move v5, v7

    move v7, v0

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v13, p6

    move-object v0, v6

    move-object v2, v8

    goto :goto_1a

    :cond_1f
    move v2, v7

    move v7, v12

    goto :goto_1c

    :goto_1d
    if-ne v5, v14, :cond_20

    if-eqz v14, :cond_20

    move/from16 v4, p4

    move v12, v5

    move v5, v2

    :goto_1e
    move/from16 v0, v24

    const v1, 0xfffff

    goto :goto_1f

    .line 76
    :cond_20
    move-object v0, v8

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 77
    sget-object v3, Lcom/google/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/google/protobuf/UnknownFieldSetLite;

    if-ne v1, v3, :cond_21

    .line 78
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    .line 79
    iput-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    :cond_21
    move/from16 v3, p4

    move-object v4, v1

    move v0, v5

    move-object/from16 v1, p2

    move-object/from16 v5, p6

    .line 80
    invoke-static/range {v0 .. v5}, Lokhttp3/Cookie$Companion;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move v5, v0

    move-object/from16 v13, p6

    move v4, v3

    move v12, v5

    move-object v0, v6

    move-object v1, v15

    move/from16 v6, v19

    const v16, 0xfffff

    move-object/from16 v3, p2

    move v5, v2

    move-object v2, v8

    goto/16 :goto_10

    :cond_22
    move-object v6, v0

    move/from16 v24, v8

    move/from16 v17, v9

    move-object/from16 v18, v15

    move-object v15, v1

    move-object v8, v2

    goto :goto_1e

    :goto_1f
    if-eq v0, v1, :cond_23

    int-to-long v0, v0

    .line 81
    invoke-virtual {v15, v8, v0, v1, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 82
    :cond_23
    iget v0, v6, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_20
    iget v1, v6, Lcom/google/protobuf/MessageSchema;->oneofFieldPositionsStart:I

    if-ge v0, v1, :cond_25

    .line 83
    iget-object v1, v6, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v1, v1, v0

    .line 84
    aget v2, v18, v1

    .line 85
    invoke-virtual {v6, v1}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v2

    const v16, 0xfffff

    and-int v2, v2, v16

    int-to-long v2, v2

    .line 86
    sget-object v7, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v2, v3, v8}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_24

    goto :goto_21

    .line 87
    :cond_24
    invoke-virtual {v6, v1}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_25
    if-nez v14, :cond_27

    if-ne v5, v4, :cond_26

    goto :goto_22

    .line 88
    :cond_26
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_27
    if-gt v5, v4, :cond_28

    if-ne v12, v14, :cond_28

    :goto_22
    return v5

    .line 89
    :cond_28
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v9, p6

    .line 6
    .line 7
    move/from16 v2, p7

    .line 8
    .line 9
    move-wide/from16 v3, p10

    .line 10
    .line 11
    move/from16 v10, p12

    .line 12
    .line 13
    sget-object v5, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 14
    .line 15
    add-int/lit8 v6, v10, 0x2

    .line 16
    .line 17
    iget-object v7, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 18
    .line 19
    aget v6, v7, v6

    .line 20
    .line 21
    const v7, 0xfffff

    .line 22
    .line 23
    .line 24
    and-int/2addr v6, v7

    .line 25
    int-to-long v6, v6

    .line 26
    const/4 v8, 0x5

    .line 27
    const/4 v11, 0x1

    .line 28
    const/4 v12, 0x2

    .line 29
    packed-switch p9, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    :cond_0
    move/from16 v0, p3

    .line 33
    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :pswitch_0
    const/4 v3, 0x3

    .line 37
    if-ne v2, v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0, v9, v10, v1}, Lcom/google/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(IILjava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    and-int/lit8 v3, p5, -0x8

    .line 44
    .line 45
    or-int/lit8 v7, v3, 0x4

    .line 46
    .line 47
    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    move-object/from16 v4, p2

    .line 52
    .line 53
    move/from16 v5, p3

    .line 54
    .line 55
    move/from16 v6, p4

    .line 56
    .line 57
    move-object/from16 v8, p13

    .line 58
    .line 59
    invoke-static/range {v2 .. v8}, Lokhttp3/Cookie$Companion;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {v0, v9, v1, v2, v10}, Lcom/google/protobuf/MessageSchema;->storeOneofMessageField(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    return v3

    .line 67
    :pswitch_1
    move-object/from16 v11, p2

    .line 68
    .line 69
    move/from16 v8, p3

    .line 70
    .line 71
    move-object/from16 v13, p13

    .line 72
    .line 73
    if-nez v2, :cond_1

    .line 74
    .line 75
    invoke-static {v11, v8, v13}, Lokhttp3/Cookie$Companion;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iget-wide v10, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 80
    .line 81
    invoke-static {v10, v11}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->decodeZigZag64(J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v10

    .line 85
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 93
    .line 94
    .line 95
    return v0

    .line 96
    :cond_1
    move v0, v8

    .line 97
    goto/16 :goto_3

    .line 98
    .line 99
    :pswitch_2
    move-object/from16 v11, p2

    .line 100
    .line 101
    move/from16 v8, p3

    .line 102
    .line 103
    move-object/from16 v13, p13

    .line 104
    .line 105
    if-nez v2, :cond_1

    .line 106
    .line 107
    invoke-static {v11, v8, v13}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iget v2, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 112
    .line 113
    invoke-static {v2}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->decodeZigZag32(I)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 125
    .line 126
    .line 127
    return v0

    .line 128
    :pswitch_3
    move-object/from16 v11, p2

    .line 129
    .line 130
    move/from16 v8, p3

    .line 131
    .line 132
    move-object/from16 v13, p13

    .line 133
    .line 134
    if-nez v2, :cond_1

    .line 135
    .line 136
    invoke-static {v11, v8, v13}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    iget v8, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 141
    .line 142
    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    .line 143
    .line 144
    .line 145
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v5, v1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 153
    .line 154
    .line 155
    return v2

    .line 156
    :pswitch_4
    move-object/from16 v11, p2

    .line 157
    .line 158
    move/from16 v8, p3

    .line 159
    .line 160
    move-object/from16 v13, p13

    .line 161
    .line 162
    if-ne v2, v12, :cond_1

    .line 163
    .line 164
    invoke-static {v11, v8, v13}, Lokhttp3/Cookie$Companion;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    iget-object v2, v13, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 169
    .line 170
    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 174
    .line 175
    .line 176
    return v0

    .line 177
    :pswitch_5
    move-object/from16 v11, p2

    .line 178
    .line 179
    move/from16 v8, p3

    .line 180
    .line 181
    move-object/from16 v13, p13

    .line 182
    .line 183
    if-ne v2, v12, :cond_1

    .line 184
    .line 185
    invoke-virtual {v0, v9, v10, v1}, Lcom/google/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(IILjava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    move/from16 v6, p4

    .line 194
    .line 195
    move v5, v8

    .line 196
    move-object v4, v11

    .line 197
    move-object v7, v13

    .line 198
    invoke-static/range {v2 .. v7}, Lokhttp3/Cookie$Companion;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    invoke-virtual {v0, v9, v1, v2, v10}, Lcom/google/protobuf/MessageSchema;->storeOneofMessageField(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 203
    .line 204
    .line 205
    return v3

    .line 206
    :pswitch_6
    move-object/from16 v10, p2

    .line 207
    .line 208
    move/from16 v0, p3

    .line 209
    .line 210
    move-object/from16 v8, p13

    .line 211
    .line 212
    if-ne v2, v12, :cond_6

    .line 213
    .line 214
    invoke-static {v10, v0, v8}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    iget v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 219
    .line 220
    if-nez v2, :cond_2

    .line 221
    .line 222
    const-string v2, ""

    .line 223
    .line 224
    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_2
    const/high16 v8, 0x20000000

    .line 229
    .line 230
    and-int v8, p8, v8

    .line 231
    .line 232
    if-eqz v8, :cond_4

    .line 233
    .line 234
    add-int v8, v0, v2

    .line 235
    .line 236
    sget-object v11, Lcom/google/protobuf/Utf8;->processor:Landroidx/work/OperationKt;

    .line 237
    .line 238
    invoke-virtual {v11, v10, v0, v8}, Landroidx/work/OperationKt;->isValidUtf8([BII)Z

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    if-eqz v8, :cond_3

    .line 243
    .line 244
    goto :goto_0

    .line 245
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    throw v0

    .line 250
    :cond_4
    :goto_0
    new-instance v8, Ljava/lang/String;

    .line 251
    .line 252
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 253
    .line 254
    invoke-direct {v8, v10, v0, v2, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v5, v1, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    add-int/2addr v0, v2

    .line 261
    :goto_1
    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 262
    .line 263
    .line 264
    return v0

    .line 265
    :pswitch_7
    move-object/from16 v10, p2

    .line 266
    .line 267
    move/from16 v0, p3

    .line 268
    .line 269
    move-object/from16 v8, p13

    .line 270
    .line 271
    if-nez v2, :cond_6

    .line 272
    .line 273
    invoke-static {v10, v0, v8}, Lokhttp3/Cookie$Companion;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    iget-wide v12, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 278
    .line 279
    const-wide/16 v14, 0x0

    .line 280
    .line 281
    cmp-long v2, v12, v14

    .line 282
    .line 283
    if-eqz v2, :cond_5

    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_5
    const/4 v11, 0x0

    .line 287
    :goto_2
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 295
    .line 296
    .line 297
    return v0

    .line 298
    :pswitch_8
    move-object/from16 v10, p2

    .line 299
    .line 300
    move/from16 v0, p3

    .line 301
    .line 302
    if-ne v2, v8, :cond_6

    .line 303
    .line 304
    invoke-static {v0, v10}, Lokhttp3/Cookie$Companion;->decodeFixed32(I[B)I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    add-int/lit8 v0, v0, 0x4

    .line 316
    .line 317
    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 318
    .line 319
    .line 320
    return v0

    .line 321
    :pswitch_9
    move-object/from16 v10, p2

    .line 322
    .line 323
    move/from16 v0, p3

    .line 324
    .line 325
    if-ne v2, v11, :cond_6

    .line 326
    .line 327
    invoke-static {v0, v10}, Lokhttp3/Cookie$Companion;->decodeFixed64(I[B)J

    .line 328
    .line 329
    .line 330
    move-result-wide v10

    .line 331
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    add-int/lit8 v0, v0, 0x8

    .line 339
    .line 340
    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 341
    .line 342
    .line 343
    return v0

    .line 344
    :pswitch_a
    move-object/from16 v10, p2

    .line 345
    .line 346
    move/from16 v0, p3

    .line 347
    .line 348
    move-object/from16 v8, p13

    .line 349
    .line 350
    if-nez v2, :cond_6

    .line 351
    .line 352
    invoke-static {v10, v0, v8}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    iget v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 357
    .line 358
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 366
    .line 367
    .line 368
    return v0

    .line 369
    :pswitch_b
    move-object/from16 v10, p2

    .line 370
    .line 371
    move/from16 v0, p3

    .line 372
    .line 373
    move-object/from16 v8, p13

    .line 374
    .line 375
    if-nez v2, :cond_6

    .line 376
    .line 377
    invoke-static {v10, v0, v8}, Lokhttp3/Cookie$Companion;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    iget-wide v10, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 382
    .line 383
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 391
    .line 392
    .line 393
    return v0

    .line 394
    :pswitch_c
    move-object/from16 v10, p2

    .line 395
    .line 396
    move/from16 v0, p3

    .line 397
    .line 398
    if-ne v2, v8, :cond_6

    .line 399
    .line 400
    invoke-static {v0, v10}, Lokhttp3/Cookie$Companion;->decodeFixed32(I[B)I

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    add-int/lit8 v0, v0, 0x4

    .line 416
    .line 417
    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 418
    .line 419
    .line 420
    return v0

    .line 421
    :pswitch_d
    move-object/from16 v10, p2

    .line 422
    .line 423
    move/from16 v0, p3

    .line 424
    .line 425
    if-ne v2, v11, :cond_6

    .line 426
    .line 427
    invoke-static {v0, v10}, Lokhttp3/Cookie$Companion;->decodeFixed64(I[B)J

    .line 428
    .line 429
    .line 430
    move-result-wide v10

    .line 431
    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 432
    .line 433
    .line 434
    move-result-wide v10

    .line 435
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    add-int/lit8 v0, v0, 0x8

    .line 443
    .line 444
    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 445
    .line 446
    .line 447
    :cond_6
    :goto_3
    return v0

    .line 448
    nop

    .line 449
    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parseRepeatedField(Ljava/lang/Object;[BIIIIIJIJLcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 14

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v6, p7

    move-wide/from16 v3, p11

    .line 1
    sget-object v5, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    move-object v8, v7

    check-cast v8, Lcom/google/protobuf/AbstractProtobufList;

    .line 3
    iget-boolean v8, v8, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    const/4 v9, 0x2

    if-nez v8, :cond_0

    .line 4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    mul-int/2addr v8, v9

    .line 5
    invoke-interface {v7, v8}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v7

    .line 6
    invoke-virtual {v5, p1, v3, v4, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    move-object v4, v7

    const/4 v0, 0x3

    const/4 v3, 0x5

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x1

    packed-switch p10, :pswitch_data_0

    :cond_1
    move/from16 v7, p3

    goto/16 :goto_2d

    :pswitch_0
    if-ne v2, v0, :cond_1

    .line 7
    invoke-virtual {p0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object p0

    and-int/lit8 v0, v1, -0x8

    or-int/lit8 v0, v0, 0x4

    move-object/from16 p6, p0

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move-object/from16 p11, p13

    move/from16 p10, v0

    .line 8
    invoke-static/range {p6 .. p11}, Lokhttp3/Cookie$Companion;->decodeGroupField(Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    move-object/from16 v2, p6

    move-object/from16 v0, p7

    move/from16 v3, p9

    move/from16 v6, p10

    move-object/from16 v5, p11

    .line 9
    iget-object v7, v5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p0, v3, :cond_3

    .line 10
    invoke-static {v0, p0, v5}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    .line 11
    iget v8, v5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v1, v8, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 p7, v0

    move-object/from16 p6, v2

    move/from16 p9, v3

    move-object/from16 p11, v5

    move/from16 p10, v6

    move/from16 p8, v7

    .line 12
    invoke-static/range {p6 .. p11}, Lokhttp3/Cookie$Companion;->decodeGroupField(Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 13
    iget-object v7, v5, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return p0

    :pswitch_1
    move-object/from16 v0, p2

    move/from16 v7, p3

    move/from16 v3, p4

    move-object/from16 v5, p13

    if-ne v2, v9, :cond_6

    .line 14
    check-cast v4, Lcom/google/protobuf/LongArrayList;

    .line 15
    invoke-static {v0, v7, v5}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 16
    iget v1, v5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p0

    :goto_2
    if-ge p0, v1, :cond_4

    .line 17
    invoke-static {v0, p0, v5}, Lokhttp3/Cookie$Companion;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 18
    iget-wide v2, v5, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v2, v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_2

    :cond_4
    if-ne p0, v1, :cond_5

    return p0

    .line 19
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_6
    if-nez v2, :cond_5d

    .line 20
    check-cast v4, Lcom/google/protobuf/LongArrayList;

    .line 21
    invoke-static {v0, v7, v5}, Lokhttp3/Cookie$Companion;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 22
    iget-wide v6, v5, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v6, v7}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->decodeZigZag64(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    :goto_3
    if-ge p0, v3, :cond_8

    .line 23
    invoke-static {v0, p0, v5}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 24
    iget v6, v5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v1, v6, :cond_7

    goto :goto_4

    .line 25
    :cond_7
    invoke-static {v0, v2, v5}, Lokhttp3/Cookie$Companion;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 26
    iget-wide v6, v5, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v6, v7}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->decodeZigZag64(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_3

    :cond_8
    :goto_4
    return p0

    :pswitch_2
    move-object/from16 v0, p2

    move/from16 v7, p3

    move/from16 v3, p4

    move-object/from16 v5, p13

    if-ne v2, v9, :cond_b

    .line 27
    check-cast v4, Lcom/google/protobuf/IntArrayList;

    .line 28
    invoke-static {v0, v7, v5}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 29
    iget v1, v5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v1, p0

    :goto_5
    if-ge p0, v1, :cond_9

    .line 30
    invoke-static {v0, p0, v5}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 31
    iget v2, v5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->decodeZigZag32(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_5

    :cond_9
    if-ne p0, v1, :cond_a

    return p0

    .line 32
    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_b
    if-nez v2, :cond_5d

    .line 33
    check-cast v4, Lcom/google/protobuf/IntArrayList;

    .line 34
    invoke-static {v0, v7, v5}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 35
    iget v2, v5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->decodeZigZag32(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    :goto_6
    if-ge p0, v3, :cond_d

    .line 36
    invoke-static {v0, p0, v5}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 37
    iget v6, v5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v1, v6, :cond_c

    goto :goto_7

    .line 38
    :cond_c
    invoke-static {v0, v2, v5}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 39
    iget v2, v5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->decodeZigZag32(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_6

    :cond_d
    :goto_7
    return p0

    :pswitch_3
    move-object/from16 v0, p2

    move/from16 v7, p3

    move/from16 v3, p4

    move-object/from16 v5, p13

    if-ne v2, v9, :cond_10

    .line 40
    check-cast v4, Lcom/google/protobuf/IntArrayList;

    .line 41
    invoke-static {v0, v7, v5}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 42
    iget v2, v5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v2, v1

    :goto_8
    if-ge v1, v2, :cond_e

    .line 43
    invoke-static {v0, v1, v5}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 44
    iget v3, v5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v4, v3}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_8

    :cond_e
    if-ne v1, v2, :cond_f

    goto :goto_9

    .line 45
    :cond_f
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_10
    if-nez v2, :cond_5d

    move v2, v1

    move-object v1, v0

    move v0, v2

    move v2, v7

    .line 46
    invoke-static/range {v0 .. v5}, Lokhttp3/Cookie$Companion;->decodeVarint32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 47
    :goto_9
    invoke-virtual {p0, v6}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    .line 48
    sget-object p0, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    return v1

    :pswitch_4
    move-object/from16 v0, p2

    move/from16 v7, p3

    move/from16 v3, p4

    move-object/from16 v5, p13

    if-ne v2, v9, :cond_5d

    .line 49
    invoke-static {v0, v7, v5}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 50
    iget v2, v5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v2, :cond_18

    .line 51
    array-length v6, v0

    sub-int/2addr v6, p0

    if-gt v2, v6, :cond_17

    if-nez v2, :cond_11

    .line 52
    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString$LiteralByteString;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 53
    :cond_11
    invoke-static {v0, p0, v2}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString$LiteralByteString;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/2addr p0, v2

    :goto_b
    if-ge p0, v3, :cond_16

    .line 54
    invoke-static {v0, p0, v5}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 55
    iget v6, v5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v1, v6, :cond_12

    goto :goto_c

    .line 56
    :cond_12
    invoke-static {v0, v2, v5}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 57
    iget v2, v5, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v2, :cond_15

    .line 58
    array-length v6, v0

    sub-int/2addr v6, p0

    if-gt v2, v6, :cond_14

    if-nez v2, :cond_13

    .line 59
    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString$LiteralByteString;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 60
    :cond_13
    invoke-static {v0, p0, v2}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString$LiteralByteString;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 61
    :cond_14
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 62
    :cond_15
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_16
    :goto_c
    return p0

    .line 63
    :cond_17
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 64
    :cond_18
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_5
    move-object/from16 v0, p2

    move/from16 v7, p3

    move/from16 v3, p4

    move-object/from16 v5, p13

    if-ne v2, v9, :cond_5d

    .line 65
    invoke-virtual {p0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object p0

    move-object/from16 p6, p0

    move-object/from16 p8, v0

    move/from16 p7, v1

    move/from16 p10, v3

    move-object/from16 p11, v4

    move-object/from16 p12, v5

    move/from16 p9, v7

    .line 66
    invoke-static/range {p6 .. p12}, Lokhttp3/Cookie$Companion;->decodeMessageList(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    return p0

    :pswitch_6
    move/from16 p0, p3

    move-object/from16 v12, p13

    move v6, v1

    move-object v13, v4

    move-object/from16 v1, p2

    move/from16 v4, p4

    if-ne v2, v9, :cond_28

    const-wide/32 v2, 0x20000000

    and-long v2, p8, v2

    cmp-long v0, v2, v7

    .line 67
    const-string v2, ""

    if-nez v0, :cond_1f

    .line 68
    invoke-static {v1, p0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 69
    iget v0, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v0, :cond_1e

    if-nez v0, :cond_19

    .line 70
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 71
    :cond_19
    new-instance v3, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, p0, v0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 72
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    add-int/2addr p0, v0

    :goto_e
    if-ge p0, v4, :cond_1d

    .line 73
    invoke-static {v1, p0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 74
    iget v3, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v6, v3, :cond_1a

    goto :goto_f

    .line 75
    :cond_1a
    invoke-static {v1, v0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 76
    iget v0, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v0, :cond_1c

    if-nez v0, :cond_1b

    .line 77
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 78
    :cond_1b
    new-instance v3, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, p0, v0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 79
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 80
    :cond_1c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1d
    :goto_f
    return p0

    .line 81
    :cond_1e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 82
    :cond_1f
    invoke-static {v1, p0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 83
    iget v0, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v0, :cond_27

    if-nez v0, :cond_20

    .line 84
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_20
    add-int v3, p0, v0

    .line 85
    sget-object v5, Lcom/google/protobuf/Utf8;->processor:Landroidx/work/OperationKt;

    invoke-virtual {v5, v1, p0, v3}, Landroidx/work/OperationKt;->isValidUtf8([BII)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 86
    new-instance v5, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v1, p0, v0, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 87
    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_10
    move p0, v3

    :goto_11
    if-ge p0, v4, :cond_25

    .line 88
    invoke-static {v1, p0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 89
    iget v3, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v6, v3, :cond_21

    goto :goto_12

    .line 90
    :cond_21
    invoke-static {v1, v0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 91
    iget v0, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v0, :cond_24

    if-nez v0, :cond_22

    .line 92
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_22
    add-int v3, p0, v0

    .line 93
    sget-object v5, Lcom/google/protobuf/Utf8;->processor:Landroidx/work/OperationKt;

    invoke-virtual {v5, v1, p0, v3}, Landroidx/work/OperationKt;->isValidUtf8([BII)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 94
    new-instance v5, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v1, p0, v0, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 95
    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 96
    :cond_23
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 97
    :cond_24
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_25
    :goto_12
    return p0

    .line 98
    :cond_26
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 99
    :cond_27
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_28
    move v7, p0

    goto/16 :goto_2d

    :pswitch_7
    move/from16 p0, p3

    move-object/from16 v12, p13

    move v6, v1

    move-object v13, v4

    move-object/from16 v1, p2

    move/from16 v4, p4

    if-ne v2, v9, :cond_2c

    .line 100
    move-object v4, v13

    check-cast v4, Lcom/google/protobuf/BooleanArrayList;

    .line 101
    invoke-static {v1, p0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 102
    iget v0, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v0, p0

    :goto_13
    if-ge p0, v0, :cond_2a

    .line 103
    invoke-static {v1, p0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 104
    iget-wide v2, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_29

    move v2, v11

    goto :goto_14

    :cond_29
    move v2, v5

    :goto_14
    invoke-virtual {v4, v2}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_13

    :cond_2a
    if-ne p0, v0, :cond_2b

    return p0

    .line 105
    :cond_2b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_2c
    if-nez v2, :cond_28

    .line 106
    move-object v0, v13

    check-cast v0, Lcom/google/protobuf/BooleanArrayList;

    .line 107
    invoke-static {v1, p0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 108
    iget-wide v2, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_2d

    move v2, v11

    goto :goto_15

    :cond_2d
    move v2, v5

    :goto_15
    invoke-virtual {v0, v2}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    :goto_16
    if-ge p0, v4, :cond_30

    .line 109
    invoke-static {v1, p0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 110
    iget v3, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v6, v3, :cond_2e

    goto :goto_18

    .line 111
    :cond_2e
    invoke-static {v1, v2, v12}, Lokhttp3/Cookie$Companion;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 112
    iget-wide v2, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_2f

    move v2, v11

    goto :goto_17

    :cond_2f
    move v2, v5

    :goto_17
    invoke-virtual {v0, v2}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_16

    :cond_30
    :goto_18
    return p0

    :pswitch_8
    move/from16 p0, p3

    move-object/from16 v12, p13

    move v6, v1

    move-object v13, v4

    move-object/from16 v1, p2

    move/from16 v4, p4

    if-ne v2, v9, :cond_37

    .line 113
    move-object v4, v13

    check-cast v4, Lcom/google/protobuf/IntArrayList;

    .line 114
    invoke-static {v1, p0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 115
    iget v2, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int v3, p0, v2

    .line 116
    array-length v6, v1

    if-gt v3, v6, :cond_36

    .line 117
    div-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v5

    .line 118
    iget-object v5, v4, Lcom/google/protobuf/IntArrayList;->array:[I

    array-length v6, v5

    if-gt v2, v6, :cond_31

    goto :goto_1a

    .line 119
    :cond_31
    array-length v6, v5

    if-nez v6, :cond_32

    .line 120
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, v4, Lcom/google/protobuf/IntArrayList;->array:[I

    goto :goto_1a

    .line 121
    :cond_32
    array-length v5, v5

    :goto_19
    if-ge v5, v2, :cond_33

    .line 122
    invoke-static {v5, v0, v9, v11, v10}, Lcom/android/tools/r8/RecordTag;->m(IIIII)I

    move-result v5

    goto :goto_19

    .line 123
    :cond_33
    iget-object v0, v4, Lcom/google/protobuf/IntArrayList;->array:[I

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, v4, Lcom/google/protobuf/IntArrayList;->array:[I

    :goto_1a
    if-ge p0, v3, :cond_34

    .line 124
    invoke-static {p0, v1}, Lokhttp3/Cookie$Companion;->decodeFixed32(I[B)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    add-int/lit8 p0, p0, 0x4

    goto :goto_1a

    :cond_34
    if-ne p0, v3, :cond_35

    return p0

    .line 125
    :cond_35
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 126
    :cond_36
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_37
    if-ne v2, v3, :cond_28

    .line 127
    move-object v0, v13

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    .line 128
    invoke-static {p0, v1}, Lokhttp3/Cookie$Companion;->decodeFixed32(I[B)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    add-int/lit8 p0, p0, 0x4

    :goto_1b
    if-ge p0, v4, :cond_39

    .line 129
    invoke-static {v1, p0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 130
    iget v3, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v6, v3, :cond_38

    goto :goto_1c

    .line 131
    :cond_38
    invoke-static {v2, v1}, Lokhttp3/Cookie$Companion;->decodeFixed32(I[B)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    add-int/lit8 p0, v2, 0x4

    goto :goto_1b

    :cond_39
    :goto_1c
    return p0

    :pswitch_9
    move/from16 p0, p3

    move-object/from16 v12, p13

    move v6, v1

    move-object v13, v4

    move-object/from16 v1, p2

    move/from16 v4, p4

    if-ne v2, v9, :cond_40

    .line 132
    move-object v4, v13

    check-cast v4, Lcom/google/protobuf/LongArrayList;

    .line 133
    invoke-static {v1, p0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 134
    iget v2, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int v3, p0, v2

    .line 135
    array-length v6, v1

    if-gt v3, v6, :cond_3f

    .line 136
    div-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v5

    .line 137
    iget-object v5, v4, Lcom/google/protobuf/LongArrayList;->array:[J

    array-length v6, v5

    if-gt v2, v6, :cond_3a

    goto :goto_1e

    .line 138
    :cond_3a
    array-length v6, v5

    if-nez v6, :cond_3b

    .line 139
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, v4, Lcom/google/protobuf/LongArrayList;->array:[J

    goto :goto_1e

    .line 140
    :cond_3b
    array-length v5, v5

    :goto_1d
    if-ge v5, v2, :cond_3c

    .line 141
    invoke-static {v5, v0, v9, v11, v10}, Lcom/android/tools/r8/RecordTag;->m(IIIII)I

    move-result v5

    goto :goto_1d

    .line 142
    :cond_3c
    iget-object v0, v4, Lcom/google/protobuf/LongArrayList;->array:[J

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, v4, Lcom/google/protobuf/LongArrayList;->array:[J

    :goto_1e
    if-ge p0, v3, :cond_3d

    .line 143
    invoke-static {p0, v1}, Lokhttp3/Cookie$Companion;->decodeFixed64(I[B)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    add-int/lit8 p0, p0, 0x8

    goto :goto_1e

    :cond_3d
    if-ne p0, v3, :cond_3e

    return p0

    .line 144
    :cond_3e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 145
    :cond_3f
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_40
    if-ne v2, v11, :cond_28

    .line 146
    move-object v0, v13

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    .line 147
    invoke-static {p0, v1}, Lokhttp3/Cookie$Companion;->decodeFixed64(I[B)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    add-int/lit8 p0, p0, 0x8

    :goto_1f
    if-ge p0, v4, :cond_42

    .line 148
    invoke-static {v1, p0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 149
    iget v3, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v6, v3, :cond_41

    goto :goto_20

    .line 150
    :cond_41
    invoke-static {v2, v1}, Lokhttp3/Cookie$Companion;->decodeFixed64(I[B)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    add-int/lit8 p0, v2, 0x8

    goto :goto_1f

    :cond_42
    :goto_20
    return p0

    :pswitch_a
    move/from16 p0, p3

    move-object/from16 v12, p13

    move v6, v1

    move-object v13, v4

    move-object/from16 v1, p2

    move/from16 v4, p4

    if-ne v2, v9, :cond_45

    .line 151
    move-object v4, v13

    check-cast v4, Lcom/google/protobuf/IntArrayList;

    .line 152
    invoke-static {v1, p0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 153
    iget v0, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v0, p0

    :goto_21
    if-ge p0, v0, :cond_43

    .line 154
    invoke-static {v1, p0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 155
    iget v2, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v4, v2}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_21

    :cond_43
    if-ne p0, v0, :cond_44

    return p0

    .line 156
    :cond_44
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_45
    if-nez v2, :cond_28

    move/from16 p8, p0

    move-object/from16 p7, v1

    move/from16 p9, v4

    move/from16 p6, v6

    move-object/from16 p11, v12

    move-object/from16 p10, v13

    .line 157
    invoke-static/range {p6 .. p11}, Lokhttp3/Cookie$Companion;->decodeVarint32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    return p0

    :pswitch_b
    move/from16 v7, p3

    move-object/from16 v12, p13

    move v6, v1

    move-object v13, v4

    move-object/from16 v1, p2

    move/from16 v4, p4

    if-ne v2, v9, :cond_48

    .line 158
    move-object v4, v13

    check-cast v4, Lcom/google/protobuf/LongArrayList;

    .line 159
    invoke-static {v1, v7, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 160
    iget v0, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v0, p0

    :goto_22
    if-ge p0, v0, :cond_46

    .line 161
    invoke-static {v1, p0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 162
    iget-wide v2, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual {v4, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_22

    :cond_46
    if-ne p0, v0, :cond_47

    return p0

    .line 163
    :cond_47
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_48
    if-nez v2, :cond_5d

    .line 164
    move-object p0, v13

    check-cast p0, Lcom/google/protobuf/LongArrayList;

    .line 165
    invoke-static {v1, v7, v12}, Lokhttp3/Cookie$Companion;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 166
    iget-wide v2, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual {p0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    :goto_23
    if-ge v0, v4, :cond_4a

    .line 167
    invoke-static {v1, v0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 168
    iget v3, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v6, v3, :cond_49

    goto :goto_24

    .line 169
    :cond_49
    invoke-static {v1, v2, v12}, Lokhttp3/Cookie$Companion;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 170
    iget-wide v2, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual {p0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_23

    :cond_4a
    :goto_24
    return v0

    :pswitch_c
    move/from16 v7, p3

    move-object/from16 v12, p13

    move v6, v1

    move-object v13, v4

    move-object/from16 v1, p2

    move/from16 v4, p4

    if-ne v2, v9, :cond_51

    .line 171
    move-object v4, v13

    check-cast v4, Lcom/google/protobuf/FloatArrayList;

    .line 172
    invoke-static {v1, v7, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 173
    iget v2, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int v3, p0, v2

    .line 174
    array-length v6, v1

    if-gt v3, v6, :cond_50

    .line 175
    div-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v5

    .line 176
    iget-object v5, v4, Lcom/google/protobuf/FloatArrayList;->array:[F

    array-length v6, v5

    if-gt v2, v6, :cond_4b

    goto :goto_26

    .line 177
    :cond_4b
    array-length v6, v5

    if-nez v6, :cond_4c

    .line 178
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, v4, Lcom/google/protobuf/FloatArrayList;->array:[F

    goto :goto_26

    .line 179
    :cond_4c
    array-length v5, v5

    :goto_25
    if-ge v5, v2, :cond_4d

    .line 180
    invoke-static {v5, v0, v9, v11, v10}, Lcom/android/tools/r8/RecordTag;->m(IIIII)I

    move-result v5

    goto :goto_25

    .line 181
    :cond_4d
    iget-object v0, v4, Lcom/google/protobuf/FloatArrayList;->array:[F

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, v4, Lcom/google/protobuf/FloatArrayList;->array:[F

    :goto_26
    if-ge p0, v3, :cond_4e

    .line 182
    invoke-static {p0, v1}, Lokhttp3/Cookie$Companion;->decodeFixed32(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 183
    invoke-virtual {v4, v0}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    add-int/lit8 p0, p0, 0x4

    goto :goto_26

    :cond_4e
    if-ne p0, v3, :cond_4f

    return p0

    .line 184
    :cond_4f
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 185
    :cond_50
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_51
    if-ne v2, v3, :cond_5d

    .line 186
    move-object p0, v13

    check-cast p0, Lcom/google/protobuf/FloatArrayList;

    .line 187
    invoke-static {v7, v1}, Lokhttp3/Cookie$Companion;->decodeFixed32(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 188
    invoke-virtual {p0, v0}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    add-int/lit8 v0, v7, 0x4

    :goto_27
    if-ge v0, v4, :cond_53

    .line 189
    invoke-static {v1, v0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 190
    iget v3, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v6, v3, :cond_52

    goto :goto_28

    .line 191
    :cond_52
    invoke-static {v2, v1}, Lokhttp3/Cookie$Companion;->decodeFixed32(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 192
    invoke-virtual {p0, v0}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    add-int/lit8 v0, v2, 0x4

    goto :goto_27

    :cond_53
    :goto_28
    return v0

    :pswitch_d
    move/from16 v7, p3

    move-object/from16 v12, p13

    move v6, v1

    move-object v13, v4

    move-object/from16 v1, p2

    move/from16 v4, p4

    if-ne v2, v9, :cond_5a

    .line 193
    move-object v4, v13

    check-cast v4, Lcom/google/protobuf/DoubleArrayList;

    .line 194
    invoke-static {v1, v7, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 195
    iget v2, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    add-int v3, p0, v2

    .line 196
    array-length v6, v1

    if-gt v3, v6, :cond_59

    .line 197
    div-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v5

    .line 198
    iget-object v5, v4, Lcom/google/protobuf/DoubleArrayList;->array:[D

    array-length v6, v5

    if-gt v2, v6, :cond_54

    goto :goto_2a

    .line 199
    :cond_54
    array-length v6, v5

    if-nez v6, :cond_55

    .line 200
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, v4, Lcom/google/protobuf/DoubleArrayList;->array:[D

    goto :goto_2a

    .line 201
    :cond_55
    array-length v5, v5

    :goto_29
    if-ge v5, v2, :cond_56

    .line 202
    invoke-static {v5, v0, v9, v11, v10}, Lcom/android/tools/r8/RecordTag;->m(IIIII)I

    move-result v5

    goto :goto_29

    .line 203
    :cond_56
    iget-object v0, v4, Lcom/google/protobuf/DoubleArrayList;->array:[D

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    iput-object v0, v4, Lcom/google/protobuf/DoubleArrayList;->array:[D

    :goto_2a
    if-ge p0, v3, :cond_57

    .line 204
    invoke-static {p0, v1}, Lokhttp3/Cookie$Companion;->decodeFixed64(I[B)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 205
    invoke-virtual {v4, v5, v6}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    add-int/lit8 p0, p0, 0x8

    goto :goto_2a

    :cond_57
    if-ne p0, v3, :cond_58

    return p0

    .line 206
    :cond_58
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 207
    :cond_59
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_5a
    if-ne v2, v11, :cond_5d

    .line 208
    move-object p0, v13

    check-cast p0, Lcom/google/protobuf/DoubleArrayList;

    .line 209
    invoke-static {v7, v1}, Lokhttp3/Cookie$Companion;->decodeFixed64(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 210
    invoke-virtual {p0, v2, v3}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    add-int/lit8 v0, v7, 0x8

    :goto_2b
    if-ge v0, v4, :cond_5c

    .line 211
    invoke-static {v1, v0, v12}, Lokhttp3/Cookie$Companion;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 212
    iget v3, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq v6, v3, :cond_5b

    goto :goto_2c

    .line 213
    :cond_5b
    invoke-static {v2, v1}, Lokhttp3/Cookie$Companion;->decodeFixed64(I[B)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    .line 214
    invoke-virtual {p0, v7, v8}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    add-int/lit8 v0, v2, 0x8

    goto :goto_2b

    :cond_5c
    :goto_2c
    return v0

    :cond_5d
    :goto_2d
    return v7

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setFieldPresent(ILjava/lang/Object;)V
    .locals 4

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    const p1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p1, p0

    .line 11
    int-to-long v0, p1

    .line 12
    const-wide/32 v2, 0xfffff

    .line 13
    .line 14
    .line 15
    cmp-long p1, v0, v2

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    shl-int p0, p1, p0

    .line 24
    .line 25
    sget-object p1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(JLjava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    or-int/2addr p0, p1

    .line 32
    invoke-static {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final setOneofPresent(IILjava/lang/Object;)V
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 4
    .line 5
    aget p0, p0, p2

    .line 6
    .line 7
    const p2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, p2

    .line 11
    int-to-long v0, p0

    .line 12
    invoke-static {p1, v0, v1, p3}, Lcom/google/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final slowPositionForFieldNumber(II)I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    div-int/lit8 v0, v0, 0x3

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    :goto_0
    if-gt p2, v0, :cond_2

    .line 9
    .line 10
    add-int v1, v0, p2

    .line 11
    .line 12
    ushr-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    mul-int/lit8 v2, v1, 0x3

    .line 15
    .line 16
    aget v3, p0, v2

    .line 17
    .line 18
    if-ne p1, v3, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    if-ge p1, v3, :cond_1

    .line 22
    .line 23
    add-int/lit8 v1, v1, -0x1

    .line 24
    .line 25
    move v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    move p2, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 p0, -0x1

    .line 32
    return p0
.end method

.method public final storeMessageField(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final storeOneofMessageField(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p4}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p2, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final typeAndOffsetAt(I)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    return p0
.end method

.method public final writeFieldsInAscendingOrder(Ljava/lang/Object;Lcom/google/protobuf/ManifestSchemaFactory;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v6, p2

    .line 6
    .line 7
    iget-object v2, v6, Lcom/google/protobuf/ManifestSchemaFactory;->messageInfoFactory:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v7, v2

    .line 10
    check-cast v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    .line 11
    .line 12
    iget-object v8, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 13
    .line 14
    array-length v9, v8

    .line 15
    sget-object v10, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 16
    .line 17
    const v11, 0xfffff

    .line 18
    .line 19
    .line 20
    move v3, v11

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    if-ge v2, v9, :cond_f

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    aget v13, v8, v2

    .line 30
    .line 31
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->type(I)I

    .line 32
    .line 33
    .line 34
    move-result v14

    .line 35
    const/16 v15, 0x11

    .line 36
    .line 37
    if-gt v14, v15, :cond_2

    .line 38
    .line 39
    add-int/lit8 v15, v2, 0x2

    .line 40
    .line 41
    aget v15, v8, v15

    .line 42
    .line 43
    const/16 v16, 0x1

    .line 44
    .line 45
    and-int v12, v15, v11

    .line 46
    .line 47
    if-eq v12, v3, :cond_1

    .line 48
    .line 49
    if-ne v12, v11, :cond_0

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    int-to-long v3, v12

    .line 54
    invoke-virtual {v10, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    move v4, v3

    .line 59
    :goto_1
    move v3, v12

    .line 60
    :cond_1
    ushr-int/lit8 v12, v15, 0x14

    .line 61
    .line 62
    shl-int v12, v16, v12

    .line 63
    .line 64
    move/from16 v22, v12

    .line 65
    .line 66
    move v12, v5

    .line 67
    move/from16 v5, v22

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const/16 v16, 0x1

    .line 71
    .line 72
    move v12, v5

    .line 73
    const/4 v5, 0x0

    .line 74
    :goto_2
    and-int/2addr v12, v11

    .line 75
    int-to-long v11, v12

    .line 76
    const/16 v17, 0x3f

    .line 77
    .line 78
    const-string v15, "CodedOutputStream was writing to a flat byte array and ran out of space."

    .line 79
    .line 80
    move-object/from16 v18, v8

    .line 81
    .line 82
    const/4 v8, 0x2

    .line 83
    packed-switch v14, :pswitch_data_0

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_3
    const/4 v8, 0x0

    .line 87
    goto/16 :goto_12

    .line 88
    .line 89
    :pswitch_0
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_3

    .line 94
    .line 95
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    check-cast v5, Lcom/google/protobuf/AbstractMessageLite;

    .line 104
    .line 105
    const/4 v11, 0x3

    .line 106
    invoke-virtual {v7, v13, v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v8, v5, v6}, Lcom/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/ManifestSchemaFactory;)V

    .line 110
    .line 111
    .line 112
    const/4 v5, 0x4

    .line 113
    invoke-virtual {v7, v13, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :pswitch_1
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_3

    .line 122
    .line 123
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v11

    .line 127
    shl-long v14, v11, v16

    .line 128
    .line 129
    shr-long v11, v11, v17

    .line 130
    .line 131
    xor-long/2addr v11, v14

    .line 132
    invoke-virtual {v7, v13, v11, v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64(IJ)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :pswitch_2
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_3

    .line 141
    .line 142
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    shl-int/lit8 v8, v5, 0x1

    .line 147
    .line 148
    shr-int/lit8 v5, v5, 0x1f

    .line 149
    .line 150
    xor-int/2addr v5, v8

    .line 151
    invoke-virtual {v7, v13, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32(II)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :pswitch_3
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-eqz v5, :cond_3

    .line 160
    .line 161
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 162
    .line 163
    .line 164
    move-result-wide v11

    .line 165
    invoke-virtual {v7, v13, v11, v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64(IJ)V

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :pswitch_4
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_3

    .line 174
    .line 175
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    invoke-virtual {v7, v13, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32(II)V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :pswitch_5
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-eqz v5, :cond_3

    .line 188
    .line 189
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    invoke-virtual {v7, v13, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeInt32(II)V

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :pswitch_6
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_3

    .line 202
    .line 203
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    invoke-virtual {v7, v13, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32(II)V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :pswitch_7
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_3

    .line 216
    .line 217
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    check-cast v5, Lcom/google/protobuf/ByteString;

    .line 222
    .line 223
    invoke-virtual {v7, v13, v8}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->size()I

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    invoke-virtual {v7, v8}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5, v7}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_3

    .line 237
    .line 238
    :pswitch_8
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    if-eqz v5, :cond_3

    .line 243
    .line 244
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    invoke-virtual {v6, v13, v5, v8}, Lcom/google/protobuf/ManifestSchemaFactory;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_3

    .line 256
    .line 257
    :pswitch_9
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    if-eqz v5, :cond_3

    .line 262
    .line 263
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    instance-of v11, v5, Ljava/lang/String;

    .line 268
    .line 269
    if-eqz v11, :cond_5

    .line 270
    .line 271
    check-cast v5, Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v7, v13, v8}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 274
    .line 275
    .line 276
    iget-object v8, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 277
    .line 278
    iget v11, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 279
    .line 280
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 281
    .line 282
    .line 283
    move-result v12

    .line 284
    const/16 v19, 0x3

    .line 285
    .line 286
    mul-int/lit8 v12, v12, 0x3

    .line 287
    .line 288
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 289
    .line 290
    .line 291
    move-result v12

    .line 292
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 293
    .line 294
    .line 295
    move-result v13

    .line 296
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 297
    .line 298
    .line 299
    move-result v13

    .line 300
    if-ne v13, v12, :cond_4

    .line 301
    .line 302
    add-int v12, v11, v13

    .line 303
    .line 304
    iput v12, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 305
    .line 306
    array-length v14, v8

    .line 307
    sub-int/2addr v14, v12

    .line 308
    move/from16 v20, v3

    .line 309
    .line 310
    sget-object v3, Lcom/google/protobuf/Utf8;->processor:Landroidx/work/OperationKt;

    .line 311
    .line 312
    invoke-virtual {v3, v5, v8, v12, v14}, Landroidx/work/OperationKt;->encodeUtf8(Ljava/lang/String;[BII)I

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    iput v11, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 317
    .line 318
    sub-int v5, v3, v11

    .line 319
    .line 320
    sub-int/2addr v5, v13

    .line 321
    invoke-virtual {v7, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 322
    .line 323
    .line 324
    iput v3, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :catch_0
    move-exception v0

    .line 328
    goto :goto_4

    .line 329
    :cond_4
    move/from16 v20, v3

    .line 330
    .line 331
    invoke-static {v5}, Lcom/google/protobuf/Utf8;->encodedLength(Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    invoke-virtual {v7, v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 336
    .line 337
    .line 338
    iget v3, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 339
    .line 340
    array-length v11, v8

    .line 341
    sub-int/2addr v11, v3

    .line 342
    sget-object v12, Lcom/google/protobuf/Utf8;->processor:Landroidx/work/OperationKt;

    .line 343
    .line 344
    invoke-virtual {v12, v5, v8, v3, v11}, Landroidx/work/OperationKt;->encodeUtf8(Ljava/lang/String;[BII)I

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    iput v3, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .line 350
    goto :goto_5

    .line 351
    :goto_4
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 352
    .line 353
    invoke-direct {v1, v15, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    .line 355
    .line 356
    throw v1

    .line 357
    :cond_5
    move/from16 v20, v3

    .line 358
    .line 359
    check-cast v5, Lcom/google/protobuf/ByteString;

    .line 360
    .line 361
    invoke-virtual {v7, v13, v8}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->size()I

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    invoke-virtual {v7, v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v5, v7}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;)V

    .line 372
    .line 373
    .line 374
    :cond_6
    :goto_5
    move/from16 v3, v20

    .line 375
    .line 376
    goto/16 :goto_3

    .line 377
    .line 378
    :pswitch_a
    move/from16 v20, v3

    .line 379
    .line 380
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    if-eqz v3, :cond_6

    .line 385
    .line 386
    sget-object v3, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 387
    .line 388
    invoke-virtual {v3, v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    check-cast v3, Ljava/lang/Boolean;

    .line 393
    .line 394
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    const/4 v5, 0x0

    .line 399
    invoke-virtual {v7, v13, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 400
    .line 401
    .line 402
    int-to-byte v3, v3

    .line 403
    invoke-virtual {v7, v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->write(B)V

    .line 404
    .line 405
    .line 406
    goto :goto_5

    .line 407
    :pswitch_b
    move/from16 v20, v3

    .line 408
    .line 409
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    if-eqz v3, :cond_6

    .line 414
    .line 415
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    invoke-virtual {v7, v13, v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32(II)V

    .line 420
    .line 421
    .line 422
    goto :goto_5

    .line 423
    :pswitch_c
    move/from16 v20, v3

    .line 424
    .line 425
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    if-eqz v3, :cond_6

    .line 430
    .line 431
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 432
    .line 433
    .line 434
    move-result-wide v11

    .line 435
    invoke-virtual {v7, v13, v11, v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64(IJ)V

    .line 436
    .line 437
    .line 438
    goto :goto_5

    .line 439
    :pswitch_d
    move/from16 v20, v3

    .line 440
    .line 441
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v3

    .line 445
    if-eqz v3, :cond_6

    .line 446
    .line 447
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    invoke-virtual {v7, v13, v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeInt32(II)V

    .line 452
    .line 453
    .line 454
    goto :goto_5

    .line 455
    :pswitch_e
    move/from16 v20, v3

    .line 456
    .line 457
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    if-eqz v3, :cond_6

    .line 462
    .line 463
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 464
    .line 465
    .line 466
    move-result-wide v11

    .line 467
    invoke-virtual {v7, v13, v11, v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64(IJ)V

    .line 468
    .line 469
    .line 470
    goto :goto_5

    .line 471
    :pswitch_f
    move/from16 v20, v3

    .line 472
    .line 473
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    if-eqz v3, :cond_6

    .line 478
    .line 479
    invoke-static {v11, v12, v1}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 480
    .line 481
    .line 482
    move-result-wide v11

    .line 483
    invoke-virtual {v7, v13, v11, v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64(IJ)V

    .line 484
    .line 485
    .line 486
    goto :goto_5

    .line 487
    :pswitch_10
    move/from16 v20, v3

    .line 488
    .line 489
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v3

    .line 493
    if-eqz v3, :cond_6

    .line 494
    .line 495
    sget-object v3, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 496
    .line 497
    invoke-virtual {v3, v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    check-cast v3, Ljava/lang/Float;

    .line 502
    .line 503
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 508
    .line 509
    .line 510
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 511
    .line 512
    .line 513
    move-result v3

    .line 514
    invoke-virtual {v7, v13, v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32(II)V

    .line 515
    .line 516
    .line 517
    goto/16 :goto_5

    .line 518
    .line 519
    :pswitch_11
    move/from16 v20, v3

    .line 520
    .line 521
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v3

    .line 525
    if-eqz v3, :cond_6

    .line 526
    .line 527
    sget-object v3, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 528
    .line 529
    invoke-virtual {v3, v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    check-cast v3, Ljava/lang/Double;

    .line 534
    .line 535
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 536
    .line 537
    .line 538
    move-result-wide v11

    .line 539
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    .line 541
    .line 542
    invoke-static {v11, v12}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 543
    .line 544
    .line 545
    move-result-wide v11

    .line 546
    invoke-virtual {v7, v13, v11, v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64(IJ)V

    .line 547
    .line 548
    .line 549
    goto/16 :goto_5

    .line 550
    .line 551
    :pswitch_12
    move/from16 v20, v3

    .line 552
    .line 553
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    if-nez v3, :cond_7

    .line 558
    .line 559
    goto/16 :goto_5

    .line 560
    .line 561
    :cond_7
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    iget-object v0, v0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchemaLite;

    .line 566
    .line 567
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    invoke-static {v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    const/4 v0, 0x0

    .line 574
    throw v0

    .line 575
    :pswitch_13
    move/from16 v20, v3

    .line 576
    .line 577
    aget v3, v18, v2

    .line 578
    .line 579
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v5

    .line 583
    check-cast v5, Ljava/util/List;

    .line 584
    .line 585
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 586
    .line 587
    .line 588
    move-result-object v8

    .line 589
    sget-object v11, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 590
    .line 591
    if-eqz v5, :cond_6

    .line 592
    .line 593
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 594
    .line 595
    .line 596
    move-result v11

    .line 597
    if-nez v11, :cond_6

    .line 598
    .line 599
    const/4 v11, 0x0

    .line 600
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 601
    .line 602
    .line 603
    move-result v12

    .line 604
    if-ge v11, v12, :cond_6

    .line 605
    .line 606
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v12

    .line 610
    check-cast v12, Lcom/google/protobuf/AbstractMessageLite;

    .line 611
    .line 612
    const/4 v13, 0x3

    .line 613
    invoke-virtual {v7, v3, v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 614
    .line 615
    .line 616
    invoke-interface {v8, v12, v6}, Lcom/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/ManifestSchemaFactory;)V

    .line 617
    .line 618
    .line 619
    const/4 v12, 0x4

    .line 620
    invoke-virtual {v7, v3, v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 621
    .line 622
    .line 623
    add-int/lit8 v11, v11, 0x1

    .line 624
    .line 625
    goto :goto_6

    .line 626
    :pswitch_14
    move/from16 v20, v3

    .line 627
    .line 628
    aget v3, v18, v2

    .line 629
    .line 630
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v5

    .line 634
    check-cast v5, Ljava/util/List;

    .line 635
    .line 636
    move/from16 v8, v16

    .line 637
    .line 638
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 639
    .line 640
    .line 641
    goto/16 :goto_5

    .line 642
    .line 643
    :pswitch_15
    move/from16 v20, v3

    .line 644
    .line 645
    move/from16 v8, v16

    .line 646
    .line 647
    aget v3, v18, v2

    .line 648
    .line 649
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v5

    .line 653
    check-cast v5, Ljava/util/List;

    .line 654
    .line 655
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 656
    .line 657
    .line 658
    goto/16 :goto_5

    .line 659
    .line 660
    :pswitch_16
    move/from16 v20, v3

    .line 661
    .line 662
    move/from16 v8, v16

    .line 663
    .line 664
    aget v3, v18, v2

    .line 665
    .line 666
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v5

    .line 670
    check-cast v5, Ljava/util/List;

    .line 671
    .line 672
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 673
    .line 674
    .line 675
    goto/16 :goto_5

    .line 676
    .line 677
    :pswitch_17
    move/from16 v20, v3

    .line 678
    .line 679
    move/from16 v8, v16

    .line 680
    .line 681
    aget v3, v18, v2

    .line 682
    .line 683
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v5

    .line 687
    check-cast v5, Ljava/util/List;

    .line 688
    .line 689
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 690
    .line 691
    .line 692
    goto/16 :goto_5

    .line 693
    .line 694
    :pswitch_18
    move/from16 v20, v3

    .line 695
    .line 696
    move/from16 v8, v16

    .line 697
    .line 698
    aget v3, v18, v2

    .line 699
    .line 700
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v5

    .line 704
    check-cast v5, Ljava/util/List;

    .line 705
    .line 706
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 707
    .line 708
    .line 709
    goto/16 :goto_5

    .line 710
    .line 711
    :pswitch_19
    move/from16 v20, v3

    .line 712
    .line 713
    move/from16 v8, v16

    .line 714
    .line 715
    aget v3, v18, v2

    .line 716
    .line 717
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v5

    .line 721
    check-cast v5, Ljava/util/List;

    .line 722
    .line 723
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 724
    .line 725
    .line 726
    goto/16 :goto_5

    .line 727
    .line 728
    :pswitch_1a
    move/from16 v20, v3

    .line 729
    .line 730
    move/from16 v8, v16

    .line 731
    .line 732
    aget v3, v18, v2

    .line 733
    .line 734
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object v5

    .line 738
    check-cast v5, Ljava/util/List;

    .line 739
    .line 740
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 741
    .line 742
    .line 743
    goto/16 :goto_5

    .line 744
    .line 745
    :pswitch_1b
    move/from16 v20, v3

    .line 746
    .line 747
    move/from16 v8, v16

    .line 748
    .line 749
    aget v3, v18, v2

    .line 750
    .line 751
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v5

    .line 755
    check-cast v5, Ljava/util/List;

    .line 756
    .line 757
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 758
    .line 759
    .line 760
    goto/16 :goto_5

    .line 761
    .line 762
    :pswitch_1c
    move/from16 v20, v3

    .line 763
    .line 764
    move/from16 v8, v16

    .line 765
    .line 766
    aget v3, v18, v2

    .line 767
    .line 768
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v5

    .line 772
    check-cast v5, Ljava/util/List;

    .line 773
    .line 774
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 775
    .line 776
    .line 777
    goto/16 :goto_5

    .line 778
    .line 779
    :pswitch_1d
    move/from16 v20, v3

    .line 780
    .line 781
    move/from16 v8, v16

    .line 782
    .line 783
    aget v3, v18, v2

    .line 784
    .line 785
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v5

    .line 789
    check-cast v5, Ljava/util/List;

    .line 790
    .line 791
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 792
    .line 793
    .line 794
    goto/16 :goto_5

    .line 795
    .line 796
    :pswitch_1e
    move/from16 v20, v3

    .line 797
    .line 798
    move/from16 v8, v16

    .line 799
    .line 800
    aget v3, v18, v2

    .line 801
    .line 802
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object v5

    .line 806
    check-cast v5, Ljava/util/List;

    .line 807
    .line 808
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 809
    .line 810
    .line 811
    goto/16 :goto_5

    .line 812
    .line 813
    :pswitch_1f
    move/from16 v20, v3

    .line 814
    .line 815
    move/from16 v8, v16

    .line 816
    .line 817
    aget v3, v18, v2

    .line 818
    .line 819
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v5

    .line 823
    check-cast v5, Ljava/util/List;

    .line 824
    .line 825
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 826
    .line 827
    .line 828
    goto/16 :goto_5

    .line 829
    .line 830
    :pswitch_20
    move/from16 v20, v3

    .line 831
    .line 832
    move/from16 v8, v16

    .line 833
    .line 834
    aget v3, v18, v2

    .line 835
    .line 836
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v5

    .line 840
    check-cast v5, Ljava/util/List;

    .line 841
    .line 842
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 843
    .line 844
    .line 845
    goto/16 :goto_5

    .line 846
    .line 847
    :pswitch_21
    move/from16 v20, v3

    .line 848
    .line 849
    move/from16 v8, v16

    .line 850
    .line 851
    aget v3, v18, v2

    .line 852
    .line 853
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    move-result-object v5

    .line 857
    check-cast v5, Ljava/util/List;

    .line 858
    .line 859
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 860
    .line 861
    .line 862
    goto/16 :goto_5

    .line 863
    .line 864
    :pswitch_22
    move/from16 v20, v3

    .line 865
    .line 866
    aget v3, v18, v2

    .line 867
    .line 868
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v5

    .line 872
    check-cast v5, Ljava/util/List;

    .line 873
    .line 874
    const/4 v8, 0x0

    .line 875
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 876
    .line 877
    .line 878
    :goto_7
    move/from16 v3, v20

    .line 879
    .line 880
    goto/16 :goto_12

    .line 881
    .line 882
    :pswitch_23
    move/from16 v20, v3

    .line 883
    .line 884
    const/4 v8, 0x0

    .line 885
    aget v3, v18, v2

    .line 886
    .line 887
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    move-result-object v5

    .line 891
    check-cast v5, Ljava/util/List;

    .line 892
    .line 893
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 894
    .line 895
    .line 896
    goto :goto_7

    .line 897
    :pswitch_24
    move/from16 v20, v3

    .line 898
    .line 899
    const/4 v8, 0x0

    .line 900
    aget v3, v18, v2

    .line 901
    .line 902
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v5

    .line 906
    check-cast v5, Ljava/util/List;

    .line 907
    .line 908
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 909
    .line 910
    .line 911
    goto :goto_7

    .line 912
    :pswitch_25
    move/from16 v20, v3

    .line 913
    .line 914
    const/4 v8, 0x0

    .line 915
    aget v3, v18, v2

    .line 916
    .line 917
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 918
    .line 919
    .line 920
    move-result-object v5

    .line 921
    check-cast v5, Ljava/util/List;

    .line 922
    .line 923
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 924
    .line 925
    .line 926
    goto :goto_7

    .line 927
    :pswitch_26
    move/from16 v20, v3

    .line 928
    .line 929
    const/4 v8, 0x0

    .line 930
    aget v3, v18, v2

    .line 931
    .line 932
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v5

    .line 936
    check-cast v5, Ljava/util/List;

    .line 937
    .line 938
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 939
    .line 940
    .line 941
    goto :goto_7

    .line 942
    :pswitch_27
    move/from16 v20, v3

    .line 943
    .line 944
    const/4 v8, 0x0

    .line 945
    aget v3, v18, v2

    .line 946
    .line 947
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object v5

    .line 951
    check-cast v5, Ljava/util/List;

    .line 952
    .line 953
    invoke-static {v3, v5, v6, v8}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 954
    .line 955
    .line 956
    goto :goto_7

    .line 957
    :pswitch_28
    move/from16 v20, v3

    .line 958
    .line 959
    aget v3, v18, v2

    .line 960
    .line 961
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v5

    .line 965
    check-cast v5, Ljava/util/List;

    .line 966
    .line 967
    sget-object v11, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 968
    .line 969
    if-eqz v5, :cond_6

    .line 970
    .line 971
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 972
    .line 973
    .line 974
    move-result v11

    .line 975
    if-nez v11, :cond_6

    .line 976
    .line 977
    const/4 v11, 0x0

    .line 978
    :goto_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 979
    .line 980
    .line 981
    move-result v12

    .line 982
    if-ge v11, v12, :cond_6

    .line 983
    .line 984
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 985
    .line 986
    .line 987
    move-result-object v12

    .line 988
    check-cast v12, Lcom/google/protobuf/ByteString;

    .line 989
    .line 990
    invoke-virtual {v7, v3, v8}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 991
    .line 992
    .line 993
    invoke-virtual {v12}, Lcom/google/protobuf/ByteString;->size()I

    .line 994
    .line 995
    .line 996
    move-result v13

    .line 997
    invoke-virtual {v7, v13}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v12, v7}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;)V

    .line 1001
    .line 1002
    .line 1003
    add-int/lit8 v11, v11, 0x1

    .line 1004
    .line 1005
    goto :goto_8

    .line 1006
    :pswitch_29
    move/from16 v20, v3

    .line 1007
    .line 1008
    aget v3, v18, v2

    .line 1009
    .line 1010
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v5

    .line 1014
    check-cast v5, Ljava/util/List;

    .line 1015
    .line 1016
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v8

    .line 1020
    sget-object v11, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1021
    .line 1022
    if-eqz v5, :cond_6

    .line 1023
    .line 1024
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 1025
    .line 1026
    .line 1027
    move-result v11

    .line 1028
    if-nez v11, :cond_6

    .line 1029
    .line 1030
    const/4 v11, 0x0

    .line 1031
    :goto_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1032
    .line 1033
    .line 1034
    move-result v12

    .line 1035
    if-ge v11, v12, :cond_6

    .line 1036
    .line 1037
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v12

    .line 1041
    invoke-virtual {v6, v3, v12, v8}, Lcom/google/protobuf/ManifestSchemaFactory;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    .line 1042
    .line 1043
    .line 1044
    add-int/lit8 v11, v11, 0x1

    .line 1045
    .line 1046
    goto :goto_9

    .line 1047
    :pswitch_2a
    move/from16 v20, v3

    .line 1048
    .line 1049
    aget v3, v18, v2

    .line 1050
    .line 1051
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v5

    .line 1055
    check-cast v5, Ljava/util/List;

    .line 1056
    .line 1057
    sget-object v11, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1058
    .line 1059
    if-eqz v5, :cond_9

    .line 1060
    .line 1061
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 1062
    .line 1063
    .line 1064
    move-result v11

    .line 1065
    if-nez v11, :cond_9

    .line 1066
    .line 1067
    const/4 v11, 0x0

    .line 1068
    :goto_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1069
    .line 1070
    .line 1071
    move-result v12

    .line 1072
    if-ge v11, v12, :cond_9

    .line 1073
    .line 1074
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v12

    .line 1078
    check-cast v12, Ljava/lang/String;

    .line 1079
    .line 1080
    invoke-virtual {v7, v3, v8}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1081
    .line 1082
    .line 1083
    iget-object v13, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 1084
    .line 1085
    iget v14, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1086
    .line 1087
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 1088
    .line 1089
    .line 1090
    move-result v16

    .line 1091
    const/16 v19, 0x3

    .line 1092
    .line 1093
    mul-int/lit8 v16, v16, 0x3

    .line 1094
    .line 1095
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 1096
    .line 1097
    .line 1098
    move-result v8

    .line 1099
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 1100
    .line 1101
    .line 1102
    move-result v16

    .line 1103
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 1104
    .line 1105
    .line 1106
    move-result v0

    .line 1107
    if-ne v0, v8, :cond_8

    .line 1108
    .line 1109
    add-int v8, v14, v0

    .line 1110
    .line 1111
    iput v8, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1112
    .line 1113
    move/from16 v16, v0

    .line 1114
    .line 1115
    array-length v0, v13

    .line 1116
    sub-int/2addr v0, v8

    .line 1117
    move/from16 v21, v2

    .line 1118
    .line 1119
    sget-object v2, Lcom/google/protobuf/Utf8;->processor:Landroidx/work/OperationKt;

    .line 1120
    .line 1121
    invoke-virtual {v2, v12, v13, v8, v0}, Landroidx/work/OperationKt;->encodeUtf8(Ljava/lang/String;[BII)I

    .line 1122
    .line 1123
    .line 1124
    move-result v0

    .line 1125
    iput v14, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1126
    .line 1127
    sub-int v2, v0, v14

    .line 1128
    .line 1129
    sub-int v2, v2, v16

    .line 1130
    .line 1131
    invoke-virtual {v7, v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1132
    .line 1133
    .line 1134
    iput v0, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1135
    .line 1136
    goto :goto_b

    .line 1137
    :catch_1
    move-exception v0

    .line 1138
    goto :goto_c

    .line 1139
    :cond_8
    move/from16 v21, v2

    .line 1140
    .line 1141
    invoke-static {v12}, Lcom/google/protobuf/Utf8;->encodedLength(Ljava/lang/String;)I

    .line 1142
    .line 1143
    .line 1144
    move-result v0

    .line 1145
    invoke-virtual {v7, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1146
    .line 1147
    .line 1148
    iget v0, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1149
    .line 1150
    array-length v2, v13

    .line 1151
    sub-int/2addr v2, v0

    .line 1152
    sget-object v8, Lcom/google/protobuf/Utf8;->processor:Landroidx/work/OperationKt;

    .line 1153
    .line 1154
    invoke-virtual {v8, v12, v13, v0, v2}, Landroidx/work/OperationKt;->encodeUtf8(Ljava/lang/String;[BII)I

    .line 1155
    .line 1156
    .line 1157
    move-result v0

    .line 1158
    iput v0, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1159
    .line 1160
    :goto_b
    add-int/lit8 v11, v11, 0x1

    .line 1161
    .line 1162
    const/4 v8, 0x2

    .line 1163
    move-object/from16 v0, p0

    .line 1164
    .line 1165
    move/from16 v2, v21

    .line 1166
    .line 1167
    goto :goto_a

    .line 1168
    :goto_c
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 1169
    .line 1170
    invoke-direct {v1, v15, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1171
    .line 1172
    .line 1173
    throw v1

    .line 1174
    :cond_9
    move/from16 v21, v2

    .line 1175
    .line 1176
    const/4 v8, 0x0

    .line 1177
    move-object/from16 v0, p0

    .line 1178
    .line 1179
    move/from16 v3, v20

    .line 1180
    .line 1181
    :goto_d
    move/from16 v2, v21

    .line 1182
    .line 1183
    goto/16 :goto_12

    .line 1184
    .line 1185
    :pswitch_2b
    move/from16 v21, v2

    .line 1186
    .line 1187
    move/from16 v20, v3

    .line 1188
    .line 1189
    aget v0, v18, v21

    .line 1190
    .line 1191
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v2

    .line 1195
    check-cast v2, Ljava/util/List;

    .line 1196
    .line 1197
    const/4 v5, 0x0

    .line 1198
    invoke-static {v0, v2, v6, v5}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 1199
    .line 1200
    .line 1201
    :goto_e
    move-object/from16 v0, p0

    .line 1202
    .line 1203
    move v8, v5

    .line 1204
    goto :goto_d

    .line 1205
    :pswitch_2c
    move/from16 v21, v2

    .line 1206
    .line 1207
    move/from16 v20, v3

    .line 1208
    .line 1209
    const/4 v5, 0x0

    .line 1210
    aget v0, v18, v21

    .line 1211
    .line 1212
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v2

    .line 1216
    check-cast v2, Ljava/util/List;

    .line 1217
    .line 1218
    invoke-static {v0, v2, v6, v5}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 1219
    .line 1220
    .line 1221
    goto :goto_e

    .line 1222
    :pswitch_2d
    move/from16 v21, v2

    .line 1223
    .line 1224
    move/from16 v20, v3

    .line 1225
    .line 1226
    const/4 v5, 0x0

    .line 1227
    aget v0, v18, v21

    .line 1228
    .line 1229
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v2

    .line 1233
    check-cast v2, Ljava/util/List;

    .line 1234
    .line 1235
    invoke-static {v0, v2, v6, v5}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 1236
    .line 1237
    .line 1238
    goto :goto_e

    .line 1239
    :pswitch_2e
    move/from16 v21, v2

    .line 1240
    .line 1241
    move/from16 v20, v3

    .line 1242
    .line 1243
    const/4 v5, 0x0

    .line 1244
    aget v0, v18, v21

    .line 1245
    .line 1246
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v2

    .line 1250
    check-cast v2, Ljava/util/List;

    .line 1251
    .line 1252
    invoke-static {v0, v2, v6, v5}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 1253
    .line 1254
    .line 1255
    goto :goto_e

    .line 1256
    :pswitch_2f
    move/from16 v21, v2

    .line 1257
    .line 1258
    move/from16 v20, v3

    .line 1259
    .line 1260
    const/4 v5, 0x0

    .line 1261
    aget v0, v18, v21

    .line 1262
    .line 1263
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v2

    .line 1267
    check-cast v2, Ljava/util/List;

    .line 1268
    .line 1269
    invoke-static {v0, v2, v6, v5}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 1270
    .line 1271
    .line 1272
    goto :goto_e

    .line 1273
    :pswitch_30
    move/from16 v21, v2

    .line 1274
    .line 1275
    move/from16 v20, v3

    .line 1276
    .line 1277
    const/4 v5, 0x0

    .line 1278
    aget v0, v18, v21

    .line 1279
    .line 1280
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v2

    .line 1284
    check-cast v2, Ljava/util/List;

    .line 1285
    .line 1286
    invoke-static {v0, v2, v6, v5}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 1287
    .line 1288
    .line 1289
    goto :goto_e

    .line 1290
    :pswitch_31
    move/from16 v21, v2

    .line 1291
    .line 1292
    move/from16 v20, v3

    .line 1293
    .line 1294
    const/4 v5, 0x0

    .line 1295
    aget v0, v18, v21

    .line 1296
    .line 1297
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v2

    .line 1301
    check-cast v2, Ljava/util/List;

    .line 1302
    .line 1303
    invoke-static {v0, v2, v6, v5}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 1304
    .line 1305
    .line 1306
    goto :goto_e

    .line 1307
    :pswitch_32
    move/from16 v21, v2

    .line 1308
    .line 1309
    move/from16 v20, v3

    .line 1310
    .line 1311
    const/4 v5, 0x0

    .line 1312
    aget v0, v18, v21

    .line 1313
    .line 1314
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v2

    .line 1318
    check-cast v2, Ljava/util/List;

    .line 1319
    .line 1320
    invoke-static {v0, v2, v6, v5}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/ManifestSchemaFactory;Z)V

    .line 1321
    .line 1322
    .line 1323
    goto :goto_e

    .line 1324
    :pswitch_33
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1325
    .line 1326
    .line 1327
    move-result v5

    .line 1328
    if-eqz v5, :cond_3

    .line 1329
    .line 1330
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v5

    .line 1334
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v8

    .line 1338
    check-cast v5, Lcom/google/protobuf/AbstractMessageLite;

    .line 1339
    .line 1340
    const/4 v11, 0x3

    .line 1341
    invoke-virtual {v7, v13, v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1342
    .line 1343
    .line 1344
    invoke-interface {v8, v5, v6}, Lcom/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/ManifestSchemaFactory;)V

    .line 1345
    .line 1346
    .line 1347
    const/4 v5, 0x4

    .line 1348
    invoke-virtual {v7, v13, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1349
    .line 1350
    .line 1351
    goto/16 :goto_3

    .line 1352
    .line 1353
    :pswitch_34
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1354
    .line 1355
    .line 1356
    move-result v5

    .line 1357
    if-eqz v5, :cond_a

    .line 1358
    .line 1359
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1360
    .line 1361
    .line 1362
    move-result-wide v11

    .line 1363
    const/16 v16, 0x1

    .line 1364
    .line 1365
    shl-long v14, v11, v16

    .line 1366
    .line 1367
    shr-long v11, v11, v17

    .line 1368
    .line 1369
    xor-long/2addr v11, v14

    .line 1370
    invoke-virtual {v7, v13, v11, v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64(IJ)V

    .line 1371
    .line 1372
    .line 1373
    :cond_a
    :goto_f
    const/4 v8, 0x0

    .line 1374
    :cond_b
    :goto_10
    move-object/from16 v0, p0

    .line 1375
    .line 1376
    goto/16 :goto_12

    .line 1377
    .line 1378
    :pswitch_35
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1379
    .line 1380
    .line 1381
    move-result v5

    .line 1382
    if-eqz v5, :cond_a

    .line 1383
    .line 1384
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1385
    .line 1386
    .line 1387
    move-result v0

    .line 1388
    shl-int/lit8 v5, v0, 0x1

    .line 1389
    .line 1390
    shr-int/lit8 v0, v0, 0x1f

    .line 1391
    .line 1392
    xor-int/2addr v0, v5

    .line 1393
    invoke-virtual {v7, v13, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32(II)V

    .line 1394
    .line 1395
    .line 1396
    goto :goto_f

    .line 1397
    :pswitch_36
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1398
    .line 1399
    .line 1400
    move-result v5

    .line 1401
    if-eqz v5, :cond_a

    .line 1402
    .line 1403
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1404
    .line 1405
    .line 1406
    move-result-wide v11

    .line 1407
    invoke-virtual {v7, v13, v11, v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64(IJ)V

    .line 1408
    .line 1409
    .line 1410
    goto :goto_f

    .line 1411
    :pswitch_37
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1412
    .line 1413
    .line 1414
    move-result v5

    .line 1415
    if-eqz v5, :cond_a

    .line 1416
    .line 1417
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1418
    .line 1419
    .line 1420
    move-result v0

    .line 1421
    invoke-virtual {v7, v13, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32(II)V

    .line 1422
    .line 1423
    .line 1424
    goto :goto_f

    .line 1425
    :pswitch_38
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1426
    .line 1427
    .line 1428
    move-result v5

    .line 1429
    if-eqz v5, :cond_a

    .line 1430
    .line 1431
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1432
    .line 1433
    .line 1434
    move-result v0

    .line 1435
    invoke-virtual {v7, v13, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeInt32(II)V

    .line 1436
    .line 1437
    .line 1438
    goto :goto_f

    .line 1439
    :pswitch_39
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1440
    .line 1441
    .line 1442
    move-result v5

    .line 1443
    if-eqz v5, :cond_a

    .line 1444
    .line 1445
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1446
    .line 1447
    .line 1448
    move-result v0

    .line 1449
    invoke-virtual {v7, v13, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32(II)V

    .line 1450
    .line 1451
    .line 1452
    goto :goto_f

    .line 1453
    :pswitch_3a
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1454
    .line 1455
    .line 1456
    move-result v5

    .line 1457
    if-eqz v5, :cond_a

    .line 1458
    .line 1459
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v0

    .line 1463
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1464
    .line 1465
    const/4 v5, 0x2

    .line 1466
    invoke-virtual {v7, v13, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1467
    .line 1468
    .line 1469
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    .line 1470
    .line 1471
    .line 1472
    move-result v5

    .line 1473
    invoke-virtual {v7, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1474
    .line 1475
    .line 1476
    invoke-virtual {v0, v7}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;)V

    .line 1477
    .line 1478
    .line 1479
    goto :goto_f

    .line 1480
    :pswitch_3b
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1481
    .line 1482
    .line 1483
    move-result v5

    .line 1484
    if-eqz v5, :cond_3

    .line 1485
    .line 1486
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v5

    .line 1490
    invoke-virtual {v0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v8

    .line 1494
    invoke-virtual {v6, v13, v5, v8}, Lcom/google/protobuf/ManifestSchemaFactory;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    .line 1495
    .line 1496
    .line 1497
    goto/16 :goto_3

    .line 1498
    .line 1499
    :pswitch_3c
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1500
    .line 1501
    .line 1502
    move-result v5

    .line 1503
    if-eqz v5, :cond_a

    .line 1504
    .line 1505
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v0

    .line 1509
    instance-of v5, v0, Ljava/lang/String;

    .line 1510
    .line 1511
    if-eqz v5, :cond_d

    .line 1512
    .line 1513
    check-cast v0, Ljava/lang/String;

    .line 1514
    .line 1515
    const/4 v5, 0x2

    .line 1516
    invoke-virtual {v7, v13, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1517
    .line 1518
    .line 1519
    iget-object v5, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 1520
    .line 1521
    iget v8, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1522
    .line 1523
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1524
    .line 1525
    .line 1526
    move-result v11

    .line 1527
    const/16 v19, 0x3

    .line 1528
    .line 1529
    mul-int/lit8 v11, v11, 0x3

    .line 1530
    .line 1531
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 1532
    .line 1533
    .line 1534
    move-result v11

    .line 1535
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1536
    .line 1537
    .line 1538
    move-result v12

    .line 1539
    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 1540
    .line 1541
    .line 1542
    move-result v12

    .line 1543
    if-ne v12, v11, :cond_c

    .line 1544
    .line 1545
    add-int v11, v8, v12

    .line 1546
    .line 1547
    iput v11, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1548
    .line 1549
    array-length v13, v5

    .line 1550
    sub-int/2addr v13, v11

    .line 1551
    sget-object v14, Lcom/google/protobuf/Utf8;->processor:Landroidx/work/OperationKt;

    .line 1552
    .line 1553
    invoke-virtual {v14, v0, v5, v11, v13}, Landroidx/work/OperationKt;->encodeUtf8(Ljava/lang/String;[BII)I

    .line 1554
    .line 1555
    .line 1556
    move-result v0

    .line 1557
    iput v8, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1558
    .line 1559
    sub-int v5, v0, v8

    .line 1560
    .line 1561
    sub-int/2addr v5, v12

    .line 1562
    invoke-virtual {v7, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1563
    .line 1564
    .line 1565
    iput v0, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1566
    .line 1567
    goto/16 :goto_f

    .line 1568
    .line 1569
    :catch_2
    move-exception v0

    .line 1570
    goto :goto_11

    .line 1571
    :cond_c
    invoke-static {v0}, Lcom/google/protobuf/Utf8;->encodedLength(Ljava/lang/String;)I

    .line 1572
    .line 1573
    .line 1574
    move-result v8

    .line 1575
    invoke-virtual {v7, v8}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1576
    .line 1577
    .line 1578
    iget v8, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1579
    .line 1580
    array-length v11, v5

    .line 1581
    sub-int/2addr v11, v8

    .line 1582
    sget-object v12, Lcom/google/protobuf/Utf8;->processor:Landroidx/work/OperationKt;

    .line 1583
    .line 1584
    invoke-virtual {v12, v0, v5, v8, v11}, Landroidx/work/OperationKt;->encodeUtf8(Ljava/lang/String;[BII)I

    .line 1585
    .line 1586
    .line 1587
    move-result v0

    .line 1588
    iput v0, v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1589
    .line 1590
    goto/16 :goto_f

    .line 1591
    .line 1592
    :goto_11
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 1593
    .line 1594
    invoke-direct {v1, v15, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1595
    .line 1596
    .line 1597
    throw v1

    .line 1598
    :cond_d
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1599
    .line 1600
    const/4 v5, 0x2

    .line 1601
    invoke-virtual {v7, v13, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1602
    .line 1603
    .line 1604
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    .line 1605
    .line 1606
    .line 1607
    move-result v5

    .line 1608
    invoke-virtual {v7, v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual {v0, v7}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;)V

    .line 1612
    .line 1613
    .line 1614
    goto/16 :goto_f

    .line 1615
    .line 1616
    :pswitch_3d
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1617
    .line 1618
    .line 1619
    move-result v5

    .line 1620
    if-eqz v5, :cond_a

    .line 1621
    .line 1622
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1623
    .line 1624
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 1625
    .line 1626
    .line 1627
    move-result v0

    .line 1628
    const/4 v8, 0x0

    .line 1629
    invoke-virtual {v7, v13, v8}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1630
    .line 1631
    .line 1632
    int-to-byte v0, v0

    .line 1633
    invoke-virtual {v7, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->write(B)V

    .line 1634
    .line 1635
    .line 1636
    goto/16 :goto_10

    .line 1637
    .line 1638
    :pswitch_3e
    const/4 v8, 0x0

    .line 1639
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1640
    .line 1641
    .line 1642
    move-result v5

    .line 1643
    if-eqz v5, :cond_b

    .line 1644
    .line 1645
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1646
    .line 1647
    .line 1648
    move-result v0

    .line 1649
    invoke-virtual {v7, v13, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32(II)V

    .line 1650
    .line 1651
    .line 1652
    goto/16 :goto_10

    .line 1653
    .line 1654
    :pswitch_3f
    const/4 v8, 0x0

    .line 1655
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1656
    .line 1657
    .line 1658
    move-result v5

    .line 1659
    if-eqz v5, :cond_b

    .line 1660
    .line 1661
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1662
    .line 1663
    .line 1664
    move-result-wide v11

    .line 1665
    invoke-virtual {v7, v13, v11, v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64(IJ)V

    .line 1666
    .line 1667
    .line 1668
    goto/16 :goto_10

    .line 1669
    .line 1670
    :pswitch_40
    const/4 v8, 0x0

    .line 1671
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1672
    .line 1673
    .line 1674
    move-result v5

    .line 1675
    if-eqz v5, :cond_b

    .line 1676
    .line 1677
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1678
    .line 1679
    .line 1680
    move-result v0

    .line 1681
    invoke-virtual {v7, v13, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeInt32(II)V

    .line 1682
    .line 1683
    .line 1684
    goto/16 :goto_10

    .line 1685
    .line 1686
    :pswitch_41
    const/4 v8, 0x0

    .line 1687
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1688
    .line 1689
    .line 1690
    move-result v5

    .line 1691
    if-eqz v5, :cond_b

    .line 1692
    .line 1693
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1694
    .line 1695
    .line 1696
    move-result-wide v11

    .line 1697
    invoke-virtual {v7, v13, v11, v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64(IJ)V

    .line 1698
    .line 1699
    .line 1700
    goto/16 :goto_10

    .line 1701
    .line 1702
    :pswitch_42
    const/4 v8, 0x0

    .line 1703
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1704
    .line 1705
    .line 1706
    move-result v5

    .line 1707
    if-eqz v5, :cond_b

    .line 1708
    .line 1709
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1710
    .line 1711
    .line 1712
    move-result-wide v11

    .line 1713
    invoke-virtual {v7, v13, v11, v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64(IJ)V

    .line 1714
    .line 1715
    .line 1716
    goto/16 :goto_10

    .line 1717
    .line 1718
    :pswitch_43
    const/4 v8, 0x0

    .line 1719
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1720
    .line 1721
    .line 1722
    move-result v5

    .line 1723
    if-eqz v5, :cond_b

    .line 1724
    .line 1725
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1726
    .line 1727
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 1728
    .line 1729
    .line 1730
    move-result v0

    .line 1731
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1732
    .line 1733
    .line 1734
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1735
    .line 1736
    .line 1737
    move-result v0

    .line 1738
    invoke-virtual {v7, v13, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32(II)V

    .line 1739
    .line 1740
    .line 1741
    goto/16 :goto_10

    .line 1742
    .line 1743
    :pswitch_44
    const/4 v8, 0x0

    .line 1744
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1745
    .line 1746
    .line 1747
    move-result v5

    .line 1748
    if-eqz v5, :cond_e

    .line 1749
    .line 1750
    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1751
    .line 1752
    invoke-virtual {v5, v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 1753
    .line 1754
    .line 1755
    move-result-wide v11

    .line 1756
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1757
    .line 1758
    .line 1759
    invoke-static {v11, v12}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 1760
    .line 1761
    .line 1762
    move-result-wide v11

    .line 1763
    invoke-virtual {v7, v13, v11, v12}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64(IJ)V

    .line 1764
    .line 1765
    .line 1766
    :cond_e
    :goto_12
    add-int/lit8 v2, v2, 0x3

    .line 1767
    .line 1768
    move-object/from16 v8, v18

    .line 1769
    .line 1770
    const v11, 0xfffff

    .line 1771
    .line 1772
    .line 1773
    goto/16 :goto_0

    .line 1774
    .line 1775
    :cond_f
    iget-object v0, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    .line 1776
    .line 1777
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1778
    .line 1779
    .line 1780
    move-object v0, v1

    .line 1781
    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 1782
    .line 1783
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 1784
    .line 1785
    invoke-virtual {v0, v6}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/ManifestSchemaFactory;)V

    .line 1786
    .line 1787
    .line 1788
    return-void

    .line 1789
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Ljava/lang/Object;Lcom/google/protobuf/ManifestSchemaFactory;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->writeFieldsInAscendingOrder(Ljava/lang/Object;Lcom/google/protobuf/ManifestSchemaFactory;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
