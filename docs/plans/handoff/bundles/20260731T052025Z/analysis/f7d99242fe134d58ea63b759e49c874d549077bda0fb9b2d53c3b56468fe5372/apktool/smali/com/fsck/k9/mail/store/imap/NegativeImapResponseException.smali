.class public final Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
.super Lnet/thunderbird/core/common/exception/MessagingException;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final responseText$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final responses:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->responses:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-direct {p1, p0, p2}, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;I)V

    .line 18
    .line 19
    .line 20
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 21
    .line 22
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->responseText$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 26
    .line 27
    new-instance p1, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-direct {p1, p0, v0}, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;I)V

    .line 30
    .line 31
    .line 32
    new-instance p0, Lkotlin/SynchronizedLazyImpl;

    .line 33
    .line 34
    invoke-direct {p0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const-string p0, "List of responses must not be empty"

    .line 39
    .line 40
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1
.end method
