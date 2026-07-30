.class Lcom/android/contacts/interactions/ExportDialogFragment$AdapterEntry;
.super Ljava/lang/Object;
.source "ExportDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/ExportDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterEntry"
.end annotation


# instance fields
.field public final mChoiceResourceId:I

.field public final mLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/android/contacts/interactions/ExportDialogFragment$AdapterEntry;->mLabel:Ljava/lang/CharSequence;

    .line 224
    iput p2, p0, Lcom/android/contacts/interactions/ExportDialogFragment$AdapterEntry;->mChoiceResourceId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    .line 231
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/interactions/ExportDialogFragment$AdapterEntry;-><init>(Ljava/lang/CharSequence;II)V

    return-void
.end method
