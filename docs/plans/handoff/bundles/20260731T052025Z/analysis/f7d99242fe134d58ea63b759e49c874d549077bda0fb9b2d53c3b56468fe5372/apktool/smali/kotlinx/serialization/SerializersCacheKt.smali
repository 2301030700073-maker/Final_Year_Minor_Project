.class public abstract Lkotlinx/serialization/SerializersCacheKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final PARAMETRIZED_SERIALIZERS_CACHE:Lkotlinx/serialization/internal/ParametrizedSerializerCache;

.field public static final PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/ParametrizedSerializerCache;

.field public static final SERIALIZERS_CACHE:Lkotlinx/serialization/internal/SerializerCache;

.field public static final SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/SerializerCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sget-boolean v1, Lkotlinx/serialization/internal/CachingKt;->useClassValue:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v2, Lkotlinx/serialization/internal/ClassValueCache;

    .line 13
    .line 14
    invoke-direct {v2, v0}, Lkotlinx/serialization/internal/ClassValueCache;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    sput-object v2, Lkotlinx/serialization/SerializersCacheKt;->SERIALIZERS_CACHE:Lkotlinx/serialization/internal/SerializerCache;

    .line 24
    .line 25
    new-instance v0, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/16 v2, 0xa

    .line 28
    .line 29
    invoke-direct {v0, v2}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 30
    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    new-instance v2, Lkotlinx/serialization/internal/ClassValueCache;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Lkotlinx/serialization/internal/ClassValueCache;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    :goto_1
    sput-object v2, Lkotlinx/serialization/SerializersCacheKt;->SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/SerializerCache;

    .line 46
    .line 47
    new-instance v0, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-direct {v0, v2}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 51
    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    new-instance v2, Lkotlinx/serialization/internal/ClassValueCache;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Lkotlinx/serialization/internal/ClassValueCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 62
    .line 63
    invoke-direct {v2, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 64
    .line 65
    .line 66
    :goto_2
    sput-object v2, Lkotlinx/serialization/SerializersCacheKt;->PARAMETRIZED_SERIALIZERS_CACHE:Lkotlinx/serialization/internal/ParametrizedSerializerCache;

    .line 67
    .line 68
    new-instance v0, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;

    .line 69
    .line 70
    const/4 v2, 0x4

    .line 71
    invoke-direct {v0, v2}, Lkotlinx/serialization/SerializersCacheKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 72
    .line 73
    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    new-instance v1, Lkotlinx/serialization/internal/ClassValueCache;

    .line 77
    .line 78
    invoke-direct {v1, v0}, Lkotlinx/serialization/internal/ClassValueCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 83
    .line 84
    invoke-direct {v1, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 85
    .line 86
    .line 87
    :goto_3
    sput-object v1, Lkotlinx/serialization/SerializersCacheKt;->PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/ParametrizedSerializerCache;

    .line 88
    .line 89
    return-void
.end method
