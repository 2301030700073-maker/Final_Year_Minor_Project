.class public final synthetic Lorg/wikipedia/compose/components/LicenseLinkTextKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/ui/text/LinkInteractionListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/compose/components/LinkTextData;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroidx/compose/ui/platform/AndroidUriHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/compose/components/LinkTextData;Landroid/content/Context;Landroidx/compose/ui/platform/AndroidUriHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/compose/components/LicenseLinkTextKt$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/compose/components/LinkTextData;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/compose/components/LicenseLinkTextKt$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/compose/components/LicenseLinkTextKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/platform/AndroidUriHandler;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroidx/compose/ui/text/LinkAnnotation;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/compose/components/LicenseLinkTextKt$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/compose/components/LinkTextData;

    .line 5
    .line 6
    iget-object v0, p1, Lorg/wikipedia/compose/components/LinkTextData;->asset:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance p1, Landroid/content/Intent;

    .line 11
    .line 12
    const-class v1, Lorg/wikipedia/settings/LicenseActivity;

    .line 13
    .line 14
    iget-object p0, p0, Lorg/wikipedia/compose/components/LicenseLinkTextKt$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 15
    .line 16
    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "asset"

    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p1, p1, Lorg/wikipedia/compose/components/LinkTextData;->url:Ljava/lang/String;

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    const-string p1, ""

    .line 33
    .line 34
    :cond_1
    iget-object p0, p0, Lorg/wikipedia/compose/components/LicenseLinkTextKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/platform/AndroidUriHandler;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidUriHandler;->openUri(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
