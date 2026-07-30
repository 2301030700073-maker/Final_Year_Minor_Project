.class public Lcom/android/contacts/editor/RawContactEditorView;
.super Landroid/widget/LinearLayout;
.source "RawContactEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/RawContactEditorView$SavedState;,
        Lcom/android/contacts/editor/RawContactEditorView$MimeTypeComparator;,
        Lcom/android/contacts/editor/RawContactEditorView$Listener;
    }
.end annotation


# instance fields
.field private mAccountHeaderContainer:Landroid/view/View;

.field private mAccountHeaderExpanderIcon:Landroid/widget/ImageView;

.field private mAccountHeaderIcon:Landroid/widget/ImageView;

.field private mAccountHeaderPrimaryText:Landroid/widget/TextView;

.field private mAccountHeaderSecondaryText:Landroid/widget/TextView;

.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

.field private mHasNewContact:Z

.field private mIntentExtras:Landroid/os/Bundle;

.field private mIsExpanded:Z

.field private mIsUserProfile:Z

.field private mKindSectionDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/editor/KindSectionData;",
            ">;"
        }
    .end annotation
.end field

.field private mKindSectionViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/editor/KindSectionView;",
            ">;"
        }
    .end annotation
.end field

.field private mKindSectionViews:Landroid/view/ViewGroup;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/contacts/editor/RawContactEditorView$Listener;

.field private mMaterialPalette:Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

.field private mMoreFields:Landroid/view/View;

.field private mPhotoValuesDelta:Lcom/android/contacts/model/ValuesDelta;

.field private mPhotoView:Lcom/android/contacts/editor/PhotoEditorView;

.field private mPrimaryAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

.field private mRawContactDeltas:Lcom/android/contacts/model/RawContactDeltaList;

.field private mRawContactIdToDisplayAlone:J

.field private mSortedMimetypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 231
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 205
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccounts:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 208
    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactIdToDisplayAlone:J

    .line 209
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionDataMap:Ljava/util/Map;

    .line 210
    new-instance p1, Ljava/util/TreeSet;

    new-instance v0, Lcom/android/contacts/editor/RawContactEditorView$MimeTypeComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/RawContactEditorView$MimeTypeComparator;-><init>(Lcom/android/contacts/editor/RawContactEditorView$1;)V

    invoke-direct {p1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mSortedMimetypes:Ljava/util/Set;

    .line 221
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViewMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 235
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 205
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccounts:Ljava/util/List;

    const-wide/16 p1, -0x1

    .line 208
    iput-wide p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactIdToDisplayAlone:J

    .line 209
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionDataMap:Ljava/util/Map;

    .line 210
    new-instance p1, Ljava/util/TreeSet;

    new-instance p2, Lcom/android/contacts/editor/RawContactEditorView$MimeTypeComparator;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/android/contacts/editor/RawContactEditorView$MimeTypeComparator;-><init>(Lcom/android/contacts/editor/RawContactEditorView$1;)V

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mSortedMimetypes:Ljava/util/Set;

    .line 221
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViewMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/RawContactEditorView;)Ljava/util/List;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccounts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/RawContactEditorView;)Landroid/view/View;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountHeaderContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/contacts/editor/RawContactEditorView;)Lcom/android/contacts/editor/RawContactEditorView$Listener;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mListener:Lcom/android/contacts/editor/RawContactEditorView$Listener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/contacts/editor/RawContactEditorView;)Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPrimaryAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/contacts/editor/RawContactEditorView;Z)Z
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIsExpanded:Z

    return p1
.end method

