.class public final Lnet/thunderbird/core/ui/setting/SettingValue$Select;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/ui/setting/SettingValue;


# instance fields
.field public final description:Lkotlin/jvm/functions/Function0;

.field public final displayValueAsSecondaryText:Z

.field public final icon:Lkotlin/jvm/functions/Function0;

.field public final id:Ljava/lang/String;

.field public final options:Lkotlinx/collections/immutable/ImmutableList;

.field public final title:Lkotlin/jvm/functions/Function0;

.field public final value:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lkotlinx/collections/immutable/ImmutableList;)V
    .locals 0

    .line 1
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->id:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->title:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    iput-object p3, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->description:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    iput-object p4, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->icon:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    iput-boolean p5, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->displayValueAsSecondaryText:Z

    .line 19
    .line 20
    iput-object p6, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->value:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 21
    .line 22
    iput-object p7, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->options:Lkotlinx/collections/immutable/ImmutableList;

    .line 23
    .line 24
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
    instance-of v0, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 10
    .line 11
    iget-object v0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->id:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->id:Ljava/lang/String;

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
    iget-object v0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->title:Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    iget-object v1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->title:Lkotlin/jvm/functions/Function0;

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
    iget-object v0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->description:Lkotlin/jvm/functions/Function0;

    .line 34
    .line 35
    iget-object v1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->description:Lkotlin/jvm/functions/Function0;

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
    iget-object v0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->icon:Lkotlin/jvm/functions/Function0;

    .line 45
    .line 46
    iget-object v1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->icon:Lkotlin/jvm/functions/Function0;

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
    iget-boolean v0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->displayValueAsSecondaryText:Z

    .line 56
    .line 57
    iget-boolean v1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->displayValueAsSecondaryText:Z

    .line 58
    .line 59
    if-eq v0, v1, :cond_6

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_6
    iget-object v0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->value:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 63
    .line 64
    iget-object v1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->value:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 65
    .line 66
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_7

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_7
    iget-object p0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->options:Lkotlinx/collections/immutable/ImmutableList;

    .line 74
    .line 75
    iget-object p1, p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->options:Lkotlinx/collections/immutable/ImmutableList;

    .line 76
    .line 77
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_8

    .line 82
    .line 83
    :goto_0
    const/4 p0, 0x0

    .line 84
    return p0

    .line 85
    :cond_8
    :goto_1
    const/4 p0, 0x1

    .line 86
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->id:Ljava/lang/String;

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
    iget-object v2, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->title:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m(IILkotlin/jvm/functions/Function0;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->description:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m(IILkotlin/jvm/functions/Function0;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->icon:Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m(IILkotlin/jvm/functions/Function0;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-boolean v2, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->displayValueAsSecondaryText:Z

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    const/16 v2, 0x4cf

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/16 v2, 0x4d5

    .line 36
    .line 37
    :goto_0
    add-int/2addr v0, v2

    .line 38
    mul-int/2addr v0, v1

    .line 39
    iget-object v2, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->value:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 40
    .line 41
    invoke-virtual {v2}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    add-int/2addr v2, v0

    .line 46
    mul-int/2addr v2, v1

    .line 47
    iget-object p0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->options:Lkotlinx/collections/immutable/ImmutableList;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    add-int/2addr p0, v2

    .line 54
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Select(id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->id:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", title="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->title:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", description="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->description:Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", icon="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->icon:Lkotlin/jvm/functions/Function0;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", displayValueAsSecondaryText="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->displayValueAsSecondaryText:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", value="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->value:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", options="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->options:Lkotlinx/collections/immutable/ImmutableList;

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p0, ")"

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
