.class Lcom/android/contacts/dialog/CallSubjectDialog$4;
.super Ljava/lang/Object;
.source "CallSubjectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialog/CallSubjectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/dialog/CallSubjectDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/dialog/CallSubjectDialog;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/dialog/CallSubjectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 162
    iget-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/dialog/CallSubjectDialog;

    invoke-static {p1}, Lcom/android/contacts/dialog/CallSubjectDialog;->access$100(Lcom/android/contacts/dialog/CallSubjectDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/dialog/CallSubjectDialog;->access$400(Lcom/android/contacts/dialog/CallSubjectDialog;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/dialog/CallSubjectDialog;

    invoke-static {v1}, Lcom/android/contacts/dialog/CallSubjectDialog;->access$500(Lcom/android/contacts/dialog/CallSubjectDialog;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/contacts/CallUtil;->getCallWithSubjectIntent(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/dialog/CallSubjectDialog;

    const-string v2, "telecom"

    .line 168
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 166
    invoke-static {v1, v2, v0}, Lcom/android/contacts/compat/telecom/TelecomManagerCompat;->placeCall(Landroid/app/Activity;Landroid/telecom/TelecomManager;Landroid/content/Intent;)V

    .line 171
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/dialog/CallSubjectDialog;->access$600(Lcom/android/contacts/dialog/CallSubjectDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/dialog/CallSubjectDialog;

    invoke-static {p1}, Lcom/android/contacts/dialog/CallSubjectDialog;->access$600(Lcom/android/contacts/dialog/CallSubjectDialog;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/contacts/dialog/CallSubjectDialog;->access$700(Lcom/android/contacts/dialog/CallSubjectDialog;Ljava/util/List;)V

    .line 173
    iget-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/dialog/CallSubjectDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
