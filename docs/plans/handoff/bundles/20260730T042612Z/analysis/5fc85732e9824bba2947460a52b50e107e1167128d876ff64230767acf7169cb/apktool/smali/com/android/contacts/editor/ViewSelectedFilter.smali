.class public Lcom/android/contacts/editor/ViewSelectedFilter;
.super Landroid/view/View$AccessibilityDelegate;
.source "ViewSelectedFilter.java"


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/contacts/editor/ViewSelectedFilter;->mView:Landroid/view/View;

    return-void
.end method

.method public static suppressViewSelectedEvent(Landroid/view/View;)V
    .locals 2

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 42
    new-instance v1, Lcom/android/contacts/editor/ViewSelectedFilter;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/ViewSelectedFilter;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/contacts/editor/ViewSelectedFilter;->mView:Landroid/view/View;

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method
