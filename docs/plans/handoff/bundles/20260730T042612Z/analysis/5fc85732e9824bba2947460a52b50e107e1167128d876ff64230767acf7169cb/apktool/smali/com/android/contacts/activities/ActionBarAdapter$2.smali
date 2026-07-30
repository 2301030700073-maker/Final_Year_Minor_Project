.class Lcom/android/contacts/activities/ActionBarAdapter$2;
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

    .line 171
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$2;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 174
    iget-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$2;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    return-void
.end method
