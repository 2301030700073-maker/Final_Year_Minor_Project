.class Lcom/android/contacts/dialog/CallSubjectDialog$6;
.super Ljava/lang/Object;
.source "CallSubjectDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 196
    iput-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog$6;->this$0:Lcom/android/contacts/dialog/CallSubjectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 199
    iget-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog$6;->this$0:Lcom/android/contacts/dialog/CallSubjectDialog;

    invoke-static {p1}, Lcom/android/contacts/dialog/CallSubjectDialog;->access$100(Lcom/android/contacts/dialog/CallSubjectDialog;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/android/contacts/dialog/CallSubjectDialog$6;->this$0:Lcom/android/contacts/dialog/CallSubjectDialog;

    invoke-static {p2}, Lcom/android/contacts/dialog/CallSubjectDialog;->access$600(Lcom/android/contacts/dialog/CallSubjectDialog;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog$6;->this$0:Lcom/android/contacts/dialog/CallSubjectDialog;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/contacts/dialog/CallSubjectDialog;->access$300(Lcom/android/contacts/dialog/CallSubjectDialog;Z)V

    return-void
.end method
