.class public abstract Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final booleanArrayDescriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

.field public static final charArrayDescriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

.field public static final doubleArrayDescriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

.field public static final floatArrayDescriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

.field public static final intArrayDescriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

.field public static final intListDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

.field public static final longArrayDescriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

.field public static final stringArrayDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

.field public static final stringListDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 2
    .line 3
    new-instance v0, Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 4
    .line 5
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/ArrayClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->intListDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 15
    .line 16
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 17
    .line 18
    new-instance v1, Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 19
    .line 20
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v3, v2}, Lkotlinx/serialization/internal/ArrayClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->stringListDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 29
    .line 30
    sget-object v1, Lkotlinx/serialization/internal/BooleanArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanArraySerializer;

    .line 31
    .line 32
    iget-object v1, v1, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 33
    .line 34
    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->booleanArrayDescriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 35
    .line 36
    sget-object v1, Lkotlinx/serialization/internal/CharArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/CharArraySerializer;

    .line 37
    .line 38
    iget-object v1, v1, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 39
    .line 40
    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->charArrayDescriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 41
    .line 42
    sget-object v1, Lkotlinx/serialization/internal/DoubleArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleArraySerializer;

    .line 43
    .line 44
    iget-object v1, v1, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 45
    .line 46
    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->doubleArrayDescriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 47
    .line 48
    sget-object v1, Lkotlinx/serialization/internal/FloatArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatArraySerializer;

    .line 49
    .line 50
    iget-object v1, v1, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 51
    .line 52
    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->floatArrayDescriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 53
    .line 54
    sget-object v1, Lkotlinx/serialization/internal/IntArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/IntArraySerializer;

    .line 55
    .line 56
    iget-object v1, v1, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 57
    .line 58
    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->intArrayDescriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 59
    .line 60
    sget-object v1, Lkotlinx/serialization/internal/LongArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/LongArraySerializer;

    .line 61
    .line 62
    iget-object v1, v1, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 63
    .line 64
    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->longArrayDescriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 65
    .line 66
    const-class v1, Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 69
    .line 70
    .line 71
    new-instance v1, Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 72
    .line 73
    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-direct {v1, v0, v2}, Lkotlinx/serialization/internal/ArrayClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    .line 82
    .line 83
    .line 84
    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->stringArrayDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 85
    .line 86
    return-void
.end method
