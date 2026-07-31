.class public final Lcom/fsck/k9/mail/internet/MimeHeader$Field$NameValueField;
.super Lcom/fsck/k9/mail/internet/MimeHeader$Field;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeHeader$Field$NameValueField;->value:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeHeader$Field$NameValueField;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeHeader$Field$NameValueField;->value:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ": "

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p0, v1, v0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
