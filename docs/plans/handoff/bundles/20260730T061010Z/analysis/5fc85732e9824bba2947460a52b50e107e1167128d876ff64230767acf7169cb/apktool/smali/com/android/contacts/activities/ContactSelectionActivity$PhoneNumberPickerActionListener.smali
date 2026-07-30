.class final Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;
.super Ljava/lang/Object;
.source "ContactSelectionActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhoneNumberPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V
    .locals 0

    .line 532
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onHomeInActionBarSelected()V
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->onBackPressed()V

    return-void
.end method

.method public onPickDataUri(Landroid/net/Uri;ZI)V
    .locals 0

    .line 536
    iget-object p2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {p2, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/net/Uri;)V

    return-void
.end method

.method public onPickPhoneNumber(Ljava/lang/String;ZI)V
    .locals 0

    const-string p1, "ContactSelection"

    const-string p2, "Unsupported call."

    .line 542
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    return-void
.end method
