.class public final Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;
.super Ljava/lang/Object;
.source "ExpandingEntryCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field private mAlternateContentDescription:Landroid/text/Spannable;

.field private final mAlternateIcon:Landroid/graphics/drawable/Drawable;

.field private final mAlternateIntent:Landroid/content/Intent;

.field private final mEntryContextMenuInfo:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

.field private final mHeader:Ljava/lang/String;

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mId:I

.field private final mIntent:Landroid/content/Intent;

.field private mPrimaryContentDescription:Landroid/text/Spannable;

.field private final mShouldApplyColor:Z

.field private final mShouldApplyThirdIconColor:Z

.field private final mSubHeader:Ljava/lang/String;

.field private final mSubHeaderIcon:Landroid/graphics/drawable/Drawable;

.field private final mText:Ljava/lang/String;

.field private final mTextIcon:Landroid/graphics/drawable/Drawable;

.field private final mThirdAction:I

.field private final mThirdContentDescription:Ljava/lang/String;

.field private final mThirdExtras:Landroid/os/Bundle;

.field private final mThirdIcon:Landroid/graphics/drawable/Drawable;

.field private final mThirdIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/text/Spannable;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Landroid/text/Spannable;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;ZI)V
    .locals 2

    move-object v0, p0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 130
    iput v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mId:I

    move-object v1, p2

    .line 131
    iput-object v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p3

    .line 132
    iput-object v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mHeader:Ljava/lang/String;

    move-object v1, p4

    .line 133
    iput-object v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mSubHeader:Ljava/lang/String;

    move-object v1, p5

    .line 134
    iput-object v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mSubHeaderIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p6

    .line 135
    iput-object v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mText:Ljava/lang/String;

    move-object v1, p7

    .line 136
    iput-object v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mTextIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p8

    .line 137
    iput-object v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mPrimaryContentDescription:Landroid/text/Spannable;

    move-object v1, p9

    .line 138
    iput-object v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mIntent:Landroid/content/Intent;

    move-object v1, p10

    .line 139
    iput-object v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mAlternateIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p11

    .line 140
    iput-object v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mAlternateIntent:Landroid/content/Intent;

    move-object v1, p12

    .line 141
    iput-object v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mAlternateContentDescription:Landroid/text/Spannable;

    move v1, p13

    .line 142
    iput-boolean v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mShouldApplyColor:Z

    move-object/from16 v1, p15

    .line 144
    iput-object v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mEntryContextMenuInfo:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    move-object/from16 v1, p16

    .line 145
    iput-object v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mThirdIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v1, p17

    .line 146
    iput-object v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mThirdIntent:Landroid/content/Intent;

    move-object/from16 v1, p18

    .line 147
    iput-object v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mThirdContentDescription:Ljava/lang/String;

    move/from16 v1, p19

    .line 148
    iput v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mThirdAction:I

    move-object/from16 v1, p20

    .line 149
    iput-object v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mThirdExtras:Landroid/os/Bundle;

    move/from16 v1, p21

    .line 150
    iput-boolean v1, v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mShouldApplyThirdIconColor:Z

    return-void
.end method


# virtual methods
.method getAlternateContentDescription()Landroid/text/Spannable;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mAlternateContentDescription:Landroid/text/Spannable;

    return-object v0
.end method

.method getAlternateIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mAlternateIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getAlternateIntent()Landroid/content/Intent;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mAlternateIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getEntryContextMenuInfo()Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mEntryContextMenuInfo:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    return-object v0
.end method

.method getHeader()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mHeader:Ljava/lang/String;

    return-object v0
.end method

.method getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mId:I

    return v0
.end method

.method getIntent()Landroid/content/Intent;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getPrimaryContentDescription()Landroid/text/Spannable;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mPrimaryContentDescription:Landroid/text/Spannable;

    return-object v0
.end method

.method getSubHeader()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mSubHeader:Ljava/lang/String;

    return-object v0
.end method

.method getSubHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mSubHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mText:Ljava/lang/String;

    return-object v0
.end method

.method getTextIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mTextIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThirdAction()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mThirdAction:I

    return v0
.end method

.method getThirdContentDescription()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mThirdContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdExtras()Landroid/os/Bundle;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mThirdExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getThirdIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mThirdIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getThirdIntent()Landroid/content/Intent;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mThirdIntent:Landroid/content/Intent;

    return-object v0
.end method

.method shouldApplyColor()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mShouldApplyColor:Z

    return v0
.end method

.method shouldApplyThirdIconColor()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->mShouldApplyThirdIconColor:Z

    return v0
.end method
