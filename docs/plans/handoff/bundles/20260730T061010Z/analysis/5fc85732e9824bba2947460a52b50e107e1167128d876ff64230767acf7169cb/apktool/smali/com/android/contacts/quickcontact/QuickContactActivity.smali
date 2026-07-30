.class public Lcom/android/contacts/quickcontact/QuickContactActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/QuickContactActivity$SaveServiceListener;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;
    }
.end annotation


# static fields
.field private static final CURRENT_API_VERSION:I

.field private static final LEADING_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCRIM_COLOR:I

.field private static final SORTED_ABOUT_CARD_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBidiFormatter:Landroid/text/BidiFormatter;


# instance fields
.field private mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

.field private final mAmongstMimeTypeDataItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/dataitem/DataItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mArePhoneOptionsChangable:Z

.field private mCachedCp2DataCardModel:Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

.field private mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mColorFilterColor:I

.field private mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

.field private mContactData:Lcom/android/contacts/model/Contact;

.field private mContactLoader:Lcom/android/contacts/model/ContactLoader;

.field private mContactType:I

.field private mCustomRingtone:Ljava/lang/String;

.field private mEntriesAndActionsTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;",
            ">;"
        }
    .end annotation
.end field

.field final mEntryClickHandler:Landroid/view/View$OnClickListener;

.field private final mEntryContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mExcludeMimes:[Ljava/lang/String;

.field final mExpandingEntryCardViewListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

.field private mExtraMode:I

.field private mExtraPrioritizedMimeType:Ljava/lang/String;

.field private mHasAlreadyBeenOpened:Z

.field private mHasComputedThemeColor:Z

.field private mHasIntentLaunched:Z

.field private mIsEntranceAnimationFinished:Z

.field private mIsExitAnimationInProgress:Z

.field private mIsRecreatedInstance:Z

.field private mListener:Lcom/android/contacts/quickcontact/QuickContactActivity$SaveServiceListener;

.field private final mLoaderContactCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/android/contacts/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mLookupUri:Landroid/net/Uri;

.field private mMaterialColorMapUtils:Lcom/android/contacts/util/MaterialColorMapUtils;

.field final mMultiShrinkScrollerListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

.field private mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

.field private mOnlyOneEmail:Z

.field private mOnlyOnePhoneNumber:Z

.field private final mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

.field private mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

.field private mPreviousContactId:J

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReferrer:Ljava/lang/String;

.field private mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

.field private mSendToVoicemailState:Z

.field private mShortcutUsageReported:Z

.field private mShouldLog:Z

.field private mStatusBarColor:I

.field private mWindowScrim:Landroid/graphics/drawable/ColorDrawable;

.field private final mWithinMimeTypeDataItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/contacts/model/dataitem/DataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0xc8

    const/4 v1, 0x0

    .line 215
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->SCRIM_COLOR:I

    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->CURRENT_API_VERSION:I

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/contacts/quickcontact/QuickContactActivity;

    .line 253
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".KEY_LOADER_EXTRA_EMAILS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/phone_v2"

    const-string v1, "vnd.android.cursor.item/sip_address"

    const-string v2, "vnd.android.cursor.item/email_v2"

    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    .line 325
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const-string v1, "vnd.android.cursor.item/nickname"

    const-string v2, "vnd.android.cursor.item/website"

    const-string v3, "vnd.android.cursor.item/organization"

    const-string v4, "vnd.android.cursor.item/contact_event"

    const-string v5, "vnd.android.cursor.item/relation"

    const-string v6, "vnd.android.cursor.item/im"

    const-string v7, "vnd.android.cursor.item/group_membership"

    const-string v8, "vnd.android.cursor.item/identity"

    const-string v9, "vnd.com.google.cursor.item/contact_user_defined_field"

    const-string v10, "vnd.android.cursor.item/note"

    .line 329
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->SORTED_ABOUT_CARD_MIMETYPES:Ljava/util/List;

    .line 343
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->sBidiFormatter:Landroid/text/BidiFormatter;

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/contacts/quickcontact/QuickContactActivity;

    .line 349
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".KEY_LOADER_EXTRA_PHONES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/contacts/quickcontact/QuickContactActivity;

    .line 351
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".KEY_LOADER_EXTRA_SIP_NUMBERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 185
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShortcutUsageReported:Z

    const-wide/16 v0, 0x0

    .line 285
    iput-wide v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPreviousContactId:J

    .line 317
    new-instance v0, Lcom/android/contacts/util/ImageViewDrawableSetter;

    invoke-direct {v0}, Lcom/android/contacts/util/ImageViewDrawableSetter;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

    .line 355
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryClickHandler:Landroid/view/View$OnClickListener;

    .line 410
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$2;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExpandingEntryCardViewListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    .line 434
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$3;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 504
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$4;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mMultiShrinkScrollerListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    .line 545
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$5;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mWithinMimeTypeDataItemComparator:Ljava/util/Comparator;

    .line 573
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$6;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAmongstMimeTypeDataItemComparator:Ljava/util/Comparator;

    .line 2063
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$13;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderContactCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->editContact()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 0

    .line 185
    iget-boolean p0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEntranceAnimationFinished:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEntranceAnimationFinished:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/graphics/drawable/ColorDrawable;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mWindowScrim:Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/lang/String;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExtraPrioritizedMimeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300()Ljava/util/List;
    .locals 1

    .line 185
    sget-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 0

    .line 185
    iget-boolean p0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasAlreadyBeenOpened:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/contacts/quickcontact/QuickContactActivity;)I
    .locals 0

    .line 185
    iget p0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExtraMode:I

    return p0
.end method

