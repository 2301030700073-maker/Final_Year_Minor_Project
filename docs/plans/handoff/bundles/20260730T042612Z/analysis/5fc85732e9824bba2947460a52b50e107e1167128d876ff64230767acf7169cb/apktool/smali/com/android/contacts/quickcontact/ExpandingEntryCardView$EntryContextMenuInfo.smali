.class public final Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
.super Ljava/lang/Object;
.source "ExpandingEntryCardView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntryContextMenuInfo"
.end annotation


# instance fields
.field private final mCopyLabel:Ljava/lang/String;

.field private final mCopyText:Ljava/lang/String;

.field private final mId:J

.field private final mIsSuperPrimary:Z

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0

    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mCopyText:Ljava/lang/String;

    .line 963
    iput-object p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mCopyLabel:Ljava/lang/String;

    .line 964
    iput-object p3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mMimeType:Ljava/lang/String;

    .line 965
    iput-wide p4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mId:J

    .line 966
    iput-boolean p6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mIsSuperPrimary:Z

    return-void
.end method


# virtual methods
.method public getCopyLabel()Ljava/lang/String;
    .locals 1

    .line 974
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mCopyLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyText()Ljava/lang/String;
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mCopyText:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 982
    iget-wide v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mId:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public isSuperPrimary()Z
    .locals 1

    .line 986
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->mIsSuperPrimary:Z

    return v0
.end method
