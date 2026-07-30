.class public Lcom/android/contacts/activities/ContactSelectionActivity;
.super Lcom/android/contacts/AppCompatContactsActivity;
.source "ContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/contacts/activities/ActionBarAdapter$Listener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$GroupMemberPickerListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$JoinContactActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;
    }
.end annotation


# instance fields
.field private mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

.field private mActionCode:I

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mIsSearchMode:Z

.field private mIsSearchSupported:Z

.field protected mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/list/ContactEntryListFragment<",
            "*>;"
        }
    .end annotation
.end field

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/android/contacts/AppCompatContactsActivity;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 95
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/ContactSelectionActivity;)Lcom/android/contacts/list/MultiSelectContactsListFragment;
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getMultiSelectListFragment()Lcom/android/contacts/list/MultiSelectContactsListFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/ContactSelectionActivity;[J)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnSelectedContacts([J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->startCreateNewContactActivity()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/ContactSelectionActivity;)Lcom/android/contacts/activities/ActionBarAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    return-object p0
.end method

.method private configureActivityTitle()V
    .locals 6

    .line 200
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 205
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x15

    const v3, 0x7f1001d3

    const v4, 0x7f100202

    const v5, 0x7f1000a0

    if-eq v1, v2, :cond_5

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_4

    const/16 v2, 0x46

    if-eq v1, v2, :cond_4

    const/16 v2, 0x50

    if-eq v1, v2, :cond_3

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_4

    const/16 v2, 0x64

    if-eq v1, v2, :cond_4

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x78

    if-eq v1, v2, :cond_2

    const/16 v2, 0x82

    if-eq v1, v2, :cond_2

    const/16 v2, 0x96

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f1001d3

    goto :goto_0

    :cond_1
    const v0, 0x7f100235

    goto :goto_0

    :cond_2
    const v0, 0x7f100202

    goto :goto_0

    :cond_3
    const v0, 0x7f10009d

    goto :goto_0

    :cond_4
    :pswitch_1
    const v0, 0x7f1000a0

    goto :goto_0

    :cond_5
    const v0, 0x7f10013c

    :goto_0
    if-lez v0, :cond_6

    .line 261
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private configureSearchMode()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsSearchMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 171
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method private getMultiSelectListFragment()Lcom/android/contacts/list/MultiSelectContactsListFragment;
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v1, v0, Lcom/android/contacts/list/MultiSelectContactsListFragment;

    if-eqz v1, :cond_0

    .line 429
    check-cast v0, Lcom/android/contacts/list/MultiSelectContactsListFragment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPhoneNumberPickerFragment(Lcom/android/contacts/list/ContactsRequest;)Lcom/android/contacts/list/PhoneNumberPickerFragment;
    .locals 0

    .line 391
    iget-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 392
    new-instance p1, Lcom/android/contacts/list/LegacyPhoneNumberPickerFragment;

    invoke-direct {p1}, Lcom/android/contacts/list/LegacyPhoneNumberPickerFragment;-><init>()V

    return-object p1

    .line 394
    :cond_0
    new-instance p1, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {p1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    return-object p1
.end method

.method private getTargetContactId()J
    .locals 7

    .line 661
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.contacts.action.CONTACT_ID"

    const-wide/16 v2, -0x1

    .line 662
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    .line 665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is missing required extra: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContactSelection"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 667
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 668
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-wide v2

    :cond_0
    return-wide v4
.end method

.method private prepareSearchViewAndActionBar(Landroid/os/Bundle;)V
    .locals 8

    const v0, 0x7f0901ec

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/contacts/AppCompatContactsActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 149
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const v0, 0x7f0901ee

    .line 152
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/util/ViewUtil;->addRectangularOutlineProvider(Landroid/view/View;Landroid/content/res/Resources;)V

    .line 154
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v7, 0x7f100116

    move-object v2, v0

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/contacts/activities/ActionBarAdapter;-><init>(Landroid/app/Activity;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroidx/appcompat/app/ActionBar;Landroidx/appcompat/widget/Toolbar;I)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x1

    .line 156
    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setShowHomeIcon(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setShowHomeAsUp(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, p1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    .line 162
    iget-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result p1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 163
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result p1

    const/16 v0, 0x6a

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 164
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result p1

    const/16 v0, 0x6b

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 165
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsSearchSupported:Z

    .line 166
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureSearchMode()V

    return-void
.end method

.method private returnSelectedContacts([J)V
    .locals 2

    .line 593
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.contacts.action.CONTACT_IDS"

    .line 594
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 595
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    return-void
.end method

.method private startCreateNewContactActivity()V
    .locals 3

    .line 675
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "finishActivityOnSaveCompleted"

    const/4 v2, 0x1

    .line 676
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 678
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivityAndForwardResult(Landroid/content/Intent;)V

    return-void
.end method

.method private updateAddContactsButton(I)V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getSelectionContainer()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09004f

    .line 486
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 488
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 489
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 490
    new-instance p1, Lcom/android/contacts/activities/ContactSelectionActivity$1;

    invoke-direct {p1, p0}, Lcom/android/contacts/activities/ContactSelectionActivity$1;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 499
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 5

    .line 269
    iget v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    const/16 v1, 0xb

    const/16 v2, 0xa

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid action code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :sswitch_0
    new-instance v0, Lcom/android/contacts/list/JoinContactListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/JoinContactListFragment;-><init>()V

    .line 354
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getTargetContactId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/JoinContactListFragment;->setTargetContactId(J)V

    const/16 v1, 0xf

    .line 355
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setListType(I)V

    .line 356
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_0

    .line 338
    :sswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getPhoneNumberPickerFragment(Lcom/android/contacts/list/ContactsRequest;)Lcom/android/contacts/list/PhoneNumberPickerFragment;

    move-result-object v0

    const-string v2, "android.intent.action.SENDTO"

    .line 339
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setShortcutAction(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setListType(I)V

    .line 341
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_0

    .line 330
    :sswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getPhoneNumberPickerFragment(Lcom/android/contacts/list/ContactsRequest;)Lcom/android/contacts/list/PhoneNumberPickerFragment;

    move-result-object v0

    const-string v2, "android.intent.action.CALL"

    .line 331
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setShortcutAction(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setListType(I)V

    .line 333
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_0

    .line 298
    :sswitch_3
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 299
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactPickerFragment;->setShortcutRequested(Z)V

    .line 300
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setListType(I)V

    .line 301
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_0

    .line 319
    :sswitch_4
    new-instance v0, Lcom/android/contacts/list/MultiSelectPhoneNumbersListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/MultiSelectPhoneNumbersListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 320
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 325
    :sswitch_5
    new-instance v0, Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 326
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 313
    :sswitch_6
    new-instance v0, Lcom/android/contacts/list/EmailAddressPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/EmailAddressPickerFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    const/16 v1, 0xd

    .line 314
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setListType(I)V

    goto/16 :goto_0

    .line 346
    :sswitch_7
    new-instance v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;-><init>()V

    const/16 v1, 0xe

    .line 347
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setListType(I)V

    .line 348
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_0

    .line 306
    :sswitch_8
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getPhoneNumberPickerFragment(Lcom/android/contacts/list/ContactsRequest;)Lcom/android/contacts/list/PhoneNumberPickerFragment;

    move-result-object v0

    const/16 v1, 0xc

    .line 307
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setListType(I)V

    .line 308
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_0

    .line 271
    :sswitch_9
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 272
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactPickerFragment;->setEditMode(Z)V

    const/4 v1, 0x0

    .line 273
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectorySearchMode(I)V

    .line 274
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setCreateContactEnabled(Z)V

    .line 275
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setListType(I)V

    .line 276
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 290
    :sswitch_a
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 291
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setCreateContactEnabled(Z)V

    .line 292
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setListType(I)V

    .line 293
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 361
    :sswitch_b
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.contacts.extra.GROUP_ACCOUNT_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.contacts.extra.GROUP_ACCOUNT_TYPE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.contacts.extra.GROUP_ACCOUNT_DATA_SET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.contacts.extra.GROUP_CONTACT_IDS"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 369
    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/list/GroupMemberPickerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/contacts/list/GroupMemberPickerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    const/16 v1, 0x10

    .line 371
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setListType(I)V

    goto :goto_0

    .line 282
    :sswitch_c
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 283
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->shouldIncludeFavorites()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setIncludeFavorites(Z)V

    .line 284
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setListType(I)V

    .line 285
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setLegacyCompatibilityMode(Z)V

    .line 383
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectoryResultLimit(I)V

    .line 385
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090125

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 386
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_c
        0x15 -> :sswitch_b
        0x3c -> :sswitch_c
        0x46 -> :sswitch_a
        0x50 -> :sswitch_9
        0x5a -> :sswitch_8
        0x64 -> :sswitch_7
        0x69 -> :sswitch_6
        0x6a -> :sswitch_5
        0x6b -> :sswitch_4
        0x6e -> :sswitch_3
        0x78 -> :sswitch_2
        0x82 -> :sswitch_1
        0x96 -> :sswitch_0
    .end sparse-switch
.end method

.method public isSearchMode()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    return v0
.end method

.method public isSelectionMode()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSelectionMode()Z

    move-result v0

    return v0
.end method

.method public onAction(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 453
    iget-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 454
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getMultiSelectListFragment()Lcom/android/contacts/list/MultiSelectContactsListFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 455
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getMultiSelectListFragment()Lcom/android/contacts/list/MultiSelectContactsListFragment;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->displayCheckBoxes(Z)V

    .line 457
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 446
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getMultiSelectListFragment()Lcom/android/contacts/list/MultiSelectContactsListFragment;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 447
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getMultiSelectListFragment()Lcom/android/contacts/list/MultiSelectContactsListFragment;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->displayCheckBoxes(Z)V

    .line 449
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 438
    :cond_4
    iput-boolean v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsSearchMode:Z

    .line 439
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureSearchMode()V

    goto :goto_0

    .line 442
    :cond_5
    iget-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object p1

    .line 443
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, p1, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    .line 100
    instance-of v0, p1, Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Lcom/android/contacts/list/ContactEntryListFragment;

    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->setupActionListener()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 701
    invoke-virtual {p0}, Lcom/android/contacts/activities/AppCompatTransactionSafeActivity;->isSafeToCommitTransactions()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 705
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->isSelectionMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionMode(Z)V

    .line 707
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getMultiSelectListFragment()Lcom/android/contacts/list/MultiSelectContactsListFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 708
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getMultiSelectListFragment()Lcom/android/contacts/list/MultiSelectContactsListFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->displayCheckBoxes(Z)V

    goto :goto_0

    .line 710
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsSearchMode:Z

    if-eqz v0, :cond_2

    .line 711
    iput-boolean v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsSearchMode:Z

    .line 712
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureSearchMode()V

    goto :goto_0

    .line 714
    :cond_2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 655
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900f4

    if-ne p1, v0, :cond_0

    .line 656
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->startCreateNewContactActivity()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Lcom/android/contacts/AppCompatContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    .line 113
    invoke-static {p0}, Lcom/android/contacts/activities/RequestPermissionsActivity;->startPermissionActivityIfNeeded(Landroid/app/Activity;)Z

    if-eqz p1, :cond_0

    const-string v0, "actionCode"

    .line 116
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    const-string v0, "searchMode"

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsSearchMode:Z

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 122
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 123
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const v0, 0x7f0c002c

    .line 128
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 130
    iget v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 131
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 132
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureListFragment()V

    .line 135
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->prepareSearchViewAndActionBar(Landroid/os/Bundle;)V

    .line 136
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureActivityTitle()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 683
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 685
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0005

    .line 686
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f090139

    .line 688
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 689
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsSearchMode:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsSearchSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 691
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 693
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v0, 0x7f060020

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return v1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 634
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09019e

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 636
    iget-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    const/4 p1, 0x0

    .line 178
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 179
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    const v2, 0x7f090139

    if-ne v0, v2, :cond_1

    .line 181
    iget-boolean p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsSearchMode:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsSearchMode:Z

    .line 182
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureSearchMode()V

    :goto_0
    return v1

    .line 184
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 191
    invoke-super {p0, p1}, Lcom/android/contacts/activities/AppCompatTransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 192
    iget v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    const-string v1, "actionCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIsSearchMode:Z

    const-string v1, "searchMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSelectedContactIdsChanged()V
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/MultiSelectContactsListFragment;

    if-eqz v0, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getMultiSelectListFragment()Lcom/android/contacts/list/MultiSelectContactsListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->getSelectedContactIds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    .line 476
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionCount(I)V

    .line 477
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->updateAddContactsButton(I)V

    .line 480
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public onStartDisplayingCheckBoxes()V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionMode(Z)V

    return-void
.end method

.method public onStopDisplayingCheckBoxes()V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionMode(Z)V

    return-void
.end method

.method public onUpButtonPressed()V
    .locals 0

    .line 464
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->onBackPressed()V

    return-void
.end method

.method public returnPickerResult(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    .line 648
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 649
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 650
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public returnPickerResult(Landroid/net/Uri;)V
    .locals 1

    .line 642
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 643
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 644
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    return-void
.end method

.method public setupActionListener()V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v1, v0, Lcom/android/contacts/list/ContactPickerFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 400
    check-cast v0, Lcom/android/contacts/list/ContactPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V

    goto :goto_0

    .line 402
    :cond_0
    instance-of v1, v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v1, :cond_1

    .line 403
    check-cast v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V

    goto :goto_0

    .line 405
    :cond_1
    instance-of v1, v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    if-eqz v1, :cond_2

    .line 406
    check-cast v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setOnPostalAddressPickerActionListener(Lcom/android/contacts/list/OnPostalAddressPickerActionListener;)V

    goto :goto_0

    .line 408
    :cond_2
    instance-of v1, v0, Lcom/android/contacts/list/EmailAddressPickerFragment;

    if-eqz v1, :cond_3

    .line 409
    check-cast v0, Lcom/android/contacts/list/EmailAddressPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setOnEmailAddressPickerActionListener(Lcom/android/contacts/list/OnEmailAddressPickerActionListener;)V

    goto :goto_0

    .line 411
    :cond_3
    instance-of v1, v0, Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment;

    if-eqz v1, :cond_4

    .line 412
    check-cast v0, Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->setCheckBoxListListener(Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;)V

    goto :goto_0

    .line 413
    :cond_4
    instance-of v1, v0, Lcom/android/contacts/list/MultiSelectPhoneNumbersListFragment;

    if-eqz v1, :cond_5

    .line 414
    check-cast v0, Lcom/android/contacts/list/MultiSelectPhoneNumbersListFragment;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->setCheckBoxListListener(Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;)V

    goto :goto_0

    .line 415
    :cond_5
    instance-of v1, v0, Lcom/android/contacts/list/JoinContactListFragment;

    if-eqz v1, :cond_6

    .line 416
    check-cast v0, Lcom/android/contacts/list/JoinContactListFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$JoinContactActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$JoinContactActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V

    goto :goto_0

    .line 418
    :cond_6
    instance-of v1, v0, Lcom/android/contacts/list/GroupMemberPickerFragment;

    if-eqz v1, :cond_7

    .line 419
    check-cast v0, Lcom/android/contacts/list/GroupMemberPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$GroupMemberPickerListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$GroupMemberPickerListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/GroupMemberPickerFragment;->setListener(Lcom/android/contacts/list/GroupMemberPickerFragment$Listener;)V

    .line 421
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getMultiSelectListFragment()Lcom/android/contacts/list/MultiSelectContactsListFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->setCheckBoxListListener(Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;)V

    :goto_0
    return-void

    .line 423
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported list fragment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityAndForwardResult(Landroid/content/Intent;)V
    .locals 2

    const/high16 v0, 0x2000000

    .line 615
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 618
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 623
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startActivityInApp(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivity() failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContactSelection"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f1001a5

    const/4 v0, 0x0

    .line 626
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 627
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 629
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
