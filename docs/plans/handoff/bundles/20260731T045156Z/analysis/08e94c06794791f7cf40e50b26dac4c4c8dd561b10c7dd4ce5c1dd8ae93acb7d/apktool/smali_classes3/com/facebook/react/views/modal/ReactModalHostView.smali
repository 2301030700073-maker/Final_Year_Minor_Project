.class public final Lcom/facebook/react/views/modal/ReactModalHostView;
.super Landroid/view/ViewGroup;
.source "ReactModalHostView.kt"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/modal/ReactModalHostView$Companion;,
        Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;,
        Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactModalHostView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactModalHostView.kt\ncom/facebook/react/views/modal/ReactModalHostView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,604:1\n1#2:605\n1863#3,2:606\n*S KotlinDebug\n*F\n+ 1 ReactModalHostView.kt\ncom/facebook/react/views/modal/ReactModalHostView\n*L\n428#1:606,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 s2\u00020\u00012\u00020\u0002:\u0003rstB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?H\u0016J0\u0010@\u001a\u00020=2\u0006\u0010A\u001a\u00020\r2\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020C2\u0006\u0010E\u001a\u00020C2\u0006\u0010F\u001a\u00020CH\u0014J\u0010\u0010G\u001a\u00020=2\u0006\u0010H\u001a\u00020CH\u0016J\u0008\u0010I\u001a\u00020=H\u0014J\u0008\u0010J\u001a\u00020=H\u0014J\u001a\u0010K\u001a\u00020=2\u0008\u0010L\u001a\u0004\u0018\u00010M2\u0006\u0010N\u001a\u00020CH\u0016J\u0008\u0010O\u001a\u00020CH\u0016J\u0012\u0010P\u001a\u0004\u0018\u00010M2\u0006\u0010N\u001a\u00020CH\u0016J\u0012\u0010Q\u001a\u00020=2\u0008\u0010L\u001a\u0004\u0018\u00010MH\u0016J\u0010\u0010R\u001a\u00020=2\u0006\u0010N\u001a\u00020CH\u0016J \u0010S\u001a\u00020=2\u0016\u0010T\u001a\u0012\u0012\u0004\u0012\u00020M0Uj\u0008\u0012\u0004\u0012\u00020M`VH\u0016J\u0010\u0010W\u001a\u00020\r2\u0006\u0010X\u001a\u00020YH\u0016J\u0006\u0010Z\u001a\u00020=J\u0008\u0010[\u001a\u00020=H\u0002J\u0008\u0010\\\u001a\u00020=H\u0016J\u0008\u0010]\u001a\u00020=H\u0016J\u0008\u0010^\u001a\u00020=H\u0016J\n\u0010_\u001a\u0004\u0018\u00010`H\u0002J\u0012\u0010a\u001a\u00020\r2\u0008\u0010b\u001a\u0004\u0018\u00010`H\u0002J\u0006\u0010c\u001a\u00020=J\u0008\u0010g\u001a\u00020=H\u0002J\u0008\u0010h\u001a\u00020=H\u0002J*\u0010i\u001a\u00020=2\u0006\u0010j\u001a\u00020k2\u0008\u0010l\u001a\u0004\u0018\u00010m2\u000e\u0008\u0002\u0010n\u001a\u0008\u0012\u0004\u0012\u00020C0oH\u0002J\u0010\u0010p\u001a\u00020=2\u0008\u0010q\u001a\u0004\u0018\u00010$R$\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00088G@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010\u001e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\r@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000f\"\u0004\u0008 \u0010\u0011R$\u0010!\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\r@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u000f\"\u0004\u0008#\u0010\u0011R(\u0010%\u001a\u0004\u0018\u00010$2\u0008\u0010\u0007\u001a\u0004\u0018\u00010$@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R$\u0010*\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\r@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u000f\"\u0004\u0008,\u0010\u0011R(\u0010-\u001a\u0004\u0018\u00010.2\u0008\u0010-\u001a\u0004\u0018\u00010.8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R(\u00103\u001a\u0004\u0018\u0001042\u0008\u00103\u001a\u0004\u0018\u0001048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u000e\u00109\u001a\u00020:X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010d\u001a\u00020M8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008e\u0010f\u00a8\u0006u"
    }
    d2 = {
        "Lcom/facebook/react/views/modal/ReactModalHostView;",
        "Landroid/view/ViewGroup;",
        "Lcom/facebook/react/bridge/LifecycleEventListener;",
        "context",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "<init>",
        "(Lcom/facebook/react/uimanager/ThemedReactContext;)V",
        "value",
        "Landroid/app/Dialog;",
        "dialog",
        "getDialog",
        "()Landroid/app/Dialog;",
        "transparent",
        "",
        "getTransparent",
        "()Z",
        "setTransparent",
        "(Z)V",
        "onShowListener",
        "Landroid/content/DialogInterface$OnShowListener;",
        "getOnShowListener",
        "()Landroid/content/DialogInterface$OnShowListener;",
        "setOnShowListener",
        "(Landroid/content/DialogInterface$OnShowListener;)V",
        "onRequestCloseListener",
        "Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;",
        "getOnRequestCloseListener",
        "()Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;",
        "setOnRequestCloseListener",
        "(Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;)V",
        "statusBarTranslucent",
        "getStatusBarTranslucent",
        "setStatusBarTranslucent",
        "navigationBarTranslucent",
        "getNavigationBarTranslucent",
        "setNavigationBarTranslucent",
        "",
        "animationType",
        "getAnimationType",
        "()Ljava/lang/String;",
        "setAnimationType",
        "(Ljava/lang/String;)V",
        "hardwareAccelerated",
        "getHardwareAccelerated",
        "setHardwareAccelerated",
        "stateWrapper",
        "Lcom/facebook/react/uimanager/StateWrapper;",
        "getStateWrapper",
        "()Lcom/facebook/react/uimanager/StateWrapper;",
        "setStateWrapper",
        "(Lcom/facebook/react/uimanager/StateWrapper;)V",
        "eventDispatcher",
        "Lcom/facebook/react/uimanager/events/EventDispatcher;",
        "getEventDispatcher",
        "()Lcom/facebook/react/uimanager/events/EventDispatcher;",
        "setEventDispatcher",
        "(Lcom/facebook/react/uimanager/events/EventDispatcher;)V",
        "dialogRootViewGroup",
        "Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;",
        "createNewDialog",
        "dispatchProvideStructure",
        "",
        "structure",
        "Landroid/view/ViewStructure;",
        "onLayout",
        "changed",
        "l",
        "",
        "t",
        "r",
        "b",
        "setId",
        "id",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "addView",
        "child",
        "Landroid/view/View;",
        "index",
        "getChildCount",
        "getChildAt",
        "removeView",
        "removeViewAt",
        "addChildrenForAccessibility",
        "outChildren",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "dispatchPopulateAccessibilityEvent",
        "event",
        "Landroid/view/accessibility/AccessibilityEvent;",
        "onDropInstance",
        "dismiss",
        "onHostResume",
        "onHostPause",
        "onHostDestroy",
        "getCurrentActivity",
        "Landroid/app/Activity;",
        "isFlagSecureSet",
        "activity",
        "showOrUpdate",
        "contentView",
        "getContentView",
        "()Landroid/view/View;",
        "updateProperties",
        "updateSystemAppearance",
        "syncSystemBarsVisibility",
        "activityRootWindowInsets",
        "Landroidx/core/view/WindowInsetsCompat;",
        "dialogWindowInsetsController",
        "Landroidx/core/view/WindowInsetsControllerCompat;",
        "types",
        "",
        "setDialogRootViewGroupTestId",
        "testId",
        "OnRequestCloseListener",
        "Companion",
        "DialogRootViewGroup",
        "ReactAndroid_release"
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
.field private static final Companion:Lcom/facebook/react/views/modal/ReactModalHostView$Companion;

.field private static final TAG:Ljava/lang/String; = "ReactModalHost"

.field private static statusBarHeight:I


# instance fields
.field private animationType:Ljava/lang/String;

.field private createNewDialog:Z

.field private dialog:Landroid/app/Dialog;

.field private final dialogRootViewGroup:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

.field private hardwareAccelerated:Z

.field private navigationBarTranslucent:Z

.field private onRequestCloseListener:Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;

.field private onShowListener:Landroid/content/DialogInterface$OnShowListener;

.field private statusBarTranslucent:Z

.field private transparent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/views/modal/ReactModalHostView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/modal/ReactModalHostView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/views/modal/ReactModalHostView;->Companion:Lcom/facebook/react/views/modal/ReactModalHostView$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 128
    sget-object v1, Lcom/facebook/react/views/modal/ReactModalHostView;->Companion:Lcom/facebook/react/views/modal/ReactModalHostView$Companion;

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v1, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$Companion;->access$initStatusBarHeight(Lcom/facebook/react/views/modal/ReactModalHostView$Companion;Lcom/facebook/react/bridge/ReactContext;)V

    .line 129
    new-instance p1, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-direct {p1, v0}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialogRootViewGroup:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    return-void
.end method

.method public static final synthetic access$getStatusBarHeight$cp()I
    .locals 1

    .line 71
    sget v0, Lcom/facebook/react/views/modal/ReactModalHostView;->statusBarHeight:I

    return v0
.end method

.method public static final synthetic access$setStatusBarHeight$cp(I)V
    .locals 0

    .line 71
    sput p0, Lcom/facebook/react/views/modal/ReactModalHostView;->statusBarHeight:I

    return-void
.end method

.method private final dismiss()V
    .locals 3

    .line 195
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 197
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/facebook/react/views/common/ContextUtils;->findContextOfType(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 206
    iput-boolean v1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->createNewDialog:Z

    .line 210
    iget-object v1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialogRootViewGroup:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v1}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_3
    return-void
.end method

.method private final getContentView()Landroid/view/View;
    .locals 2

    .line 332
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 333
    iget-object v1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialogRootViewGroup:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 334
    iget-boolean v1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->statusBarTranslucent:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 336
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 332
    :cond_0
    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getCurrentActivity()Landroid/app/Activity;
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.uimanager.ThemedReactContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private static final getScreenDisplayMetricsWithoutInsets()J
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/react/views/modal/ReactModalHostView;->Companion:Lcom/facebook/react/views/modal/ReactModalHostView$Companion;

    invoke-static {v0}, Lcom/facebook/react/views/modal/ReactModalHostView$Companion;->access$getScreenDisplayMetricsWithoutInsets(Lcom/facebook/react/views/modal/ReactModalHostView$Companion;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final isFlagSecureSet(Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private final syncSystemBarsVisibility(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsControllerCompat;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Landroidx/core/view/WindowInsetsControllerCompat;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 428
    check-cast p3, Ljava/lang/Iterable;

    .line 606
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 429
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 431
    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->show(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_0

    .line 433
    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic syncSystemBarsVisibility$default(Lcom/facebook/react/views/modal/ReactModalHostView;Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsControllerCompat;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x2

    .line 426
    new-array p3, p3, [Ljava/lang/Integer;

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p3, p5

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x1

    aput-object p4, p3, p5

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 422
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/views/modal/ReactModalHostView;->syncSystemBarsVisibility(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsControllerCompat;Ljava/util/List;)V

    return-void
.end method

.method private final updateProperties()V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    .line 348
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 349
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 350
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 356
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 358
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 360
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 367
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->navigationBarTranslucent:Z

    invoke-static {v0, v1}, Lcom/facebook/react/views/view/WindowUtilKt;->setSystemBarsTranslucency(Landroid/view/Window;Z)V

    .line 369
    iget-boolean v1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->navigationBarTranslucent:Z

    if-nez v1, :cond_3

    .line 370
    iget-boolean v1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->statusBarTranslucent:Z

    invoke-static {v0, v1}, Lcom/facebook/react/views/view/WindowUtilKt;->setStatusBarTranslucency(Landroid/view/Window;Z)V

    .line 373
    :cond_3
    iget-boolean v1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->transparent:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_4

    .line 374
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    :cond_4
    const/high16 v1, 0x3f000000    # 0.5f

    .line 376
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 377
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 384
    const-string v1, "ReactNative"

    const-string v2, "ReactModalHostView: error while setting window flags: "

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void

    .line 348
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dialog must have window when we call updateProperties"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dialog must exist when we call updateProperties"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateSystemAppearance()V
    .locals 10

    .line 394
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_4

    .line 397
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 398
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 400
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-le v2, v3, :cond_1

    .line 402
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 404
    new-instance v6, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v6, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 407
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsControllerCompat;->isAppearanceLightStatusBars()Z

    move-result v1

    .line 406
    invoke-virtual {v6, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 409
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 410
    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v5

    const-string/jumbo v0, "toWindowInsetsCompat(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    .line 411
    invoke-static/range {v4 .. v9}, Lcom/facebook/react/views/modal/ReactModalHostView;->syncSystemBarsVisibility$default(Lcom/facebook/react/views/modal/ReactModalHostView;Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsControllerCompat;Ljava/util/List;ILjava/lang/Object;)V

    goto :goto_0

    .line 414
    :cond_1
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    :goto_0
    return-void

    .line 397
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dialog must have window when we call updateProperties"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dialog must exist when we call updateProperties"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "outChildren"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 158
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 159
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialogRootViewGroup:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .locals 1

    const-string/jumbo v0, "structure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialogRootViewGroup:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    return-void
.end method

.method public final getAnimationType()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->animationType:Ljava/lang/String;

    return-object v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialogRootViewGroup:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialogRootViewGroup:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final getDialog()Landroid/app/Dialog;
    .locals 1
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public final getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialogRootViewGroup:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->getEventDispatcher$ReactAndroid_release()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final getHardwareAccelerated()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->hardwareAccelerated:Z

    return v0
.end method

.method public final getNavigationBarTranslucent()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->navigationBarTranslucent:Z

    return v0
.end method

.method public final getOnRequestCloseListener()Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->onRequestCloseListener:Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;

    return-object v0
.end method

.method public final getOnShowListener()Landroid/content/DialogInterface$OnShowListener;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object v0
.end method

.method public final getStateWrapper()Lcom/facebook/react/uimanager/StateWrapper;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialogRootViewGroup:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->getStateWrapper$ReactAndroid_release()Lcom/facebook/react/uimanager/StateWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final getStatusBarTranslucent()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->statusBarTranslucent:Z

    return v0
.end method

.method public final getTransparent()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->transparent:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 148
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 149
    invoke-virtual {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.uimanager.ThemedReactContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 153
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 154
    invoke-virtual {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->onDropInstance()V

    return-void
.end method

.method public final onDropInstance()V
    .locals 2

    .line 190
    invoke-virtual {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.uimanager.ThemedReactContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 191
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->dismiss()V

    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 225
    invoke-virtual {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->onDropInstance()V

    return-void
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 0

    .line 216
    invoke-virtual {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->showOrUpdate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 167
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialogRootViewGroup:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .line 175
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 176
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 177
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialogRootViewGroup:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final setAnimationType(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->animationType:Ljava/lang/String;

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->createNewDialog:Z

    return-void
.end method

.method public final setDialogRootViewGroupTestId(Ljava/lang/String;)V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialogRootViewGroup:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    sget v1, Lcom/facebook/react/R$id;->react_test_id:I

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final setEventDispatcher(Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialogRootViewGroup:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->setEventDispatcher$ReactAndroid_release(Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    return-void
.end method

.method public final setHardwareAccelerated(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->hardwareAccelerated:Z

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->createNewDialog:Z

    return-void
.end method

.method public setId(I)V
    .locals 1

    .line 141
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 144
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialogRootViewGroup:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->setId(I)V

    return-void
.end method

.method public final setNavigationBarTranslucent(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->navigationBarTranslucent:Z

    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->createNewDialog:Z

    return-void
.end method

.method public final setOnRequestCloseListener(Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->onRequestCloseListener:Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;

    return-void
.end method

.method public final setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-void
.end method

.method public final setStateWrapper(Lcom/facebook/react/uimanager/StateWrapper;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialogRootViewGroup:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->setStateWrapper$ReactAndroid_release(Lcom/facebook/react/uimanager/StateWrapper;)V

    return-void
.end method

.method public final setStatusBarTranslucent(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->statusBarTranslucent:Z

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->createNewDialog:Z

    return-void
.end method

.method public final setTransparent(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->transparent:Z

    return-void
.end method

.method public final showOrUpdate()V
    .locals 5

    .line 246
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 250
    iget-boolean v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->createNewDialog:Z

    if-eqz v0, :cond_7

    .line 251
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->dismiss()V

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->createNewDialog:Z

    .line 260
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->animationType:Ljava/lang/String;

    .line 261
    const-string v1, "fade"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/facebook/react/R$style;->Theme_FullScreenDialogAnimatedFade:I

    goto :goto_0

    .line 262
    :cond_0
    const-string/jumbo v1, "slide"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/react/R$style;->Theme_FullScreenDialogAnimatedSlide:I

    goto :goto_0

    .line 263
    :cond_1
    sget v0, Lcom/facebook/react/R$style;->Theme_FullScreenDialog:I

    .line 266
    :goto_0
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 267
    new-instance v2, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getContext()Landroid/content/Context;

    move-result-object v3

    :goto_1
    invoke-direct {v2, v3, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 268
    iput-object v2, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->dialog:Landroid/app/Dialog;

    .line 269
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    const/16 v3, 0x8

    .line 270
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 274
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 275
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->updateProperties()V

    .line 277
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 279
    new-instance v0, Lcom/facebook/react/views/modal/ReactModalHostView$showOrUpdate$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/modal/ReactModalHostView$showOrUpdate$1;-><init>(Lcom/facebook/react/views/modal/ReactModalHostView;)V

    check-cast v0, Landroid/content/DialogInterface$OnKeyListener;

    .line 278
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 308
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 309
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->hardwareAccelerated:Z

    if-eqz v0, :cond_4

    .line 310
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4

    const/high16 v4, 0x1000000

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 312
    :cond_4
    invoke-direct {p0, v1}, Lcom/facebook/react/views/modal/ReactModalHostView;->isFlagSecureSet(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 314
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v4, 0x2000

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    :cond_5
    if-eqz v1, :cond_6

    .line 317
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 318
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 319
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->updateSystemAppearance()V

    .line 320
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    :cond_6
    return-void

    .line 253
    :cond_7
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->updateProperties()V

    return-void
.end method
