.class public final Landroidx/core/view/insets/SystemBarStateMonitor$3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$child:Ljava/lang/Object;

.field public final synthetic val$group:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Landroidx/core/view/insets/SystemBarStateMonitor$3;->$r8$classId:I

    iput-object p2, p0, Landroidx/core/view/insets/SystemBarStateMonitor$3;->val$group:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/view/insets/SystemBarStateMonitor$3;->val$child:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentLayoutInflaterFactory;Landroidx/fragment/app/FragmentStateManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor$3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/core/view/insets/SystemBarStateMonitor$3;->val$child:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/core/view/insets/SystemBarStateMonitor$3;->val$group:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method private final onViewAttachedToWindow$androidx$compose$ui$platform$WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$1(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onViewDetachedFromWindow$androidx$fragment$app$FragmentLayoutInflaterFactory$1(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor$3;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/view/insets/SystemBarStateMonitor$3;->val$child:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/core/view/insets/SystemBarStateMonitor$3;->val$group:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    .line 15
    .line 16
    iget-object p0, v2, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/view/ViewGroup;

    .line 28
    .line 29
    check-cast v1, Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    .line 30
    .line 31
    iget-object p1, v1, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 32
    .line 33
    invoke-static {p0, p1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->forceCompleteAllOperations()V

    .line 38
    .line 39
    .line 40
    :pswitch_1
    return-void

    .line 41
    :pswitch_2
    check-cast v2, Landroid/view/ViewGroup;

    .line 42
    .line 43
    check-cast v1, Landroidx/core/view/insets/SystemBarStateMonitor$1;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor$3;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/view/insets/SystemBarStateMonitor$3;->val$child:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/core/view/insets/SystemBarStateMonitor$3;->val$group:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    check-cast v2, Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v2, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 16
    .line 17
    .line 18
    check-cast v1, Lorg/wikipedia/views/PageActionOverflowView;

    .line 19
    .line 20
    invoke-virtual {v1}, Lorg/wikipedia/views/PageActionOverflowView;->dismissPopupWindowHost()V

    .line 21
    .line 22
    .line 23
    :pswitch_0
    return-void

    .line 24
    :pswitch_1
    check-cast v2, Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {v2, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 27
    .line 28
    .line 29
    check-cast v1, Landroidx/compose/runtime/Recomposer;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/compose/runtime/Recomposer;->cancel()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_2
    check-cast v2, Landroid/view/ViewGroup;

    .line 36
    .line 37
    check-cast v1, Landroidx/core/view/insets/SystemBarStateMonitor$1;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
