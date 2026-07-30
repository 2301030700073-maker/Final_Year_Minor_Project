.class Lcom/android/contacts/activities/ActionBarAdapter$1;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ActionBarAdapter;->setupSearchAndSelectionViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ActionBarAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$1;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$1;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-static {p1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$100(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$1;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-static {p1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$100(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onUpButtonPressed()V

    :cond_0
    return-void
.end method
