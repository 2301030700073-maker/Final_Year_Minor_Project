.class Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 140
    iget-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
