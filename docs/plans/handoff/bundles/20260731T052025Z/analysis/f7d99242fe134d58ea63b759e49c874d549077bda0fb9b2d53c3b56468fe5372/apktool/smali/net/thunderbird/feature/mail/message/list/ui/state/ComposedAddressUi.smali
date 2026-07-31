.class public final Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final avatar:Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar;

.field public final color:Landroidx/compose/ui/graphics/Color;

.field public final displayName:Ljava/lang/String;

.field public final displayNameStyles:Lkotlinx/collections/immutable/ImmutableList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/collections/immutable/ImmutableList;Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar;Landroidx/compose/ui/graphics/Color;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->displayName:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->displayNameStyles:Lkotlinx/collections/immutable/ImmutableList;

    .line 10
    .line 11
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->avatar:Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar;

    .line 12
    .line 13
    iput-object p4, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->color:Landroidx/compose/ui/graphics/Color;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

    .line 10
    .line 11
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->displayName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->displayName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->displayNameStyles:Lkotlinx/collections/immutable/ImmutableList;

    .line 23
    .line 24
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->displayNameStyles:Lkotlinx/collections/immutable/ImmutableList;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->avatar:Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar;

    .line 34
    .line 35
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->avatar:Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->color:Landroidx/compose/ui/graphics/Color;

    .line 45
    .line 46
    iget-object p1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->color:Landroidx/compose/ui/graphics/Color;

    .line 47
    .line 48
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_5

    .line 53
    .line 54
    :goto_0
    const/4 p0, 0x0

    .line 55
    return p0

    .line 56
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 57
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->displayNameStyles:Lkotlinx/collections/immutable/ImmutableList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->avatar:Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar;

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    move v2, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    :goto_0
    add-int/2addr v1, v2

    .line 30
    mul-int/lit8 v1, v1, 0x1f

    .line 31
    .line 32
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->color:Landroidx/compose/ui/graphics/Color;

    .line 33
    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-wide v2, p0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 38
    .line 39
    invoke-static {v2, v3}, Lkotlin/ULong;->hashCode-impl(J)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :goto_1
    add-int/2addr v1, v0

    .line 44
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ComposedAddressUi(displayName="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->displayName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", displayNameStyles="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->displayNameStyles:Lkotlinx/collections/immutable/ImmutableList;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", avatar="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->avatar:Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", color="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->color:Landroidx/compose/ui/graphics/Color;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ")"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
