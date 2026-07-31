.class public final Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "IncognitoFileChooserActivityEventListenerModule.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    hasConstants = false
    name = "IncognitoFileChooserActivityEventListener"
    needsEagerInit = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J&\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0007J\u0008\u0010\u0012\u001a\u00020\u000bH\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "activityEventListener",
        "Lcom/facebook/react/bridge/ActivityEventListener;",
        "getName",
        "",
        "startActivityForResult",
        "",
        "activity",
        "Landroid/app/Activity;",
        "intent",
        "Landroid/content/Intent;",
        "requestCode",
        "",
        "invalidate",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule$Companion;

.field public static final REACT_CLASS:Ljava/lang/String; = "IncognitoFileChooserActivityEventListener"


# instance fields
.field private activityEventListener:Lcom/facebook/react/bridge/ActivityEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;->Companion:Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 26
    new-instance v0, Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule$1;

    invoke-direct {v0, p0}, Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule$1;-><init>(Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;)V

    check-cast v0, Lcom/facebook/react/bridge/ActivityEventListener;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    return-void
.end method

.method public static final synthetic access$getActivityEventListener$p(Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;)Lcom/facebook/react/bridge/ActivityEventListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;->activityEventListener:Lcom/facebook/react/bridge/ActivityEventListener;

    return-object p0
.end method

.method public static final synthetic access$setActivityEventListener$p(Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;Lcom/facebook/react/bridge/ActivityEventListener;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;->activityEventListener:Lcom/facebook/react/bridge/ActivityEventListener;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "IncognitoFileChooserActivityEventListener"

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;->activityEventListener:Lcom/facebook/react/bridge/ActivityEventListener;

    .line 55
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->invalidate()V

    return-void
.end method

.method public final startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILcom/facebook/react/bridge/ActivityEventListener;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityEventListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p4, p0, Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;->activityEventListener:Lcom/facebook/react/bridge/ActivityEventListener;

    .line 50
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
