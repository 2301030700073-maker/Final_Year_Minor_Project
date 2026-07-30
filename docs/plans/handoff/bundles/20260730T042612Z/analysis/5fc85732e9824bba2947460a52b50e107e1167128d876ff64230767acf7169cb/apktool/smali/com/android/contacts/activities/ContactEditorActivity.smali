.class public Lcom/android/contacts/activities/ContactEditorActivity;
.super Lcom/android/contacts/AppCompatContactsActivity;
.source "ContactEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/editor/PhotoSourceDialogFragment$Listener;
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;,
        Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;
    }
.end annotation


# instance fields
.field private mActionBarTitleResId:I

.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mFinishActivityOnSaveCompleted:Z

.field private mFragment:Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;

.field private final mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

.field private mPhotoMode:I

.field private mPhotoSelectionHandler:Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;

.field private mPhotoUri:Landroid/net/Uri;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/contacts/AppCompatContactsActivity;-><init>()V

    .line 260
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 266
    new-instance v0, Lcom/android/contacts/activities/ContactEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorActivity$1;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getEditorFragment()Lcom/android/contacts/editor/ContactEditorFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactEditorActivity;)Landroid/net/Uri;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mPhotoUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/contacts/activities/ContactEditorActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mPhotoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/contacts/activities/ContactEditorActivity;Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;)Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mPhotoSelectionHandler:Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ContactEditorActivity;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z

    return p0
.end method

.method private getEditorFragment()Lcom/android/contacts/editor/ContactEditorFragment;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;

    check-cast v0, Lcom/android/contacts/editor/ContactEditorFragment;

    return-object v0
.end method

.method private getPhotoSelectionHandler()Lcom/android/contacts/detail/PhotoSelectionHandler;
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mPhotoSelectionHandler:Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;

    iget v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mPhotoMode:I

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;I)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mPhotoSelectionHandler:Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mPhotoSelectionHandler:Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;

    return-object v0
.end method


# virtual methods
.method public changePhoto(I)V
    .locals 0

    .line 451
    iput p1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mPhotoMode:I

    .line 455
    invoke-virtual {p0}, Lcom/android/contacts/activities/AppCompatTransactionSafeActivity;->isSafeToCommitTransactions()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 456
    iget p1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mPhotoMode:I

    invoke-static {p0, p1}, Lcom/android/contacts/editor/PhotoSourceDialogFragment;->show(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public getToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mPhotoSelectionHandler:Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;

    if-nez v0, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getPhotoSelectionHandler()Lcom/android/contacts/detail/PhotoSelectionHandler;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mPhotoSelectionHandler:Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mPhotoSelectionHandler:Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/detail/PhotoSelectionHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 436
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;

    if-eqz v0, :cond_0

    .line 442
    invoke-interface {v0}, Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;->revert()Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 315
    invoke-super {p0, p1}, Lcom/android/contacts/AppCompatContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 317
    invoke-static {p0}, Lcom/android/contacts/activities/RequestPermissionsActivity;->startPermissionActivityIfNeeded(Landroid/app/Activity;)Z

    .line 319
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 325
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "finishActivityOnSaveCompleted"

    const/4 v3, 0x0

    .line 330
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z

    const-string v0, "joinCompleted"

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v0, "saveCompleted"

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const v0, 0x7f0c0023

    .line 346
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x7f0901ec

    .line 347
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 348
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const-string v0, "android.intent.action.EDIT"

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f1000ae

    .line 350
    iput v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBarTitleResId:I

    goto :goto_0

    :cond_2
    const v2, 0x7f1000af

    .line 352
    iput v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBarTitleResId:I

    .line 354
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget v3, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBarTitleResId:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 356
    iget v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBarTitleResId:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 359
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f090080

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;

    iput-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;

    if-eqz p1, :cond_3

    const-string v2, "photo_mode"

    .line 363
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mPhotoMode:I

    const-string v2, "action_bar_title"

    .line 364
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBarTitleResId:I

    const-string v2, "photo_uri"

    .line 365
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mPhotoUri:Landroid/net/Uri;

    .line 367
    iget-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBarTitleResId:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 371
    :cond_3
    iget-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {p1, v2}, Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;->setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 375
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    const-string p1, "android.intent.action.INSERT"

    .line 377
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "shortcut-add-contact"

    .line 378
    invoke-static {p0, p1}, Lcom/android/contacts/DynamicShortcuts;->reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 407
    invoke-static {p1}, Lcom/android/contacts/util/DialogManager;->isManagedId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown dialog requested, id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", args: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContactEditorActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8

    .line 384
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 386
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;

    if-nez v0, :cond_0

    return-void

    .line 390
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.EDIT"

    .line 391
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;->setIntentExtras(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string v1, "saveCompleted"

    .line 393
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;

    const/4 v3, 0x1

    const-string v0, "saveMode"

    const/4 v1, 0x0

    .line 395
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "saveSucceeded"

    .line 397
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 398
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    const-wide/16 v0, -0x1

    const-string v7, "joinContactId"

    .line 399
    invoke-virtual {p1, v7, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 394
    invoke-interface/range {v2 .. v7}, Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;->onSaveCompleted(ZIZLandroid/net/Uri;Ljava/lang/Long;)V

    goto :goto_0

    :cond_2
    const-string v1, "joinCompleted"

    .line 400
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;->onJoinCompleted(Landroid/net/Uri;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPickFromGalleryChosen()V
    .locals 1

    .line 476
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getPhotoSelectionHandler()Lcom/android/contacts/detail/PhotoSelectionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->onPickFromGalleryChosen()V

    return-void
.end method

.method public onRemovePictureChosen()V
    .locals 1

    .line 466
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getPhotoSelectionHandler()Lcom/android/contacts/detail/PhotoSelectionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->onRemovePictureChosen()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 421
    invoke-super {p0, p1}, Lcom/android/contacts/activities/AppCompatTransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 422
    iget v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mPhotoMode:I

    const-string v1, "photo_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    iget v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mActionBarTitleResId:I

    const-string v1, "action_bar_title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "photo_uri"

    .line 424
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTakePhotoChosen()V
    .locals 1

    .line 471
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getPhotoSelectionHandler()Lcom/android/contacts/detail/PhotoSelectionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->onTakePhotoChosen()V

    return-void
.end method
