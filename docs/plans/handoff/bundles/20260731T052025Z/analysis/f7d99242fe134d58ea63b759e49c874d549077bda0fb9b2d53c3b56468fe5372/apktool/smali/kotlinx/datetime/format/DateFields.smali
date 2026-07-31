.class public abstract Lkotlinx/datetime/format/DateFields;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final day:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;


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
    sget-object v2, Lkotlinx/datetime/format/DateFields$day$1;->INSTANCE:Lkotlinx/datetime/format/DateFields$day$1;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/16 v3, 0x38

    .line 12
    .line 13
    const/16 v4, 0x1f

    .line 14
    .line 15
    invoke-direct {v0, v1, v4, v2, v3}, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;-><init>(Lkotlinx/datetime/internal/format/PropertyAccessor;ILkotlinx/datetime/format/OffsetFields$sign$1;I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lkotlinx/datetime/format/DateFields;->day:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    .line 19
    .line 20
    sget-object v0, Lkotlinx/datetime/format/DateFields$isoDayOfWeek$1;->INSTANCE:Lkotlinx/datetime/format/DateFields$isoDayOfWeek$1;

    .line 21
    .line 22
    invoke-virtual {v0}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget-object v0, Lkotlinx/datetime/format/DateFields$dayOfYear$1;->INSTANCE:Lkotlinx/datetime/format/DateFields$dayOfYear$1;

    .line 30
    .line 31
    invoke-virtual {v0}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    return-void
.end method
