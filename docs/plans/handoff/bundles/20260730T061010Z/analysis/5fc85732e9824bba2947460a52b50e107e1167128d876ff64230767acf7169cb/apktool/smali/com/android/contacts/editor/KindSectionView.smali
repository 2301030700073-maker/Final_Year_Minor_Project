.class public Lcom/android/contacts/editor/KindSectionView;
.super Landroid/widget/LinearLayout;
.source "KindSectionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/KindSectionView$EventEditorListener;,
        Lcom/android/contacts/editor/KindSectionView$NonNameEditorListener;,
        Lcom/android/contacts/editor/KindSectionView$OtherNameKindEditorListener;,
        Lcom/android/contacts/editor/KindSectionView$StructuredNameEditorListener;
    }
.end annotation


# instance fields
.field private mEditors:Landroid/view/ViewGroup;

.field private mHideIfEmpty:Z

.field private mIcon:Landroid/widget/ImageView;

.field private mIsUserProfile:Z

.field private mKindSectionData:Lcom/android/contacts/editor/KindSectionData;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/contacts/editor/RawContactEditorView$Listener;

.field private mShowOneEmptyEditor:Z

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/KindSectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/android/contacts/editor/KindSectionView;->mShowOneEmptyEditor:Z

    const/4 p1, 0x1

    .line 159
    iput-boolean p1, p0, Lcom/android/contacts/editor/KindSectionView;->mHideIfEmpty:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/KindSectionView;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/android/contacts/editor/KindSectionView;->mShowOneEmptyEditor:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/KindSectionView;)Landroid/view/ViewGroup;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private addGroupEditorView(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V
    .locals 4

    .line 397
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    const v2, 0x7f0c0068

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/GroupMembershipView;

    .line 399
    invoke-virtual {v0, p2}, Lcom/android/contacts/editor/GroupMembershipView;->setKind(Lcom/android/contacts/model/dataitem/DataKind;)V

    .line 400
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/contacts/editor/GroupMembershipView;->setEnabled(Z)V

    .line 401
    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setState(Lcom/android/contacts/model/RawContactDelta;)V

    const p1, 0x7f090116

    .line 404
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object p1, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addNameEditorViews(Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;)V
    .locals 10

    .line 330
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "vnd.android.cursor.item/name"

    .line 332
    invoke-virtual {p2, v1}, Lcom/android/contacts/model/RawContactDelta;->getSuperPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 335
    iget-object p2, p0, Lcom/android/contacts/editor/KindSectionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00a9

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0900c5

    .line 340
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 341
    invoke-virtual {v1}, Lcom/android/contacts/model/ValuesDelta;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090033

    .line 345
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 346
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f090034

    .line 347
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 348
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/contacts/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f090035

    .line 349
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 350
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object p1, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c00a8

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    .line 358
    invoke-virtual {v0, v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/StructuredNameEditorView;

    .line 359
    iget-boolean v2, p0, Lcom/android/contacts/editor/KindSectionView;->mIsUserProfile:Z

    if-nez v2, :cond_1

    .line 361
    new-instance v2, Lcom/android/contacts/editor/KindSectionView$StructuredNameEditorListener;

    .line 362
    invoke-virtual {p2}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/contacts/editor/KindSectionView;->mListener:Lcom/android/contacts/editor/RawContactEditorView$Listener;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/contacts/editor/KindSectionView$StructuredNameEditorListener;-><init>(Lcom/android/contacts/model/ValuesDelta;JLcom/android/contacts/editor/RawContactEditorView$Listener;)V

    .line 361
    invoke-virtual {v0, v2}, Lcom/android/contacts/editor/LabeledEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 364
    :cond_1
    invoke-virtual {v0, v8}, Lcom/android/contacts/editor/LabeledEditorView;->setDeletable(Z)V

    const-string v2, "#name"

    .line 365
    invoke-virtual {p1, v2}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v3

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object v2, v0

    move-object v4, v1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/editor/StructuredNameEditorView;->setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    const v2, 0x7f090116

    .line 369
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v0, "#phoneticName"

    .line 374
    invoke-virtual {p1, v0}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 378
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0c00ad

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    .line 379
    invoke-virtual {v2, v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/contacts/editor/TextFieldsEditorView;

    .line 380
    new-instance v2, Lcom/android/contacts/editor/KindSectionView$OtherNameKindEditorListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/contacts/editor/KindSectionView$OtherNameKindEditorListener;-><init>(Lcom/android/contacts/editor/KindSectionView$1;)V

    invoke-virtual {v9, v2}, Lcom/android/contacts/editor/LabeledEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 381
    invoke-virtual {v9, v8}, Lcom/android/contacts/editor/LabeledEditorView;->setDeletable(Z)V

    .line 383
    invoke-virtual {p1, v0}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v3

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object v2, v9

    move-object v4, v1

    move-object v5, p2

    .line 382
    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/editor/TextFieldsEditorView;->setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 387
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 389
    invoke-virtual {p1, v8, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 390
    invoke-virtual {v9, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iget-object p1, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 393
    new-instance p1, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/android/contacts/preference/ContactsPreferences;->shouldHidePhoneticNamesIfEmpty()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/editor/KindSectionView;->mHideIfEmpty:Z

    return-void
.end method

.method private addNonNameEditorView(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/editor/Editor$EditorListener;)Landroid/view/View;
    .locals 8

    .line 412
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p2, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 413
    invoke-static {v1}, Lcom/android/contacts/editor/EditorUiUtils;->getLayoutResourceId(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 412
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 414
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 415
    instance-of v1, v0, Lcom/android/contacts/editor/Editor;

    if-eqz v1, :cond_0

    .line 416
    move-object v2, v0

    check-cast v2, Lcom/android/contacts/editor/Editor;

    const/4 v1, 0x1

    .line 417
    invoke-interface {v2, v1}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    .line 418
    invoke-interface {v2, p4}, Lcom/android/contacts/editor/Editor;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 419
    iget-boolean p4, p2, Lcom/android/contacts/model/dataitem/DataKind;->editable:Z

    xor-int/lit8 v6, p4, 0x1

    iget-object v7, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/contacts/editor/Editor;->setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 422
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private deleteView(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 570
    check-cast p1, Lcom/android/contacts/editor/Editor;

    .line 571
    invoke-interface {p1}, Lcom/android/contacts/editor/Editor;->deleteEditor()V

    goto :goto_0

    .line 573
    :cond_0
    iget-object p2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private getEmptyEditors()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 588
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 589
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 590
    instance-of v3, v2, Lcom/android/contacts/editor/Editor;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/contacts/editor/Editor;

    invoke-interface {v3}, Lcom/android/contacts/editor/Editor;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 591
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private hideView(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 565
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private rebuildFromState()V
    .locals 6

    .line 303
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 305
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKindSectionData:Lcom/android/contacts/editor/KindSectionData;

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionData;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/name"

    .line 306
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKindSectionData:Lcom/android/contacts/editor/KindSectionData;

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionData;->getAccountType()Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mKindSectionData:Lcom/android/contacts/editor/KindSectionData;

    .line 308
    invoke-virtual {v1}, Lcom/android/contacts/editor/KindSectionData;->getRawContactDelta()Lcom/android/contacts/model/RawContactDelta;

    move-result-object v1

    .line 307
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/editor/KindSectionView;->addNameEditorViews(Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;)V

    goto :goto_2

    :cond_0
    const-string v1, "vnd.android.cursor.item/group_membership"

    .line 309
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKindSectionData:Lcom/android/contacts/editor/KindSectionData;

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionData;->getRawContactDelta()Lcom/android/contacts/model/RawContactDelta;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mKindSectionData:Lcom/android/contacts/editor/KindSectionData;

    .line 311
    invoke-virtual {v1}, Lcom/android/contacts/editor/KindSectionData;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v1

    .line 310
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/editor/KindSectionView;->addGroupEditorView(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V

    goto :goto_2

    :cond_1
    const-string v1, "vnd.android.cursor.item/nickname"

    .line 314
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 315
    new-instance v0, Lcom/android/contacts/editor/KindSectionView$OtherNameKindEditorListener;

    invoke-direct {v0, v2}, Lcom/android/contacts/editor/KindSectionView$OtherNameKindEditorListener;-><init>(Lcom/android/contacts/editor/KindSectionView$1;)V

    goto :goto_0

    :cond_2
    const-string v1, "vnd.android.cursor.item/contact_event"

    .line 316
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    new-instance v0, Lcom/android/contacts/editor/KindSectionView$EventEditorListener;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/editor/KindSectionView$EventEditorListener;-><init>(Lcom/android/contacts/editor/KindSectionView;Lcom/android/contacts/editor/KindSectionView$1;)V

    goto :goto_0

    .line 319
    :cond_3
    new-instance v0, Lcom/android/contacts/editor/KindSectionView$NonNameEditorListener;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/editor/KindSectionView$NonNameEditorListener;-><init>(Lcom/android/contacts/editor/KindSectionView;Lcom/android/contacts/editor/KindSectionView$1;)V

    .line 321
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mKindSectionData:Lcom/android/contacts/editor/KindSectionData;

    invoke-virtual {v1}, Lcom/android/contacts/editor/KindSectionData;->getVisibleValuesDeltas()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 322
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 323
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKindSectionData:Lcom/android/contacts/editor/KindSectionData;

    invoke-virtual {v3}, Lcom/android/contacts/editor/KindSectionData;->getRawContactDelta()Lcom/android/contacts/model/RawContactDelta;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKindSectionData:Lcom/android/contacts/editor/KindSectionData;

    .line 324
    invoke-virtual {v4}, Lcom/android/contacts/editor/KindSectionData;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/ValuesDelta;

    .line 323
    invoke-direct {p0, v3, v4, v5, v0}, Lcom/android/contacts/editor/KindSectionView;->addNonNameEditorView(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/editor/Editor$EditorListener;)Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private showView(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    .line 579
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 580
    invoke-static {}, Lcom/android/contacts/editor/EditorAnimator;->getInstance()Lcom/android/contacts/editor/EditorAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/contacts/editor/EditorAnimator;->showFieldFooter(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 582
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateEmptyNameEditors(Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 480
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 481
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 482
    instance-of v4, v3, Lcom/android/contacts/editor/Editor;

    if-eqz v4, :cond_4

    .line 483
    move-object v4, v3

    check-cast v4, Lcom/android/contacts/editor/Editor;

    .line 484
    instance-of v5, v3, Lcom/android/contacts/editor/StructuredNameEditorView;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 486
    invoke-interface {v4}, Lcom/android/contacts/editor/Editor;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_1

    .line 489
    iget-boolean v4, p0, Lcom/android/contacts/editor/KindSectionView;->mHideIfEmpty:Z

    if-eqz v4, :cond_6

    const/16 v4, 0x8

    .line 490
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 496
    :cond_0
    invoke-direct {p0, v3, p1}, Lcom/android/contacts/editor/KindSectionView;->showView(Landroid/view/View;Z)V

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 501
    :cond_2
    iget-boolean v5, p0, Lcom/android/contacts/editor/KindSectionView;->mHideIfEmpty:Z

    if-eqz v5, :cond_3

    invoke-interface {v4}, Lcom/android/contacts/editor/Editor;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 502
    invoke-direct {p0, v3}, Lcom/android/contacts/editor/KindSectionView;->hideView(Landroid/view/View;)V

    goto :goto_1

    .line 504
    :cond_3
    invoke-direct {p0, v3, v0}, Lcom/android/contacts/editor/KindSectionView;->showView(Landroid/view/View;Z)V

    goto :goto_1

    .line 509
    :cond_4
    iget-boolean v4, p0, Lcom/android/contacts/editor/KindSectionView;->mHideIfEmpty:Z

    if-eqz v4, :cond_5

    .line 510
    invoke-direct {p0, v3}, Lcom/android/contacts/editor/KindSectionView;->hideView(Landroid/view/View;)V

    goto :goto_1

    .line 512
    :cond_5
    invoke-direct {p0, v3, p1}, Lcom/android/contacts/editor/KindSectionView;->showView(Landroid/view/View;Z)V

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private updateEmptyNonNameEditors(Z)V
    .locals 6

    .line 520
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->getEmptyEditors()Ljava/util/List;

    move-result-object v0

    .line 521
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 524
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 525
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 531
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_0

    .line 532
    invoke-direct {p0, v4, p1}, Lcom/android/contacts/editor/KindSectionView;->deleteView(Landroid/view/View;Z)V

    add-int/lit8 v3, v3, 0x1

    .line 534
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 540
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mKindSectionData:Lcom/android/contacts/editor/KindSectionData;

    invoke-virtual {v1}, Lcom/android/contacts/editor/KindSectionData;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v1

    .line 541
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKindSectionData:Lcom/android/contacts/editor/KindSectionData;

    invoke-virtual {v3}, Lcom/android/contacts/editor/KindSectionData;->getRawContactDelta()Lcom/android/contacts/model/RawContactDelta;

    move-result-object v3

    if-eqz v1, :cond_6

    .line 544
    invoke-static {v3, v1}, Lcom/android/contacts/model/RawContactModifier;->canInsert(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 546
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    goto :goto_3

    .line 550
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/editor/KindSectionView;->mShowOneEmptyEditor:Z

    if-eqz v0, :cond_6

    .line 551
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKindSectionData:Lcom/android/contacts/editor/KindSectionData;

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionData;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vnd.android.cursor.item/nickname"

    .line 552
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    return-void

    .line 555
    :cond_4
    invoke-static {v3, v1}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v2

    const-string v4, "vnd.android.cursor.item/contact_event"

    .line 556
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 557
    new-instance v0, Lcom/android/contacts/editor/KindSectionView$EventEditorListener;

    invoke-direct {v0, p0, v4}, Lcom/android/contacts/editor/KindSectionView$EventEditorListener;-><init>(Lcom/android/contacts/editor/KindSectionView;Lcom/android/contacts/editor/KindSectionView$1;)V

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/android/contacts/editor/KindSectionView$NonNameEditorListener;

    invoke-direct {v0, p0, v4}, Lcom/android/contacts/editor/KindSectionView$NonNameEditorListener;-><init>(Lcom/android/contacts/editor/KindSectionView;Lcom/android/contacts/editor/KindSectionView$1;)V

    .line 558
    :goto_2
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/android/contacts/editor/KindSectionView;->addNonNameEditorView(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/editor/Editor$EditorListener;)Landroid/view/View;

    move-result-object v0

    .line 560
    invoke-direct {p0, v0, p1}, Lcom/android/contacts/editor/KindSectionView;->showView(Landroid/view/View;Z)V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public getNameEditorView()Lcom/android/contacts/editor/StructuredNameEditorView;
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKindSectionData:Lcom/android/contacts/editor/KindSectionData;

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionData;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    .line 251
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/StructuredNameEditorView;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneticEditorView()Lcom/android/contacts/editor/TextFieldsEditorView;
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKindSectionData:Lcom/android/contacts/editor/KindSectionData;

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionData;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 261
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 262
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 263
    instance-of v3, v2, Lcom/android/contacts/editor/StructuredNameEditorView;

    if-nez v3, :cond_1

    .line 264
    check-cast v2, Lcom/android/contacts/editor/TextFieldsEditorView;

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 186
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x1

    .line 187
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 188
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 190
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f090115

    .line 193
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    const v0, 0x7f090116

    .line 194
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 175
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 3

    const/4 v0, 0x0

    .line 221
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 223
    instance-of v2, v1, Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v2, :cond_0

    .line 224
    check-cast v1, Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v1, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setGroupMetaData(Landroid/database/Cursor;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setHideWhenEmpty(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/android/contacts/editor/KindSectionView;->mHideIfEmpty:Z

    return-void
.end method

.method public setIsUserProfile(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/android/contacts/editor/KindSectionView;->mIsUserProfile:Z

    return-void
.end method

.method public setShowOneEmptyEditor(Z)V
    .locals 0

    .line 207
    iput-boolean p1, p0, Lcom/android/contacts/editor/KindSectionView;->mShowOneEmptyEditor:Z

    return-void
.end method

.method public setState(Lcom/android/contacts/editor/KindSectionData;Lcom/android/contacts/editor/ViewIdGenerator;Lcom/android/contacts/editor/RawContactEditorView$Listener;)V
    .locals 1

    .line 282
    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView;->mKindSectionData:Lcom/android/contacts/editor/KindSectionData;

    .line 283
    iput-object p2, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 284
    iput-object p3, p0, Lcom/android/contacts/editor/KindSectionView;->mListener:Lcom/android/contacts/editor/RawContactEditorView$Listener;

    .line 287
    invoke-virtual {p1}, Lcom/android/contacts/editor/KindSectionData;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 289
    iget-object p2, p0, Lcom/android/contacts/editor/KindSectionView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/android/contacts/editor/EditorUiUtils;->getMimeTypeDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object p2, p0, Lcom/android/contacts/editor/KindSectionView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 292
    iget-object p2, p0, Lcom/android/contacts/editor/KindSectionView;->mIcon:Landroid/widget/ImageView;

    iget p3, p1, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget p1, p1, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, ""

    .line 292
    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 297
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->rebuildFromState()V

    const/4 p1, 0x0

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/KindSectionView;->updateEmptyEditors(Z)V

    return-void
.end method

.method public updateEmptyEditors(Z)V
    .locals 4

    .line 434
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKindSectionData:Lcom/android/contacts/editor/KindSectionData;

    .line 435
    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionData;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/name"

    .line 434
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 436
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mKindSectionData:Lcom/android/contacts/editor/KindSectionData;

    .line 437
    invoke-virtual {v1}, Lcom/android/contacts/editor/KindSectionData;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/group_membership"

    .line 436
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 442
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/KindSectionView;->updateEmptyNameEditors(Z)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    if-eqz v1, :cond_5

    const/4 p1, 0x0

    .line 445
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 446
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 447
    instance-of v3, v1, Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v3, :cond_2

    .line 448
    check-cast v1, Lcom/android/contacts/editor/GroupMembershipView;

    .line 449
    invoke-virtual {v1}, Lcom/android/contacts/editor/GroupMembershipView;->wasGroupMetaDataBound()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/contacts/editor/GroupMembershipView;->accountHasGroups()Z

    move-result v1

    if-nez v1, :cond_2

    .line 450
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 456
    :cond_3
    iget-boolean p1, p0, Lcom/android/contacts/editor/KindSectionView;->mHideIfEmpty:Z

    if-eqz p1, :cond_4

    .line 457
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 460
    :cond_4
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 465
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 466
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->getEmptyEditors()Ljava/util/List;

    move-result-object v3

    .line 467
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_6

    iget-boolean v1, p0, Lcom/android/contacts/editor/KindSectionView;->mHideIfEmpty:Z

    if-eqz v1, :cond_6

    .line 468
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 471
    :cond_6
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 473
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/KindSectionView;->updateEmptyNonNameEditors(Z)V

    :goto_1
    return-void
.end method
