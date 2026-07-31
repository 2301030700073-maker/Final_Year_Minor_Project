.class public final Lexpo/modules/kotlin/views/GroupViewManagerWrapper;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "GroupViewManagerWrapper.kt"

# interfaces
.implements Lexpo/modules/kotlin/views/ViewWrapperDelegateHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Landroid/view/ViewGroup;",
        ">;",
        "Lexpo/modules/kotlin/views/ViewWrapperDelegateHolder;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGroupViewManagerWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupViewManagerWrapper.kt\nexpo/modules/kotlin/views/GroupViewManagerWrapper\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 KotlinUtilities.kt\nexpo/modules/core/utilities/KotlinUtilitiesKt\n*L\n1#1,113:1\n216#2,2:114\n12#3:116\n12#3:117\n12#3:118\n12#3:119\n12#3:120\n*S KotlinDebug\n*F\n+ 1 GroupViewManagerWrapper.kt\nexpo/modules/kotlin/views/GroupViewManagerWrapper\n*L\n49#1:114,2\n70#1:116\n79#1:117\n90#1:118\n99#1:119\n108#1:120\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0002H\u0014J&\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0015\u001a\u00020\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0014\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\u0016\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u001eH\u0016J \u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u00022\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J\u0010\u0010%\u001a\u00020$2\u0006\u0010 \u001a\u00020\u0002H\u0016J\u001a\u0010&\u001a\u0004\u0018\u00010\"2\u0006\u0010 \u001a\u00020\u00022\u0006\u0010#\u001a\u00020$H\u0016J\u0018\u0010\'\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u00022\u0006\u0010#\u001a\u00020$H\u0016J\u0018\u0010(\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\"H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006)"
    }
    d2 = {
        "Lexpo/modules/kotlin/views/GroupViewManagerWrapper;",
        "Lcom/facebook/react/uimanager/ViewGroupManager;",
        "Landroid/view/ViewGroup;",
        "Lexpo/modules/kotlin/views/ViewWrapperDelegateHolder;",
        "viewWrapperDelegate",
        "Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;",
        "<init>",
        "(Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;)V",
        "getViewWrapperDelegate",
        "()Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;",
        "getName",
        "",
        "createViewInstance",
        "reactContext",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "updateProperties",
        "",
        "viewToUpdate",
        "props",
        "Lcom/facebook/react/uimanager/ReactStylesDiffMap;",
        "onAfterUpdateTransaction",
        "view",
        "updateState",
        "",
        "stateWrapper",
        "Lcom/facebook/react/uimanager/StateWrapper;",
        "getNativeProps",
        "",
        "onDropViewInstance",
        "getExportedCustomDirectEventTypeConstants",
        "",
        "addView",
        "parent",
        "child",
        "Landroid/view/View;",
        "index",
        "",
        "getChildCount",
        "getChildAt",
        "removeViewAt",
        "removeView",
        "expo-modules-core_release"
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
.field private final viewWrapperDelegate:Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;)V
    .locals 1

    const-string v0, "viewWrapperDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 13
    iput-object p1, p0, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->viewWrapperDelegate:Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    return-void
.end method


