.class Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$2;
.super Ljava/lang/Object;
.source "ContactMultiDeletionInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->showDialog(II[J[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$2;->this$0:Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 290
    iget-object p1, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$2;->this$0:Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->access$002(Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;Z)Z

    .line 291
    iget-object p1, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$2;->this$0:Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->access$102(Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
