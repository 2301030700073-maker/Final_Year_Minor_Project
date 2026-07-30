.class public Lcom/android/contacts/vcard/ImportRequest;
.super Ljava/lang/Object;
.source "ImportRequest.java"


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final data:[B

.field public final displayName:Ljava/lang/String;

.field public final entryCount:I

.field public final estimatedCharset:Ljava/lang/String;

.field public final estimatedVCardType:I

.field public final uri:Landroid/net/Uri;

.field public final vcardVersion:I


# direct methods
.method public constructor <init>(Lcom/android/contacts/model/account/AccountWithDataSet;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountWithDataSet;->getAccountOrNull()Landroid/accounts/Account;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportRequest;->account:Landroid/accounts/Account;

    .line 103
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportRequest;->data:[B

    .line 104
    iput-object p3, p0, Lcom/android/contacts/vcard/ImportRequest;->uri:Landroid/net/Uri;

    .line 105
    iput-object p4, p0, Lcom/android/contacts/vcard/ImportRequest;->displayName:Ljava/lang/String;

    .line 106
    iput p5, p0, Lcom/android/contacts/vcard/ImportRequest;->estimatedVCardType:I

    .line 107
    iput-object p6, p0, Lcom/android/contacts/vcard/ImportRequest;->estimatedCharset:Ljava/lang/String;

    .line 108
    iput p7, p0, Lcom/android/contacts/vcard/ImportRequest;->vcardVersion:I

    .line 109
    iput p8, p0, Lcom/android/contacts/vcard/ImportRequest;->entryCount:I

    return-void
.end method
