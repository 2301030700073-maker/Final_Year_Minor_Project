.class public final Lkotlinx/serialization/internal/UShortArraySerializer;
.super Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/UShortArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/serialization/internal/UShortArraySerializer;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/serialization/internal/UShortSerializer;->INSTANCE:Lkotlinx/serialization/internal/UShortSerializer;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lkotlinx/serialization/internal/UShortArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/UShortArraySerializer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final collectionSize(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lkotlin/UShortArray;

    .line 2
    .line 3
    iget-object p0, p1, Lkotlin/UShortArray;->storage:[S

    .line 4
    .line 5
    array-length p0, p0

    .line 6
    return p0
.end method

.method public final empty()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [S

    .line 3
    .line 4
    new-instance v0, Lkotlin/UShortArray;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lkotlin/UShortArray;-><init>([S)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p3, Lkotlinx/serialization/internal/UShortArrayBuilder;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 7
    .line 8
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeInlineElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)Lkotlinx/serialization/encoding/Decoder;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Lkotlinx/serialization/encoding/Decoder;->decodeShort()S

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-static {p3}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->ensureCapacity$kotlinx_serialization_core$default(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p3, Lkotlinx/serialization/internal/UShortArrayBuilder;->buffer:[S

    .line 20
    .line 21
    iget p2, p3, Lkotlinx/serialization/internal/UShortArrayBuilder;->position:I

    .line 22
    .line 23
    add-int/lit8 v0, p2, 0x1

    .line 24
    .line 25
    iput v0, p3, Lkotlinx/serialization/internal/UShortArrayBuilder;->position:I

    .line 26
    .line 27
    aput-short p0, p1, p2

    .line 28
    .line 29
    return-void
.end method

.method public final toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/UShortArray;

    .line 2
    .line 3
    iget-object p0, p1, Lkotlin/UShortArray;->storage:[S

    .line 4
    .line 5
    new-instance p1, Lkotlinx/serialization/internal/UShortArrayBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p0, p1, Lkotlinx/serialization/internal/UShortArrayBuilder;->buffer:[S

    .line 11
    .line 12
    array-length p0, p0

    .line 13
    iput p0, p1, Lkotlinx/serialization/internal/UShortArrayBuilder;->position:I

    .line 14
    .line 15
    const/16 p0, 0xa

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lkotlinx/serialization/internal/UShortArrayBuilder;->ensureCapacity$kotlinx_serialization_core(I)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public final writeContent(Landroidx/sqlite/SQLite;Ljava/lang/Object;I)V
    .locals 3

    .line 1
    check-cast p2, Lkotlin/UShortArray;

    .line 2
    .line 3
    iget-object p2, p2, Lkotlin/UShortArray;->storage:[S

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-ge v0, p3, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 12
    .line 13
    invoke-virtual {p1, v1, v0}, Landroidx/sqlite/SQLite;->encodeInlineElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)Lkotlinx/serialization/encoding/Encoder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    aget-short v2, p2, v0

    .line 18
    .line 19
    invoke-interface {v1, v2}, Lkotlinx/serialization/encoding/Encoder;->encodeShort(S)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
