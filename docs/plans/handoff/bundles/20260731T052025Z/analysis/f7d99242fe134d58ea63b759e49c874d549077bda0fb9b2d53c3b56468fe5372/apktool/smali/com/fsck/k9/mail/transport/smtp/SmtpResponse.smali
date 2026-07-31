.class public final Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final enhancedStatusCode:Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;

.field public final isNegativeResponse:Z

.field public final replyCode:I

.field public final texts:Ljava/util/List;


# direct methods
.method public constructor <init>(ILcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->replyCode:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->enhancedStatusCode:Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->texts:Ljava/util/List;

    .line 9
    .line 10
    const/16 p2, 0x190

    .line 11
    .line 12
    if-lt p1, p2, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iput-boolean p1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->isNegativeResponse:Z

    .line 18
    .line 19
    return-void
.end method

.method public static appendIfNotNull(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;C)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    iget-object p2, p1, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->statusClass:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 7
    .line 8
    iget p2, p2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->codeClass:I

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p2, 0x2e

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v0, p1, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->subject:I

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget p1, p1, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->detail:I

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_0
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
    instance-of v0, p1, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;

    .line 10
    .line 11
    iget v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->replyCode:I

    .line 12
    .line 13
    iget v1, p1, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->replyCode:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->enhancedStatusCode:Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;

    .line 19
    .line 20
    iget-object v1, p1, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->enhancedStatusCode:Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;

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
    iget-object p0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->texts:Ljava/util/List;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->texts:Ljava/util/List;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_4

    .line 38
    .line 39
    :goto_0
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 42
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->replyCode:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->enhancedStatusCode:Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    :goto_0
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object p0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->texts:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    add-int/2addr p0, v0

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SmtpResponse(replyCode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->replyCode:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", enhancedStatusCode="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->enhancedStatusCode:Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", texts="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpResponse;->texts:Ljava/util/List;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, ")"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
