.class public final Landroidx/savedstate/serialization/EmptyArrayDecoder;
.super Lkotlin/ranges/RangesKt;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final INSTANCE:Landroidx/savedstate/serialization/EmptyArrayDecoder;

.field public static final serializersModule:Lcoil3/ComponentRegistry$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/savedstate/serialization/EmptyArrayDecoder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/savedstate/serialization/EmptyArrayDecoder;->INSTANCE:Landroidx/savedstate/serialization/EmptyArrayDecoder;

    .line 7
    .line 8
    sget-object v0, Lkotlinx/serialization/modules/SerializersModuleKt;->EmptySerializersModule:Lcoil3/ComponentRegistry$Builder;

    .line 9
    .line 10
    sput-object v0, Landroidx/savedstate/serialization/EmptyArrayDecoder;->serializersModule:Lcoil3/ComponentRegistry$Builder;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, -0x1

    .line 5
    return p0
.end method

.method public final getSerializersModule()Lcoil3/ComponentRegistry$Builder;
    .locals 0

    .line 1
    sget-object p0, Landroidx/savedstate/serialization/EmptyArrayDecoder;->serializersModule:Lcoil3/ComponentRegistry$Builder;

    .line 2
    .line 3
    return-object p0
.end method
