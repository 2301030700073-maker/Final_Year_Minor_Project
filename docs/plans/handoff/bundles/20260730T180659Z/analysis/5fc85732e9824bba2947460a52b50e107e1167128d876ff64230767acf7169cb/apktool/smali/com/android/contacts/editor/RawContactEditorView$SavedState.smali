.class public Lcom/android/contacts/editor/RawContactEditorView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "RawContactEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/RawContactEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/contacts/editor/RawContactEditorView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsExpanded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 167
    new-instance v0, Lcom/android/contacts/editor/RawContactEditorView$SavedState$1;

    invoke-direct {v0}, Lcom/android/contacts/editor/RawContactEditorView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/contacts/editor/RawContactEditorView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView$SavedState;->mIsExpanded:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/editor/RawContactEditorView$1;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/RawContactEditorView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 180
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/RawContactEditorView$SavedState;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/android/contacts/editor/RawContactEditorView$SavedState;->mIsExpanded:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/contacts/editor/RawContactEditorView$SavedState;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView$SavedState;->mIsExpanded:Z

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 190
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 191
    iget-boolean p2, p0, Lcom/android/contacts/editor/RawContactEditorView$SavedState;->mIsExpanded:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
