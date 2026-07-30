.class Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;
.super Ljava/lang/Object;
.source "StructuredNameEditorView.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/StructuredNameEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mChanged:Z

.field public mSnapshot:Landroid/content/ContentValues;

.field public mSuperState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 200
    new-instance v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState$1;

    invoke-direct {v0}, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const-class v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSuperState:Landroid/os/Parcelable;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mChanged:Z

    .line 188
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    iput-object p1, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSnapshot:Landroid/content/ContentValues;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/editor/StructuredNameEditorView$1;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSuperState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 193
    iget-object p2, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSuperState:Landroid/os/Parcelable;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 195
    iget-boolean p2, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mChanged:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object p2, p0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSnapshot:Landroid/content/ContentValues;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