.method static synthetic access$1700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/util/MaterialColorMapUtils;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mMaterialColorMapUtils:Lcom/android/contacts/util/MaterialColorMapUtils;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setThemeColor(Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/model/Contact;)Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->generateDataModelFromContact(Lcom/android/contacts/model/Contact;)Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/lang/String;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mReferrer:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/model/Contact;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/model/Contact;)Lcom/android/contacts/model/Contact;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindDataToCards(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->showActivity()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->runEntranceAnimation()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->colorFromBitmap(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 0

    .line 185
    iget-boolean p0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasComputedThemeColor:Z

    return p0
.end method

.method static synthetic access$2702(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasComputedThemeColor:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/QuickContactImageView;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 0

    .line 185
    iget-boolean p0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsRecreatedInstance:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/contacts/quickcontact/QuickContactActivity;)I
    .locals 0

    .line 185
    iget p0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactType:I

    return p0
.end method

.method static synthetic access$3000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 0

    .line 185
    iget-boolean p0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShortcutUsageReported:Z

    return p0
.end method

.method static synthetic access$3002(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShortcutUsageReported:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/model/Contact;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindContactData(Lcom/android/contacts/model/Contact;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->dismissProgressBar()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactEditable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 0

    .line 185
    iget-boolean p0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOnlyOnePhoneNumber:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 0

    .line 185
    iget-boolean p0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOnlyOneEmail:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->updateStatusBarColor()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsExitAnimationInProgress:Z

    return p1
.end method

.method private bindContactData(Lcom/android/contacts/model/Contact;)V
    .locals 6

    const-string v0, "bindContactData"

    .line 925
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 928
    :goto_0
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    .line 931
    invoke-static {p1}, Lcom/android/contacts/quickcontact/DirectoryContactUtil;->isDirectoryContact(Lcom/android/contacts/model/Contact;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    .line 933
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {v3, p0}, Lcom/android/contacts/quickcontact/InvisibleContactUtil;->isInvisibleAndAddable(Lcom/android/contacts/model/Contact;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    .line 935
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactEditable()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 940
    :goto_1
    iget-boolean v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShouldLog:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactType:I

    if-eq v4, v3, :cond_4

    .line 941
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mReferrer:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v0, v5}, Lcom/android/contacts/logging/Logger;->logQuickContactEvent(Ljava/lang/String;IIILjava/lang/String;)V

    .line 944
    :cond_4
    iput v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactType:I

    .line 946
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setStateForPhoneMenuItems(Lcom/android/contacts/model/Contact;)V

    .line 947
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 949
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "Set display photo & name"

    .line 950
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->isDisplayNameFromOrganization()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/widget/QuickContactImageView;->setIsBusiness(Z)V

    .line 953
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    invoke-virtual {v0, p1, v3}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setupContactPhoto(Lcom/android/contacts/model/Contact;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    .line 954
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->extractAndApplyTintFromPhotoViewAsynchronously()V

    .line 955
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDisplayUtils;->getDisplayName(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 956
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    .line 957
    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getDisplayNameSource()I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 956
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(Ljava/lang/String;Z)V

    .line 958
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDisplayUtils;->getPhoneticName(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/String;

    move-result-object v1

    .line 959
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v3, :cond_7

    .line 961
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 962
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->setPhoneticName(Ljava/lang/String;)V

    goto :goto_3

    .line 964
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->setPhoneticNameGone()V

    .line 968
    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 970
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$10;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/model/Contact;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntriesAndActionsTask:Landroid/os/AsyncTask;

    new-array p1, v2, [Ljava/lang/Void;

    .line 990
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 991
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/contacts/NfcHandler;->register(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method

.method private bindDataToCards(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V
    .locals 4

    .line 995
    iget-object v0, p1, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->dataItemsMap:Ljava/util/Map;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    .line 997
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 998
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOnlyOnePhoneNumber:Z

    const-string v1, "vnd.android.cursor.item/email_v2"

    .line 1000
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1001
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOnlyOneEmail:Z

    .line 1003
    invoke-direct {p0, p1, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->populateContactAndAboutCard(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;Z)V

    return-void
.end method

.method private bindReachability(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/dataitem/DataItem;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "vnd.android.cursor.item/phone_v2"

    .line 1326
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "vnd.android.cursor.item/com.google.android.apps.tachyon.phone"

    .line 1327
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1329
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/dataitem/DataItem;

    .line 1330
    instance-of v2, v1, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    invoke-virtual {v1}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1331
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/dataitem/DataItem;

    .line 1332
    invoke-virtual {v1}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 1333
    invoke-virtual {v3}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "data1"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1332
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 1334
    invoke-virtual {v1, v4}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->setTachyonReachable(Z)V

    .line 1335
    invoke-virtual {v1, v3}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->setReachableDataItem(Lcom/android/contacts/model/dataitem/DataItem;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private buildAboutCardEntries(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/dataitem/DataItem;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;",
            ">;>;"
        }
    .end annotation

    .line 1020
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    sget-object v1, Lcom/android/contacts/quickcontact/QuickContactActivity;->SORTED_ABOUT_CARD_MIMETYPES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1022
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1028
    invoke-direct {p0, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->dataItemsToEntries(Ljava/util/List;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Ljava/util/List;

    move-result-object v2

    .line 1030
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1031
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private colorFromBitmap(Landroid/graphics/Bitmap;)I
    .locals 1

    const/16 v0, 0x18

    .line 2056
    invoke-static {p1, v0}, Landroidx/palette/graphics/Palette;->generate(Landroid/graphics/Bitmap;I)Landroidx/palette/graphics/Palette;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2057
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2058
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private createLauncherShortcutWithContact()V
    .locals 6

    .line 2240
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "shortcut"

    .line 2242
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 2243
    new-instance v1, Lcom/android/contacts/DynamicShortcuts;

    invoke-direct {v1, p0}, Lcom/android/contacts/DynamicShortcuts;-><init>(Landroid/content/Context;)V

    .line 2245
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const v2, 0x7f1001a6

    .line 2247
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2249
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    .line 2250
    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v5

    .line 2249
    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/android/contacts/DynamicShortcuts;->getQuickContactShortcutInfo(JLjava/lang/String;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 2252
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    goto :goto_0

    .line 2255
    :cond_1
    new-instance v0, Lcom/android/contacts/ShortcutIntentBuilder;

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$14;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$14;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 2276
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static dataItemToEntry(Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/model/dataitem/DataItem;Landroid/content/Context;Lcom/android/contacts/model/Contact;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;
    .locals 36

    move-object/from16 v9, p0

    move-object/from16 v0, p4

    const/4 v10, 0x0

    if-nez p3, :cond_0

    return-object v10

    .line 1385
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v33, 0x1

    const/4 v2, 0x0

    .line 1393
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1403
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 1404
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1405
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v3

    .line 1407
    instance-of v4, v9, Lcom/android/contacts/model/dataitem/ImDataItem;

    const/4 v13, -0x1

    const/4 v14, 0x0

    if-eqz v4, :cond_4

    .line 1408
    move-object v0, v9

    check-cast v0, Lcom/android/contacts/model/dataitem/ImDataItem;

    .line 1409
    invoke-static {v12, v0}, Lcom/android/contacts/ContactsUtils;->buildImIntent(Landroid/content/Context;Lcom/android/contacts/model/dataitem/ImDataItem;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    .line 1410
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/ImDataItem;->isCreatedFromEmail()Z

    move-result v4

    .line 1412
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    const/4 v4, 0x5

    goto :goto_0

    .line 1415
    :cond_2
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_0
    if-ne v4, v13, :cond_3

    const v6, 0x7f10014d

    .line 1420
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1422
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v7

    .line 1421
    invoke-static {v1, v4, v7}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1422
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1423
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1426
    :cond_3
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v6

    .line 1425
    invoke-static {v1, v4, v6}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1426
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1427
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v1

    move-object v4, v10

    .line 1429
    :goto_1
    new-instance v7, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v17

    .line 1430
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v22

    move-object/from16 v16, v7

    move-object/from16 v18, v6

    invoke-direct/range {v16 .. v22}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v16, v1

    move-object/from16 v18, v4

    move-object v15, v6

    move-object/from16 v27, v7

    :goto_2
    move-object v13, v10

    goto :goto_3

    .line 1431
    :cond_4
    instance-of v4, v9, Lcom/android/contacts/model/dataitem/OrganizationDataItem;

    if-eqz v4, :cond_5

    .line 1432
    move-object v0, v9

    check-cast v0, Lcom/android/contacts/model/dataitem/OrganizationDataItem;

    const v3, 0x7f100151

    .line 1433
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1434
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/OrganizationDataItem;->getCompany()Ljava/lang/String;

    move-result-object v3

    .line 1435
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1436
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v22

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    move-object/from16 v18, v1

    invoke-direct/range {v16 .. v22}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1437
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/OrganizationDataItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    move-object v15, v1

    move-object/from16 v16, v3

    move-object/from16 v27, v4

    move-object v3, v10

    move-object v13, v3

    :goto_3
    move-object v14, v13

    move-object/from16 v22, v14

    :goto_4
    move-object/from16 v28, v22

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v32, v30

    const/16 v25, 0x1

    const/16 v31, 0x1

    :goto_5
    const/16 v34, 0x0

    goto/16 :goto_25

    .line 1438
    :cond_5
    instance-of v4, v9, Lcom/android/contacts/model/dataitem/NicknameDataItem;

    if-eqz v4, :cond_9

    .line 1439
    move-object v0, v9

    check-cast v0, Lcom/android/contacts/model/dataitem/NicknameDataItem;

    .line 1442
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/Contact;->getNameRawContactId()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getRawContactId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-nez v8, :cond_6

    const/4 v3, 0x1

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_7

    .line 1446
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/Contact;->getDisplayNameSource()I

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    if-nez v3, :cond_8

    const v3, 0x7f10014f

    .line 1449
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1450
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/NicknameDataItem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1451
    new-instance v3, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1452
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v22

    move-object/from16 v16, v3

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    invoke-direct/range {v16 .. v22}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_8

    :cond_8
    move-object v0, v10

    move-object v1, v0

    move-object v3, v1

    goto :goto_8

    .line 1454
    :cond_9
    instance-of v4, v9, Lcom/android/contacts/model/dataitem/CustomDataItem;

    if-eqz v4, :cond_b

    .line 1455
    move-object v0, v9

    check-cast v0, Lcom/android/contacts/model/dataitem/CustomDataItem;

    .line 1456
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/CustomDataItem;->getSummary()Ljava/lang/String;

    move-result-object v3

    .line 1457
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    const v3, 0x7f100169

    .line 1458
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1459
    :cond_a
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/CustomDataItem;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 1460
    new-instance v1, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1461
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v22

    move-object/from16 v16, v1

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    invoke-direct/range {v16 .. v22}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v16, v0

    move-object/from16 v27, v1

    move-object v15, v3

    goto :goto_9

    .line 1462
    :cond_b
    instance-of v4, v9, Lcom/android/contacts/model/dataitem/NoteDataItem;

    if-eqz v4, :cond_c

    .line 1463
    move-object v0, v9

    check-cast v0, Lcom/android/contacts/model/dataitem/NoteDataItem;

    const v3, 0x7f100150

    .line 1464
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1465
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/NoteDataItem;->getNote()Ljava/lang/String;

    move-result-object v0

    .line 1466
    new-instance v3, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1467
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v22

    move-object/from16 v16, v3

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    invoke-direct/range {v16 .. v22}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    :goto_8
    move-object/from16 v16, v0

    move-object v15, v1

    move-object/from16 v27, v3

    :goto_9
    move-object v3, v10

    move-object v13, v3

    :goto_a
    move-object v14, v13

    move-object/from16 v18, v14

    move-object/from16 v22, v18

    goto/16 :goto_4

    .line 1468
    :cond_c
    instance-of v4, v9, Lcom/android/contacts/model/dataitem/WebsiteDataItem;

    const-string v6, "android.intent.action.VIEW"

    if-eqz v4, :cond_d

    .line 1469
    move-object v0, v9

    check-cast v0, Lcom/android/contacts/model/dataitem/WebsiteDataItem;

    const v4, 0x7f100154

    .line 1470
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1471
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/WebsiteDataItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 1472
    new-instance v7, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1473
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v22

    move-object/from16 v16, v7

    move-object/from16 v17, v4

    move-object/from16 v18, v1

    invoke-direct/range {v16 .. v22}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1475
    :try_start_0
    new-instance v8, Lcom/android/contacts/quickcontact/WebAddress;

    .line 1476
    invoke-virtual {v0, v12, v3}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataStringForDisplay(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Lcom/android/contacts/quickcontact/WebAddress;-><init>(Ljava/lang/String;)V

    .line 1477
    new-instance v13, Landroid/content/Intent;

    invoke-virtual {v8}, Lcom/android/contacts/quickcontact/WebAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v13, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/android/contacts/quickcontact/WebAddress$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v13

    goto :goto_b

    .line 1479
    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t parse website: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v3}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataStringForDisplay(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "QuickContact"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v10

    :goto_b
    move-object v15, v1

    move-object/from16 v16, v4

    move-object/from16 v27, v7

    move-object v13, v10

    goto :goto_a

    .line 1482
    :cond_d
    instance-of v4, v9, Lcom/android/contacts/model/dataitem/EventDataItem;

    if-eqz v4, :cond_10

    .line 1483
    move-object v0, v9

    check-cast v0, Lcom/android/contacts/model/dataitem/EventDataItem;

    .line 1484
    invoke-virtual {v0, v12, v3}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataStringForDisplay(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v4

    .line 1485
    invoke-static {v4, v14}, Lcom/android/contacts/util/DateUtils;->parseDate(Ljava/lang/String;Z)Ljava/util/Calendar;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 1488
    invoke-static {v7}, Lcom/android/contacts/util/DateUtils;->getNextAnnualDate(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object v7

    .line 1489
    sget-object v8, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v13, "time"

    .line 1490
    invoke-virtual {v8, v13}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1491
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1492
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    goto :goto_c

    :cond_e
    move-object v6, v10

    :goto_c
    const v7, 0x7f10014c

    .line 1494
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1495
    invoke-virtual {v0, v3}, Lcom/android/contacts/model/dataitem/DataItem;->hasKindTypeColumn(Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1496
    invoke-virtual {v0, v3}, Lcom/android/contacts/model/dataitem/DataItem;->getKindTypeColumn(Lcom/android/contacts/model/dataitem/DataKind;)I

    move-result v3

    .line 1497
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/EventDataItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 1496
    invoke-static {v1, v3, v0}, Lcom/android/contacts/compat/EventCompat;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1497
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_f
    move-object v0, v10

    .line 1499
    :goto_d
    invoke-static {v12, v4}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1500
    new-instance v3, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1501
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v23

    move-object/from16 v17, v3

    move-object/from16 v18, v1

    move-object/from16 v19, v7

    invoke-direct/range {v17 .. v23}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v16, v0

    move-object/from16 v27, v3

    move-object v3, v6

    move-object v15, v7

    goto/16 :goto_2

    .line 1502
    :cond_10
    instance-of v4, v9, Lcom/android/contacts/model/dataitem/RelationDataItem;

    if-eqz v4, :cond_13

    .line 1503
    move-object v0, v9

    check-cast v0, Lcom/android/contacts/model/dataitem/RelationDataItem;

    .line 1504
    invoke-virtual {v0, v12, v3}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataStringForDisplay(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v4

    .line 1505
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 1506
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEARCH"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "query"

    .line 1507
    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "vnd.android.cursor.dir/contact"

    .line 1508
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_e

    :cond_11
    move-object v6, v10

    :goto_e
    const v4, 0x7f100153

    .line 1510
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1511
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/RelationDataItem;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1512
    new-instance v8, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1513
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v23

    move-object/from16 v17, v8

    move-object/from16 v18, v7

    move-object/from16 v19, v4

    invoke-direct/range {v17 .. v23}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1514
    invoke-virtual {v0, v3}, Lcom/android/contacts/model/dataitem/DataItem;->hasKindTypeColumn(Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 1516
    invoke-virtual {v0, v3}, Lcom/android/contacts/model/dataitem/DataItem;->getKindTypeColumn(Lcom/android/contacts/model/dataitem/DataKind;)I

    move-result v3

    .line 1517
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/RelationDataItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 1515
    invoke-static {v1, v3, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1517
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_12
    move-object v0, v10

    :goto_f
    move-object/from16 v18, v0

    move-object v15, v4

    move-object v3, v6

    move-object/from16 v16, v7

    move-object/from16 v27, v8

    goto/16 :goto_2

    .line 1519
    :cond_13
    instance-of v4, v9, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    const-string v7, "android.intent.action.SENDTO"

    const v8, 0x7f1001ce

    const v14, 0x7f10006e

    const-string v15, "action_type"

    const-string v13, " "

    if-eqz v4, :cond_1f

    .line 1520
    move-object v0, v9

    check-cast v0, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    .line 1522
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1523
    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    sget-object v2, Lcom/android/contacts/quickcontact/QuickContactActivity;->sBidiFormatter:Landroid/text/BidiFormatter;

    invoke-virtual {v0, v12, v3}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->buildDataStringForDisplay(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v4

    sget-object v14, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v2, v4, v14}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    .line 1526
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1527
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v21

    .line 1528
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v24

    move-object/from16 v18, v4

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v24}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1529
    invoke-virtual {v0, v3}, Lcom/android/contacts/model/dataitem/DataItem;->hasKindTypeColumn(Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1530
    invoke-virtual {v0, v3}, Lcom/android/contacts/model/dataitem/DataItem;->getKindTypeColumn(Lcom/android/contacts/model/dataitem/DataKind;)I

    move-result v3

    .line 1531
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getLabel()Ljava/lang/String;

    move-result-object v8

    if-nez v3, :cond_14

    .line 1533
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_14

    const-string v3, ""

    goto :goto_10

    .line 1536
    :cond_14
    invoke-static {v1, v3, v8}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1538
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v8

    goto :goto_10

    :cond_15
    move-object v3, v10

    move-object v8, v3

    .line 1541
    :goto_10
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v2}, Lcom/android/contacts/util/ContactDisplayUtils;->getTelephoneTtsSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v14

    const v13, 0x7f0800c5

    .line 1545
    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 1546
    invoke-static {v12}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 1547
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/CallUtil;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const/16 v13, 0xa

    .line 1548
    invoke-virtual {v6, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_11

    :cond_16
    move-object v6, v10

    .line 1550
    :goto_11
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v19, v3

    .line 1551
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v4

    const-string v4, "smsto"

    invoke-static {v4, v3, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v13, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v3, 0xb

    .line 1552
    invoke-virtual {v13, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v3, 0x7f0800bf

    .line 1554
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f100217

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v10, v7

    move-object/from16 v17, v13

    const v7, 0x7f0800c5

    .line 1555
    invoke-virtual {v1, v4, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/contacts/util/ContactDisplayUtils;->getTelephoneTtsSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v4

    .line 1559
    invoke-static {v12}, Lcom/android/contacts/CallUtil;->getVideoCallingAvailability(Landroid/content/Context;)I

    move-result v10

    and-int/lit8 v22, v10, 0x2

    if-eqz v22, :cond_17

    const/16 v16, 0x1

    goto :goto_12

    :cond_17
    const/16 v16, 0x0

    :goto_12
    const/16 v22, 0x1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_18

    const/4 v10, 0x1

    goto :goto_13

    :cond_18
    const/4 v10, 0x0

    .line 1564
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getCarrierPresence()I

    move-result v23

    and-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_19

    const/16 v23, 0x1

    goto :goto_14

    :cond_19
    const/16 v23, 0x0

    .line 1567
    :goto_14
    invoke-static {v12}, Lcom/android/contacts/CallUtil;->isCallWithSubjectSupported(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_1a

    const v10, 0x7f0800c2

    .line 1568
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const v7, 0x7f100077

    .line 1571
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1573
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v24, v14

    .line 1575
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/Contact;->getPhotoId()J

    move-result-wide v13

    const-string v15, "PHOTO_ID"

    .line 1574
    invoke-virtual {v7, v15, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1577
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/Contact;->getPhotoUri()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const-string v14, "PHOTO_URI"

    .line 1576
    invoke-virtual {v7, v14, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1579
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v13

    const-string v14, "CONTACT_URI"

    .line 1578
    invoke-virtual {v7, v14, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1581
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "NAME_OR_NUMBER"

    .line 1580
    invoke-virtual {v7, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "IS_BUSINESS"

    const/4 v14, 0x0

    .line 1582
    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1584
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v13

    const-string v14, "NUMBER"

    .line 1583
    invoke-virtual {v7, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getFormattedPhoneNumber()Ljava/lang/String;

    move-result-object v0

    const-string v13, "DISPLAY_NUMBER"

    .line 1585
    invoke-virtual {v7, v13, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NUMBER_LABEL"

    .line 1587
    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v1

    move-object v0, v3

    move-object v8, v4

    move-object/from16 v16, v7

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v14, v24

    const/4 v1, 0x3

    const v7, 0x7f0800c5

    const/4 v13, 0x0

    goto/16 :goto_17

    :cond_1a
    move-object/from16 v24, v14

    const v7, 0x7f0800cf

    if-eqz v10, :cond_1c

    if-eqz v16, :cond_1b

    if-eqz v23, :cond_1c

    .line 1590
    :cond_1b
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1592
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v8, "com.android.contacts.quickcontact.QuickContactActivity"

    invoke-static {v0, v8}, Lcom/android/contacts/CallUtil;->getVideoCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v8, 0xc

    .line 1594
    invoke-virtual {v0, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v8, 0x7f1000dc

    .line 1596
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v13, v0

    move-object v15, v1

    move-object v0, v3

    move-object v8, v4

    move-object v10, v7

    :goto_15
    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v14, v24

    const/4 v1, 0x2

    const v7, 0x7f0800c5

    goto :goto_16

    .line 1597
    :cond_1c
    invoke-static {v12}, Lcom/android/contacts/CallUtil;->isTachyonEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 1598
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->isTachyonReachable()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 1599
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1601
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.google.android.apps.tachyon.action.CALL"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v8

    const-string v10, "tel"

    const/4 v13, 0x0

    invoke-static {v10, v8, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1602
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1604
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getReachableDataItem()Lcom/android/contacts/model/dataitem/DataItem;

    move-result-object v0

    .line 1605
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v8, "data2"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    move-object v10, v1

    move-object v0, v3

    move-object v8, v4

    move-object v13, v7

    goto :goto_15

    :cond_1d
    move-object v0, v3

    move-object v8, v4

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v14, v24

    const/4 v1, 0x1

    const v7, 0x7f0800c5

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_16
    const/16 v16, 0x0

    goto :goto_17

    :cond_1e
    const/4 v14, 0x0

    const/16 v22, 0x1

    move-object/from16 v17, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    :goto_17
    move-object/from16 v22, v0

    move/from16 v31, v1

    move-object/from16 v27, v4

    move/from16 v34, v7

    move-object/from16 v28, v10

    move-object/from16 v29, v13

    move-object v13, v14

    move-object/from16 v30, v15

    move-object/from16 v32, v16

    move-object/from16 v14, v18

    const/16 v16, 0x0

    const/16 v25, 0x1

    move-object v15, v2

    move-object/from16 v18, v3

    move-object v3, v6

    move-object v10, v8

    move-object/from16 v2, v17

    goto/16 :goto_25

    :cond_1f
    const/4 v10, 0x0

    const/16 v22, 0x1

    .line 1608
    instance-of v4, v9, Lcom/android/contacts/model/dataitem/EmailDataItem;

    if-eqz v4, :cond_22

    .line 1609
    move-object v0, v9

    check-cast v0, Lcom/android/contacts/model/dataitem/EmailDataItem;

    .line 1610
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/EmailDataItem;->getData()Ljava/lang/String;

    move-result-object v4

    .line 1611
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_21

    const v6, 0x7f100111

    .line 1612
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "mailto"

    const/4 v8, 0x0

    .line 1613
    invoke-static {v6, v4, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1614
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v4, 0xd

    .line 1615
    invoke-virtual {v6, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1616
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/EmailDataItem;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1617
    new-instance v7, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    const v8, 0x7f10010d

    .line 1618
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v26

    .line 1619
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v29

    move-object/from16 v23, v7

    move-object/from16 v24, v4

    invoke-direct/range {v23 .. v29}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1620
    invoke-virtual {v0, v3}, Lcom/android/contacts/model/dataitem/DataItem;->hasKindTypeColumn(Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 1621
    invoke-virtual {v0, v3}, Lcom/android/contacts/model/dataitem/DataItem;->getKindTypeColumn(Lcom/android/contacts/model/dataitem/DataKind;)I

    move-result v3

    .line 1622
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/EmailDataItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 1621
    invoke-static {v1, v3, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1622
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1623
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_20
    const/4 v0, 0x0

    .line 1625
    :goto_18
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v14, 0x7f0800b2

    .line 1627
    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_19
    move-object v3, v6

    goto :goto_1a

    :cond_21
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    :goto_1a
    move-object/from16 v18, v0

    move-object v15, v4

    move-object/from16 v27, v7

    move/from16 v34, v14

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    :goto_1b
    const/16 v25, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object v14, v1

    goto/16 :goto_25

    .line 1629
    :cond_22
    instance-of v4, v9, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;

    if-eqz v4, :cond_25

    .line 1630
    move-object v0, v9

    check-cast v0, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;

    .line 1631
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;->getFormattedAddress()Ljava/lang/String;

    move-result-object v4

    .line 1632
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_24

    const v2, 0x7f10017c

    .line 1633
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    invoke-static {v4}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/16 v6, 0xf

    .line 1635
    invoke-virtual {v2, v15, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1636
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;->getFormattedAddress()Ljava/lang/String;

    move-result-object v6

    .line 1637
    new-instance v7, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    const v8, 0x7f1001d4

    .line 1638
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v26

    .line 1639
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v29

    move-object/from16 v23, v7

    move-object/from16 v24, v6

    invoke-direct/range {v23 .. v29}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1640
    invoke-virtual {v0, v3}, Lcom/android/contacts/model/dataitem/DataItem;->hasKindTypeColumn(Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 1642
    invoke-virtual {v0, v3}, Lcom/android/contacts/model/dataitem/DataItem;->getKindTypeColumn(Lcom/android/contacts/model/dataitem/DataKind;)I

    move-result v3

    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 1641
    invoke-static {v1, v3, v0}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1642
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1643
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_23
    const/4 v0, 0x0

    .line 1645
    :goto_1c
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    invoke-static {v4}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressDirectionsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0x10

    .line 1648
    invoke-virtual {v3, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v4, 0x7f0800b0

    .line 1649
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v8, 0x7f1000c2

    .line 1650
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v14, 0x7f0800c6

    .line 1653
    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v35, v3

    move-object v3, v2

    move-object/from16 v2, v35

    goto :goto_1d

    :cond_24
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    :goto_1d
    move-object/from16 v18, v0

    move-object/from16 v22, v4

    move-object v15, v6

    move-object/from16 v27, v7

    move/from16 v34, v14

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    goto/16 :goto_1b

    .line 1655
    :cond_25
    instance-of v4, v9, Lcom/android/contacts/model/dataitem/SipAddressDataItem;

    if-eqz v4, :cond_28

    .line 1656
    move-object v0, v9

    check-cast v0, Lcom/android/contacts/model/dataitem/SipAddressDataItem;

    .line 1657
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/SipAddressDataItem;->getSipAddress()Ljava/lang/String;

    move-result-object v4

    .line 1658
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 1659
    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1661
    invoke-static {v12}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_26

    const-string v6, "sip"

    const/4 v7, 0x0

    .line 1662
    invoke-static {v6, v4, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1663
    invoke-static {v6}, Lcom/android/contacts/CallUtil;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const/16 v7, 0xe

    .line 1664
    invoke-virtual {v6, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1e

    :cond_26
    const/4 v6, 0x0

    .line 1667
    :goto_1e
    new-instance v7, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1668
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v26

    .line 1669
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v29

    move-object/from16 v23, v7

    move-object/from16 v24, v4

    invoke-direct/range {v23 .. v29}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1670
    invoke-virtual {v0, v3}, Lcom/android/contacts/model/dataitem/DataItem;->hasKindTypeColumn(Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 1672
    invoke-virtual {v0, v3}, Lcom/android/contacts/model/dataitem/DataItem;->getKindTypeColumn(Lcom/android/contacts/model/dataitem/DataKind;)I

    move-result v3

    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/SipAddressDataItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 1671
    invoke-static {v1, v3, v0}, Landroid/provider/ContactsContract$CommonDataKinds$SipAddress;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1672
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1673
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_27
    const/4 v0, 0x0

    .line 1675
    :goto_1f
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v14, 0x7f0800af

    .line 1677
    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_19

    .line 1679
    :cond_28
    instance-of v4, v9, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    if-eqz v4, :cond_2c

    .line 1682
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;->value:Ljava/lang/String;

    if-eqz v3, :cond_29

    .line 1683
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1684
    :cond_29
    move-object v3, v9

    check-cast v3, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    invoke-virtual {v3}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getGivenName()Ljava/lang/String;

    move-result-object v3

    .line 1685
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const v6, 0x7f10001c

    if-nez v4, :cond_2a

    .line 1686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;->value:Ljava/lang/String;

    goto :goto_20

    .line 1689
    :cond_2a
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;->value:Ljava/lang/String;

    :cond_2b
    :goto_20
    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    :goto_21
    const/16 v22, 0x0

    const/16 v25, 0x1

    :goto_22
    const/16 v27, 0x0

    :goto_23
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    goto/16 :goto_5

    .line 1692
    :cond_2c
    invoke-static {v12}, Lcom/android/contacts/CallUtil;->isTachyonEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1693
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "vnd.android.cursor.item/com.google.android.apps.tachyon.phone"

    .line 1692
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    return-object v0

    .line 1698
    :cond_2d
    invoke-virtual {v9, v12, v3}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataStringForDisplay(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v7

    .line 1699
    iget-object v8, v3, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 1700
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1701
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v13

    invoke-static {v0, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1702
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x11

    .line 1703
    invoke-virtual {v3, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1704
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "third_party_action"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1707
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "vnd.android.cursor.item/vnd.googleplus.profile.comm"

    .line 1709
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    const v0, 0x7f0800b8

    const v4, 0x7f0800b7

    if-eqz p1, :cond_2e

    .line 1713
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 1714
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1716
    new-instance v15, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;

    move-object v0, v15

    move-object v1, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v6, v7

    move-object v7, v8

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;-><init>(Landroid/content/Intent;Landroid/content/Intent;Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/model/dataitem/DataItem;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1721
    invoke-static {v15}, Lcom/android/contacts/quickcontact/QuickContactActivity;->populateHangoutsDataItemModel(Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;)V

    .line 1722
    iget-object v3, v15, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->intent:Landroid/content/Intent;

    .line 1723
    iget-object v2, v15, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->alternateIntent:Landroid/content/Intent;

    .line 1724
    iget-object v5, v15, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->alternateContentDescription:Ljava/lang/StringBuilder;

    .line 1725
    iget-object v0, v15, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->header:Ljava/lang/String;

    .line 1726
    iget-object v1, v15, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->text:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v18, v1

    move-object/from16 v22, v14

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v25, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v34, 0x0

    move-object v14, v13

    const/4 v13, 0x0

    goto/16 :goto_25

    .line 1728
    :cond_2e
    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "hangout"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 1729
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_24

    .line 1731
    :cond_2f
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_24
    move-object v14, v0

    move-object v15, v7

    move-object/from16 v18, v8

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    goto/16 :goto_21

    .line 1735
    :cond_30
    invoke-static {v12}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v1

    .line 1736
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 1735
    invoke-virtual {v1, v4, v3}, Lcom/android/contacts/quickcontact/ResolveCache;->getIcon(Ljava/lang/String;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 1739
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_31
    const-string v4, "vnd.android.cursor.item/vnd.googleplus.profile"

    .line 1743
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 1744
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1745
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v27

    .line 1746
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v29

    move-object/from16 v23, v4

    move-object/from16 v24, v7

    move-object/from16 v25, v0

    invoke-direct/range {v23 .. v29}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object v14, v1

    move-object/from16 v27, v4

    move-object v15, v7

    move-object/from16 v18, v8

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    goto/16 :goto_23

    :cond_32
    move-object v14, v1

    move-object v15, v7

    move-object/from16 v18, v8

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    goto/16 :goto_22

    :goto_25
    if-eqz v3, :cond_33

    .line 1754
    invoke-static {v12, v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_33

    const/4 v3, 0x0

    :cond_33
    if-eqz v2, :cond_35

    .line 1761
    invoke-static {v12, v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_34

    const/16 v23, 0x0

    goto :goto_26

    .line 1763
    :cond_34
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1765
    invoke-static {v2, v12}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIntentResolveLabel(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    move-object/from16 v23, v2

    :goto_26
    if-nez v14, :cond_36

    .line 1770
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1771
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    return-object v0

    .line 1776
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v0

    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v0, v6

    if-lez v2, :cond_37

    const/4 v1, -0x1

    goto :goto_27

    .line 1777
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v0

    long-to-int v1, v0

    .line 1779
    :goto_27
    new-instance v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    if-nez v13, :cond_38

    .line 1781
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v20, v2

    goto :goto_28

    :cond_38
    move-object/from16 v20, v13

    :goto_28
    if-nez v10, :cond_39

    .line 1785
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v24, v2

    goto :goto_29

    :cond_39
    move-object/from16 v24, v10

    :goto_29
    const/16 v26, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v12, v0

    move v13, v1

    move-object/from16 v21, v3

    .line 1786
    invoke-direct/range {v12 .. v34}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/text/Spannable;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Landroid/text/Spannable;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;ZI)V

    return-object v0
.end method

.method private dataItemsToBucket(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/dataitem/DataItem;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/dataitem/DataItem;",
            ">;>;"
        }
    .end annotation

    .line 1816
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1817
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/dataitem/DataItem;

    .line 1818
    invoke-virtual {v1}, Lcom/android/contacts/model/dataitem/DataItem;->getRawContactId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 1820
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1821
    invoke-virtual {v1}, Lcom/android/contacts/model/dataitem/DataItem;->getRawContactId()Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private dataItemsToEntries(Ljava/util/List;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/dataitem/DataItem;",
            ">;",
            "Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1795
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/dataitem/DataItem;

    invoke-virtual {v1}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/vnd.googleplus.profile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1796
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->gPlusDataItemsToEntries(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1797
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/dataitem/DataItem;

    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/vnd.googleplus.profile.comm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1798
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->hangoutsDataItemsToEntries(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1800
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1801
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/dataitem/DataItem;

    const/4 v2, 0x0

    .line 1802
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {v1, v2, p0, v3, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->dataItemToEntry(Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/model/dataitem/DataItem;Landroid/content/Context;Lcom/android/contacts/model/Contact;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1805
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private deleteContact()V
    .locals 2

    .line 2194
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    .line 2195
    invoke-static {p0, v0, v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    return-void
.end method

.method private dismissProgressBar()V
    .locals 1

    .line 2557
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2558
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private doJoinContactAction()Z
    .locals 4

    .line 2511
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2513
    :cond_0
    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPreviousContactId:J

    .line 2514
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.contacts.action.JOIN_CONTACT"

    .line 2515
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2516
    iget-wide v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPreviousContactId:J

    const-string v3, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 2517
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    return v0
.end method

.method private doPickRingtone()V
    .locals 3

    .line 2534
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v2, 0x1

    .line 2536
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.TYPE"

    .line 2538
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    .line 2540
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2542
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCustomRingtone:Ljava/lang/String;

    sget v2, Lcom/android/contacts/quickcontact/QuickContactActivity;->CURRENT_API_VERSION:I

    invoke-static {v1, v2}, Lcom/android/contacts/editor/EditorUiUtils;->getRingtoneUriFromString(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    .line 2546
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x4

    .line 2550
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v0, 0x7f1001a5

    const/4 v1, 0x0

    .line 2552
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private editContact()V
    .locals 2

    const/4 v0, 0x1

    .line 2188
    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z

    .line 2189
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/model/ContactLoader;

    invoke-virtual {v1}, Lcom/android/contacts/model/ContactLoader;->cacheResult()V

    .line 2190
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getEditContactIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private extractAndApplyTintFromPhotoViewAsynchronously()V
    .locals 2

    .line 1966
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-nez v0, :cond_0

    return-void

    .line 1969
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    invoke-virtual {v0}, Lcom/android/contacts/widget/QuickContactImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1970
    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$12;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$12;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 2018
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private gPlusDataItemsToEntries(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/dataitem/DataItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;",
            ">;"
        }
    .end annotation

    .line 1833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1835
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->dataItemsToBucket(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1836
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/dataitem/DataItem;

    .line 1838
    invoke-virtual {v2}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "data5"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "view"

    .line 1837
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1839
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    const/4 v4, 0x0

    invoke-static {v2, v4, p0, v3, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->dataItemToEntry(Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/model/dataitem/DataItem;Landroid/content/Context;Lcom/android/contacts/model/Contact;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1842
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private generateDataModelFromContact(Lcom/android/contacts/model/Contact;)Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;
    .locals 10

    const-string v0, "Build data items map"

    .line 1225
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1228
    invoke-static {p0}, Lcom/android/contacts/CallUtil;->isTachyonEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 1230
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/RawContact;

    .line 1231
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/dataitem/DataItem;

    .line 1232
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/model/dataitem/DataItem;->setRawContactId(J)V

    .line 1234
    invoke-virtual {v5}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const-string v7, "vnd.android.cursor.item/com.google.android.apps.tachyon.phone"

    .line 1237
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1239
    invoke-virtual {v3, p0}, Lcom/android/contacts/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v7

    .line 1240
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v8

    .line 1241
    invoke-virtual {v8, v7, v6}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_0

    .line 1244
    :cond_3
    invoke-virtual {v5, v7}, Lcom/android/contacts/model/dataitem/DataItem;->setDataKind(Lcom/android/contacts/model/dataitem/DataKind;)V

    .line 1246
    invoke-virtual {v5, p0, v7}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataString(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 1249
    invoke-direct {p0, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    if-nez v7, :cond_5

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    goto :goto_0

    .line 1255
    :cond_5
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_6

    .line 1257
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1258
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    :cond_6
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1263
    :cond_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1264
    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindReachability(Ljava/util/Map;)V

    const-string v1, "sort within mimetypes"

    .line 1266
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1274
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1276
    invoke-static {v3, p0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;Landroid/content/Context;)V

    .line 1278
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mWithinMimeTypeDataItemComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1280
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1282
    :cond_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v2, "sort amongst mimetypes"

    .line 1284
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1286
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAmongstMimeTypeDataItemComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1287
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v2, "cp2 data items to entries"

    .line 1289
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1292
    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->buildAboutCardEntries(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 1293
    new-instance v4, Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1295
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 1296
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1297
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/dataitem/DataItem;

    .line 1298
    sget-object v9, Lcom/android/contacts/quickcontact/QuickContactActivity;->SORTED_ABOUT_CARD_MIMETYPES:Ljava/util/List;

    invoke-virtual {v8}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_3

    .line 1302
    :cond_9
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v8, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->dataItemsToEntries(Ljava/util/List;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Ljava/util/List;

    move-result-object v8

    .line 1304
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_a

    .line 1305
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1310
    :cond_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1312
    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    invoke-direct {v1, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    .line 1313
    iget-object v4, v4, Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;->value:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->customAboutCardName:Ljava/lang/String;

    .line 1314
    iput-object v3, v1, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->aboutCardEntries:Ljava/util/List;

    .line 1315
    iput-object v2, v1, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->contactCardEntries:Ljava/util/List;

    .line 1316
    iput-object v0, v1, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->dataItemsMap:Ljava/util/Map;

    .line 1317
    invoke-virtual {p1, p0}, Lcom/android/contacts/model/Contact;->areAllRawContactsSimAccounts(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, v1, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->areAllRawContactsSimAccounts:Z

    return-object v1
.end method

.method private getEditContactIntent()Landroid/content/Intent;
    .locals 4

    .line 2180
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    .line 2181
    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    .line 2182
    iget-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasComputedThemeColor:Z

    if-eqz v1, :cond_0

    .line 2183
    new-instance v1, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    iget v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mColorFilterColor:I

    iget v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStatusBarColor:I

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    .line 2184
    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->getPhotoId()J

    move-result-wide v2

    .line 2180
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/contacts/editor/EditorIntents;->createEditContactIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static getIntentResolveLabel(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1941
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1946
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    .line 1948
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    goto :goto_0

    :cond_0
    if-le v1, v2, :cond_1

    .line 1950
    invoke-static {p1}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/contacts/quickcontact/ResolveCache;->getBestResolve(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v3

    :goto_0
    if-nez p0, :cond_2

    return-object v3

    .line 1957
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hangoutsDataItemsToEntries(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/dataitem/DataItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;",
            ">;"
        }
    .end annotation

    .line 1857
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1861
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->dataItemsToBucket(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1862
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 1864
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/dataitem/DataItem;

    const/4 v3, 0x1

    .line 1865
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/dataitem/DataItem;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    .line 1864
    invoke-static {v2, v1, p0, v3, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->dataItemToEntry(Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/model/dataitem/DataItem;Landroid/content/Context;Lcom/android/contacts/model/Contact;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1868
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1871
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/dataitem/DataItem;

    .line 1872
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {v2, v4, p0, v3, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->dataItemToEntry(Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/model/dataitem/DataItem;Landroid/content/Context;Lcom/android/contacts/model/Contact;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1875
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private initializeNoContactDetailCard(Z)V
    .locals 34

    move-object/from16 v0, p0

    .line 1160
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800c5

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1161
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1162
    new-instance v1, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    move-object v4, v1

    const v2, 0x7f1001e1

    .line 1163
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1166
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getEditContactIntent()Landroid/content/Intent;

    move-result-object v13

    const/4 v5, -0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x1

    const v26, 0x7f0800c5

    invoke-direct/range {v4 .. v26}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/text/Spannable;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Landroid/text/Spannable;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;ZI)V

    .line 1177
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 1179
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 1182
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0800b2

    invoke-static {v1, v6, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1183
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1184
    new-instance v1, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    move-object v6, v1

    const/4 v7, -0x2

    const v9, 0x7f1001e0

    .line 1185
    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1188
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getEditContactIntent()Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x1

    const v28, 0x7f0800b2

    invoke-direct/range {v6 .. v28}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/text/Spannable;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Landroid/text/Spannable;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;ZI)V

    .line 1197
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1201
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0600f6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1203
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v1, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1205
    iget-object v7, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/16 v29, 0x2

    const/16 v30, 0x1

    const/16 v31, 0x1

    iget-object v8, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExpandingEntryCardViewListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    move-object/from16 v27, v7

    move-object/from16 v28, v2

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    invoke-virtual/range {v27 .. v33}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->initialize(Ljava/util/List;IZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;Landroid/view/ViewGroup;)V

    .line 1207
    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    iget-boolean v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShouldLog:Z

    if-eqz v2, :cond_1

    .line 1208
    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mReferrer:Ljava/lang/String;

    iget v7, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactType:I

    invoke-static {v2, v7, v5, v4, v3}, Lcom/android/contacts/logging/Logger;->logQuickContactEvent(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1211
    :cond_1
    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1212
    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-virtual {v2, v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setEntryHeaderColor(I)V

    .line 1213
    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-virtual {v2, v1, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setColorAndFilter(ILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method private isContactEditable()Z
    .locals 1

    .line 2169
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isContactShareable()Z
    .locals 1

    .line 2176
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMimeExcluded(Ljava/lang/String;)Z
    .locals 5

    .line 912
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 913
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 914
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private isMultiWindowOnPhone()Z
    .locals 1

    .line 887
    invoke-static {p0}, Lcom/android/contacts/compat/MultiWindowCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isShortcutCreatable()Z
    .locals 3

    .line 2281
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    .line 2282
    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2286
    :cond_0
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "shortcut"

    .line 2288
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 2289
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v0

    return v0

    .line 2292
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 2293
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2294
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2295
    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2296
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private joinAggregate(J)V
    .locals 7

    .line 2525
    iget-wide v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPreviousContactId:J

    const-class v5, Lcom/android/contacts/quickcontact/QuickContactActivity;

    const-string v6, "android.intent.action.VIEW"

    move-object v0, p0

    move-wide v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/ContactSaveService;->createJoinContactsIntent(Landroid/content/Context;JJLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 2528
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2529
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->showLinkProgressBar()V

    return-void
.end method

.method private maybeShowProgressDialog()V
    .locals 2

    .line 2573
    invoke-static {}, Lcom/android/contacts/ContactSaveService;->getState()Lcom/android/contacts/ContactSaveService$State;

    move-result-object v0

    const-string v1, "splitContact"

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactSaveService$State;->isActionPending(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2575
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->showUnlinkProgressBar()V

    goto :goto_0

    .line 2576
    :cond_0
    invoke-static {}, Lcom/android/contacts/ContactSaveService;->getState()Lcom/android/contacts/ContactSaveService$State;

    move-result-object v0

    const-string v1, "joinContacts"

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactSaveService$State;->isActionPending(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2578
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->showLinkProgressBar()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onRingtonePicked(Landroid/net/Uri;)V
    .locals 1

    .line 793
    sget v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->CURRENT_API_VERSION:I

    invoke-static {p1, v0}, Lcom/android/contacts/editor/EditorUiUtils;->getRingtoneStringFromUri(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCustomRingtone:Ljava/lang/String;

    .line 794
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/android/contacts/ContactSaveService;->createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 796
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private populateContactAndAboutCard(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;Z)V
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1058
    iput-object v1, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCachedCp2DataCardModel:Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    .line 1059
    iget-boolean v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z

    if-nez v2, :cond_9

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v2, "bind contact card"

    .line 1062
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1064
    iget-object v2, v1, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->contactCardEntries:Ljava/util/List;

    .line 1065
    iget-object v10, v1, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->aboutCardEntries:Ljava/util/List;

    .line 1066
    iget-object v11, v1, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->customAboutCardName:Ljava/lang/String;

    .line 1068
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    if-lez v3, :cond_2

    .line 1069
    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/4 v5, 0x3

    .line 1071
    invoke-virtual {v3}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->isExpanded()Z

    move-result v6

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExpandingEntryCardViewListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    move-object v4, v2

    .line 1069
    invoke-virtual/range {v3 .. v9}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->initialize(Ljava/util/List;IZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;Landroid/view/ViewGroup;)V

    .line 1075
    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-ne v3, v13, :cond_1

    iget-boolean v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShouldLog:Z

    if-eqz v3, :cond_1

    .line 1076
    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mReferrer:Ljava/lang/String;

    iget v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactType:I

    const/4 v5, 0x2

    invoke-static {v3, v4, v5, v14, v12}, Lcom/android/contacts/logging/Logger;->logQuickContactEvent(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1079
    :cond_1
    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-virtual {v3, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 1081
    :cond_2
    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-virtual {v3, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1083
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v3, "bind about card"

    .line 1085
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1090
    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getPhoneticName()Ljava/lang/String;

    move-result-object v26

    if-eqz p2, :cond_4

    .line 1091
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1092
    new-instance v3, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    move-object/from16 v22, v3

    const/16 v23, -0x1

    const/16 v24, 0x0

    .line 1094
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1001b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    new-instance v15, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    move-object/from16 v37, v15

    .line 1107
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-wide/16 v19, -0x1

    const/16 v21, 0x0

    move-object/from16 v16, v26

    invoke-direct/range {v15 .. v21}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x1

    const/16 v42, 0x0

    const/16 v43, 0x1

    const/16 v44, 0x0

    invoke-direct/range {v22 .. v44}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/text/Spannable;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Landroid/text/Spannable;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;ZI)V

    .line 1116
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    invoke-virtual {v3}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getHeader()Ljava/lang/String;

    move-result-object v3

    .line 1120
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10014f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1119
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 1121
    invoke-interface {v10, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1123
    :cond_3
    invoke-interface {v10, v14, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1127
    :cond_4
    :goto_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1128
    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-virtual {v3, v11}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setTitle(Ljava/lang/String;)V

    .line 1131
    :cond_5
    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExpandingEntryCardViewListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    move-object v4, v10

    invoke-virtual/range {v3 .. v9}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->initialize(Ljava/util/List;IZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;Landroid/view/ViewGroup;)V

    .line 1138
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 1139
    iget-boolean v1, v1, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->areAllRawContactsSimAccounts:Z

    invoke-direct {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->initializeNoContactDetailCard(Z)V

    goto :goto_2

    .line 1141
    :cond_6
    iget-object v1, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1145
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 1146
    iget-object v1, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-ne v1, v13, :cond_7

    iget-boolean v1, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShouldLog:Z

    if-eqz v1, :cond_7

    .line 1147
    iget-object v1, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mReferrer:Ljava/lang/String;

    iget v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactType:I

    const/4 v3, 0x4

    invoke-static {v1, v2, v3, v14, v12}, Lcom/android/contacts/logging/Logger;->logQuickContactEvent(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1150
    :cond_7
    iget-object v1, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1152
    :cond_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_9
    :goto_3
    return-void
.end method

.method private static populateHangoutsDataItemModel(Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;)V
    .locals 4

    .line 1913
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1914
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->secondDataItem:Lcom/android/contacts/model/dataitem/DataItem;

    .line 1915
    invoke-virtual {v2}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v2

    .line 1914
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->secondDataItem:Lcom/android/contacts/model/dataitem/DataItem;

    .line 1915
    invoke-virtual {v2}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 1914
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "action_type"

    const/16 v2, 0x11

    .line 1916
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1917
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->secondDataItem:Lcom/android/contacts/model/dataitem/DataItem;

    invoke-virtual {v1}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "third_party_action"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1922
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->dataItem:Lcom/android/contacts/model/dataitem/DataItem;

    .line 1923
    invoke-virtual {v1}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "data5"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "hangout"

    .line 1922
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1924
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->intent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->alternateIntent:Landroid/content/Intent;

    .line 1925
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->header:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->alternateContentDescription:Ljava/lang/StringBuilder;

    .line 1927
    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->intent:Landroid/content/Intent;

    .line 1928
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->secondDataItem:Lcom/android/contacts/model/dataitem/DataItem;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->context:Landroid/content/Context;

    .line 1929
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v2

    .line 1928
    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataStringForDisplay(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->header:Ljava/lang/String;

    .line 1930
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->secondDataItem:Lcom/android/contacts/model/dataitem/DataItem;

    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->text:Ljava/lang/String;

    goto :goto_0

    .line 1931
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->dataItem:Lcom/android/contacts/model/dataitem/DataItem;

    .line 1932
    invoke-virtual {v1}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "conversation"

    .line 1931
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1933
    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->alternateIntent:Landroid/content/Intent;

    .line 1934
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->secondDataItem:Lcom/android/contacts/model/dataitem/DataItem;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->context:Landroid/content/Context;

    .line 1936
    invoke-virtual {v1}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v3

    .line 1935
    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataStringForDisplay(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$HangoutsDataItemModel;->alternateContentDescription:Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-void
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 5

    if-nez p1, :cond_0

    .line 824
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    return-void

    .line 827
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "splitCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const p1, 0x7f1000a5

    .line 828
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 829
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    return-void

    .line 833
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "contact_edited"

    .line 834
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    .line 835
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    :cond_2
    if-eqz v0, :cond_3

    .line 839
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "contacts"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 840
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 841
    invoke-virtual {p0}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 842
    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 841
    invoke-static {v0, v2}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 844
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.provider.extra.MODE"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExtraMode:I

    .line 845
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMultiWindowOnPhone()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 846
    iput v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExtraMode:I

    .line 849
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.provider.extra.PRIORITIZED_MIMETYPE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExtraPrioritizedMimeType:Ljava/lang/String;

    .line 850
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    if-nez v0, :cond_5

    .line 854
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    return-void

    .line 857
    :cond_5
    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    const-string v0, "android.provider.extra.EXCLUDE_MIMES"

    .line 858
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez v2, :cond_6

    .line 861
    iget-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsRecreatedInstance:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShouldLog:Z

    .line 862
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderContactCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/ContactLoader;

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/model/ContactLoader;

    goto :goto_0

    .line 864
    :cond_6
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    if-eq v2, v3, :cond_7

    .line 866
    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShouldLog:Z

    .line 869
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/ContactLoader;

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/model/ContactLoader;

    .line 871
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/ContactLoader;->setNewLookup(Landroid/net/Uri;)V

    .line 872
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCachedCp2DataCardModel:Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    .line 874
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/model/ContactLoader;

    invoke-virtual {p1}, Landroid/content/AsyncTaskLoader;->forceLoad()V

    return-void
.end method

.method private runEntranceAnimation()V
    .locals 4

    .line 878
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasAlreadyBeenOpened:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 881
    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasAlreadyBeenOpened:Z

    .line 882
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMultiWindowOnPhone()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExtraMode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollUpForEntranceAnimation(Z)V

    return-void
.end method

.method private setHeaderNameText(I)V
    .locals 2

    .line 892
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v0, :cond_1

    .line 893
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->setTitle(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private setHeaderNameText(Ljava/lang/String;Z)V
    .locals 1

    .line 900
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/widget/MultiShrinkScroller;->setTitle(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private setStateForPhoneMenuItems(Lcom/android/contacts/model/Contact;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2301
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->isSendToVoicemail()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSendToVoicemailState:Z

    .line 2302
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getCustomRingtone()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCustomRingtone:Ljava/lang/String;

    .line 2303
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactEditable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2304
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mArePhoneOptionsChangable:Z

    :cond_1
    return-void
.end method

.method private setThemeColor(Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)V
    .locals 2

    .line 2023
    iget v0, p1, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    iput v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mColorFilterColor:I

    .line 2024
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v1, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->setHeaderTintColor(I)V

    .line 2025
    iget p1, p1, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    iput p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStatusBarColor:I

    .line 2026
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->updateStatusBarColor()V

    .line 2028
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mColorFilterColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 2030
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mColorFilterColor:I

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setColorAndFilter(ILandroid/graphics/ColorFilter;)V

    .line 2031
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mColorFilterColor:I

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setColorAndFilter(ILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method private shareContact()V
    .locals 4

    .line 2217
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v0

    .line 2218
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2219
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    .line 2220
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    .line 2221
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2224
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0006

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 2226
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2229
    :try_start_0
    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z

    .line 2230
    invoke-static {p0, v0}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startActivityOutsideApp(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v0, 0x7f100200

    const/4 v1, 0x0

    .line 2232
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private showActivity()V
    .locals 3

    .line 1007
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1008
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1009
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$11;

    invoke-direct {v2, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$11;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-static {v0, v1, v2}, Lcom/android/contacts/util/SchedulingUtils;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private showLinkProgressBar()V
    .locals 2

    .line 2563
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f1000be

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2564
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private showRawContactPickerDialog()Z
    .locals 4

    .line 2499
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2502
    :cond_0
    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    .line 2503
    iget-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasComputedThemeColor:Z

    if-eqz v1, :cond_1

    .line 2504
    new-instance v1, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    iget v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mColorFilterColor:I

    iget v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStatusBarColor:I

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2500
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/android/contacts/editor/EditorIntents;->createViewLinkedContactsIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return v1
.end method

.method private showUnlinkProgressBar()V
    .locals 2

    .line 2568
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f1000c1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2569
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private toggleStar(Landroid/view/MenuItem;Z)V
    .locals 3

    .line 2200
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    .line 2201
    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v1

    xor-int/lit8 v2, p2, 0x1

    .line 2200
    invoke-static {p1, v0, v1, v2}, Lcom/android/contacts/detail/ContactDisplayUtils;->configureStarredMenuItem(Landroid/view/MenuItem;ZZZ)V

    .line 2204
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    .line 2205
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object p1

    xor-int/lit8 v0, p2, 0x1

    .line 2204
    invoke-static {p0, p1, v0}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object p1

    .line 2206
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-nez p2, :cond_0

    .line 2209
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000d0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 2210
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000d1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2213
    :goto_0
    iget-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateStatusBarColor()V
    .locals 5

    .line 2035
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2040
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollNeededToBeFullScreen()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    .line 2041
    iget v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStatusBarColor:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2046
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 2047
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getStatusBarColor()I

    move-result v4

    aput v4, v3, v1

    const/4 v1, 0x1

    aput v0, v3, v1

    const-string v0, "statusBarColor"

    .line 2046
    invoke-static {v2, v0, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 2048
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2049
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 2050
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 608
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 609
    invoke-static {}, Lcom/android/contacts/interactions/TouchPointManager;->getInstance()Lcom/android/contacts/interactions/TouchPointManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/interactions/TouchPointManager;->setPoint(II)V

    .line 611
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 1

    .line 2140
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 2143
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 771
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    if-eqz v2, :cond_2

    .line 773
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    goto :goto_1

    :cond_2
    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_3

    .line 776
    invoke-direct {p0, p3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->processIntent(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_5

    const/4 p1, -0x1

    if-eq p2, p1, :cond_4

    return-void

    :cond_4
    if-eqz p3, :cond_6

    .line 783
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->joinAggregate(J)V

    goto :goto_1

    :cond_5
    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    if-eqz p3, :cond_6

    const-string p1, "android.intent.extra.ringtone.PICKED_URI"

    .line 786
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 788
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->onRingtonePicked(Landroid/net/Uri;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 2122
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "previous_screen_type"

    const/4 v2, 0x0

    .line 2123
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2126
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getHamburgerPromoTriggerActionHappenedBefore(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2127
    invoke-static {p0}, Lcom/android/contacts/util/SharedPreferenceUtil;->setHamburgerPromoTriggerActionHappenedBefore(Landroid/content/Context;)V

    .line 2129
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v0, :cond_2

    .line 2130
    iget-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsExitAnimationInProgress:Z

    if-nez v1, :cond_3

    .line 2131
    invoke-virtual {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollOffBottom()V

    goto :goto_0

    .line 2134
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 478
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 491
    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getId()J

    move-result-wide v0

    .line 490
    invoke-static {p0, v0, v1}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object p1

    .line 492
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return v2

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown menu option "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_1
    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getId()J

    move-result-wide v0

    .line 495
    invoke-static {p0, v0, v1}, Lcom/android/contacts/ContactSaveService;->createClearPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object p1

    .line 497
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return v2

    .line 486
    :cond_2
    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getCopyLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getCopyText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, v2}, Lcom/android/contacts/ClipboardUtils;->copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return v2

    :catch_0
    move-exception p1

    const-string v0, "QuickContact"

    const-string v1, "bad menuInfo"

    .line 480
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "onCreate()"

    .line 616
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 617
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 619
    invoke-static {p0}, Lcom/android/contacts/activities/RequestPermissionsActivity;->startPermissionActivityIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 623
    :goto_0
    iput-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsRecreatedInstance:Z

    if-eqz v2, :cond_2

    const-string v2, "previous_contact_id"

    .line 625
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPreviousContactId:J

    const-string v2, "sendToVoicemailState"

    .line 628
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSendToVoicemailState:Z

    const-string v2, "arePhoneOptionsChangable"

    .line 630
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mArePhoneOptionsChangable:Z

    const-string v2, "customRingtone"

    .line 631
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCustomRingtone:Ljava/lang/String;

    .line 633
    :cond_2
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 634
    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 635
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 637
    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$SaveServiceListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity$SaveServiceListener;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListener:Lcom/android/contacts/quickcontact/QuickContactActivity$SaveServiceListener;

    .line 638
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "linkComplete"

    .line 639
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "unlinkComplete"

    .line 640
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListener:Lcom/android/contacts/quickcontact/QuickContactActivity$SaveServiceListener;

    invoke-virtual {v4, v5, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 645
    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShouldLog:Z

    .line 647
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "previous_screen_type"

    .line 648
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x5

    .line 649
    invoke-static {p0, v4, v2}, Lcom/android/contacts/logging/Logger;->logScreenView(Landroid/app/Activity;II)V

    .line 651
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mReferrer:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 652
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLollipopMr1Compatible()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 653
    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mReferrer:Ljava/lang/String;

    .line 655
    :cond_3
    iput v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactType:I

    .line 657
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 658
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 661
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->processIntent(Landroid/content/Intent;)V

    .line 664
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v4, 0x20000

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    const v2, 0x7f0c0092

    .line 667
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 669
    new-instance v2, Lcom/android/contacts/util/MaterialColorMapUtils;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/contacts/util/MaterialColorMapUtils;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mMaterialColorMapUtils:Lcom/android/contacts/util/MaterialColorMapUtils;

    const v2, 0x7f09014b

    .line 671
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/widget/MultiShrinkScroller;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    const v2, 0x7f09007e

    .line 673
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const v2, 0x7f09015c

    .line 674
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const v2, 0x7f090006

    .line 675
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    .line 677
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v4}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 681
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v4}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    const v2, 0x7f09016f

    .line 684
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/widget/QuickContactImageView;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    const v2, 0x7f0901f8

    .line 685
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 686
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v4, :cond_5

    .line 687
    new-instance v4, Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    invoke-direct {v4, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$7;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v2, 0x7f0901ee

    .line 696
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/contacts/util/ViewUtil;->addRectangularOutlineProvider(Landroid/view/View;Landroid/content/res/Resources;)V

    const v2, 0x7f0901ec

    .line 698
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    .line 699
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 700
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 703
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c009a

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    .line 705
    :goto_1
    iput-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasAlreadyBeenOpened:Z

    .line 706
    iput-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEntranceAnimationFinished:Z

    .line 707
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/android/contacts/quickcontact/QuickContactActivity;->SCRIM_COLOR:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mWindowScrim:Landroid/graphics/drawable/ColorDrawable;

    .line 708
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 709
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mWindowScrim:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 711
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mMultiShrinkScrollerListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    iget v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExtraMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_2
    const/4 v6, -0x1

    invoke-virtual {v2, v3, v4, v6, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->initialize(Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;ZIZ)V

    .line 716
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v2, 0x7f1001a6

    .line 718
    invoke-direct {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(I)V

    .line 720
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    new-instance v3, Lcom/android/contacts/quickcontact/QuickContactActivity$8;

    invoke-direct {v3, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$8;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-static {v2, v0, v3}, Lcom/android/contacts/util/SchedulingUtils;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    if-eqz p1, :cond_8

    const-string v0, "theme_color"

    .line 741
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 742
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$9;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$9;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;I)V

    invoke-static {v0, v1, v2}, Lcom/android/contacts/util/SchedulingUtils;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    .line 763
    :cond_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 2310
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0004

    .line 2311
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 2161
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListener:Lcom/android/contacts/quickcontact/QuickContactActivity$SaveServiceListener;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2162
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 801
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 802
    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasAlreadyBeenOpened:Z

    .line 803
    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEntranceAnimationFinished:Z

    const/4 v0, 0x0

    .line 804
    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasComputedThemeColor:Z

    .line 805
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->processIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 2381
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f090140

    if-ne v0, v5, :cond_1

    .line 2383
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_10

    .line 2387
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    .line 2388
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mReferrer:Ljava/lang/String;

    iget v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactType:I

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    :cond_0
    invoke-static {v5, v6, v4, v1, v3}, Lcom/android/contacts/logging/Logger;->logQuickContactEvent(Ljava/lang/String;IIILjava/lang/String;)V

    .line 2391
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->toggleStar(Landroid/view/MenuItem;Z)V

    goto/16 :goto_2

    :cond_1
    const v5, 0x7f09012f

    if-ne v0, v5, :cond_7

    .line 2394
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {p1}, Lcom/android/contacts/quickcontact/DirectoryContactUtil;->isDirectoryContact(Lcom/android/contacts/model/Contact;)Z

    move-result p1

    const/4 v0, 0x5

    if-eqz p1, :cond_5

    .line 2395
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mReferrer:Ljava/lang/String;

    iget v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactType:I

    invoke-static {p1, v5, v4, v0, v3}, Lcom/android/contacts/logging/Logger;->logQuickContactEvent(Ljava/lang/String;IIILjava/lang/String;)V

    .line 2403
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "vnd.android.cursor.item/contact"

    .line 2404
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2406
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v0

    .line 2410
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getDisplayNameSource()I

    move-result v3

    const/16 v5, 0x23

    if-lt v3, v5, :cond_2

    .line 2411
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "name"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2412
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getDisplayNameSource()I

    move-result v3

    const/16 v5, 0x1e

    if-ne v3, v5, :cond_3

    .line 2417
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2418
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "data1"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/organization"

    .line 2419
    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    const-string v3, "data"

    .line 2423
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2428
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getDirectoryExportSupport()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 2430
    new-instance v0, Landroid/accounts/Account;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    .line 2431
    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getDirectoryAccountName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    .line 2432
    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->getDirectoryAccountType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "android.provider.extra.ACCOUNT"

    .line 2430
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2433
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    .line 2434
    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContact;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.provider.extra.DATA_SET"

    .line 2433
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string v0, "disableDeleteMenuOption"

    .line 2439
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2443
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2444
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 2445
    :cond_5
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {p1, p0}, Lcom/android/contacts/quickcontact/InvisibleContactUtil;->isInvisibleAndAddable(Lcom/android/contacts/model/Contact;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2446
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mReferrer:Ljava/lang/String;

    iget v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactType:I

    invoke-static {p1, v1, v4, v0, v3}, Lcom/android/contacts/logging/Logger;->logQuickContactEvent(Ljava/lang/String;IIILjava/lang/String;)V

    .line 2448
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {p1, p0}, Lcom/android/contacts/quickcontact/InvisibleContactUtil;->addToDefaultGroup(Lcom/android/contacts/model/Contact;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 2449
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactEditable()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2450
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mReferrer:Ljava/lang/String;

    iget v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactType:I

    const/4 v1, 0x4

    invoke-static {p1, v0, v4, v1, v3}, Lcom/android/contacts/logging/Logger;->logQuickContactEvent(Ljava/lang/String;IIILjava/lang/String;)V

    .line 2452
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->editContact()V

    goto/16 :goto_2

    :cond_7
    const v1, 0x7f090132

    if-ne v0, v1, :cond_8

    .line 2455
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->doJoinContactAction()Z

    move-result p1

    return p1

    :cond_8
    const v1, 0x7f090133

    if-ne v0, v1, :cond_9

    .line 2457
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->showRawContactPickerDialog()Z

    move-result p1

    return p1

    :cond_9
    const v1, 0x7f09012d

    if-ne v0, v1, :cond_a

    .line 2459
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mReferrer:Ljava/lang/String;

    iget v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactType:I

    const/4 v1, 0x6

    invoke-static {p1, v0, v4, v1, v3}, Lcom/android/contacts/logging/Logger;->logQuickContactEvent(Ljava/lang/String;IIILjava/lang/String;)V

    .line 2461
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactEditable()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2462
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->deleteContact()V

    goto/16 :goto_2

    :cond_a
    const v1, 0x7f09013e

    if-ne v0, v1, :cond_b

    .line 2465
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mReferrer:Ljava/lang/String;

    iget v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactType:I

    const/4 v1, 0x7

    invoke-static {p1, v0, v4, v1, v3}, Lcom/android/contacts/logging/Logger;->logQuickContactEvent(Ljava/lang/String;IIILjava/lang/String;)V

    .line 2467
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactShareable()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2468
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->shareContact()V

    goto :goto_2

    :cond_b
    const v1, 0x7f09012c

    if-ne v0, v1, :cond_c

    .line 2471
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mReferrer:Ljava/lang/String;

    iget v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactType:I

    const/16 v1, 0x8

    invoke-static {p1, v0, v4, v1, v3}, Lcom/android/contacts/logging/Logger;->logQuickContactEvent(Ljava/lang/String;IIILjava/lang/String;)V

    .line 2473
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isShortcutCreatable()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2474
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->createLauncherShortcutWithContact()V

    goto :goto_2

    :cond_c
    const v1, 0x7f09013d

    if-ne v0, v1, :cond_d

    .line 2477
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->doPickRingtone()V

    goto :goto_2

    :cond_d
    const v1, 0x7f09013c

    if-ne v0, v1, :cond_f

    .line 2479
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSendToVoicemailState:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSendToVoicemailState:Z

    if-eqz v0, :cond_e

    const v0, 0x7f1001a4

    goto :goto_1

    :cond_e
    const v0, 0x7f100195

    .line 2480
    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2483
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSendToVoicemailState:Z

    invoke-static {p0, p1, v0}, Lcom/android/contacts/ContactSaveService;->createSetSendToVoicemail(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object p1

    .line 2485
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    :cond_f
    const v1, 0x7f090131

    if-ne v0, v1, :cond_11

    .line 2487
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mReferrer:Ljava/lang/String;

    iget v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactType:I

    const/16 v1, 0x9

    invoke-static {p1, v0, v4, v1, v3}, Lcom/android/contacts/logging/Logger;->logQuickContactEvent(Ljava/lang/String;IIILjava/lang/String;)V

    .line 2489
    invoke-static {p0}, Lcom/android/contactsbind/HelpUtils;->launchHelpAndFeedbackForContactScreen(Landroid/app/Activity;)V

    :cond_10
    :goto_2
    return v2

    .line 2491
    :cond_11
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mReferrer:Ljava/lang/String;

    iget v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactType:I

    invoke-static {v0, v1, v4, v4, v3}, Lcom/android/contacts/logging/Logger;->logQuickContactEvent(Ljava/lang/String;IIILjava/lang/String;)V

    .line 2493
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 1052
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1053
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->dismissProgressBar()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 2317
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const v0, 0x7f090140

    .line 2318
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2319
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    .line 2320
    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    .line 2321
    invoke-virtual {v4}, Lcom/android/contacts/model/Contact;->getStarred()Z

    move-result v4

    .line 2319
    invoke-static {v0, v2, v3, v4}, Lcom/android/contacts/detail/ContactDisplayUtils;->configureStarredMenuItem(Landroid/view/MenuItem;ZZZ)V

    const v0, 0x7f09012f

    .line 2324
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x1

    .line 2325
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2326
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {v3}, Lcom/android/contacts/quickcontact/DirectoryContactUtil;->isDirectoryContact(Lcom/android/contacts/model/Contact;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    .line 2327
    invoke-static {v3, p0}, Lcom/android/contacts/quickcontact/InvisibleContactUtil;->isInvisibleAndAddable(Lcom/android/contacts/model/Contact;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2330
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactEditable()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0800ad

    .line 2331
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v3, 0x7f10018c

    .line 2332
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 2334
    :cond_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    :goto_0
    const v3, 0x7f0800c3

    .line 2328
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v3, 0x7f100181

    .line 2329
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_1
    const v0, 0x7f090132

    .line 2338
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2339
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {v3, p0}, Lcom/android/contacts/quickcontact/InvisibleContactUtil;->isInvisibleAndAddable(Lcom/android/contacts/model/Contact;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2340
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactEditable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    .line 2341
    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->isMultipleRawContacts()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 2339
    :goto_2
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f090133

    .line 2345
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2346
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/model/Contact;->isMultipleRawContacts()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2347
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 2346
    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f09012d

    .line 2349
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2350
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactEditable()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f09013e

    .line 2352
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2353
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactShareable()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f09012c

    .line 2355
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2356
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isShortcutCreatable()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f09013d

    .line 2360
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2361
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mArePhoneOptionsChangable:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f09013c

    .line 2363
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2364
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/model/Contact;

    .line 2366
    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v3

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mArePhoneOptionsChangable:Z

    if-eqz v3, :cond_7

    const/4 v1, 0x1

    .line 2364
    :cond_7
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2368
    iget-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSendToVoicemailState:Z

    if-eqz v1, :cond_8

    const v1, 0x7f1001a4

    goto :goto_6

    :cond_8
    const v1, 0x7f100195

    :goto_6
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const v0, 0x7f090131

    .line 2371
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 2372
    invoke-static {}, Lcom/android/contactsbind/HelpUtils;->isHelpAndFeedbackAvailable()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v2

    :cond_9
    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 1039
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onResume()V

    .line 1041
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1042
    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z

    .line 1043
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCachedCp2DataCardModel:Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    invoke-direct {p0, v1, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->populateContactAndAboutCard(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;Z)V

    .line 1046
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->maybeShowProgressDialog()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 810
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 811
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_0

    .line 812
    iget v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mColorFilterColor:I

    const-string v1, "theme_color"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 814
    :cond_0
    iget-wide v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPreviousContactId:J

    const-string v2, "previous_contact_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 817
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSendToVoicemailState:Z

    const-string v1, "sendToVoicemailState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 818
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mArePhoneOptionsChangable:Z

    const-string v1, "arePhoneOptionsChangable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 819
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCustomRingtone:Ljava/lang/String;

    const-string v1, "customRingtone"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 2148
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2150
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntriesAndActionsTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2155
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method
