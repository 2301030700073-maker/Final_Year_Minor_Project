.class public abstract Lkotlinx/datetime/format/OffsetFields;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final minutesOfHour:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

.field public static final secondsOfMinute:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

.field public static final totalHoursAbs:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlinx/datetime/format/OffsetFields$sign$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlinx/datetime/format/OffsetFields$sign$1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 7
    .line 8
    sget-object v2, Lkotlinx/datetime/format/OffsetFields$totalHoursAbs$1;->INSTANCE:Lkotlinx/datetime/format/OffsetFields$totalHoursAbs$1;

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    .line 14
    .line 15
    const/16 v3, 0x12

    .line 16
    .line 17
    const/16 v4, 0x8

    .line 18
    .line 19
    invoke-direct {v2, v1, v3, v0, v4}, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;-><init>(Lkotlinx/datetime/internal/format/PropertyAccessor;ILkotlinx/datetime/format/OffsetFields$sign$1;I)V

    .line 20
    .line 21
    .line 22
    sput-object v2, Lkotlinx/datetime/format/OffsetFields;->totalHoursAbs:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    .line 23
    .line 24
    new-instance v1, Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 25
    .line 26
    sget-object v2, Lkotlinx/datetime/format/OffsetFields$minutesOfHour$1;->INSTANCE:Lkotlinx/datetime/format/OffsetFields$minutesOfHour$1;

    .line 27
    .line 28
    invoke-direct {v1, v2}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    .line 32
    .line 33
    const/16 v3, 0x3b

    .line 34
    .line 35
    invoke-direct {v2, v1, v3, v0, v4}, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;-><init>(Lkotlinx/datetime/internal/format/PropertyAccessor;ILkotlinx/datetime/format/OffsetFields$sign$1;I)V

    .line 36
    .line 37
    .line 38
    sput-object v2, Lkotlinx/datetime/format/OffsetFields;->minutesOfHour:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    .line 39
    .line 40
    new-instance v1, Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 41
    .line 42
    sget-object v2, Lkotlinx/datetime/format/OffsetFields$secondsOfMinute$1;->INSTANCE:Lkotlinx/datetime/format/OffsetFields$secondsOfMinute$1;

    .line 43
    .line 44
    invoke-direct {v1, v2}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    .line 48
    .line 49
    invoke-direct {v2, v1, v3, v0, v4}, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;-><init>(Lkotlinx/datetime/internal/format/PropertyAccessor;ILkotlinx/datetime/format/OffsetFields$sign$1;I)V

    .line 50
    .line 51
    .line 52
    sput-object v2, Lkotlinx/datetime/format/OffsetFields;->secondsOfMinute:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    .line 53
    .line 54
    return-void
.end method
