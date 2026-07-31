.class public final Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule$1;
.super Lcom/facebook/react/bridge/BaseActivityEventListener;
.source "IncognitoFileChooserActivityEventListenerModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule$1",
        "Lcom/facebook/react/bridge/BaseActivityEventListener;",
        "onActivityResult",
        "",
        "activity",
        "Landroid/app/Activity;",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "propertyguru_react-native-webkit_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;


# direct methods
.method constructor <init>(Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;)V
    .locals 0

    iput-object p1, p0, Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule$1;->this$0:Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;

    .line 26
    invoke-direct {p0}, Lcom/facebook/react/bridge/BaseActivityEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule$1;->this$0:Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;

    invoke-static {v0}, Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;->access$getActivityEventListener$p(Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;)Lcom/facebook/react/bridge/ActivityEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/react/bridge/ActivityEventListener;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule$1;->this$0:Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;->access$setActivityEventListener$p(Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;Lcom/facebook/react/bridge/ActivityEventListener;)V

    return-void
.end method