.method private addAccountSelector(Lcom/android/contacts/model/RawContactDelta;)V
    .locals 2

    .line 806
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountHeaderExpanderIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 807
    new-instance v0, Lcom/android/contacts/editor/RawContactEditorView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/editor/RawContactEditorView$1;-><init>(Lcom/android/contacts/editor/RawContactEditorView;Lcom/android/contacts/model/RawContactDelta;)V

    .line 838
    iget-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountHeaderContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    iget-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountHeaderExpanderIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private addKindSectionViews()V
    .locals 6

    .line 876
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mSortedMimetypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const-string v3, "vnd.android.cursor.item/photo"

    .line 879
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    const-string v4, "RawContactEditorView"

    .line 880
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 881
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "kind: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dropped"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 886
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionDataMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/KindSectionData;

    .line 887
    iget-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViews:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v3, v2}, Lcom/android/contacts/editor/RawContactEditorView;->inflateKindSectionView(Landroid/view/ViewGroup;Lcom/android/contacts/editor/KindSectionData;Ljava/lang/String;)Lcom/android/contacts/editor/KindSectionView;

    move-result-object v3

    .line 888
    iget-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViews:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 891
    iget-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViewMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private addPhotoView()V
    .locals 4

    .line 845
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    const-string v0, "No photo mimetype for this raw contact."

    .line 846
    invoke-static {v0}, Lcom/android/contacts/editor/RawContactEditorView;->wlog(Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoView:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoView:Lcom/android/contacts/editor/PhotoEditorView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 853
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    .line 854
    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getSuperPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "RawContactEditorView"

    const-string v1, "addPhotoView: no ValueDelta found for current RawContactDeltathat supports a photo."

    .line 856
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoView:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .line 862
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoView:Lcom/android/contacts/editor/PhotoEditorView;

    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mMaterialPalette:Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/PhotoEditorView;->setPalette(Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)V

    .line 863
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoView:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/PhotoEditorView;->setPhoto(Lcom/android/contacts/model/ValuesDelta;)V

    .line 865
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->isReadOnlyRawContact()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 866
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoView:Lcom/android/contacts/editor/PhotoEditorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/PhotoEditorView;->setReadOnly(Z)V

    return-void

    .line 869
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoView:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v1, v3}, Lcom/android/contacts/editor/PhotoEditorView;->setReadOnly(Z)V

    .line 870
    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoValuesDelta:Lcom/android/contacts/model/ValuesDelta;

    return-void
.end method

