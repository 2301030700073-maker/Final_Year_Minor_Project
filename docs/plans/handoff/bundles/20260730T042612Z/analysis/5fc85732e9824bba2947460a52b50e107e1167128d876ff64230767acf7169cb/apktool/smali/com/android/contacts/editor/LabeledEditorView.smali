.class public abstract Lcom/android/contacts/editor/LabeledEditorView;
.super Landroid/widget/LinearLayout;
.source "LabeledEditorView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor;
.implements Lcom/android/contacts/util/DialogManager$DialogShowingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;
    }
.end annotation


# static fields
.field public static final CUSTOM_SELECTION:Lcom/android/contacts/model/account/AccountType$EditType;


# instance fields
.field private mDelete:Landroid/widget/ImageView;

.field protected mDeleteContainer:Landroid/view/View;

.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

.field private mEntry:Lcom/android/contacts/model/ValuesDelta;

.field private mIsAttachedToWindow:Z

.field private mIsDeletable:Z

.field private mKind:Lcom/android/contacts/model/dataitem/DataKind;

.field private mLabel:Landroid/widget/Spinner;

.field private mListener:Lcom/android/contacts/editor/Editor$EditorListener;

.field private mReadOnly:Z

.field private mSelectedLabelIndex:I

.field private mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mState:Lcom/android/contacts/model/RawContactDelta;

.field private mType:Lcom/android/contacts/model/account/AccountType$EditType;

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

.field private mWasEmpty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    new-instance v0, Lcom/android/contacts/model/account/AccountType$EditType;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/contacts/model/account/AccountType$EditType;-><init>(II)V

    sput-object v0, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/model/account/AccountType$EditType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 111
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 97
    new-instance v0, Lcom/android/contacts/editor/LabeledEditorView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/LabeledEditorView$1;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 112
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 80
    iput-boolean p2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    .line 81
    iput-boolean p2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    const/4 p2, 0x0

    .line 87
    iput-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 97
    new-instance p2, Lcom/android/contacts/editor/LabeledEditorView$1;

    invoke-direct {p2, p0}, Lcom/android/contacts/editor/LabeledEditorView$1;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    iput-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 80
    iput-boolean p2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    .line 81
    iput-boolean p2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    const/4 p2, 0x0

    .line 87
    iput-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 97
    new-instance p2, Lcom/android/contacts/editor/LabeledEditorView$1;

    invoke-direct {p2, p0}, Lcom/android/contacts/editor/LabeledEditorView$1;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    iput-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 122
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/LabeledEditorView;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsAttachedToWindow:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/RawContactDelta;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/account/AccountType$EditType;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/contacts/editor/LabeledEditorView;Lcom/android/contacts/model/account/AccountType$EditType;)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/account/AccountType$EditType;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/ValuesDelta;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/ValuesDelta;

    return-object p0
.end method

.method private createCustomDialog()Landroid/app/Dialog;
    .locals 5

    .line 442
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 443
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f1000c7

    .line 444
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c0026

    const/4 v3, 0x0

    .line 446
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090091

    .line 447
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/16 v4, 0x2001

    .line 448
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v4, 0x1

    .line 449
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 451
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 452
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 454
    new-instance v1, Lcom/android/contacts/editor/LabeledEditorView$3;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/editor/LabeledEditorView$3;-><init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/widget/EditText;)V

    const v4, 0x104000a

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    .line 479
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 481
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 482
    new-instance v1, Lcom/android/contacts/editor/LabeledEditorView$4;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/contacts/editor/LabeledEditorView$4;-><init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 488
    new-instance v1, Lcom/android/contacts/editor/LabeledEditorView$5;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/contacts/editor/LabeledEditorView$5;-><init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 502
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0
.end method

