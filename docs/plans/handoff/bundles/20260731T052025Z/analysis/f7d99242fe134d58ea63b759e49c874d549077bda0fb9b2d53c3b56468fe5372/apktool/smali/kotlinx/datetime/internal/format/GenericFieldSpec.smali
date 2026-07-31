.class public final Lkotlinx/datetime/internal/format/GenericFieldSpec;
.super Lkotlinx/datetime/internal/format/AbstractFieldSpec;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accessor:Lkotlinx/datetime/internal/format/PropertyAccessor;

.field public final defaultValue:Ljava/lang/Object;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/datetime/internal/format/PropertyAccessor;Lkotlinx/datetime/internal/DecimalFraction;I)V
    .locals 1

    .line 1
    iget-object v0, p1, Lkotlinx/datetime/internal/format/PropertyAccessor;->name:Ljava/lang/String;

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x4

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lkotlinx/datetime/internal/format/GenericFieldSpec;->accessor:Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 15
    .line 16
    iput-object v0, p0, Lkotlinx/datetime/internal/format/GenericFieldSpec;->name:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p2, p0, Lkotlinx/datetime/internal/format/GenericFieldSpec;->defaultValue:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getAccessor()Lkotlinx/datetime/internal/format/PropertyAccessor;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/datetime/internal/format/GenericFieldSpec;->accessor:Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDefaultValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/datetime/internal/format/GenericFieldSpec;->defaultValue:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/datetime/internal/format/GenericFieldSpec;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSign()Lkotlinx/datetime/format/OffsetFields$sign$1;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
