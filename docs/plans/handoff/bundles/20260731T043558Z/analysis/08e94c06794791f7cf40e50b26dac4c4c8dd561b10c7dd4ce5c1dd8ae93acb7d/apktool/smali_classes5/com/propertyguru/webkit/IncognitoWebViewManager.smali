.class public final Lcom/propertyguru/webkit/IncognitoWebViewManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "IncognitoWebViewManager.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    hasConstants = false
    name = "IncognitoWebView"
    needsEagerInit = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/propertyguru/webkit/IncognitoWebViewManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager<",
        "Lcom/propertyguru/webkit/IncognitoWebView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u001f2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0014J\u0014\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tH\u0016J\u0008\u0010\u000c\u001a\u00020\nH\u0016J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007J\u001a\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0008\u0010\u0013\u001a\u0004\u0018\u00010\nH\u0007J\u001a\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0007J\u001f\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007\u00a2\u0006\u0002\u0010\u001aJ\u001f\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007\u00a2\u0006\u0002\u0010\u001aJ\u001f\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007\u00a2\u0006\u0002\u0010\u001aJ\u001f\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007\u00a2\u0006\u0002\u0010\u001aJ\u0010\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016\u00a8\u0006 "
    }
    d2 = {
        "Lcom/propertyguru/webkit/IncognitoWebViewManager;",
        "Lcom/facebook/react/uimanager/SimpleViewManager;",
        "Lcom/propertyguru/webkit/IncognitoWebView;",
        "<init>",
        "()V",
        "createViewInstance",
        "reactContext",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "getExportedCustomDirectEventTypeConstants",
        "",
        "",
        "",
        "getName",
        "setSource",
        "",
        "view",
        "source",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "setInjectedJavaScript",
        "injectedJavaScript",
        "setInterceptLinks",
        "array",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "setOnLinkPressed",
        "enabled",
        "",
        "(Lcom/propertyguru/webkit/IncognitoWebView;Ljava/lang/Boolean;)V",
        "setOnLoadStart",
        "setOnLoadEnd",
        "setOnError",
        "onDropViewInstance",
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
.field public static final Companion:Lcom/propertyguru/webkit/IncognitoWebViewManager$Companion;

.field public static final REACT_CLASS:Ljava/lang/String; = "IncognitoWebView"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/propertyguru/webkit/IncognitoWebViewManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/propertyguru/webkit/IncognitoWebViewManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/propertyguru/webkit/IncognitoWebViewManager;->Companion:Lcom/propertyguru/webkit/IncognitoWebViewManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/propertyguru/webkit/IncognitoWebViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/propertyguru/webkit/IncognitoWebView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/propertyguru/webkit/IncognitoWebView;
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/propertyguru/webkit/IncognitoWebView;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/propertyguru/webkit/IncognitoWebView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 35
    const-string v1, "registrationName"

    const-string v2, "onLoadStart"

    invoke-static {v1, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 33
    invoke-virtual {v0, v2, v3}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 39
    const-string v2, "onLoadEnd"

    invoke-static {v1, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 37
    invoke-virtual {v0, v2, v3}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 43
    const-string v2, "onError"

    invoke-static {v1, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 41
    invoke-virtual {v0, v2, v3}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 47
    const-string v2, "onLinkPressed"

    invoke-static {v1, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "IncognitoWebView"

    return-object v0
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/propertyguru/webkit/IncognitoWebView;

    invoke-virtual {p0, p1}, Lcom/propertyguru/webkit/IncognitoWebViewManager;->onDropViewInstance(Lcom/propertyguru/webkit/IncognitoWebView;)V

    return-void
.end method

.method public onDropViewInstance(Lcom/propertyguru/webkit/IncognitoWebView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/propertyguru/webkit/IncognitoWebView;->stopLoading()V

    .line 122
    check-cast p1, Landroid/view/View;

    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/SimpleViewManager;->onDropViewInstance(Landroid/view/View;)V

    return-void
.end method

.method public final setInjectedJavaScript(Lcom/propertyguru/webkit/IncognitoWebView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScript"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1, p2}, Lcom/propertyguru/webkit/IncognitoWebView;->setInjectedJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public final setInterceptLinks(Lcom/propertyguru/webkit/IncognitoWebView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "interceptLinks"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 68
    move-object p2, p0

    check-cast p2, Lcom/propertyguru/webkit/IncognitoWebViewManager;

    .line 69
    invoke-virtual {p1, v0}, Lcom/propertyguru/webkit/IncognitoWebView;->setInterceptLinks(Ljava/util/List;)V

    return-void

    .line 73
    :cond_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 76
    invoke-virtual {p1, v0}, Lcom/propertyguru/webkit/IncognitoWebView;->setInterceptLinks(Ljava/util/List;)V

    return-void

    .line 80
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 82
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/ReadableArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    sget-object v5, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v4, v5, :cond_2

    .line 83
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 84
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 86
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    :cond_3
    move-object p2, v2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 94
    invoke-virtual {p1, v2}, Lcom/propertyguru/webkit/IncognitoWebView;->setInterceptLinks(Ljava/util/List;)V

    goto :goto_1

    .line 96
    :cond_4
    invoke-virtual {p1, v0}, Lcom/propertyguru/webkit/IncognitoWebView;->setInterceptLinks(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public final setOnError(Lcom/propertyguru/webkit/IncognitoWebView;Ljava/lang/Boolean;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onError"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/propertyguru/webkit/IncognitoWebView;->setShouldDispatchErrorEvent(Z)V

    return-void
.end method

.method public final setOnLinkPressed(Lcom/propertyguru/webkit/IncognitoWebView;Ljava/lang/Boolean;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onLinkPressed"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/propertyguru/webkit/IncognitoWebView;->setShouldDispatchOnLinkPressedEvent(Z)V

    return-void
.end method

.method public final setOnLoadEnd(Lcom/propertyguru/webkit/IncognitoWebView;Ljava/lang/Boolean;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onLoadEnd"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 112
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/propertyguru/webkit/IncognitoWebView;->setShouldDispatchLoadEndEvent(Z)V

    return-void
.end method

.method public final setOnLoadStart(Lcom/propertyguru/webkit/IncognitoWebView;Ljava/lang/Boolean;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onLoadStart"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/propertyguru/webkit/IncognitoWebView;->setShouldDispatchLoadStartEvent(Z)V

    return-void
.end method

.method public final setSource(Lcom/propertyguru/webkit/IncognitoWebView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "source"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1, p2}, Lcom/propertyguru/webkit/IncognitoWebView;->setSource(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method
