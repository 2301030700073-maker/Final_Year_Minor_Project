.class public final Lnet/thunderbird/core/validation/input/StringInputField;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final error:Lnet/thunderbird/core/validation/ValidationError;

.field public final isValid:Z

.field public final value:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 14
    const-string p1, ""

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0, p2}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;Lnet/thunderbird/core/validation/ValidationError;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/thunderbird/core/validation/ValidationError;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/core/validation/input/StringInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 10
    .line 11
    iput-boolean p3, p0, Lnet/thunderbird/core/validation/input/StringInputField;->isValid:Z

    .line 12
    .line 13
    return-void
.end method

.method public static updateValue(Ljava/lang/String;)Lnet/thunderbird/core/validation/input/StringInputField;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, p0, v1, v2}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;Lnet/thunderbird/core/validation/ValidationError;Z)V

    .line 9
    .line 10
    .line 11
    return-object v0
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
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v0, 0x0

    .line 12
    :goto_0
    const-class v1, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    check-cast p1, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 25
    .line 26
    iget-object v0, p0, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p1, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    iget-object v0, p0, Lnet/thunderbird/core/validation/input/StringInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 38
    .line 39
    iget-object v1, p1, Lnet/thunderbird/core/validation/input/StringInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_4
    iget-boolean p0, p0, Lnet/thunderbird/core/validation/input/StringInputField;->isValid:Z

    .line 49
    .line 50
    iget-boolean p1, p1, Lnet/thunderbird/core/validation/input/StringInputField;->isValid:Z

    .line 51
    .line 52
    if-ne p0, p1, :cond_5

    .line 53
    .line 54
    :goto_1
    const/4 p0, 0x1

    .line 55
    return p0

    .line 56
    :cond_5
    :goto_2
    const/4 p0, 0x0

    .line 57
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

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
    iget-object v1, p0, Lnet/thunderbird/core/validation/input/StringInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    .line 22
    iget-boolean p0, p0, Lnet/thunderbird/core/validation/input/StringInputField;->isValid:Z

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    const/16 p0, 0x4cf

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 p0, 0x4d5

    .line 30
    .line 31
    :goto_1
    add-int/2addr v0, p0

    .line 32
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "StringInputField(value=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', error="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/core/validation/input/StringInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isValid="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ")"

    .line 29
    .line 30
    iget-boolean p0, p0, Lnet/thunderbird/core/validation/input/StringInputField;->isValid:Z

    .line 31
    .line 32
    invoke-static {v1, v0, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public final updateFromValidationOutcome(Lnet/thunderbird/core/outcome/Outcome;)Lnet/thunderbird/core/validation/input/StringInputField;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iget-object p0, p0, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance p1, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-direct {p1, p0, v1, v0}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;Lnet/thunderbird/core/validation/ValidationError;Z)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 23
    .line 24
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 25
    .line 26
    iget-object p1, p1, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lnet/thunderbird/core/validation/ValidationError;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, p0, p1, v1}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;Lnet/thunderbird/core/validation/ValidationError;Z)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 36
    .line 37
    .line 38
    return-object v1
.end method
