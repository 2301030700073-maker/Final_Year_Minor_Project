.class public final Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final encapsulatedResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

.field public final errorType:I

.field public final openPgpDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

.field public final openPgpError:Lorg/openintents/openpgp/OpenPgpError;

.field public final openPgpInsecureWarningPendingIntent:Landroid/app/PendingIntent;

.field public final openPgpPendingIntent:Landroid/app/PendingIntent;

.field public final openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

.field public final replacementData:Lcom/fsck/k9/mail/internet/MimeBodyPart;


# direct methods
.method public constructor <init>(ILcom/fsck/k9/mail/internet/MimeBodyPart;Lorg/openintents/openpgp/OpenPgpDecryptionResult;Lorg/openintents/openpgp/OpenPgpSignatureResult;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lorg/openintents/openpgp/OpenPgpError;Z)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->errorType:I

    .line 48
    iput-object p2, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->replacementData:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 49
    iput-object p3, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 50
    iput-object p4, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 51
    iput-object p5, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpPendingIntent:Landroid/app/PendingIntent;

    .line 52
    iput-object p7, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpError:Lorg/openintents/openpgp/OpenPgpError;

    .line 53
    iput-object p6, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpInsecureWarningPendingIntent:Landroid/app/PendingIntent;

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->encapsulatedResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->encapsulatedResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget v0, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->errorType:I

    .line 9
    .line 10
    iput v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->errorType:I

    .line 11
    .line 12
    iget-object v0, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->replacementData:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->replacementData:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 23
    .line 24
    iget-object v0, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpPendingIntent:Landroid/app/PendingIntent;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpPendingIntent:Landroid/app/PendingIntent;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpInsecureWarningPendingIntent:Landroid/app/PendingIntent;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpInsecureWarningPendingIntent:Landroid/app/PendingIntent;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpError:Lorg/openintents/openpgp/OpenPgpError;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpError:Lorg/openintents/openpgp/OpenPgpError;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->encapsulatedResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const-string p0, "cannot replace an encapsulated result, this is a bug!"

    .line 40
    .line 41
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    throw p0
.end method
