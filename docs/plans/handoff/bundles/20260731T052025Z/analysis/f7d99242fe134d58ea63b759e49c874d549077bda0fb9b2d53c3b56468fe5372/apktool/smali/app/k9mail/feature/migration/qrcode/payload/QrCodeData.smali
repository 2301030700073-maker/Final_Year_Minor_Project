.class public final Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accounts:Ljava/util/List;

.field public final misc:Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Misc;

.field public final version:I


# direct methods
.method public constructor <init>(ILapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Misc;Lkotlin/collections/builders/ListBuilder;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->version:I

    .line 8
    .line 9
    iput-object p2, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->misc:Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Misc;

    .line 10
    .line 11
    iput-object p3, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->accounts:Ljava/util/List;

    .line 12
    .line 13
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
    instance-of v0, p1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;

    .line 10
    .line 11
    iget v0, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->version:I

    .line 12
    .line 13
    iget v1, p1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->version:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->misc:Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Misc;

    .line 19
    .line 20
    iget-object v1, p1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->misc:Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Misc;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Misc;->equals(Ljava/lang/Object;)Z

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
    iget-object p0, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->accounts:Ljava/util/List;

    .line 30
    .line 31
    iget-object p1, p1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->accounts:Ljava/util/List;

    .line 32
    .line 33
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v0, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->version:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->misc:Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Misc;

    .line 6
    .line 7
    invoke-virtual {v1}, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Misc;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object p0, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->accounts:Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    add-int/2addr p0, v1

    .line 21
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "QrCodeData(version="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->version:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", misc="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->misc:Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Misc;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", accounts="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->accounts:Ljava/util/List;

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