# virtual methods
.method public bridge synthetic addView(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 12
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->addView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->getViewWrapperDelegate()Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;->getViewGroupDefinition$expo_modules_core_release()Lexpo/modules/kotlin/views/ViewGroupDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ViewGroupDefinition;->getAddViewAction()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/ViewGroupManager;->addView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 72
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    return-void
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/ViewGroup;
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->getViewWrapperDelegate()Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    move-result-object v0

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method public bridge synthetic getChildAt(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    .line 12
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->getViewWrapperDelegate()Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;->getViewGroupDefinition$expo_modules_core_release()Lexpo/modules/kotlin/views/ViewGroupDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ViewGroupDefinition;->getGetChildAtAction()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    .line 91
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildCount(Landroid/view/View;)I
    .locals 0

    .line 12
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->getChildCount(Landroid/view/ViewGroup;)I

    move-result p1

    return p1
.end method

.method public getChildCount(Landroid/view/ViewGroup;)I
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->getViewWrapperDelegate()Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;->getViewGroupDefinition$expo_modules_core_release()Lexpo/modules/kotlin/views/ViewGroupDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ViewGroupDefinition;->getGetChildCountAction()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 80
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 117
    :cond_1
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->getViewWrapperDelegate()Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;->getExportedCustomDirectEventTypeConstants()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 62
    :cond_0
    invoke-super {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getExportedCustomDirectEventTypeConstants()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1, v0}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 15
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->getViewWrapperDelegate()Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViewManagerAdapter_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeProps()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-super {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getNativeProps()Ljava/util/Map;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->getViewWrapperDelegate()Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;->getProps()Ljava/util/Map;

    move-result-object v1

    .line 114
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/views/AnyViewProp;

    .line 50
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lexpo/modules/kotlin/views/AnyViewProp;->getType$expo_modules_core_release()Lexpo/modules/kotlin/types/AnyType;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/kotlin/types/AnyType;->getKType()Lkotlin/reflect/KType;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getViewWrapperDelegate()Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;
    .locals 1

    .line 13
    iget-object v0, p0, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->viewWrapperDelegate:Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    return-object v0
.end method

.method public bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0

    .line 12
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->onAfterUpdateTransaction(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    check-cast p1, Landroid/view/View;

    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 34
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->getViewWrapperDelegate()Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;->onViewDidUpdateProps(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .line 12
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->onDropViewInstance(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onDropViewInstance(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    check-cast p1, Landroid/view/View;

    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->onDropViewInstance(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->getViewWrapperDelegate()Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;->onDestroy(Landroid/view/View;)V

    return-void
.end method

.method public removeView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->getViewWrapperDelegate()Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;->getViewGroupDefinition$expo_modules_core_release()Lexpo/modules/kotlin/views/ViewGroupDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ViewGroupDefinition;->getRemoveViewAction()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 109
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 110
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    return-void
.end method

.method public bridge synthetic removeViewAt(Landroid/view/View;I)V
    .locals 0

    .line 12
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->removeViewAt(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public removeViewAt(Landroid/view/ViewGroup;I)V
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->getViewWrapperDelegate()Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;->getViewGroupDefinition$expo_modules_core_release()Lexpo/modules/kotlin/views/ViewGroupDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ViewGroupDefinition;->getRemoveViewAtAction()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 100
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeViewAt(Landroid/view/ViewGroup;I)V

    .line 101
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    return-void
.end method

.method public bridge synthetic updateProperties(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 0

    .line 12
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->updateProperties(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    return-void
.end method

.method public updateProperties(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 3

    const-string v0, "viewToUpdate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "props"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p2}, Lcom/facebook/react/uimanager/ReactStylesDiffMapHelperKt;->getBackingMap(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p2

    .line 23
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->getViewWrapperDelegate()Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    move-result-object v0

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;->updateProperties(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/List;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    new-instance v2, Lexpo/modules/kotlin/views/FilteredReadableMap;

    invoke-direct {v2, p2, v0}, Lexpo/modules/kotlin/views/FilteredReadableMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;Ljava/util/List;)V

    check-cast v2, Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 26
    invoke-super {p0, p1, v1}, Lcom/facebook/react/uimanager/ViewGroupManager;->updateProperties(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    return-void
.end method

.method public bridge synthetic updateState(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;->updateState(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateState(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    instance-of v0, p1, Lexpo/modules/kotlin/views/ExpoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lexpo/modules/kotlin/views/ExpoView;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-object v1

    .line 43
    :cond_1
    invoke-virtual {p1, p3}, Lexpo/modules/kotlin/views/ExpoView;->setStateWrapper(Lcom/facebook/react/uimanager/StateWrapper;)V

    .line 44
    check-cast p1, Landroid/view/View;

    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/ViewGroupManager;->updateState(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
