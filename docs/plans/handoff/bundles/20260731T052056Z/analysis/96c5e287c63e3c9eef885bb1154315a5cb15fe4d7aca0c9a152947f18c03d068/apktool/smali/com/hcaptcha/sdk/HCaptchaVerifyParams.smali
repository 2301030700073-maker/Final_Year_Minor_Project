.class public Lcom/hcaptcha/sdk/HCaptchaVerifyParams;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
    value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end annotation


# instance fields
.field private phoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "mfa_phone"
    .end annotation
.end field

.field private phonePrefix:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "mfa_phoneprefix"
    .end annotation
.end field

.field private rqdata:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rqdata"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->phonePrefix:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->phoneNumber:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->rqdata:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static builder()Lcom/hcaptcha/sdk/HCaptchaVerifyParams$HCaptchaVerifyParamsBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcom/hcaptcha/sdk/HCaptchaVerifyParams$HCaptchaVerifyParamsBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;

    .line 2
    .line 3
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;

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
    check-cast p1, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->canEqual(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->getPhonePrefix()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->getPhonePrefix()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    if-eqz v3, :cond_4

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_4

    .line 38
    .line 39
    :goto_0
    return v2

    .line 40
    :cond_4
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->getPhoneNumber()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->getPhoneNumber()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-nez v1, :cond_5

    .line 49
    .line 50
    if-eqz v3, :cond_6

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    :goto_1
    return v2

    .line 60
    :cond_6
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->getRqdata()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->getRqdata()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-nez p0, :cond_7

    .line 69
    .line 70
    if-eqz p1, :cond_8

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_8

    .line 78
    .line 79
    :goto_2
    return v2

    .line 80
    :cond_8
    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->phoneNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPhonePrefix()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->phonePrefix:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRqdata()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->rqdata:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->getPhonePrefix()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x2b

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :goto_0
    add-int/lit8 v0, v0, 0x3b

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->getPhoneNumber()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    mul-int/lit8 v0, v0, 0x3b

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    move v2, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :goto_1
    add-int/2addr v0, v2

    .line 32
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->getRqdata()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    mul-int/lit8 v0, v0, 0x3b

    .line 37
    .line 38
    if-nez p0, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :goto_2
    add-int/2addr v0, v1

    .line 46
    return v0
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "mfa_phone"
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->phoneNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPhonePrefix(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "mfa_phoneprefix"
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->phonePrefix:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRqdata(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rqdata"
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->rqdata:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toBuilder()Lcom/hcaptcha/sdk/HCaptchaVerifyParams$HCaptchaVerifyParamsBuilder;
    .locals 2

    .line 1
    new-instance v0, Lcom/hcaptcha/sdk/HCaptchaVerifyParams$HCaptchaVerifyParamsBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->phonePrefix:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/hcaptcha/sdk/HCaptchaVerifyParams$HCaptchaVerifyParamsBuilder;->phonePrefix:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->phoneNumber:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/hcaptcha/sdk/HCaptchaVerifyParams$HCaptchaVerifyParamsBuilder;->phoneNumber:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->rqdata:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p0, v0, Lcom/hcaptcha/sdk/HCaptchaVerifyParams$HCaptchaVerifyParamsBuilder;->rqdata:Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HCaptchaVerifyParams(phonePrefix="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->getPhonePrefix()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", phoneNumber="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->getPhoneNumber()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", rqdata="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaVerifyParams;->getRqdata()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, ")"

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method
