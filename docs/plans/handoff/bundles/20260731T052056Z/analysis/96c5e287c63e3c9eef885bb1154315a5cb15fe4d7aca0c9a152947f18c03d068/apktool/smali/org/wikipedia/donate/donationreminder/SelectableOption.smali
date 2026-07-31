.class public final Lorg/wikipedia/donate/donationreminder/SelectableOption;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final defaultValue:Ljava/lang/Number;

.field public final displayFormatter:Lkotlin/jvm/functions/Function1;

.field public final maximumAmount:Ljava/lang/Number;

.field public final minimumAmount:Ljava/lang/Number;

.field public final options:Ljava/util/List;

.field public final selectedValue:Ljava/lang/Number;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 7

    .line 1
    new-instance v6, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-direct {v6, v0}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v4, p3

    .line 13
    move-object v5, p4

    .line 14
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/donate/donationreminder/SelectableOption;-><init>(Ljava/lang/Number;Ljava/util/List;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/util/List;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->selectedValue:Ljava/lang/Number;

    .line 20
    iput-object p2, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->options:Ljava/util/List;

    .line 21
    iput-object p3, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->maximumAmount:Ljava/lang/Number;

    .line 22
    iput-object p4, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->minimumAmount:Ljava/lang/Number;

    .line 23
    iput-object p5, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->defaultValue:Ljava/lang/Number;

    .line 24
    iput-object p6, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->displayFormatter:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static copy$default(Lorg/wikipedia/donate/donationreminder/SelectableOption;Ljava/lang/Number;)Lorg/wikipedia/donate/donationreminder/SelectableOption;
    .locals 7

    .line 1
    iget-object v2, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->options:Ljava/util/List;

    .line 2
    .line 3
    iget-object v3, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->maximumAmount:Ljava/lang/Number;

    .line 4
    .line 5
    iget-object v4, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->minimumAmount:Ljava/lang/Number;

    .line 6
    .line 7
    iget-object v5, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->defaultValue:Ljava/lang/Number;

    .line 8
    .line 9
    iget-object v6, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->displayFormatter:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v0, Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 30
    .line 31
    move-object v1, p1

    .line 32
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/donate/donationreminder/SelectableOption;-><init>(Ljava/lang/Number;Ljava/util/List;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->selectedValue:Ljava/lang/Number;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/wikipedia/donate/donationreminder/SelectableOption;->selectedValue:Ljava/lang/Number;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->options:Ljava/util/List;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/wikipedia/donate/donationreminder/SelectableOption;->options:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->maximumAmount:Ljava/lang/Number;

    .line 36
    .line 37
    iget-object v3, p1, Lorg/wikipedia/donate/donationreminder/SelectableOption;->maximumAmount:Ljava/lang/Number;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->minimumAmount:Ljava/lang/Number;

    .line 47
    .line 48
    iget-object v3, p1, Lorg/wikipedia/donate/donationreminder/SelectableOption;->minimumAmount:Ljava/lang/Number;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->defaultValue:Ljava/lang/Number;

    .line 58
    .line 59
    iget-object v3, p1, Lorg/wikipedia/donate/donationreminder/SelectableOption;->defaultValue:Ljava/lang/Number;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object p0, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->displayFormatter:Lkotlin/jvm/functions/Function1;

    .line 69
    .line 70
    iget-object p1, p1, Lorg/wikipedia/donate/donationreminder/SelectableOption;->displayFormatter:Lkotlin/jvm/functions/Function1;

    .line 71
    .line 72
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-nez p0, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->selectedValue:Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->options:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->maximumAmount:Ljava/lang/Number;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v0

    .line 23
    mul-int/2addr v2, v1

    .line 24
    iget-object v0, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->minimumAmount:Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/2addr v0, v2

    .line 31
    mul-int/2addr v0, v1

    .line 32
    iget-object v2, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->defaultValue:Ljava/lang/Number;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/2addr v2, v0

    .line 39
    mul-int/2addr v2, v1

    .line 40
    iget-object p0, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->displayFormatter:Lkotlin/jvm/functions/Function1;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    add-int/2addr p0, v2

    .line 47
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SelectableOption(selectedValue="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->selectedValue:Ljava/lang/Number;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", options="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->options:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", maximumAmount="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->maximumAmount:Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", minimumAmount="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->minimumAmount:Ljava/lang/Number;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", defaultValue="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->defaultValue:Ljava/lang/Number;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", displayFormatter="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->displayFormatter:Lkotlin/jvm/functions/Function1;

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p0, ")"

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method