.method private addReadOnlyRawContactEditorViews()V
    .locals 15

    .line 644
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViews:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 646
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 645
    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v1, v0}, Lcom/android/contacts/model/RawContactDelta;->getAccountType(Lcom/android/contacts/model/AccountTypeManager;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 653
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    const-string v2, "vnd.android.cursor.item/name"

    invoke-static {v1, v0, v2}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    .line 659
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 660
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 661
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v3, v2}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "data1"

    .line 662
    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 663
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1001a6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v6, v2

    const v2, 0x7f0800c4

    .line 664
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v2, 0x7f10014e

    .line 665
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    .line 666
    invoke-direct/range {v3 .. v8}, Lcom/android/contacts/editor/RawContactEditorView;->bindData(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 670
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    const-string v3, "vnd.android.cursor.item/phone_v2"

    .line 671
    invoke-virtual {v2, v3}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const v3, 0x7f0800c5

    .line 672
    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f100152

    .line 673
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_4

    .line 676
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v9, 0x1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/ValuesDelta;

    .line 677
    invoke-virtual {v4}, Lcom/android/contacts/model/ValuesDelta;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    .line 678
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 682
    :cond_2
    invoke-virtual {v4}, Lcom/android/contacts/model/ValuesDelta;->getPhoneNormalizedNumber()Ljava/lang/String;

    move-result-object v6

    .line 683
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 681
    invoke-static {v5, v6, v7}, Lcom/android/contacts/compat/PhoneNumberUtilsCompat;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 685
    invoke-virtual {v4}, Lcom/android/contacts/model/ValuesDelta;->hasPhoneType()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 687
    invoke-virtual {v4}, Lcom/android/contacts/model/ValuesDelta;->getPhoneType()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/contacts/model/ValuesDelta;->getPhoneLabel()Ljava/lang/String;

    move-result-object v4

    .line 686
    invoke-static {v1, v5, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v8, v4

    goto :goto_2

    :cond_3
    move-object v8, v12

    :goto_2
    const/4 v10, 0x1

    move-object v4, p0

    move-object v5, v3

    move-object v6, v11

    .line 689
    invoke-direct/range {v4 .. v10}, Lcom/android/contacts/editor/RawContactEditorView;->bindData(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    const/4 v9, 0x0

    goto :goto_1

    .line 696
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    const-string v3, "vnd.android.cursor.item/email_v2"

    .line 697
    invoke-virtual {v2, v3}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const v3, 0x7f0800b2

    .line 698
    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v3, 0x7f10014a

    .line 699
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_7

    .line 702
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v9, 0x1

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/ValuesDelta;

    .line 703
    invoke-virtual {v4}, Lcom/android/contacts/model/ValuesDelta;->getEmailData()Ljava/lang/String;

    move-result-object v7

    .line 704
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    .line 708
    :cond_5
    invoke-virtual {v4}, Lcom/android/contacts/model/ValuesDelta;->hasEmailType()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 710
    invoke-virtual {v4}, Lcom/android/contacts/model/ValuesDelta;->getEmailType()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/contacts/model/ValuesDelta;->getEmailLabel()Ljava/lang/String;

    move-result-object v4

    .line 709
    invoke-static {v1, v5, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v8, v4

    goto :goto_4

    :cond_6
    move-object v8, v12

    :goto_4
    move-object v4, p0

    move-object v5, v0

    move-object v6, v3

    .line 712
    invoke-direct/range {v4 .. v9}, Lcom/android/contacts/editor/RawContactEditorView;->bindData(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    const/4 v9, 0x0

    goto :goto_3

    .line 718
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViews:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/16 v2, 0x8

    if-lez v1, :cond_8

    goto :goto_5

    :cond_8
    const/16 v14, 0x8

    :goto_5
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mMoreFields:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private applyIntentExtras()V
    .locals 4

    .line 576
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 580
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v1, v0}, Lcom/android/contacts/model/RawContactDelta;->getAccountType(Lcom/android/contacts/model/AccountTypeManager;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 582
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIntentExtras:Landroid/os/Bundle;

    invoke-static {v1, v0, v2, v3}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 583
    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIntentExtras:Landroid/os/Bundle;

    :cond_1
    :goto_0
    return-void
.end method

.method private bindData(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 725
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/editor/RawContactEditorView;->bindData(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method private bindData(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V
    .locals 4

    .line 730
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViews:Landroid/view/ViewGroup;

    const v2, 0x7f0c006a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090116

    if-eqz p5, :cond_0

    .line 733
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/ImageView;

    .line 734
    invoke-virtual {p5, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 735
    invoke-virtual {p5, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 737
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 p2, 0x4

    .line 738
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p2, 0x0

    .line 739
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    const p1, 0x7f090093

    .line 741
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 742
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p6, :cond_1

    const/4 p2, 0x3

    .line 744
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_1
    const p1, 0x7f0901fa

    .line 746
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 747
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 748
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    .line 750
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 752
    :goto_1
    iget-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViews:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static elog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RawContactEditorView"

    .line 948
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hasMoreFields()Z
    .locals 2

    .line 933
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/KindSectionView;

    .line 934
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private inflateKindSectionView(Landroid/view/ViewGroup;Lcom/android/contacts/editor/KindSectionData;Ljava/lang/String;)Lcom/android/contacts/editor/KindSectionView;
    .locals 3

    .line 897
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0069

    const/4 v2, 0x0

    .line 898
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/editor/KindSectionView;

    .line 900
    iget-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIsUserProfile:Z

    invoke-virtual {p1, v0}, Lcom/android/contacts/editor/KindSectionView;->setIsUserProfile(Z)V

    const-string v0, "vnd.android.cursor.item/phone_v2"

    .line 902
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/email_v2"

    .line 903
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 906
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/contacts/editor/KindSectionView;->setHideWhenEmpty(Z)V

    :cond_1
    const/4 p3, 0x1

    .line 911
    invoke-virtual {p1, p3}, Lcom/android/contacts/editor/KindSectionView;->setShowOneEmptyEditor(Z)V

    .line 913
    iget-object p3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mListener:Lcom/android/contacts/editor/RawContactEditorView$Listener;

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/editor/KindSectionData;Lcom/android/contacts/editor/ViewIdGenerator;Lcom/android/contacts/editor/RawContactEditorView$Listener;)V

    return-object p1
.end method

.method private isReadOnlyRawContact()Z
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getAccountType(Lcom/android/contacts/model/AccountTypeManager;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private parseRawContactDelta()V
    .locals 12

    .line 587
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 588
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mSortedMimetypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 590
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getAccountType(Lcom/android/contacts/model/AccountTypeManager;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 592
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    const-string v4, "RawContactEditorView"

    const/4 v5, 0x2

    .line 593
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    const-string v7, "parse: "

    if-eqz v6, :cond_1

    .line 594
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " dataKinds(s)"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    if-ge v2, v3, :cond_9

    .line 598
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/dataitem/DataKind;

    if-eqz v6, :cond_6

    .line 600
    iget-boolean v8, v6, Lcom/android/contacts/model/dataitem/DataKind;->editable:Z

    if-nez v8, :cond_2

    goto/16 :goto_3

    .line 608
    :cond_2
    iget-object v8, v6, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v9, "#name"

    .line 611
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, " "

    if-nez v9, :cond_5

    const-string v9, "#phoneticName"

    .line 612
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v9, "vnd.com.google.cursor.item/contact_user_defined_field"

    .line 621
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 622
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 623
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " dropped custom field"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 628
    :cond_4
    new-instance v9, Lcom/android/contacts/editor/KindSectionData;

    iget-object v11, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    invoke-direct {v9, v0, v6, v11}, Lcom/android/contacts/editor/KindSectionData;-><init>(Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta;)V

    .line 630
    iget-object v11, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionDataMap:Ljava/util/Map;

    invoke-interface {v11, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    iget-object v11, p0, Lcom/android/contacts/editor/RawContactEditorView;->mSortedMimetypes:Ljava/util/Set;

    invoke-interface {v11, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 634
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v9}, Lcom/android/contacts/editor/KindSectionData;->getValuesDeltas()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " value(s) "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v9}, Lcom/android/contacts/editor/KindSectionData;->getNonEmptyValuesDeltas()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " non-empty value(s) "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {v9}, Lcom/android/contacts/editor/KindSectionData;->getVisibleValuesDeltas()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " visible value(s)"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 634
    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 613
    :cond_5
    :goto_2
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 614
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " dropped pseudo type"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 601
    :cond_6
    :goto_3
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 602
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v6, :cond_7

    const-string v6, " dropped null data kind"

    goto :goto_4

    .line 604
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " dropped uneditable mimetype: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 602
    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method private pickRawContactDelta()V
    .locals 11

    const-string v0, "RawContactEditorView"

    const/4 v1, 0x2

    .line 543
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    const-string v3, "parse: "

    if-eqz v2, :cond_0

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactDeltas:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rawContactDelta(s)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    .line 546
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactDeltas:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 547
    iget-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactDeltas:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/RawContactDelta;

    .line 548
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 549
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " rawContactDelta"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v4, :cond_6

    .line 551
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContactDelta;->isVisible()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 552
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/RawContactDelta;->getAccountType(Lcom/android/contacts/model/AccountTypeManager;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 555
    :cond_3
    iget-wide v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactIdToDisplayAlone:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_4

    .line 557
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactIdToDisplayAlone:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 558
    iput-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    return-void

    .line 561
    :cond_4
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPrimaryAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-eqz v6, :cond_5

    .line 562
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContactDelta;->getAccountWithDataSet()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/account/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 564
    iput-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    return-void

    .line 566
    :cond_5
    invoke-virtual {v5}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 569
    iput-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private setAccountHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 791
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountHeaderPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountHeaderSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    .line 796
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 797
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 800
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountHeaderContainer:Landroid/view/View;

    .line 801
    invoke-static {p2, p1}, Lcom/android/contacts/editor/EditorUiUtils;->getAccountInfoContentDescription(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 800
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setAccountInfo()V
    .locals 6

    .line 756
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPrimaryAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-nez v0, :cond_0

    return-void

    .line 759
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 760
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    if-eqz v1, :cond_1

    .line 762
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta;->getAccountWithDataSet()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v1

    .line 761
    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountInfoForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;

    move-result-object v0

    goto :goto_0

    .line 763
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPrimaryAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountInfoForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;

    move-result-object v0

    .line 766
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 767
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccounts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->isReadOnlyRawContact()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 772
    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountInfo;->getTypeLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100101

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 773
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->setAccountHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 777
    :cond_3
    iget-boolean v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIsUserProfile:Z

    if-eqz v1, :cond_4

    .line 778
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/contacts/editor/EditorUiUtils;->getAccountHeaderLabelForMyProfile(Landroid/content/Context;Lcom/android/contacts/model/account/AccountInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 779
    :cond_4
    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountInfo;->getNameLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 780
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100102

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/contacts/editor/RawContactEditorView;->setAccountHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :goto_2
    iget-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mHasNewContact:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIsUserProfile:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_5

    .line 786
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->addAccountSelector(Lcom/android/contacts/model/RawContactDelta;)V

    :cond_5
    return-void
.end method

.method private setupEditorNormally()V
    .locals 2

    .line 531
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->addKindSectionViews()V

    .line 533
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mMoreFields:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->hasMoreFields()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 535
    iget-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIsExpanded:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->showAllFields()V

    :cond_1
    return-void
.end method

.method private showAllFields()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 920
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViews:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 921
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViews:Landroid/view/ViewGroup;

    .line 922
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/KindSectionView;

    .line 923
    invoke-virtual {v2, v0}, Lcom/android/contacts/editor/KindSectionView;->setHideWhenEmpty(Z)V

    .line 924
    invoke-virtual {v2, v3}, Lcom/android/contacts/editor/KindSectionView;->updateEmptyEditors(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 926
    :cond_0
    iput-boolean v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIsExpanded:Z

    .line 929
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mMoreFields:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private unsetSuperPrimaryFromAllPhotos()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 353
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactDeltas:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 354
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactDeltas:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContactDelta;

    const-string v3, "vnd.android.cursor.item/photo"

    .line 355
    invoke-virtual {v2, v3}, Lcom/android/contacts/model/RawContactDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 358
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactDeltas:Lcom/android/contacts/model/RawContactDeltaList;

    .line 359
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 363
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 364
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {v4, v0}, Lcom/android/contacts/model/ValuesDelta;->setSuperPrimary(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static wlog(Ljava/lang/String;)V
    .locals 2

    const-string v0, "RawContactEditorView"

    const/4 v1, 0x5

    .line 942
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getAggregationAnchorView()Landroid/view/View;
    .locals 2

    .line 419
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditorView()Lcom/android/contacts/editor/StructuredNameEditorView;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f09005b

    .line 420
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentRawContactDelta()Lcom/android/contacts/model/RawContactDelta;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    return-object v0
.end method

.method public getNameEditorView()Lcom/android/contacts/editor/StructuredNameEditorView;
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViewMap:Ljava/util/Map;

    const-string v1, "vnd.android.cursor.item/name"

    .line 385
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/KindSectionView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->getNameEditorView()Lcom/android/contacts/editor/StructuredNameEditorView;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPhoneticEditorView()Lcom/android/contacts/editor/TextFieldsEditorView;
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViewMap:Ljava/util/Map;

    const-string v1, "vnd.android.cursor.item/name"

    .line 392
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/KindSectionView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->getPhoneticEditorView()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPhotoRawContactId()J
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public isWritablePhotoSet()Z
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoView:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/PhotoEditorView;->isWritablePhotoSet()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090145

    if-ne p1, v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->showAllFields()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 247
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 249
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 251
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f09002f

    .line 254
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountHeaderContainer:Landroid/view/View;

    const v0, 0x7f090033

    .line 255
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountHeaderPrimaryText:Landroid/widget/TextView;

    const v0, 0x7f090032

    .line 256
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountHeaderSecondaryText:Landroid/widget/TextView;

    const v0, 0x7f090034

    .line 257
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountHeaderIcon:Landroid/widget/ImageView;

    const v0, 0x7f09002b

    .line 258
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountHeaderExpanderIcon:Landroid/widget/ImageView;

    const v0, 0x7f090170

    .line 260
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhotoEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoView:Lcom/android/contacts/editor/PhotoEditorView;

    const v0, 0x7f090117

    .line 261
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViews:Landroid/view/ViewGroup;

    const v0, 0x7f090145

    .line 262
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mMoreFields:Landroid/view/View;

    .line 263
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 292
    instance-of v0, p1, Lcom/android/contacts/editor/RawContactEditorView$SavedState;

    if-nez v0, :cond_0

    .line 293
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 296
    :cond_0
    check-cast p1, Lcom/android/contacts/editor/RawContactEditorView$SavedState;

    .line 297
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 298
    invoke-static {p1}, Lcom/android/contacts/editor/RawContactEditorView$SavedState;->access$200(Lcom/android/contacts/editor/RawContactEditorView$SavedState;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIsExpanded:Z

    if-eqz p1, :cond_1

    .line 300
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->showAllFields()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 284
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 285
    new-instance v1, Lcom/android/contacts/editor/RawContactEditorView$SavedState;

    invoke-direct {v1, v0}, Lcom/android/contacts/editor/RawContactEditorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 286
    iget-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIsExpanded:Z

    invoke-static {v1, v0}, Lcom/android/contacts/editor/RawContactEditorView$SavedState;->access$202(Lcom/android/contacts/editor/RawContactEditorView$SavedState;Z)Z

    return-object v1
.end method

.method public removePhoto()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoValuesDelta:Lcom/android/contacts/model/ValuesDelta;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/ValuesDelta;->setFromTemplate(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoValuesDelta:Lcom/android/contacts/model/ValuesDelta;

    const-string v1, "data15"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 314
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoValuesDelta:Lcom/android/contacts/model/ValuesDelta;

    const-string v1, "data14"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoView:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/PhotoEditorView;->removePhoto()V

    return-void
.end method

.method public setAccounts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 525
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 527
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->setAccountInfo()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 275
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViews:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 278
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViews:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFullSizePhoto(Landroid/net/Uri;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoView:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setFullSizedPhoto(Landroid/net/Uri;)V

    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViewMap:Ljava/util/Map;

    const-string v1, "vnd.android.cursor.item/group_membership"

    .line 425
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/KindSectionView;

    if-nez v0, :cond_0

    return-void

    .line 429
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/KindSectionView;->setGroupMetaData(Landroid/database/Cursor;)V

    .line 430
    iget-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIsExpanded:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 431
    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/KindSectionView;->setHideWhenEmpty(Z)V

    const/4 p1, 0x1

    .line 432
    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/KindSectionView;->updateEmptyEditors(Z)V

    :cond_1
    return-void
.end method

.method public setIntentExtras(Landroid/os/Bundle;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIntentExtras:Landroid/os/Bundle;

    return-void
.end method

.method public setListener(Lcom/android/contacts/editor/RawContactEditorView$Listener;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mListener:Lcom/android/contacts/editor/RawContactEditorView$Listener;

    return-void
.end method

.method public setPhotoListener(Lcom/android/contacts/editor/PhotoEditorView$Listener;)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoView:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setListener(Lcom/android/contacts/editor/PhotoEditorView$Listener;)V

    return-void
.end method

.method public setState(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;Lcom/android/contacts/editor/ViewIdGenerator;ZZLcom/android/contacts/model/account/AccountWithDataSet;J)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactDeltas:Lcom/android/contacts/model/RawContactDeltaList;

    .line 446
    iput-wide p7, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactIdToDisplayAlone:J

    .line 448
    iget-object p7, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViewMap:Ljava/util/Map;

    invoke-interface {p7}, Ljava/util/Map;->clear()V

    .line 449
    iget-object p7, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionViews:Landroid/view/ViewGroup;

    invoke-virtual {p7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 450
    iget-object p7, p0, Lcom/android/contacts/editor/RawContactEditorView;->mMoreFields:Landroid/view/View;

    const/4 p8, 0x0

    invoke-virtual {p7, p8}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iput-object p2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mMaterialPalette:Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    .line 453
    iput-object p3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 455
    iput-boolean p4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mHasNewContact:Z

    .line 456
    iput-boolean p5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIsUserProfile:Z

    .line 457
    iput-object p6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPrimaryAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-nez p6, :cond_0

    .line 458
    iget-object p2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccounts:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 459
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/contacts/editor/ContactEditorUtils;->create(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object p2

    iget-object p3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccounts:Ljava/util/List;

    .line 460
    invoke-static {p3}, Lcom/android/contacts/model/account/AccountInfo;->extractAccounts(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/contacts/editor/ContactEditorUtils;->getOnlyOrDefaultAccount(Ljava/util/List;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p2

    iput-object p2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPrimaryAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    :cond_0
    const/4 p2, 0x2

    const-string p3, "RawContactEditorView"

    .line 462
    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 463
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "state: primary "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPrimaryAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_b

    .line 467
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_1

    .line 472
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->pickRawContactDelta()V

    .line 473
    iget-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mCurrentRawContactDelta:Lcom/android/contacts/model/RawContactDelta;

    if-nez p1, :cond_4

    const-string p1, "Couldn\'t pick a raw contact delta."

    .line 474
    invoke-static {p1}, Lcom/android/contacts/editor/RawContactEditorView;->elog(Ljava/lang/String;)V

    .line 475
    iget-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mListener:Lcom/android/contacts/editor/RawContactEditorView$Listener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/contacts/editor/RawContactEditorView$Listener;->onBindEditorsFailed()V

    :cond_3
    return-void

    .line 479
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->applyIntentExtras()V

    .line 480
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->parseRawContactDelta()V

    .line 481
    iget-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionDataMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "No kind section data parsed from RawContactDelta(s)"

    .line 482
    invoke-static {p1}, Lcom/android/contacts/editor/RawContactEditorView;->elog(Ljava/lang/String;)V

    .line 483
    iget-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mListener:Lcom/android/contacts/editor/RawContactEditorView$Listener;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/android/contacts/editor/RawContactEditorView$Listener;->onBindEditorsFailed()V

    :cond_5
    return-void

    .line 487
    :cond_6
    iget-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mKindSectionDataMap:Ljava/util/Map;

    const-string p2, "vnd.android.cursor.item/name"

    .line 488
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/editor/KindSectionData;

    if-eqz p1, :cond_7

    .line 492
    invoke-virtual {p1}, Lcom/android/contacts/editor/KindSectionData;->getRawContactDelta()Lcom/android/contacts/model/RawContactDelta;

    move-result-object p1

    .line 493
    iget-object p3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 495
    invoke-virtual {p1, p3}, Lcom/android/contacts/model/RawContactDelta;->getAccountType(Lcom/android/contacts/model/AccountTypeManager;)Lcom/android/contacts/model/account/AccountType;

    move-result-object p3

    .line 493
    invoke-static {p1, p3, p2}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    .line 497
    iget-object p2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 499
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/RawContactDelta;->getAccountType(Lcom/android/contacts/model/AccountTypeManager;)Lcom/android/contacts/model/account/AccountType;

    move-result-object p2

    const-string p3, "vnd.android.cursor.item/photo"

    .line 497
    invoke-static {p1, p2, p3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    .line 504
    :cond_7
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->addPhotoView()V

    .line 505
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->setAccountInfo()V

    .line 506
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->isReadOnlyRawContact()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 508
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->addReadOnlyRawContactEditorViews()V

    goto :goto_0

    .line 510
    :cond_8
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->setupEditorNormally()V

    .line 513
    iget-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mHasNewContact:Z

    if-eqz p1, :cond_9

    .line 514
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditorView()Lcom/android/contacts/editor/StructuredNameEditorView;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 516
    invoke-virtual {p1}, Lcom/android/contacts/editor/TextFieldsEditorView;->requestFocusForFirstEditField()V

    .line 520
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mListener:Lcom/android/contacts/editor/RawContactEditorView$Listener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/android/contacts/editor/RawContactEditorView$Listener;->onEditorsBound()V

    :cond_a
    return-void

    :cond_b
    :goto_1
    const-string p1, "No raw contact deltas"

    .line 468
    invoke-static {p1}, Lcom/android/contacts/editor/RawContactEditorView;->elog(Ljava/lang/String;)V

    .line 469
    iget-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mListener:Lcom/android/contacts/editor/RawContactEditorView$Listener;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/android/contacts/editor/RawContactEditorView$Listener;->onBindEditorsFailed()V

    :cond_c
    return-void
.end method

.method public updatePhoto(Landroid/net/Uri;)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoValuesDelta:Lcom/android/contacts/model/ValuesDelta;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/ValuesDelta;->setFromTemplate(Z)V

    .line 329
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->unsetSuperPrimaryFromAllPhotos()V

    .line 331
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoValuesDelta:Lcom/android/contacts/model/ValuesDelta;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/ValuesDelta;->setSuperPrimary(Z)V

    .line 341
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 340
    invoke-static {v0, p1}, Lcom/android/contacts/editor/EditorUiUtils;->getCompressedThumbnailBitmapBytes(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoValuesDelta:Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {v1, v0}, Lcom/android/contacts/model/ValuesDelta;->setPhoto([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Failed to get bitmap from photo Uri"

    .line 346
    invoke-static {v0}, Lcom/android/contacts/editor/RawContactEditorView;->elog(Ljava/lang/String;)V

    .line 349
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhotoView:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setFullSizedPhoto(Landroid/net/Uri;)V

    return-void
.end method
