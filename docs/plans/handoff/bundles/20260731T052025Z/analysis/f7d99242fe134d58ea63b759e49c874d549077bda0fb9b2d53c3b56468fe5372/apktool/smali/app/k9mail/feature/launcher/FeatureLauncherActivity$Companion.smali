.class public abstract Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final lambda$-969187936:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const v2, -0x39c4a260

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->lambda$-969187936:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    return-void
.end method

.method public static getIntent(Landroid/content/Context;Lnet/openid/appauth/JsonUtil$Field;)Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-class v1, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p1, Lnet/openid/appauth/JsonUtil$Field;->key:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Landroid/net/Uri;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    iget-object p0, p1, Lnet/openid/appauth/JsonUtil$Field;->defaultValue:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    :cond_0
    return-object v0
.end method

.method public static launch(Landroid/content/Context;Lnet/openid/appauth/JsonUtil$Field;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->getIntent(Landroid/content/Context;Lnet/openid/appauth/JsonUtil$Field;)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static launch(Landroidx/appcompat/app/AppCompatActivity;Lnet/openid/appauth/JsonUtil$Field;Landroidx/fragment/app/Fragment$10;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {p0, p1}, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->getIntent(Landroid/content/Context;Lnet/openid/appauth/JsonUtil$Field;)Landroid/content/Intent;

    move-result-object p0

    .line 16
    invoke-virtual {p2, p0}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;)V

    return-void
.end method
