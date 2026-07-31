.class public final Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountIndicator:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;

.field public final excerptLineConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;

.field public final leadingConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;

.field public final maxExcerptLines:I

.field public final secondaryLineConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;

.field public final trailingConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingConfiguration;


# direct methods
.method public constructor <init>(ILnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->maxExcerptLines:I

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->leadingConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->accountIndicator:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->secondaryLineConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->excerptLineConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;

    .line 13
    .line 14
    iput-object p6, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->trailingConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingConfiguration;

    .line 15
    .line 16
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
    instance-of v0, p1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;

    .line 10
    .line 11
    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->maxExcerptLines:I

    .line 12
    .line 13
    iget v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->maxExcerptLines:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->leadingConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;

    .line 19
    .line 20
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->leadingConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->accountIndicator:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;

    .line 30
    .line 31
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->accountIndicator:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->secondaryLineConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;

    .line 41
    .line 42
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->secondaryLineConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_5

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->excerptLineConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;

    .line 52
    .line 53
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->excerptLineConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;

    .line 54
    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_6
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->trailingConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingConfiguration;

    .line 63
    .line 64
    iget-object p1, p1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->trailingConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingConfiguration;

    .line 65
    .line 66
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-nez p0, :cond_7

    .line 71
    .line 72
    :goto_0
    const/4 p0, 0x0

    .line 73
    return p0

    .line 74
    :cond_7
    :goto_1
    const/4 p0, 0x1

    .line 75
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->maxExcerptLines:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    add-int/lit16 v0, v0, 0x4d5

    .line 6
    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->leadingConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;

    .line 10
    .line 11
    invoke-virtual {v1}, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;->hashCode()I

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
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->accountIndicator:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    add-int/2addr v1, v0

    .line 29
    mul-int/lit8 v1, v1, 0x1f

    .line 30
    .line 31
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->secondaryLineConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;

    .line 32
    .line 33
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;->leadingItems:Lkotlinx/collections/immutable/ImmutableList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/2addr v0, v1

    .line 40
    mul-int/lit8 v0, v0, 0x1f

    .line 41
    .line 42
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->excerptLineConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;

    .line 43
    .line 44
    iget-object v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;->leadingItems:Lkotlinx/collections/immutable/ImmutableList;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    add-int/2addr v1, v0

    .line 51
    mul-int/lit8 v1, v1, 0x1f

    .line 52
    .line 53
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->trailingConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingConfiguration;

    .line 54
    .line 55
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingConfiguration;->elements:Lkotlinx/collections/immutable/ImmutableList;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    add-int/2addr p0, v1

    .line 62
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MessageItemConfiguration(maxExcerptLines="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->maxExcerptLines:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", swapPrimaryLineWithSecondaryLine=false, leadingConfiguration="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->leadingConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", accountIndicator="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->accountIndicator:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", secondaryLineConfiguration="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->secondaryLineConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", excerptLineConfiguration="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->excerptLineConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", trailingConfiguration="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->trailingConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingConfiguration;

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
