.class Lcom/android/contacts/dialog/CallSubjectDialog$1;
.super Ljava/lang/Object;
.source "CallSubjectDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 118
    iput-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog$1;->this$0:Lcom/android/contacts/dialog/CallSubjectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 126
    iget-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog$1;->this$0:Lcom/android/contacts/dialog/CallSubjectDialog;

    invoke-static {p1}, Lcom/android/contacts/dialog/CallSubjectDialog;->access$000(Lcom/android/contacts/dialog/CallSubjectDialog;)V

    return-void
.end method
