.class public final Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultPlainTextMessagePreElementCssStyleProvider$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/mail/message/reader/api/css/CssStyleProvider$Factory;


# instance fields
.field public final cssClassNameProvider:Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;


# direct methods
.method public constructor <init>(Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultPlainTextMessagePreElementCssStyleProvider$Factory;->cssClassNameProvider:Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create(Lnet/thunderbird/core/common/mail/html/HtmlSettings;)Lcom/fsck/k9/mailstore/LocalStore$8;
    .locals 1

    .line 1
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultPlainTextMessagePreElementCssStyleProvider$Factory;->cssClassNameProvider:Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 4
    .line 5
    iget-boolean p1, p1, Lnet/thunderbird/core/common/mail/html/HtmlSettings;->useFixedWidthFont:Z

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;Z)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
