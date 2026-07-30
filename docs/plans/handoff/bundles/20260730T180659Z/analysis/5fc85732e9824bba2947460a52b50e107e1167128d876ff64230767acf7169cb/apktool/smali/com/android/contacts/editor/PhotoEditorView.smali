.class public Lcom/android/contacts/editor/PhotoEditorView;
.super Landroid/widget/RelativeLayout;
.source "PhotoEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/PhotoEditorView$Listener;
    }
.end annotation


# instance fields
.field private mIsNonDefaultPhotoBound:Z

.field private final mIsTwoPanel:Z

.field private final mLandscapePhotoRatio:F

.field private mListener:Lcom/android/contacts/editor/PhotoEditorView$Listener;

.field private mMaterialPalette:Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

.field private mPhotoIcon:Landroid/view/View;

.field private mPhotoIconOverlay:Landroid/view/View;

.field private mPhotoImageView:Lcom/android/contacts/widget/QuickContactImageView;

.field private mPhotoTouchInterceptOverlay:Landroid/view/View;

.field private final mPortraitPhotoRatio:F

.field private mReadOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/PhotoEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0701bb

    .line 74
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->getTypedFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mLandscapePhotoRatio:F

    const p1, 0x7f0700f1

    .line 75
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->getTypedFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPortraitPhotoRatio:F

    .line 76
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f05000e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mIsTwoPanel:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/PhotoEditorView;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mIsTwoPanel:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/PhotoEditorView;)F
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mLandscapePhotoRatio:F

    return p0
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/PhotoEditorView;)F
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPortraitPhotoRatio:F

    return p0
.end method

.method private adjustDimensions()V
    .locals 2

    .line 149
    new-instance v0, Lcom/android/contacts/editor/PhotoEditorView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/PhotoEditorView$1;-><init>(Lcom/android/contacts/editor/PhotoEditorView;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/contacts/util/SchedulingUtils;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private getTypedFloat(I)F
    .locals 3

    .line 80
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 81
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 82
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    return p1
.end method

.method private setDefaultPhoto(Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)V
    .locals 2

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mIsNonDefaultPhotoBound:Z

    .line 187
    invoke-direct {p0}, Lcom/android/contacts/editor/PhotoEditorView;->updatePhotoDescription()V

    .line 188
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Lcom/android/contacts/widget/QuickContactImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/contacts/editor/EditorUiUtils;->setDefaultPhoto(Landroid/widget/ImageView;Landroid/content/res/Resources;Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)V

    return-void
.end method

.method private setPhoto(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Lcom/android/contacts/widget/QuickContactImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mIsNonDefaultPhotoBound:Z

    .line 182
    invoke-direct {p0}, Lcom/android/contacts/editor/PhotoEditorView;->updatePhotoDescription()V

    return-void
.end method

.method private updatePhotoDescription()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoTouchInterceptOverlay:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 193
    iget-boolean v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mIsNonDefaultPhotoBound:Z

    if-eqz v2, :cond_0

    const v2, 0x7f100104

    goto :goto_0

    :cond_0
    const v2, 0x7f100103

    .line 192
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public isWritablePhotoSet()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mReadOnly:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mIsNonDefaultPhotoBound:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 215
    iget-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/PhotoEditorView$Listener;

    if-eqz p1, :cond_0

    .line 216
    invoke-interface {p1}, Lcom/android/contacts/editor/PhotoEditorView$Listener;->onPhotoEditorViewClicked()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f09016f

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/widget/QuickContactImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Lcom/android/contacts/widget/QuickContactImageView;

    const v0, 0x7f090171

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoIcon:Landroid/view/View;

    const v0, 0x7f090172

    .line 90
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoIconOverlay:Landroid/view/View;

    const v0, 0x7f090173

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoTouchInterceptOverlay:Landroid/view/View;

    return-void
.end method

.method public removePhoto()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mMaterialPalette:Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/PhotoEditorView;->setDefaultPhoto(Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)V

    return-void
.end method

.method public setFullSizedPhoto(Landroid/net/Uri;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Lcom/android/contacts/widget/QuickContactImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mIsNonDefaultPhotoBound:Z

    .line 203
    invoke-direct {p0}, Lcom/android/contacts/editor/PhotoEditorView;->updatePhotoDescription()V

    return-void
.end method

.method public setListener(Lcom/android/contacts/editor/PhotoEditorView$Listener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/PhotoEditorView$Listener;

    return-void
.end method

.method public setPalette(Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mMaterialPalette:Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    return-void
.end method

.method public setPhoto(Lcom/android/contacts/model/ValuesDelta;)V
    .locals 1

    .line 126
    invoke-static {p1}, Lcom/android/contacts/editor/EditorUiUtils;->getPhotoFileId(Lcom/android/contacts/model/ValuesDelta;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    sget-object p1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 129
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setFullSizedPhoto(Landroid/net/Uri;)V

    .line 131
    invoke-direct {p0}, Lcom/android/contacts/editor/PhotoEditorView;->adjustDimensions()V

    return-void

    .line 136
    :cond_0
    invoke-static {p1}, Lcom/android/contacts/editor/EditorUiUtils;->getPhotoBitmap(Lcom/android/contacts/model/ValuesDelta;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 138
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 139
    invoke-direct {p0}, Lcom/android/contacts/editor/PhotoEditorView;->adjustDimensions()V

    return-void

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mMaterialPalette:Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setDefaultPhoto(Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)V

    .line 144
    invoke-direct {p0}, Lcom/android/contacts/editor/PhotoEditorView;->adjustDimensions()V

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 2

    .line 100
    iput-boolean p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mReadOnly:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoIconOverlay:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoTouchInterceptOverlay:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 105
    iget-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoTouchInterceptOverlay:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100105

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoIcon:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoIconOverlay:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoTouchInterceptOverlay:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-direct {p0}, Lcom/android/contacts/editor/PhotoEditorView;->updatePhotoDescription()V

    :goto_0
    return-void
.end method
