.class public final Lcom/fsck/k9/view/RecipientSelectView$Recipient;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public address:Lcom/fsck/k9/mail/Address;

.field public addressLabel:Ljava/lang/String;

.field public final contactId:Ljava/lang/Long;

.field public final contactLookupKey:Ljava/lang/String;

.field public cryptoStatus:I

.field public transient photoThumbnailUri:Landroid/net/Uri;

.field public final sortKey:Ljava/lang/String;

.field public final starred:Z

.field public final timesContacted:I


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/Address;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->contactId:Ljava/lang/Long;

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->cryptoStatus:I

    .line 36
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->contactLookupKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->timesContacted:I

    .line 38
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->sortKey:Ljava/lang/String;

    .line 39
    iput-boolean v0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->starred:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/mail/Address;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1, p2, p1}, Lcom/fsck/k9/mail/Address;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 11
    .line 12
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->contactId:Ljava/lang/Long;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->addressLabel:Ljava/lang/String;

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput p1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->cryptoStatus:I

    .line 22
    .line 23
    iput-object p6, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->contactLookupKey:Ljava/lang/String;

    .line 24
    .line 25
    iput p7, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->timesContacted:I

    .line 26
    .line 27
    iput-object p8, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->sortKey:Ljava/lang/String;

    .line 28
    .line 29
    iput-boolean p9, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->starred:Z

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 6
    .line 7
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/Address;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Address;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
