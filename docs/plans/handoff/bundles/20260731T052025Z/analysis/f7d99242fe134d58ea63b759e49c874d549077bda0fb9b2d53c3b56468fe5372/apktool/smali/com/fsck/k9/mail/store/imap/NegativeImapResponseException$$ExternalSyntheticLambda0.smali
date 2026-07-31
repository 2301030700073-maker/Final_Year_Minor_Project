.class public final synthetic Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->responses:Ljava/util/List;

    .line 12
    .line 13
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v4, 0x3

    .line 27
    if-lt v0, v4, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/imap/ImapList;->isList(I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-ne v4, v2, :cond_0

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v2, "ALERT"

    .line 53
    .line 54
    invoke-static {v0, v2}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    move-object v3, p0

    .line 65
    check-cast v3, Ljava/lang/String;

    .line 66
    .line 67
    :cond_0
    return-object v3

    .line 68
    :pswitch_0
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->responses:Ljava/util/List;

    .line 69
    .line 70
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-ge v0, v1, :cond_1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/imap/ImapList;->isList(I)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    move v1, v2

    .line 94
    :goto_0
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->isString(I)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    move-object v3, p0

    .line 105
    check-cast v3, Ljava/lang/String;

    .line 106
    .line 107
    :cond_3
    :goto_1
    return-object v3

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
