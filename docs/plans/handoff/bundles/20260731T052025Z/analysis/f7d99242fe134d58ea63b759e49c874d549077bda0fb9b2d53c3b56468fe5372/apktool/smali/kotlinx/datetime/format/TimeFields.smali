.class public abstract Lkotlinx/datetime/format/TimeFields;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final fractionOfSecond:Lkotlinx/datetime/internal/format/GenericFieldSpec;

.field public static final hour:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

.field public static final minute:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

.field public static final second:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    .line 2
    .line 3
    new-instance v1, Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 4
    .line 5
    sget-object v2, Lkotlinx/datetime/format/TimeFields$hour$1;->INSTANCE:Lkotlinx/datetime/format/TimeFields$hour$1;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x17

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/16 v4, 0x38

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3, v4}, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;-><init>(Lkotlinx/datetime/internal/format/PropertyAccessor;ILkotlinx/datetime/format/OffsetFields$sign$1;I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lkotlinx/datetime/format/TimeFields;->hour:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    .line 19
    .line 20
    new-instance v0, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    .line 21
    .line 22
    new-instance v1, Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 23
    .line 24
    sget-object v2, Lkotlinx/datetime/format/TimeFields$minute$1;->INSTANCE:Lkotlinx/datetime/format/TimeFields$minute$1;

    .line 25
    .line 26
    invoke-direct {v1, v2}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)V

    .line 27
    .line 28
    .line 29
    const/16 v2, 0x3b

    .line 30
    .line 31
    invoke-direct {v0, v1, v2, v3, v4}, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;-><init>(Lkotlinx/datetime/internal/format/PropertyAccessor;ILkotlinx/datetime/format/OffsetFields$sign$1;I)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lkotlinx/datetime/format/TimeFields;->minute:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    .line 35
    .line 36
    new-instance v0, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    .line 37
    .line 38
    new-instance v1, Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 39
    .line 40
    sget-object v4, Lkotlinx/datetime/format/TimeFields$second$1;->INSTANCE:Lkotlinx/datetime/format/TimeFields$second$1;

    .line 41
    .line 42
    invoke-direct {v1, v4}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)V

    .line 43
    .line 44
    .line 45
    const/16 v4, 0x28

    .line 46
    .line 47
    invoke-direct {v0, v1, v2, v3, v4}, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;-><init>(Lkotlinx/datetime/internal/format/PropertyAccessor;ILkotlinx/datetime/format/OffsetFields$sign$1;I)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lkotlinx/datetime/format/TimeFields;->second:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    .line 51
    .line 52
    new-instance v0, Lkotlinx/datetime/internal/format/GenericFieldSpec;

    .line 53
    .line 54
    new-instance v1, Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 55
    .line 56
    sget-object v2, Lkotlinx/datetime/format/TimeFields$fractionOfSecond$1;->INSTANCE:Lkotlinx/datetime/format/TimeFields$fractionOfSecond$1;

    .line 57
    .line 58
    const-string v3, "nanosecond"

    .line 59
    .line 60
    invoke-direct {v1, v2, v3}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/jvm/internal/MutablePropertyReference1Impl;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Lkotlinx/datetime/internal/DecimalFraction;

    .line 64
    .line 65
    const/16 v3, 0x9

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-direct {v2, v4, v3}, Lkotlinx/datetime/internal/DecimalFraction;-><init>(II)V

    .line 69
    .line 70
    .line 71
    const/16 v3, 0xa

    .line 72
    .line 73
    invoke-direct {v0, v1, v2, v3}, Lkotlinx/datetime/internal/format/GenericFieldSpec;-><init>(Lkotlinx/datetime/internal/format/PropertyAccessor;Lkotlinx/datetime/internal/DecimalFraction;I)V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lkotlinx/datetime/format/TimeFields;->fractionOfSecond:Lkotlinx/datetime/internal/format/GenericFieldSpec;

    .line 77
    .line 78
    sget-object v0, Lkotlinx/datetime/format/TimeFields$amPm$1;->INSTANCE:Lkotlinx/datetime/format/TimeFields$amPm$1;

    .line 79
    .line 80
    invoke-virtual {v0}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    sget-object v0, Lkotlinx/datetime/format/TimeFields$hourOfAmPm$1;->INSTANCE:Lkotlinx/datetime/format/TimeFields$hourOfAmPm$1;

    .line 88
    .line 89
    invoke-virtual {v0}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    return-void
.end method
