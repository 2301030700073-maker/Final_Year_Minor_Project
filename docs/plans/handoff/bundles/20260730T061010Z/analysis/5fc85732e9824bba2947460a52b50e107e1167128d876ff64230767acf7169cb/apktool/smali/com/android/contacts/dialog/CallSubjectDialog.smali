.class public Lcom/android/contacts/dialog/CallSubjectDialog;
.super Landroid/app/Activity;
.source "CallSubjectDialog.java"


# instance fields
.field private mAnimationDuration:I

.field private mBackgroundListener:Landroid/view/View$OnClickListener;

.field private mBackgroundView:Landroid/view/View;

.field private final mCallSubjectClickListener:Landroid/view/View$OnClickListener;

.field private mCallSubjectView:Landroid/widget/EditText;

.field private mCharacterLimitView:Landroid/widget/TextView;

.field private mContactPhoto:Landroid/widget/QuickContactBadge;

.field private mContactUri:Landroid/net/Uri;

.field private mDialogView:Landroid/view/View;

.field private mDisplayNumber:Ljava/lang/String;

.field private mHistoryButton:Landroid/view/View;

.field private final mHistoryOnClickListener:Landroid/view/View$OnClickListener;

.field private mIsBusiness:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLimit:I

.field private mMessageEncoding:Ljava/nio/charset/Charset;

.field private mNameOrNumber:Ljava/lang/String;

.field private mNameView:Landroid/widget/TextView;

.field private mNumber:Ljava/lang/String;

.field private mNumberLabel:Ljava/lang/String;

.field private mNumberView:Landroid/widget/TextView;

.field private mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mPhotoID:J

.field private mPhotoSize:I

.field private mPhotoUri:Landroid/net/Uri;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSendAndCallButton:Landroid/view/View;

.field private final mSendAndCallOnClickListener:Landroid/view/View$OnClickListener;

.field private mSubjectHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubjectList:Landroid/widget/ListView;

