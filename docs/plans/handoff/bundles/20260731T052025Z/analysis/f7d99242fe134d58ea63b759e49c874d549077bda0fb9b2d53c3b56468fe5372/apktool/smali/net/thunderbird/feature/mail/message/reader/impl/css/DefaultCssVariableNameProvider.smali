.class public final Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultCssVariableNameProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final blockquoteDefaultBorderLeftColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;->defaultNamespaceClassName:Ljava/lang/String;

    .line 5
    .line 6
    const-string v0, "--"

    .line 7
    .line 8
    const-string v1, "__blockquote-default-border-color"

    .line 9
    .line 10
    invoke-static {v0, p1, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultCssVariableNameProvider;->blockquoteDefaultBorderLeftColor:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method
