.class public Lcom/android/contacts/list/ContactsSectionIndexer;
.super Ljava/lang/Object;
.source "ContactsSectionIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field protected static final BLANK_HEADER_STRING:Ljava/lang/String; = "\u2026"


# instance fields
.field private mCount:I

.field private mPositions:[I

.field private mSections:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 47
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_3

    .line 54
    iput-object p1, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    .line 55
    array-length p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 57
    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "\u2026"

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    aput-object v2, v1, p1

    goto :goto_1

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v1, p1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 65
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    aput v0, v1, p1

    .line 66
    aget v1, p2, p1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 68
    :cond_2
    iput v0, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mCount:I

    return-void

    .line 48
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The sections and counts arrays must have the same length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x0

    .line 44
    throw p1
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getPositions()[I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    if-ltz p1, :cond_2

    .line 88
    iget v0, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mCount:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    :goto_0
    return p1

    :cond_2
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method public setFavoritesHeader(I)V
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 108
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 115
    iget-object v3, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    array-length v3, v3

    add-int/2addr v3, v1

    new-array v3, v3, [I

    const-string v4, ""

    .line 117
    aput-object v4, v0, v2

    .line 118
    aput v2, v3, v2

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    array-length v4, v2

    if-gt v1, v4, :cond_1

    .line 120
    iget-object v4, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    aput-object v4, v0, v1

    .line 121
    aget v2, v2, v5

    add-int/2addr v2, p1

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_1
    iput-object v0, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    .line 124
    iput-object v3, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    .line 125
    iget v0, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mCount:I

    :cond_2
    return-void
.end method