.method private getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    if-nez v0, :cond_1

    .line 552
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 553
    instance-of v1, v0, Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;

    if-eqz v1, :cond_0

    .line 558
    check-cast v0, Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;

    invoke-interface {v0}, Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;->getDialogManager()Lcom/android/contacts/util/DialogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    goto :goto_0

    .line 554
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View must be hosted in an Activity that implements DialogManager.DialogShowingViewActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700ed

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    return-void
.end method

.method private setupDeleteButton()V
    .locals 3

    .line 229
    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupLabelButton(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 218
    iget-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 219
    iget-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1

    .line 221
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "dialog_id"

    .line 566
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->createCustomDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 571
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dialogId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bundle must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteEditor()V
    .locals 1

    .line 196
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->markDeleted()V

    .line 199
    invoke-static {}, Lcom/android/contacts/editor/EditorAnimator;->getInstance()Lcom/android/contacts/editor/EditorAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/contacts/editor/EditorAnimator;->removeEditorView(Landroid/view/View;)V

    return-void
.end method

.method protected getEditorListener()Lcom/android/contacts/editor/Editor$EditorListener;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    return-object v0
.end method

.method protected getEntry()Lcom/android/contacts/model/ValuesDelta;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/ValuesDelta;

    return-object v0
.end method

.method protected getKind()Lcom/android/contacts/model/dataitem/DataKind;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    return-object v0
.end method

.method public getPhonetic(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method protected getType()Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/account/AccountType$EditType;

    return-object v0
.end method

.method public getValues()Lcom/android/contacts/model/ValuesDelta;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/ValuesDelta;

    return-object v0
.end method

.method protected isFieldChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v0

    .line 390
    :cond_1
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isReadOnly()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    return v0
.end method

.method public markDeleted()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/ValuesDelta;->markDeleted()V

    return-void
.end method

.method protected notifyEditorListener()V
    .locals 4

    .line 358
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 359
    invoke-interface {v0, v1}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    .line 362
    :cond_0
    invoke-interface {p0}, Lcom/android/contacts/editor/Editor;->isEmpty()Z

    move-result v0

    .line 363
    iget-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    if-eq v1, v0, :cond_5

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    .line 365
    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    .line 366
    invoke-interface {v2, v3}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    .line 368
    :cond_1
    iget-boolean v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 370
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v2, :cond_3

    .line 371
    invoke-interface {v2, v1}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    .line 373
    :cond_3
    iget-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 375
    :cond_4
    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    .line 378
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    if-eqz v0, :cond_5

    .line 379
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 176
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsAttachedToWindow:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 184
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsAttachedToWindow:Z

    return-void
.end method

.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;->isFieldChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 328
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->notifyEditorListener()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const v0, 0x7f0901b7

    .line 138
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    const/4 v1, -0x1

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setId(I)V

    .line 141
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    invoke-static {v0}, Lcom/android/contacts/editor/ViewSelectedFilter;->suppressViewSelectedEvent(Landroid/view/View;)V

    const v0, 0x7f0900a2

    .line 144
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageView;

    const v0, 0x7f0900a3

    .line 145
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    .line 146
    new-instance v1, Lcom/android/contacts/editor/LabeledEditorView$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/LabeledEditorView$2;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    .line 171
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 170
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method protected onLabelRebuilt()V
    .locals 0

    return-void
.end method

.method protected onOptionalFieldVisibilityChange()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 245
    invoke-interface {v0, v1}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    :cond_0
    return-void
.end method

.method protected onTypeSelectionChange(I)V
    .locals 3

    .line 520
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 522
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->hasCustomSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/model/account/AccountType$EditType;

    if-ne v0, v1, :cond_0

    return-void

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/account/AccountType$EditType;

    if-ne v1, v0, :cond_1

    iget-object v1, v1, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v1, :cond_1

    return-void

    .line 530
    :cond_1
    iget-object v1, v0, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    .line 531
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->showDialog(I)V

    goto :goto_0

    .line 534
    :cond_2
    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/account/AccountType$EditType;

    .line 535
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/ValuesDelta;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget-object v2, v2, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iget v0, v0, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 536
    iput p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSelectedLabelIndex:I

    .line 537
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V

    .line 538
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->requestFocusForFirstEditField()V

    .line 539
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onLabelRebuilt()V

    :goto_0
    return-void
.end method

.method public rebuildLabel()V
    .locals 8

    .line 296
    new-instance v0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;-><init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    .line 297
    iget v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSelectedLabelIndex:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->setSelectedIndex(I)V

    .line 298
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 299
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->hasCustomSelection()Z

    move-result v0

    const/4 v1, 0x2

    const v2, 0x7f100106

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    sget-object v6, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/model/account/AccountType$EditType;

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 301
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    .line 302
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/ValuesDelta;

    iget-object v7, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/account/AccountType$EditType;

    iget-object v7, v7, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    .line 303
    invoke-virtual {v6, v7}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 304
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget v6, v6, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 302
    invoke-virtual {v5, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/account/AccountType$EditType;

    if-eqz v0, :cond_1

    iget v5, v0, Lcom/android/contacts/model/account/AccountType$EditType;->labelRes:I

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget v5, v5, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    if-lez v5, :cond_1

    .line 307
    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v6, v0}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 308
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    .line 309
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    .line 310
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/account/AccountType$EditType;

    iget v7, v7, Lcom/android/contacts/model/account/AccountType$EditType;->labelRes:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 311
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget v6, v6, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 309
    invoke-virtual {v5, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    if-lez v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    .line 314
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100107

    new-array v3, v3, [Ljava/lang/Object;

    .line 315
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget v6, v6, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 314
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected rebuildValues()V
    .locals 6

    .line 394
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/ValuesDelta;

    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    iget-boolean v4, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    return-void
.end method

.method protected abstract requestFocusForFirstEditField()V
.end method

.method protected saveValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDeletable(Z)V
    .locals 0

    .line 260
    iput-boolean p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    .line 261
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->setupDeleteButton()V

    return-void
.end method

.method public setDeleteButtonVisible(Z)V
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 266
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 267
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 1

    .line 405
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    .line 406
    iput-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/ValuesDelta;

    .line 407
    iput-object p3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    .line 408
    iput-boolean p4, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    .line 409
    iput-object p5, p0, Lcom/android/contacts/editor/LabeledEditorView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    const/4 v0, -0x1

    .line 410
    invoke-virtual {p5, p3, p1, p2, v0}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;I)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 412
    invoke-virtual {p2}, Lcom/android/contacts/model/ValuesDelta;->isVisible()Z

    move-result p3

    if-nez p3, :cond_0

    const/16 p1, 0x8

    .line 414
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 417
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 420
    invoke-static {p1}, Lcom/android/contacts/model/RawContactModifier;->hasEditTypes(Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result p5

    .line 421
    invoke-direct {p0, p5}, Lcom/android/contacts/editor/LabeledEditorView;->setupLabelButton(Z)V

    .line 422
    iget-object p5, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    if-nez p4, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-virtual {p5, p3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 423
    iget-object p3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget p3, p3, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    if-lez p3, :cond_2

    .line 424
    iget-object p3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    iget-object p5, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget p5, p5, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/Spinner;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 426
    :cond_2
    invoke-static {p2, p1}, Lcom/android/contacts/model/RawContactModifier;->getCurrentType(Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/account/AccountType$EditType;

    .line 427
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V

    return-void
.end method

.method showDialog(I)V
    .locals 2

    .line 545
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dialog_id"

    .line 546
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 547
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getDialogManager()Lcom/android/contacts/util/DialogManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/android/contacts/util/DialogManager;->showDialogInView(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method updateCustomDialogOkButtonState(Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, -0x1

    .line 509
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 510
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method protected final updateEmptiness()V
    .locals 1

    .line 354
    invoke-interface {p0}, Lcom/android/contacts/editor/Editor;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    return-void
.end method

.method public updatePhonetic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
