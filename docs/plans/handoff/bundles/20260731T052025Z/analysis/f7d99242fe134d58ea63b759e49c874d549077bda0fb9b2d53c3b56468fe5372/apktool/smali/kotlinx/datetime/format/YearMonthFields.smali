.class public abstract Lkotlinx/datetime/format/YearMonthFields;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final month:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

.field public static final year:Lkotlinx/datetime/internal/format/GenericFieldSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlinx/datetime/internal/format/GenericFieldSpec;

    .line 2
    .line 3
    new-instance v1, Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 4
    .line 5
    sget-object v2, Lkotlinx/datetime/format/YearMonthFields$year$1;->INSTANCE:Lkotlinx/datetime/format/YearMonthFields$year$1;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0xe

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v0, v1, v3, v2}, Lkotlinx/datetime/internal/format/GenericFieldSpec;-><init>(Lkotlinx/datetime/internal/format/PropertyAccessor;Lkotlinx/datetime/internal/DecimalFraction;I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lkotlinx/datetime/format/YearMonthFields;->year:Lkotlinx/datetime/internal/format/GenericFieldSpec;

    .line 17
    .line 18
    new-instance v0, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    .line 19
    .line 20
    new-instance v1, Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 21
    .line 22
    sget-object v2, Lkotlinx/datetime/format/YearMonthFields$month$1;->INSTANCE:Lkotlinx/datetime/format/YearMonthFields$month$1;

    .line 23
    .line 24
    invoke-direct {v1, v2}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)V

    .line 25
    .line 26
    .line 27
    const/16 v2, 0xc

    .line 28
    .line 29
    const/16 v4, 0x38

    .line 30
    .line 31
    invoke-direct {v0, v1, v2, v3, v4}, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;-><init>(Lkotlinx/datetime/internal/format/PropertyAccessor;ILkotlinx/datetime/format/OffsetFields$sign$1;I)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lkotlinx/datetime/format/YearMonthFields;->month:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    .line 35
    .line 36
    return-void
.end method
