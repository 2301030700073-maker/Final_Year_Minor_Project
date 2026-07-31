.class public final Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultSignatureCssStyleProvider$Factory;
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
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultSignatureCssStyleProvider$Factory;->cssClassNameProvider:Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create(Lnet/thunderbird/core/common/mail/html/HtmlSettings;)Lcom/fsck/k9/mailstore/LocalStore$8;
    .locals 0

    .line 1
    new-instance p1, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultSignatureCssStyleProvider$Factory;->cssClassNameProvider:Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method
