.class public final Lkotlinx/datetime/format/MinuteDirective;
.super Lkotlinx/datetime/internal/format/UnsignedIntFieldFormatDirective;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final padding:Lkotlinx/datetime/format/Padding;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/datetime/format/TimeFields;->minute:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v0, v1, v2}, Lkotlinx/datetime/internal/format/UnsignedIntFieldFormatDirective;-><init>(Lkotlinx/datetime/internal/format/UnsignedFieldSpec;ILjava/lang/Integer;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lkotlinx/datetime/format/Padding;->ZERO:Lkotlinx/datetime/format/Padding;

    .line 9
    .line 10
    iput-object v0, p0, Lkotlinx/datetime/format/MinuteDirective;->padding:Lkotlinx/datetime/format/Padding;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lkotlinx/datetime/format/MinuteDirective;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lkotlinx/datetime/format/MinuteDirective;

    .line 6
    .line 7
    iget-object p1, p1, Lkotlinx/datetime/format/MinuteDirective;->padding:Lkotlinx/datetime/format/Padding;

    .line 8
    .line 9
    iget-object p0, p0, Lkotlinx/datetime/format/MinuteDirective;->padding:Lkotlinx/datetime/format/Padding;

    .line 10
    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/datetime/format/MinuteDirective;->padding:Lkotlinx/datetime/format/Padding;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
