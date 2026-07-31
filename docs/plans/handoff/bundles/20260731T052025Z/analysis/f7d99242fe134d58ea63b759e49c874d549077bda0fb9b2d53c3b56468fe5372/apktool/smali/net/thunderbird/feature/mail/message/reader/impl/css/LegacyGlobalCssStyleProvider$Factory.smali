.class public final Lnet/thunderbird/feature/mail/message/reader/impl/css/LegacyGlobalCssStyleProvider$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/mail/message/reader/api/css/GlobalCssStyleProvider$Factory;


# virtual methods
.method public final create(Lnet/thunderbird/core/common/mail/html/HtmlSettings;)Lcom/fsck/k9/mailstore/LocalStore$8;
    .locals 0

    .line 1
    new-instance p0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 2
    .line 3
    iget-boolean p1, p1, Lnet/thunderbird/core/common/mail/html/HtmlSettings;->useDarkMode:Z

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(Z)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
