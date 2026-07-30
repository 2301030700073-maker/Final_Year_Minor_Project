.class Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ActionBarAdapter;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V
    .locals 0

    .line 219
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 223
    iget-object p2, p0, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-static {p2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$200(Lcom/android/contacts/activities/ActionBarAdapter;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object p2, p0, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/contacts/activities/ActionBarAdapter;->access$202(Lcom/android/contacts/activities/ActionBarAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    iget-object p2, p0, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-static {p2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$300(Lcom/android/contacts/activities/ActionBarAdapter;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 229
    iget-object p2, p0, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object p2, p0, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-static {p2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$100(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 232
    iget-object p2, p0, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-static {p2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$100(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    .line 234
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/contacts/activities/ActionBarAdapter$SearchTextWatcher;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-static {p2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$400(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/view/View;

    move-result-object p2

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p3, 0x8

    .line 234
    :cond_3
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
