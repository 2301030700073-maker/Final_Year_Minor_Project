.class public final Lnet/thunderbird/core/ui/setting/SettingValue$IconList;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/ui/setting/SettingValue;


# instance fields
.field public final color:J

.field public final description:Lkotlin/jvm/functions/Function0;

.field public final icon:Lkotlin/jvm/functions/Function0;

.field public final icons:Lkotlinx/collections/immutable/ImmutableList;

.field public final id:Ljava/lang/String;

.field public final title:Lkotlin/jvm/functions/Function0;

.field public final value:Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JLnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;Lkotlinx/collections/immutable/ImmutableList;)V
    .locals 0

    .line 1
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->id:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->title:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    iput-object p3, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->description:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    iput-object p4, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->icon:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    iput-wide p5, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->color:J

    .line 19
    .line 20
    iput-object p7, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->value:Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 21
    .line 22
    iput-object p8, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->icons:Lkotlinx/collections/immutable/ImmutableList;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;

    .line 10
    .line 11
    iget-object v0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->id:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->id:Ljava/lang/String;

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
    iget-object v0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->title:Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    iget-object v1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->title:Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->description:Lkotlin/jvm/functions/Function0;

    .line 34
    .line 35
    iget-object v1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->description:Lkotlin/jvm/functions/Function0;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->icon:Lkotlin/jvm/functions/Function0;

    .line 45
    .line 46
    iget-object v1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->icon:Lkotlin/jvm/functions/Function0;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_5

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iget-wide v0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->color:J

    .line 56
    .line 57
    iget-wide v2, p1, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->color:J

    .line 58
    .line 59
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_6

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    iget-object v0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->value:Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 67
    .line 68
    iget-object v1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->value:Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_7

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_7
    iget-object p0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->icons:Lkotlinx/collections/immutable/ImmutableList;

    .line 78
    .line 79
    iget-object p1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->icons:Lkotlinx/collections/immutable/ImmutableList;

    .line 80
    .line 81
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-nez p0, :cond_8

    .line 86
    .line 87
    :goto_0
    const/4 p0, 0x0

    .line 88
    return p0

    .line 89
    :cond_8
    :goto_1
    const/4 p0, 0x1

    .line 90
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->id:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->title:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m(IILkotlin/jvm/functions/Function0;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->description:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m(IILkotlin/jvm/functions/Function0;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->icon:Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m(IILkotlin/jvm/functions/Function0;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sget v2, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 29
    .line 30
    iget-wide v2, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->color:J

    .line 31
    .line 32
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(IIJ)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v2, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->value:Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 37
    .line 38
    invoke-virtual {v2}, Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    add-int/2addr v2, v0

    .line 43
    mul-int/2addr v2, v1

    .line 44
    iget-object p0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->icons:Lkotlinx/collections/immutable/ImmutableList;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    add-int/2addr p0, v2

    .line 51
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->color:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "IconList(id="

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->id:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ", title="

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->title:Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ", description="

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->description:Lkotlin/jvm/functions/Function0;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, ", icon="

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->icon:Lkotlin/jvm/functions/Function0;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, ", color="

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, ", value="

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->value:Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, ", icons="

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->icons:Lkotlinx/collections/immutable/ImmutableList;

    .line 73
    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p0, ")"

    .line 78
    .line 79
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method
