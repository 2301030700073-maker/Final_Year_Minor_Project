.class Lcom/android/contacts/preference/AboutPreferenceFragment$1;
.super Ljava/lang/Object;
.source "AboutPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/preference/AboutPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/preference/AboutPreferenceFragment;

.field final synthetic val$privacyPolicyPreference:Landroid/preference/Preference;

.field final synthetic val$termsOfServicePreference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/contacts/preference/AboutPreferenceFragment;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/contacts/preference/AboutPreferenceFragment$1;->this$0:Lcom/android/contacts/preference/AboutPreferenceFragment;

    iput-object p2, p0, Lcom/android/contacts/preference/AboutPreferenceFragment$1;->val$privacyPolicyPreference:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/android/contacts/preference/AboutPreferenceFragment$1;->val$termsOfServicePreference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/preference/AboutPreferenceFragment$1;->val$privacyPolicyPreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 76
    iget-object p1, p0, Lcom/android/contacts/preference/AboutPreferenceFragment$1;->this$0:Lcom/android/contacts/preference/AboutPreferenceFragment;

    const-string v0, "http://www.google.com/policies/privacy"

    invoke-static {p1, v0}, Lcom/android/contacts/preference/AboutPreferenceFragment;->access$000(Lcom/android/contacts/preference/AboutPreferenceFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/preference/AboutPreferenceFragment$1;->val$termsOfServicePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 78
    iget-object p1, p0, Lcom/android/contacts/preference/AboutPreferenceFragment$1;->this$0:Lcom/android/contacts/preference/AboutPreferenceFragment;

    const-string v0, "http://www.google.com/policies/terms"

    invoke-static {p1, v0}, Lcom/android/contacts/preference/AboutPreferenceFragment;->access$000(Lcom/android/contacts/preference/AboutPreferenceFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    iget-object p1, p0, Lcom/android/contacts/preference/AboutPreferenceFragment$1;->this$0:Lcom/android/contacts/preference/AboutPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/contacts/preference/AboutPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/contacts/preference/AboutPreferenceFragment$1;->this$0:Lcom/android/contacts/preference/AboutPreferenceFragment;

    const v1, 0x7f100241

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