.field private final mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x10

    .line 100
    iput v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mLimit:I

    .line 118
    new-instance v0, Lcom/android/contacts/dialog/CallSubjectDialog$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/dialog/CallSubjectDialog$1;-><init>(Lcom/android/contacts/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 138
    new-instance v0, Lcom/android/contacts/dialog/CallSubjectDialog$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/dialog/CallSubjectDialog$2;-><init>(Lcom/android/contacts/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mBackgroundListener:Landroid/view/View$OnClickListener;

    .line 148
    new-instance v0, Lcom/android/contacts/dialog/CallSubjectDialog$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/dialog/CallSubjectDialog$3;-><init>(Lcom/android/contacts/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mHistoryOnClickListener:Landroid/view/View$OnClickListener;

    .line 159
    new-instance v0, Lcom/android/contacts/dialog/CallSubjectDialog$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/dialog/CallSubjectDialog$4;-><init>(Lcom/android/contacts/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mSendAndCallOnClickListener:Landroid/view/View$OnClickListener;

    .line 181
    new-instance v0, Lcom/android/contacts/dialog/CallSubjectDialog$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/dialog/CallSubjectDialog$5;-><init>(Lcom/android/contacts/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mCallSubjectClickListener:Landroid/view/View$OnClickListener;

    .line 195
    new-instance v0, Lcom/android/contacts/dialog/CallSubjectDialog$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/dialog/CallSubjectDialog$6;-><init>(Lcom/android/contacts/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/dialog/CallSubjectDialog;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/contacts/dialog/CallSubjectDialog;->updateCharacterLimit()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/dialog/CallSubjectDialog;)Landroid/widget/EditText;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/contacts/dialog/CallSubjectDialog;)Landroid/widget/ListView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/contacts/dialog/CallSubjectDialog;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/contacts/dialog/CallSubjectDialog;->showCallHistory(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/dialog/CallSubjectDialog;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/contacts/dialog/CallSubjectDialog;)Landroid/telecom/PhoneAccountHandle;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/contacts/dialog/CallSubjectDialog;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mSubjectHistory:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/contacts/dialog/CallSubjectDialog;Ljava/util/List;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/contacts/dialog/CallSubjectDialog;->saveSubjectHistory(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/dialog/CallSubjectDialog;)Landroid/view/View;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mDialogView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/contacts/dialog/CallSubjectDialog;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mAnimationDuration:I

    return p0
.end method

.method private loadConfiguration()V
    .locals 4

    .line 584
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "telecom"

    .line 594
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 595
    iget-object v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 597
    invoke-static {v0}, Lcom/android/contacts/compat/PhoneAccountSdkCompat;->getExtras(Landroid/telecom/PhoneAccount;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 603
    :cond_2
    iget v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mLimit:I

    const-string v2, "android.telecom.extra.CALL_SUBJECT_MAX_LENGTH"

    .line 604
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mLimit:I

    const-string v1, "android.telecom.extra.CALL_SUBJECT_CHARACTER_ENCODING"

    .line 607
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 612
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mMessageEncoding:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 615
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid charset: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallSubjectDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iput-object v2, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mMessageEncoding:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 620
    :cond_3
    iput-object v2, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mMessageEncoding:Ljava/nio/charset/Charset;

    :goto_0
    return-void
.end method

.method public static loadSubjectHistory(Landroid/content/SharedPreferences;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "subject_history_count"

    const/4 v1, 0x0

    .line 429
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 430
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v1, v0, :cond_1

    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subject_history_item"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 434
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 435
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private readArguments()V
    .locals 3

    .line 338
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CallSubjectDialog"

    const-string v1, "Arguments cannot be null."

    .line 340
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "PHOTO_ID"

    .line 343
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mPhotoID:J

    const-string v1, "PHOTO_URI"

    .line 344
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mPhotoUri:Landroid/net/Uri;

    const-string v1, "CONTACT_URI"

    .line 345
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mContactUri:Landroid/net/Uri;

    const-string v1, "NAME_OR_NUMBER"

    .line 346
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mNameOrNumber:Ljava/lang/String;

    const-string v1, "IS_BUSINESS"

    .line 347
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mIsBusiness:Z

    const-string v1, "NUMBER"

    .line 348
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mNumber:Ljava/lang/String;

    const-string v1, "DISPLAY_NUMBER"

    .line 349
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mDisplayNumber:Ljava/lang/String;

    const-string v1, "NUMBER_LABEL"

    .line 350
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mNumberLabel:Ljava/lang/String;

    const-string v1, "PHONE_ACCOUNT_HANDLE"

    .line 351
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-void
.end method

.method private saveSubjectHistory(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 450
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 451
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 456
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 457
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subject_history_item"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "subject_history_count"

    .line 463
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 464
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setPhoto(JLandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 9

    .line 392
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mContactPhoto:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 393
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mContactPhoto:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v0, 0x1

    if-eqz p6, :cond_1

    const/4 p6, 0x2

    goto :goto_0

    :cond_1
    const/4 p6, 0x1

    :goto_0
    if-eqz p4, :cond_2

    .line 406
    invoke-static {p4}, Lcom/android/contacts/util/UriUtils;->getLookupKeyFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 410
    :cond_2
    new-instance v8, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v8, p5, v1, p6, v0}, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    const-wide/16 p4, 0x0

    cmp-long p6, p1, p4

    if-nez p6, :cond_3

    if-eqz p3, :cond_3

    .line 414
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mContactPhoto:Landroid/widget/QuickContactBadge;

    iget v5, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mPhotoSize:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v4, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_1

    .line 417
    :cond_3
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mContactPhoto:Landroid/widget/QuickContactBadge;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-wide v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V

    :goto_1
    return-void
.end method

.method private showCallHistory(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    .line 486
    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_2

    :cond_1
    return-void

    .line 490
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-eqz p1, :cond_3

    .line 493
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0c0020

    iget-object v3, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mSubjectHistory:Ljava/util/List;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 495
    iget-object v2, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 496
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 499
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 504
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 505
    new-instance v2, Lcom/android/contacts/dialog/CallSubjectDialog$7;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/contacts/dialog/CallSubjectDialog$7;-><init>(Lcom/android/contacts/dialog/CallSubjectDialog;Landroid/view/ViewTreeObserver;IZ)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public static start(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 261
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/dialog/CallSubjectDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateCharacterLimit()V
    .locals 6

    .line 359
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mMessageEncoding:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 370
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mCharacterLimitView:Landroid/widget/TextView;

    const v2, 0x7f100073

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 371
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mLimit:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 370
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mLimit:I

    if-lt v0, v1, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mCharacterLimitView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mCharacterLimitView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method

.method private updateContactInfo()V
    .locals 8

    .line 318
    iget-object v4, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mContactUri:Landroid/net/Uri;

    const/16 v7, 0x8

    if-eqz v4, :cond_0

    .line 319
    iget-wide v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mPhotoID:J

    iget-object v3, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mPhotoUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mNameOrNumber:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mIsBusiness:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/dialog/CallSubjectDialog;->setPhoto(JLandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mContactPhoto:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v7}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 323
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mNameOrNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mNumberLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mDisplayNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mNumberView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mNumberView:Landroid/widget/TextView;

    const v2, 0x7f100074

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mNumberLabel:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mDisplayNumber:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mNumberView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "input_method"

    .line 471
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    .line 474
    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 277
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mAnimationDuration:I

    .line 278
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mPrefs:Landroid/content/SharedPreferences;

    .line 279
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070051

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mPhotoSize:I

    .line 281
    invoke-direct {p0}, Lcom/android/contacts/dialog/CallSubjectDialog;->readArguments()V

    .line 282
    invoke-direct {p0}, Lcom/android/contacts/dialog/CallSubjectDialog;->loadConfiguration()V

    .line 283
    iget-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/android/contacts/dialog/CallSubjectDialog;->loadSubjectHistory(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mSubjectHistory:Ljava/util/List;

    const p1, 0x7f0c0046

    .line 285
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 286
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    const p1, 0x7f090066

    .line 288
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mBackgroundView:Landroid/view/View;

    .line 289
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mBackgroundListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900b8

    .line 290
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mDialogView:Landroid/view/View;

    const p1, 0x7f090084

    .line 291
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/QuickContactBadge;

    iput-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mContactPhoto:Landroid/widget/QuickContactBadge;

    const p1, 0x7f09014c

    .line 292
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mNameView:Landroid/widget/TextView;

    const p1, 0x7f090162

    .line 293
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mNumberView:Landroid/widget/TextView;

    const p1, 0x7f090065

    .line 294
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;

    .line 295
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 296
    iget-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mCallSubjectClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/text/InputFilter;

    .line 298
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    iget v1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mLimit:I

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 299
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mCallSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const p1, 0x7f09006d

    .line 300
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mCharacterLimitView:Landroid/widget/TextView;

    const p1, 0x7f090102

    .line 301
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mHistoryButton:Landroid/view/View;

    .line 302
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mHistoryOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mHistoryButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mSubjectHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0901a6

    .line 304
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mSendAndCallButton:Landroid/view/View;

    .line 305
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mSendAndCallOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901c1

    .line 306
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    .line 307
    iget-object v0, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 308
    iget-object p1, p0, Lcom/android/contacts/dialog/CallSubjectDialog;->mSubjectList:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 310
    invoke-direct {p0}, Lcom/android/contacts/dialog/CallSubjectDialog;->updateContactInfo()V

    .line 311
    invoke-direct {p0}, Lcom/android/contacts/dialog/CallSubjectDialog;->updateCharacterLimit()V

    return-void
.end method
