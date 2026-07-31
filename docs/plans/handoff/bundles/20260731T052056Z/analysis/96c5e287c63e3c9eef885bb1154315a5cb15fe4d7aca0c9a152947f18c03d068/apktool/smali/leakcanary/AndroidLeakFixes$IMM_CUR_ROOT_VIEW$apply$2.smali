.class public final Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcurtains/OnRootViewRemovedListener;


# instance fields
.field public final synthetic $inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public final synthetic $mCurRootViewField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$2;->$mCurRootViewField:Ljava/lang/reflect/Field;

    .line 5
    .line 6
    iput-object p2, p0, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$2;->$inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onRootViewsChanged(Landroid/view/View;Z)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$2;->$mCurRootViewField:Ljava/lang/reflect/Field;

    .line 4
    .line 5
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$2;->$inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 6
    .line 7
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/View;

    .line 12
    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
