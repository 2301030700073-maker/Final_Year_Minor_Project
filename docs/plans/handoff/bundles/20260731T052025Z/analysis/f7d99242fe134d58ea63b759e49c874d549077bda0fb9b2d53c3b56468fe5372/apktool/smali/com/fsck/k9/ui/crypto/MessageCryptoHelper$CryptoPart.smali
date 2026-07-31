.class public final Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final part:Lcom/fsck/k9/mail/Part;

.field public final type:I


# direct methods
.method public constructor <init>(ILcom/fsck/k9/mail/Part;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->type:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->part:Lcom/fsck/k9/mail/Part;

    .line 7
    .line 8
    return-void
.end method
