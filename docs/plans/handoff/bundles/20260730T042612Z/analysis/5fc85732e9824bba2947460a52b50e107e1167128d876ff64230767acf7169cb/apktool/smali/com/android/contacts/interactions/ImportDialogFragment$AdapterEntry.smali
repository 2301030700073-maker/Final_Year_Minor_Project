.class Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;
.super Ljava/lang/Object;
.source "ImportDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/ImportDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterEntry"
.end annotation


# instance fields
.field public final mChoiceResourceId:I

.field public final mLabel:Ljava/lang/CharSequence;

.field public final mSim:Lcom/android/contacts/model/SimCard;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ILcom/android/contacts/model/SimCard;)V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object p1, p0, Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;->mLabel:Ljava/lang/CharSequence;

    .line 304
    iput p2, p0, Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;->mChoiceResourceId:I

    .line 305
    iput-object p3, p0, Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;->mSim:Lcom/android/contacts/model/SimCard;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 311
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;-><init>(Ljava/lang/CharSequence;ILcom/android/contacts/model/SimCard;)V

    return-void
.end method
