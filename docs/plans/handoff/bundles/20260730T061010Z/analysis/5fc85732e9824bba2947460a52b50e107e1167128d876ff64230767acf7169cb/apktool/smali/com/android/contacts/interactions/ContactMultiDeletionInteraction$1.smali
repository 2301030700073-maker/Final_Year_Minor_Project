.class Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$1;
.super Ljava/lang/Object;
.source "ContactMultiDeletionInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$contactIds:[J

.field final synthetic val$namesArray:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;[J[Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$1;->this$0:Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;

    iput-object p2, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$1;->val$contactIds:[J

    iput-object p3, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$1;->val$namesArray:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 281
    iget-object p1, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$1;->this$0:Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;

    iget-object p2, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$1;->val$contactIds:[J

    iget-object v0, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$1;->val$namesArray:[Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->doDeleteContact([J[Ljava/lang/String;)V

    return-void
.end method
