.class public abstract Lcom/fsck/k9/message/extractors/TextPartFinderKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final MULTIPART_ALTERNATIVE:Lcom/fsck/k9/mail/MimeType;

.field public static final TEXT_HTML:Lcom/fsck/k9/mail/MimeType;

.field public static final TEXT_PLAIN:Lcom/fsck/k9/mail/MimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/mail/MimeType;->MIME_TYPE:Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v0, "text/plain"

    .line 4
    .line 5
    invoke-static {v0}, Lcom/fsck/k9/mail/K9MailLib;->parse(Ljava/lang/String;)Lcom/fsck/k9/mail/MimeType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/fsck/k9/message/extractors/TextPartFinderKt;->TEXT_PLAIN:Lcom/fsck/k9/mail/MimeType;

    .line 10
    .line 11
    const-string v0, "text/html"

    .line 12
    .line 13
    invoke-static {v0}, Lcom/fsck/k9/mail/K9MailLib;->parse(Ljava/lang/String;)Lcom/fsck/k9/mail/MimeType;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/fsck/k9/message/extractors/TextPartFinderKt;->TEXT_HTML:Lcom/fsck/k9/mail/MimeType;

    .line 18
    .line 19
    const-string v0, "multipart/alternative"

    .line 20
    .line 21
    invoke-static {v0}, Lcom/fsck/k9/mail/K9MailLib;->parse(Ljava/lang/String;)Lcom/fsck/k9/mail/MimeType;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/fsck/k9/message/extractors/TextPartFinderKt;->MULTIPART_ALTERNATIVE:Lcom/fsck/k9/mail/MimeType;

    .line 26
    .line 27
    return-void
.end method
