.class public final Lnet/thunderbird/core/validation/input/BooleanInputField;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final error:Lnet/thunderbird/core/validation/ValidationError;

.field public final isValid:Z

.field public final value:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lnet/thunderbird/core/validation/ValidationError;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/validation/input/BooleanInputField;->value:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/core/validation/input/BooleanInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 7
    .line 8
    iput-boolean p3, p0, Lnet/thunderbird/core/validation/input/BooleanInputField;->isValid:Z

    .line 9
    .line 10
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
    const-class v1, Lnet/thunderbird/core/validation/input/BooleanInputField;

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
    check-cast p1, Lnet/thunderbird/core/validation/input/BooleanInputField;

    .line 25
    .line 26
    iget-object v0, p0, Lnet/thunderbird/core/validation/input/BooleanInputField;->value:Ljava/lang/Boolean;

    .line 27
    .line 28
    iget-object v1, p1, Lnet/thunderbird/core/validation/input/BooleanInputField;->value:Ljava/lang/Boolean;

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
    iget-object v0, p0, Lnet/thunderbird/core/validation/input/BooleanInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 38
    .line 39
    iget-object v1, p1, Lnet/thunderbird/core/validation/input/BooleanInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

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
    iget-boolean p0, p0, Lnet/thunderbird/core/validation/input/BooleanInputField;->isValid:Z

    .line 49
    .line 50
    iget-boolean p1, p1, Lnet/thunderbird/core/validation/input/BooleanInputField;->isValid:Z

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
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x4d5

    .line 3
    .line 4
    const/16 v2, 0x4cf

    .line 5
    .line 6
    iget-object v3, p0, Lnet/thunderbird/core/validation/input/BooleanInputField;->value:Ljava/lang/Boolean;

    .line 7
    .line 8
    if-eqz v3, :cond_1

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    move v3, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v3, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v3, v0

    .line 21
    :goto_0
    mul-int/lit8 v3, v3, 0x1f

    .line 22
    .line 23
    iget-object v4, p0, Lnet/thunderbird/core/validation/input/BooleanInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :cond_2
    add-int/2addr v3, v0

    .line 32
    mul-int/lit8 v3, v3, 0x1f

    .line 33
    .line 34
    iget-boolean p0, p0, Lnet/thunderbird/core/validation/input/BooleanInputField;->isValid:Z

    .line 35
    .line 36
    if-eqz p0, :cond_3

    .line 37
    .line 38
    move v1, v2

    .line 39
    :cond_3
    add-int/2addr v3, v1

    .line 40
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BooleanInputField(value="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/core/validation/input/BooleanInputField;->value:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", error="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/core/validation/input/BooleanInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

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
    iget-boolean p0, p0, Lnet/thunderbird/core/validation/input/BooleanInputField;->isValid:Z

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
